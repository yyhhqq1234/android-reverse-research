package io.netty.util;

import io.netty.util.internal.PlatformDependent;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes.dex */
public abstract class AbstractReferenceCounted implements ReferenceCounted {
    private static final AtomicIntegerFieldUpdater<AbstractReferenceCounted> refCntUpdater;
    private volatile int refCnt = 1;

    protected abstract void deallocate();

    static {
        AtomicIntegerFieldUpdater<AbstractReferenceCounted> updater = PlatformDependent.newAtomicIntegerFieldUpdater(AbstractReferenceCounted.class, "refCnt");
        if (updater == null) {
            updater = AtomicIntegerFieldUpdater.newUpdater(AbstractReferenceCounted.class, "refCnt");
        }
        refCntUpdater = updater;
    }

    @Override // io.netty.util.ReferenceCounted
    public final int refCnt() {
        return this.refCnt;
    }

    protected final void setRefCnt(int refCnt) {
        this.refCnt = refCnt;
    }

    @Override // io.netty.util.ReferenceCounted
    public ReferenceCounted retain() {
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

    @Override // io.netty.util.ReferenceCounted
    public ReferenceCounted retain(int increment) {
        int refCnt;
        if (increment <= 0) {
            throw new IllegalArgumentException("increment: " + increment + " (expected: > 0)");
        }
        do {
            refCnt = this.refCnt;
            if (refCnt == 0) {
                throw new IllegalReferenceCountException(0, 1);
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
