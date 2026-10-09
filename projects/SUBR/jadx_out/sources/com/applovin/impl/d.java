package com.applovin.impl;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class d extends pp {
    private b a = b.NOT_READY;
    private Object b;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[b.values().length];
            a = iArr;
            try {
                iArr[b.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[b.READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private enum b {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    protected abstract Object a();

    protected d() {
    }

    protected final Object b() {
        this.a = b.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Preconditions.checkState(this.a != b.FAILED);
        int i = a.a[this.a.ordinal()];
        if (i == 1) {
            return false;
        }
        if (i != 2) {
            return c();
        }
        return true;
    }

    private boolean c() {
        this.a = b.FAILED;
        this.b = a();
        if (this.a == b.DONE) {
            return false;
        }
        this.a = b.READY;
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            this.a = b.NOT_READY;
            Object obj = this.b;
            this.b = null;
            return obj;
        }
        throw new NoSuchElementException();
    }
}
