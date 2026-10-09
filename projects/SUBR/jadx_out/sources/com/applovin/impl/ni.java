package com.applovin.impl;

import com.applovin.exoplayer2.common.base.Preconditions;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class ni extends fb {
    static final fb i = new ni(null, new Object[0], 0);
    private final transient int[] f;
    final transient Object[] g;
    private final transient int h;

    @Override // com.applovin.impl.fb
    hb b() {
        return new a(this, this.g, 0, this.h);
    }

    @Override // com.applovin.impl.fb
    hb c() {
        return new b(this, new c(this.g, 0, this.h));
    }

    @Override // com.applovin.impl.fb
    bb d() {
        return new c(this.g, 1, this.h);
    }

    @Override // com.applovin.impl.fb
    boolean f() {
        return false;
    }

    static ni a(int i2, Object[] objArr) {
        if (i2 == 0) {
            return (ni) i;
        }
        if (i2 == 1) {
            p3.a(objArr[0], objArr[1]);
            return new ni(null, objArr, 1);
        }
        Preconditions.checkPositionIndex(i2, objArr.length >> 1);
        return new ni(a(objArr, i2, hb.a(i2), 0), objArr, i2);
    }

    private ni(int[] iArr, Object[] objArr, int i2) {
        this.f = iArr;
        this.g = objArr;
        this.h = i2;
    }

    @Override // java.util.Map
    public int size() {
        return this.h;
    }

    @Override // com.applovin.impl.fb, java.util.Map
    public Object get(Object obj) {
        return a(this.f, this.g, this.h, 0, obj);
    }

    static int[] a(Object[] objArr, int i2, int i3, int i4) {
        int i5;
        if (i2 == 1) {
            p3.a(objArr[i4], objArr[i4 ^ 1]);
            return null;
        }
        int i6 = i3 - 1;
        int[] iArr = new int[i3];
        Arrays.fill(iArr, -1);
        for (int i7 = 0; i7 < i2; i7++) {
            int i8 = i7 * 2;
            int i9 = i8 + i4;
            Object obj = objArr[i9];
            Object obj2 = objArr[i8 + (i4 ^ 1)];
            p3.a(obj, obj2);
            int iA = ja.a(obj.hashCode());
            while (true) {
                i5 = iA & i6;
                int i10 = iArr[i5];
                if (i10 == -1) {
                    break;
                }
                if (objArr[i10].equals(obj)) {
                    throw new IllegalArgumentException("Multiple entries with same key: " + obj + com.ironsource.y8.i.b + obj2 + " and " + objArr[i10] + com.ironsource.y8.i.b + objArr[i10 ^ 1]);
                }
                iA = i5 + 1;
            }
            iArr[i5] = i9;
        }
        return iArr;
    }

    static class a extends hb {
        private final transient fb c;
        private final transient Object[] d;
        private final transient int f;
        private final transient int g;

        @Override // com.applovin.impl.bb
        boolean e() {
            return true;
        }

        @Override // com.applovin.impl.hb
        db f() {
            return new C0028a();
        }

        a(fb fbVar, Object[] objArr, int i, int i2) {
            this.c = fbVar;
            this.d = objArr;
            this.f = i;
            this.g = i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public pp iterator() {
            return a().iterator();
        }

        /* JADX INFO: renamed from: com.applovin.impl.ni$a$a, reason: collision with other inner class name */
        class C0028a extends db {
            @Override // com.applovin.impl.bb
            public boolean e() {
                return true;
            }

            C0028a() {
            }

            @Override // java.util.List
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry get(int i) {
                Preconditions.checkElementIndex(i, a.this.g);
                int i2 = i * 2;
                return new AbstractMap.SimpleImmutableEntry(a.this.d[a.this.f + i2], a.this.d[i2 + (a.this.f ^ 1)]);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return a.this.g;
            }
        }

        @Override // com.applovin.impl.bb, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.c.get(key));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.g;
        }

        @Override // com.applovin.impl.bb
        int a(Object[] objArr, int i) {
            return a().a(objArr, i);
        }
    }

    static final class c extends db {
        private final transient Object[] c;
        private final transient int d;
        private final transient int f;

        @Override // com.applovin.impl.bb
        boolean e() {
            return true;
        }

        c(Object[] objArr, int i, int i2) {
            this.c = objArr;
            this.d = i;
            this.f = i2;
        }

        @Override // java.util.List
        public Object get(int i) {
            Preconditions.checkElementIndex(i, this.f);
            return this.c[(i * 2) + this.d];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f;
        }
    }

    static final class b extends hb {
        private final transient fb c;
        private final transient db d;

        @Override // com.applovin.impl.bb
        boolean e() {
            return true;
        }

        b(fb fbVar, db dbVar) {
            this.c = fbVar;
            this.d = dbVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public pp iterator() {
            return a().iterator();
        }

        @Override // com.applovin.impl.hb, com.applovin.impl.bb
        public db a() {
            return this.d;
        }

        @Override // com.applovin.impl.bb, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.c.get(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.c.size();
        }

        @Override // com.applovin.impl.bb
        int a(Object[] objArr, int i) {
            return a().a(objArr, i);
        }
    }

    static Object a(int[] iArr, Object[] objArr, int i2, int i3, Object obj) {
        if (obj == null) {
            return null;
        }
        if (i2 == 1) {
            if (objArr[i3].equals(obj)) {
                return objArr[i3 ^ 1];
            }
            return null;
        }
        if (iArr == null) {
            return null;
        }
        int length = iArr.length - 1;
        int iA = ja.a(obj.hashCode());
        while (true) {
            int i4 = iA & length;
            int i5 = iArr[i4];
            if (i5 == -1) {
                return null;
            }
            if (objArr[i5].equals(obj)) {
                return objArr[i5 ^ 1];
            }
            iA = i4 + 1;
        }
    }
}
