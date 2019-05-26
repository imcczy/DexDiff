package com.imcczy.hashtree.comp.clazz;

import com.ibm.wala.classLoader.IClass;
import com.imcczy.hashtree.HashTree;
import com.imcczy.hashtree.TreeConfig;
import com.imcczy.hashtree.node.ClassNode;
import com.imcczy.hashtree.node.Node;
import com.imcczy.utils.WalaUtils;

import java.util.ArrayList;
import java.util.Collection;

public class DefaultClassNodeComp implements IClassNodeComp {

    @Override
    public ClassNode comp(Collection<? extends Node> methodNodes, IClass clazz, TreeConfig config) {
        String className = config.keepClassNames ? WalaUtils.simpleName(clazz) : "";

        // default behaviour, just create hash from child nodes
        ClassNode cn = new ClassNode(HashTree.compNode(methodNodes, true, config.getHasher()).hash, className);
        if (!config.pruneMethods) cn.childs = new ArrayList<>(methodNodes);

        return cn;
    }

}
