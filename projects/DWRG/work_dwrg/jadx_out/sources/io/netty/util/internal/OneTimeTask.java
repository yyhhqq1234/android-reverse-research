package io.netty.util.internal;

/* loaded from: classes.dex */
public abstract class OneTimeTask extends MpscLinkedQueueNode<Runnable> implements Runnable {
    @Override // io.netty.util.internal.MpscLinkedQueueNode
    public Runnable value() {
        return this;
    }
}
