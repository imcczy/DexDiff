package com.imcczy.hashtree.node;

import java.io.Serializable;
import java.util.Arrays;


public class MethodNode extends Node implements Serializable {
    private static final long serialVersionUID = 5590771073564531337L;
    public String signature;
    public byte[] hashSimple;

    public MethodNode(byte[] hash, byte[] hashSimple, String signature) {
        super(hash);
        this.hashSimple = hashSimple;
        this.signature = signature;
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
