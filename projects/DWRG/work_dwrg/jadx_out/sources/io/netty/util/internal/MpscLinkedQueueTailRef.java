package io.netty.util.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
abstract class MpscLinkedQueueTailRef<E> extends MpscLinkedQueuePad1<E> {
    private static final AtomicReferenceFieldUpdater<MpscLinkedQueueTailRef, MpscLinkedQueueNode> UPDATER;
    private static final long serialVersionUID = 8717072462993327429L;
    private volatile transient MpscLinkedQueueNode<E> tailRef;

    static {
        AtomicReferenceFieldUpdater<MpscLinkedQueueTailRef, MpscLinkedQueueNode> updater = PlatformDependent.newAtomicReferenceFieldUpdater(MpscLinkedQueueTailRef.class, "tailRef");
        if (updater == null) {
            updater = AtomicReferenceFieldUpdater.newUpdater(MpscLinkedQueueTailRef.class, MpscLinkedQueueNode.class, "tailRef");
        }
        UPDATER = updater;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MpscLinkedQueueNode<E> tailRef() {
        return this.tailRef;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setTailRef(MpscLinkedQueueNode<E> tailRef) {
        this.tailRef = tailRef;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MpscLinkedQueueNode<E> getAndSetTailRef(MpscLinkedQueueNode<E> tailRef) {
        return UPDATER.getAndSet(this, tailRef);
    }
}
