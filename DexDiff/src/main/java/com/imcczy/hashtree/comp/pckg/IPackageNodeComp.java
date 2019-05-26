package com.imcczy.hashtree.comp.pckg;

import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.imcczy.hashtree.TreeConfig;
import com.imcczy.hashtree.node.Node;
import com.imcczy.hashtree.node.PackageNode;


import java.util.Collection;

public interface IPackageNodeComp {
    PackageNode comp(Collection<? extends Node> classNodes, String packageName, IClassHierarchy cha, TreeConfig config);
}
