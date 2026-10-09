package com.applovin.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class gb extends b2 implements Serializable {
    final transient fb d;
    final transient int f;

    @Override // com.applovin.impl.h
    Map b() {
        throw new AssertionError("should never be called");
    }

    @Override // com.applovin.impl.h
    Set c() {
        throw new AssertionError("unreachable");
    }

    @Override // com.applovin.impl.tf
    public void clear() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.impl.h
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public bb d() {
        return new c(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.applovin.impl.h
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public pp f() {
        return new a();
    }

    @Override // com.applovin.impl.tf
    public boolean put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.applovin.impl.h
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.applovin.impl.h
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.applovin.impl.h
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static class b {
        Map a = mh.a();
        Comparator b;
        Comparator c;

        Collection b() {
            return new ArrayList();
        }

        public gb a() {
            Collection collectionEntrySet = this.a.entrySet();
            Comparator comparator = this.b;
            if (comparator != null) {
                collectionEntrySet = vg.a(comparator).b().a(collectionEntrySet);
            }
            return eb.a(collectionEntrySet, this.c);
        }

        public b a(Object obj, Iterable iterable) {
            if (obj != null) {
                Collection collection = (Collection) this.a.get(obj);
                if (collection != null) {
                    for (Object obj2 : iterable) {
                        p3.a(obj, obj2);
                        collection.add(obj2);
                    }
                    return this;
                }
                Iterator it = iterable.iterator();
                if (!it.hasNext()) {
                    return this;
                }
                Collection collectionB = b();
                while (it.hasNext()) {
                    Object next = it.next();
                    p3.a(obj, next);
                    collectionB.add(next);
                }
                this.a.put(obj, collectionB);
                return this;
            }
            throw new NullPointerException("null key in entry: null=" + vb.d(iterable));
        }

        public b a(Object obj, Object... objArr) {
            return a(obj, Arrays.asList(objArr));
        }
    }

    gb(fb fbVar, int i) {
        this.d = fbVar;
        this.f = i;
    }

    @Override // com.applovin.impl.tf
    public int size() {
        return this.f;
    }

    @Override // com.applovin.impl.h, com.applovin.impl.tf
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public fb a() {
        return this.d;
    }

    @Override // com.applovin.impl.h
    public boolean a(Object obj) {
        return obj != null && super.a(obj);
    }

    @Override // com.applovin.impl.h, com.applovin.impl.tf
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public bb values() {
        return (bb) super.values();
    }

    class a extends pp {
        Iterator a;
        Iterator b = wb.a();

        a() {
            this.a = gb.this.d.values().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b.hasNext() || this.a.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!this.b.hasNext()) {
                this.b = ((bb) this.a.next()).iterator();
            }
            return this.b.next();
        }
    }

    private static final class c extends bb {
        private final transient gb b;

        c(gb gbVar) {
            this.b = gbVar;
        }

        @Override // com.applovin.impl.bb, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.b.a(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public pp iterator() {
            return this.b.f();
        }

        @Override // com.applovin.impl.bb
        int a(Object[] objArr, int i) {
            pp it = this.b.d.values().iterator();
            while (it.hasNext()) {
                i = ((bb) it.next()).a(objArr, i);
            }
            return i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.b.size();
        }
    }
}
