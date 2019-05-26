/*
 * Copyright (c) 2015-2017  Erik Derr [derr@cs.uni-saarland.de]
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this
 * file except in compliance with the License. You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under
 * the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

package com.imcczy.hashtree;


import com.google.common.hash.Hasher;
import com.ibm.wala.classLoader.IClass;
import com.ibm.wala.classLoader.IMethod;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.util.collections.ArraySet;
import com.imcczy.hash.AccessFlags;
import com.imcczy.hashtree.comp.clazz.DefaultClassNodeComp;
import com.imcczy.hashtree.comp.clazz.IClassNodeComp;
import com.imcczy.hashtree.comp.method.IMethodNodeComp;
import com.imcczy.hashtree.comp.method.SignatureMethodNodeComp;
import com.imcczy.hashtree.comp.pckg.DefaultPackageNodeComp;
import com.imcczy.hashtree.comp.pckg.IPackageNodeComp;
import com.imcczy.hashtree.node.ClassNode;
import com.imcczy.hashtree.node.MethodNode;
import com.imcczy.hashtree.node.Node;
import com.imcczy.hashtree.node.PackageNode;
import com.imcczy.pkg.PackageUtils;
import com.imcczy.utils.Utils;
import com.imcczy.utils.WalaUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.Serializable;
import java.util.*;
import java.util.stream.Collectors;

/*
 * props:
 *    single/multi-version
 *
 * common functionality::
 *   - stats
 *   - debug?
 *   - generate?? depends on data
 *
 * abstract/interface Node
 *   props::  single vs multi-version nodes
 *
 */


/**
 * A Merkle hash tree implementation used to efficiently
 * identify code reuse in apps through library code
 */
public class HashTree implements Serializable {
    private static final long serialVersionUID = 8890771073564531337L;

    transient private static final Logger logger = LoggerFactory.getLogger(HashTree.class);

    transient final IPackageNodeComp pnComp;
    transient final IClassNodeComp cnComp;
    transient final IMethodNodeComp mnComp;

    private Node rootNode;

    protected TreeConfig config = new TreeConfig();

    public Map<String, MethodNode> methodNodeMap = new HashMap<>();
    public Set<ClassNode> classNodeSet = new HashSet<>();
    public Set<MethodNode> methodNodeSet = new ArraySet<>();

    public void initSet() {
        methodNodeMap.forEach((k, v) -> {
            methodNodeSet.add(v);
        });
    }

    public HashTree() {
        this(new DefaultPackageNodeComp(), new DefaultClassNodeComp(), new SignatureMethodNodeComp());
    }

