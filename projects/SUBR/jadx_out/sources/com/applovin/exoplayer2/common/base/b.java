package com.applovin.exoplayer2.common.base;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
abstract class b implements Iterator {
    private EnumC0009b a = EnumC0009b.NOT_READY;
    private Object b;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EnumC0009b.values().length];
            a = iArr;
            try {
                iArr[EnumC0009b.READY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[EnumC0009b.DONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: renamed from: com.applovin.exoplayer2.common.base.b$b, reason: collision with other inner class name */
    private enum EnumC0009b {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    protected b() {
    }

    private boolean c() {
        this.a = EnumC0009b.FAILED;
        this.b = a();
        if (this.a == EnumC0009b.DONE) {
            return false;
        }
        this.a = EnumC0009b.READY;
        return true;
    }

    protected abstract Object a();

    protected final Object b() {
        this.a = EnumC0009b.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Preconditions.checkState(this.a != EnumC0009b.FAILED);
        int i = a.a[this.a.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return c();
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.a = EnumC0009b.NOT_READY;
        Object obj = this.b;
        this.b = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
