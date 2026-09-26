package io.netty.util.internal;

import io.netty.util.Recycler;

/* loaded from: classes.dex */
public abstract class RecyclableMpscLinkedQueueNode<T> extends MpscLinkedQueueNode<T> {
    private final Recycler.Handle handle;

    protected abstract void recycle(Recycler.Handle handle);

    /* JADX INFO: Access modifiers changed from: protected */
    public RecyclableMpscLinkedQueueNode(Recycler.Handle handle) {
        if (handle == null) {
            throw new NullPointerException("handle");
        }
        this.handle = handle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.netty.util.internal.MpscLinkedQueueNode
    public final void unlink() {
        super.unlink();
        recycle(this.handle);
    }
}
