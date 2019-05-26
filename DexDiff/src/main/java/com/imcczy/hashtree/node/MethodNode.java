package com.imcczy.hashtree.node;

import com.imcczy.App;
import com.imcczy.utils.OPTIONS;

import java.io.Serializable;
import java.util.Arrays;


public class MethodNode extends Node implements Serializable {
    private static final long serialVersionUID = 5590771073564531337L;
    public String signature;
    public byte[] hashSimple;
    public String opCodes;

    public MethodNode(byte[] hash, byte[] hashSimple, String signature, String ops) {
        super(hash);
        this.hashSimple = hashSimple;
        this.signature = signature;
        this.opCodes = ops;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof MethodNode))
            return false;

        return Arrays.equals(((Node) obj).hash, this.hash);
    }

    @Override
    public String toString() {
        return "MNode(" + signature + ")";
    }
}
