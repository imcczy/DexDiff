package com.imcczy.hashtree.comp.method;

import com.ibm.wala.classLoader.IMethod;
import com.imcczy.hashtree.TreeConfig;
import com.imcczy.hashtree.node.MethodNode;

public interface IMethodNodeComp {
    MethodNode comp(IMethod m, TreeConfig config);
}
