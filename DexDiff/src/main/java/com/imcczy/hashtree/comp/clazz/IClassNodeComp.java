package com.imcczy.hashtree.comp.clazz;

import com.ibm.wala.classLoader.IClass;
import com.imcczy.hashtree.TreeConfig;
import com.imcczy.hashtree.node.ClassNode;
import com.imcczy.hashtree.node.Node;

import java.util.Collection;

public interface IClassNodeComp {
    ClassNode comp(Collection<? extends Node> methodNodes, IClass clazz, TreeConfig config);
}
