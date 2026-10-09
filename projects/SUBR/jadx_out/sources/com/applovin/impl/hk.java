package com.applovin.impl;

import com.applovin.exoplayer2.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
final class hk extends hb {
    final transient Object c;
    private transient int d;

    @Override // com.applovin.impl.bb
    boolean e() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return com.ironsource.y8.i.d + this.c.toString() + ']';
    }

    hk(Object obj) {
        this.c = Preconditions.checkNotNull(obj);
    }

    @Override // com.applovin.impl.bb, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.c.equals(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public pp iterator() {
        return wb.a(this.c);
    }

    @Override // com.applovin.impl.hb
    db f() {
        return db.a(this.c);
    }

    @Override // com.applovin.impl.bb
    int a(Object[] objArr, int i) {
        objArr[i] = this.c;
        return i + 1;
    }

    @Override // com.applovin.impl.hb, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.d;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.c.hashCode();
        this.d = iHashCode;
        return iHashCode;
    }

    hk(Object obj, int i) {
        this.c = obj;
        this.d = i;
    }

    @Override // com.applovin.impl.hb
    boolean g() {
        return this.d != 0;
    }
}