    public HashTree(IPackageNodeComp pnComp, IClassNodeComp cnComp, IMethodNodeComp mnComp) {
        this.pnComp = pnComp;
        this.cnComp = cnComp;
        this.mnComp = mnComp;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof HashTree))
            return false;

        return Arrays.equals(this.getRootHash(), ((HashTree) obj).getRootHash());
    }


    public static Node compNode(Collection<? extends Node> nodes, boolean prune, Hasher hasher) {
        nodes.stream().sorted(HashUtils.comp).forEach(n -> hasher.putBytes(n.hash));

        Node n = new Node(hasher.hash().asBytes());
        if (!prune)
            n.childs.addAll(nodes);
        return n;
    }

    public void generate(IClassHierarchy cha, Collection<IClass> iClasses) {
        logger.debug("Generate hash tree..");

        int classHashCount = 0;
        int methodHashCount = 0;

        // create map package name -> set of clazzNodes
        HashMap<String, List<ClassNode>> packageMap = new HashMap<>();
        Collection<IClass> classes = new ArrayList<>();
        if (cha != null && iClasses == null)
            classes = cha.getIClass();
        else if (cha == null && iClasses != null)
            classes = iClasses;
        for (IClass clazz : classes) {
            if (WalaUtils.isAppClass(clazz)) {

                Collection<? extends IMethod> methods = clazz.getDeclaredMethods();

                // filter methods by access flag
                if (config.accessFlagsFilter != AccessFlags.NO_FLAG) {
                    methods = methods.stream()
                            .filter(m -> {
                                int code = AccessFlags.getMethodAccessCode(m);
                                return code > 0 && (code & config.accessFlagsFilter.getValue()) == 0x0;
                            })  // if predicate is true, keep in list
                            .collect(Collectors.toCollection(ArrayList::new));
                }

                List<MethodNode> methodNodes = methods.stream()
                        .filter(m -> !(m.isBridge() || m.isSynthetic()))  // normalize java|dex bytecode by skipping compiler-generated methods
                        .map(m -> mnComp.comp(m, config))
                        .sorted(HashUtils.comp)  // sort but do not filter dups
                        .collect(Collectors.toList());

                // normalize - skip classes with no methods
                if (methodNodes.isEmpty()) {
                    logger.trace(Utils.INDENT + ">> No methods found for clazz: " + WalaUtils.simpleName(clazz));
                    continue;
                }


                // update stats
                methodHashCount += methodNodes.size();
                classHashCount++;

                ClassNode clazzNode = cnComp.comp(methodNodes, clazz, config);
                methodNodes.forEach(node -> {
                    methodNodeMap.put(node.signature, node);
                    node.parent = clazzNode;
                    classNodeSet.add(clazzNode);
//					methodNodeSet.add(node);
//					classNodeMap.put(node,clazzNode);
                });

                // keep track on classes per package
                String pckgName = PackageUtils.getPackageName(clazz);
                if (!packageMap.containsKey(pckgName)) {
                    packageMap.put(pckgName, new ArrayList<>());
                }
                packageMap.get(pckgName).add(clazzNode);
            }
        }

        packageMap.values().forEach(l -> l.sort(HashUtils.comp));  // sort class nodes
        List<PackageNode> packageNodes = packageMap.keySet().stream()
                .map(p -> pnComp.comp(packageMap.get(p), p, cha, config))
                .sorted(HashUtils.comp)
                .collect(Collectors.toList());

        // generate root
        rootNode = compNode(packageNodes, false, config.getHasher());

        logger.debug(Utils.INDENT + "- generated " + packageNodes.size() + " package hashes.");
        logger.debug(Utils.INDENT + "- generated " + classHashCount + " clazz hashes.");
        logger.debug(Utils.INDENT + "- generated " + methodHashCount + " method hashes.");
        logger.debug(Utils.INDENT + "=> Library Hash: " + HashUtils.hash2Str(rootNode.hash));
    }


    /*
     * Getter methods
     */
    public Node getRootNode() {
        return this.rootNode;
    }

    public byte[] getRootHash() {
        return this.rootNode.hash;
    }

    public TreeConfig getConfig() {
        return this.config;
    }

    public void setConfig(TreeConfig config) {
        this.config = config;
    }

    public static List<PackageNode> toPackageNode(Collection<Node> col) {
        return col.stream()
                .filter(n -> n instanceof PackageNode)
                .map(n -> (PackageNode) n).collect(Collectors.toList());
    }

    public Collection<PackageNode> getPackageNodes() {
        return this.getRootNode().childs.stream().map(pn -> (PackageNode) pn).collect(Collectors.toList());
    }

    public int getNumberOfPackages() {
        return rootNode.numberOfChilds();
    }

    public int getNumberOfClasses() {
        return rootNode.childs.stream().mapToInt(pn -> pn.childs.size()).sum();
    }

    public int getNumberOfClasses(PackageNode pn) {
        return pn.numberOfChilds();
    }

    public int getNumberOfMethods(PackageNode pn) {
        return pn.childs.stream().mapToInt(cn -> cn.childs.size()).sum();
    }

    public int getNumberOfMethods() {
        return rootNode.childs.stream()
                .map(pn -> pn.childs)
                .flatMap(Collection::stream)
                .mapToInt(cn -> cn.childs.size()).sum();
    }
}
