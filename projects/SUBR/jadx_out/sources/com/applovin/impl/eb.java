package com.applovin.impl;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class eb extends gb implements ec {
    public static a k() {
        return new a();
    }

    public static eb l() {
        return q7.g;
    }

    public static final class a extends gb.b {
        @Override // com.applovin.impl.gb.b
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public a a(Object obj, Iterable iterable) {
            super.a(obj, iterable);
            return this;
        }

        public eb c() {
            return (eb) super.a();
        }

        public a b(Object obj, Object... objArr) {
            super.a(obj, objArr);
            return this;
        }
    }

    static eb a(Collection collection, Comparator comparator) {
        db dbVarA;
        if (collection.isEmpty()) {
            return l();
        }
        fb.a aVar = new fb.a(collection.size());
        Iterator it = collection.iterator();
        int size = 0;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            Collection collection2 = (Collection) entry.getValue();
            if (comparator == null) {
                dbVarA = db.a(collection2);
            } else {
                dbVarA = db.a(comparator, (Iterable) collection2);
            }
            if (!dbVarA.isEmpty()) {
                aVar.a(key, dbVarA);
                size += dbVarA.size();
            }
        }
        return new eb(aVar.a(), size);
    }

    eb(fb fbVar, int i) {
        super(fbVar, i);
    }

    public db b(Object obj) {
        db dbVar = (db) this.d.get(obj);
        return dbVar == null ? db.h() : dbVar;
    }
}
