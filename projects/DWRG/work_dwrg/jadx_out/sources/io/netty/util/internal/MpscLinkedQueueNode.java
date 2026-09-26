package io.netty.util.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public abstract class MpscLinkedQueueNode<T> {
    private static final AtomicReferenceFieldUpdater<MpscLinkedQueueNode, MpscLinkedQueueNode> nextUpdater;
    private volatile MpscLinkedQueueNode<T> next;

    public abstract T value();

    static {
        AtomicReferenceFieldUpdater<MpscLinkedQueueNode, MpscLinkedQueueNode> u = PlatformDependent.newAtomicReferenceFieldUpdater(MpscLinkedQueueNode.class, "next");
        if (u == null) {
            u = AtomicReferenceFieldUpdater.newUpdater(MpscLinkedQueueNode.class, MpscLinkedQueueNode.class, "next");
        }
        nextUpdater = u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final MpscLinkedQueueNode<T> next() {
        return this.next;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setNext(MpscLinkedQueueNode<T> newNext) {
        nextUpdater.lazySet(this, newNext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public T clearMaybe() {
        return value();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void unlink() {
        setNext(null);
    }
}
