package com.applovin.impl;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public abstract class db extends bb implements List, RandomAccess {
    private static final qp b = new b(mi.f, 0);

    public static a f() {
        return new a();
    }

    public static db h() {
        return mi.f;
    }

    @Override // com.applovin.impl.bb
    public final db a() {
        return this;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    public static db c(Object[] objArr) {
        if (objArr.length == 0) {
            return h();
        }
        return b((Object[]) objArr.clone());
    }

    static db a(Object[] objArr) {
        return b(objArr, objArr.length);
    }

    static db b(Object[] objArr, int i) {
        if (i == 0) {
            return h();
        }
        return new mi(objArr, i);
    }

    db() {
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public pp iterator() {
        return listIterator();
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public qp listIterator() {
        return listIterator(0);
    }

    static class b extends com.applovin.impl.c {
        private final db c;

        b(db dbVar, int i) {
            super(dbVar.size(), i);
            this.c = dbVar;
        }

        @Override // com.applovin.impl.c
        protected Object a(int i) {
            return this.c.get(i);
        }
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return hc.b(this, obj);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        return hc.d(this, obj);
    }

    @Override // com.applovin.impl.bb, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    class c extends db {
        final transient int c;
        final transient int d;

        @Override // com.applovin.impl.bb
        boolean e() {
            return true;
        }

        @Override // com.applovin.impl.db, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.applovin.impl.db, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator() {
            return super.listIterator();
        }

        c(int i, int i2) {
            this.c = i;
            this.d = i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.d;
        }

        @Override // com.applovin.impl.bb
        Object[] b() {
            return db.this.b();
        }

        @Override // com.applovin.impl.bb
        int d() {
            return db.this.d() + this.c;
        }

        @Override // com.applovin.impl.bb
        int c() {
            return db.this.d() + this.c + this.d;
        }

        @Override // java.util.List
        public Object get(int i) {
            Preconditions.checkElementIndex(i, this.d);
            return db.this.get(i + this.c);
        }

        @Override // com.applovin.impl.db, java.util.List
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public db subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, this.d);
            db dbVar = db.this;
            int i3 = this.c;
            return dbVar.subList(i + i3, i2 + i3);
        }

        @Override // com.applovin.impl.db, java.util.List
        public /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return super.listIterator(i);
        }
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        return hc.a(this, obj);
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = ~(~((i * 31) + get(i2).hashCode()));
        }
        return i;
    }

    private static db b(Object... objArr) {
        return a(fg.a(objArr));
    }

    db b(int i, int i2) {
        return new c(i, i2 - i);
    }

    public static final class a extends bb.a {
        public a() {
            this(4);
        }

        public a b(Object obj) {
            super.a(obj);
            return this;
        }

        public db a() {
            this.c = true;
            return db.b(this.a, this.b);
        }

        a(int i) {
            super(i);
        }
    }

    @Override // com.applovin.impl.bb
    int a(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    public static db a(Collection collection) {
        if (collection instanceof bb) {
            db dbVarA = ((bb) collection).a();
            return dbVarA.e() ? a(dbVarA.toArray()) : dbVarA;
        }
        return b(collection.toArray());
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public qp listIterator(int i) {
        Preconditions.checkPositionIndex(i, size());
        if (isEmpty()) {
            return b;
        }
        return new b(this, i);
    }

    public static db a(Object obj) {
        return b(obj);
    }

    public static db a(Object obj, Object obj2) {
        return b(obj, obj2);
    }

    public static db a(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return b(obj, obj2, obj3, obj4, obj5);
    }

    public static db a(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        return b(obj, obj2, obj3, obj4, obj5, obj6);
    }

    public static db a(Comparator comparator, Iterable iterable) {
        Preconditions.checkNotNull(comparator);
        Object[] objArrC = vb.c(iterable);
        fg.a(objArrC);
        Arrays.sort(objArrC, comparator);
        return a(objArrC);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: a */
    public db subList(int i, int i2) {
        Preconditions.checkPositionIndexes(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        if (i3 == 0) {
            return h();
        }
        return b(i, i2);
    }
}
