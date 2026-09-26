package io.netty.util.internal;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
abstract class MpscLinkedQueueHeadRef<E> extends MpscLinkedQueuePad0<E> implements Serializable {
    private static final AtomicReferenceFieldUpdater<MpscLinkedQueueHeadRef, MpscLinkedQueueNode> UPDATER;
    private static final long serialVersionUID = 8467054865577874285L;
    private volatile transient MpscLinkedQueueNode<E> headRef;

    static {
        AtomicReferenceFieldUpdater<MpscLinkedQueueHeadRef, MpscLinkedQueueNode> updater = PlatformDependent.newAtomicReferenceFieldUpdater(MpscLinkedQueueHeadRef.class, "headRef");
        if (updater == null) {
            updater = AtomicReferenceFieldUpdater.newUpdater(MpscLinkedQueueHeadRef.class, MpscLinkedQueueNode.class, "headRef");
        }
        UPDATER = updater;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MpscLinkedQueueNode<E> headRef() {
        return this.headRef;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setHeadRef(MpscLinkedQueueNode<E> headRef) {
        this.headRef = headRef;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void lazySetHeadRef(MpscLinkedQueueNode<E> headRef) {
        UPDATER.lazySet(this, headRef);
    }
}
