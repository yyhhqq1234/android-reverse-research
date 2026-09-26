package io.netty.buffer;

import io.netty.util.IllegalReferenceCountException;
import io.netty.util.internal.PlatformDependent;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes.dex */
public abstract class AbstractReferenceCountedByteBuf extends AbstractByteBuf {
    private static final AtomicIntegerFieldUpdater<AbstractReferenceCountedByteBuf> refCntUpdater;
    private volatile int refCnt;

    protected abstract void deallocate();

    static {
        AtomicIntegerFieldUpdater<AbstractReferenceCountedByteBuf> updater = PlatformDependent.newAtomicIntegerFieldUpdater(AbstractReferenceCountedByteBuf.class, "refCnt");
        if (updater == null) {
            updater = AtomicIntegerFieldUpdater.newUpdater(AbstractReferenceCountedByteBuf.class, "refCnt");
        }
        refCntUpdater = updater;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractReferenceCountedByteBuf(int maxCapacity) {
        super(maxCapacity);
        this.refCnt = 1;
    }

    @Override // io.netty.util.ReferenceCounted
    public final int refCnt() {
        return this.refCnt;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setRefCnt(int refCnt) {
        this.refCnt = refCnt;
    }

    @Override // io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public ByteBuf retain() {
        int refCnt;
        do {
            refCnt = this.refCnt;
            if (refCnt == 0) {
                throw new IllegalReferenceCountException(0, 1);
            }
            if (refCnt == Integer.MAX_VALUE) {
                throw new IllegalReferenceCountException(Integer.MAX_VALUE, 1);
            }
        } while (!refCntUpdater.compareAndSet(this, refCnt, refCnt + 1));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf, io.netty.util.ReferenceCounted
    public ByteBuf retain(int increment) {
        int refCnt;
        if (increment <= 0) {
            throw new IllegalArgumentException("increment: " + increment + " (expected: > 0)");
        }
        do {
            refCnt = this.refCnt;
            if (refCnt == 0) {
                throw new IllegalReferenceCountException(0, increment);
            }
            if (refCnt > Integer.MAX_VALUE - increment) {
                throw new IllegalReferenceCountException(refCnt, increment);
            }
        } while (!refCntUpdater.compareAndSet(this, refCnt, refCnt + increment));
        return this;
    }

    @Override // io.netty.util.ReferenceCounted
    public final boolean release() {
        int refCnt;
        do {
            refCnt = this.refCnt;
            if (refCnt == 0) {
                throw new IllegalReferenceCountException(0, -1);
            }
        } while (!refCntUpdater.compareAndSet(this, refCnt, refCnt - 1));
        if (refCnt != 1) {
            return false;
        }
        deallocate();
        return true;
    }

    @Override // io.netty.util.ReferenceCounted
    public final boolean release(int decrement) {
        int refCnt;
        if (decrement <= 0) {
            throw new IllegalArgumentException("decrement: " + decrement + " (expected: > 0)");
        }
        do {
            refCnt = this.refCnt;
            if (refCnt < decrement) {
                throw new IllegalReferenceCountException(refCnt, -decrement);
            }
        } while (!refCntUpdater.compareAndSet(this, refCnt, refCnt - decrement));
        if (refCnt != decrement) {
            return false;
        }
        deallocate();
        return true;
    }
}
