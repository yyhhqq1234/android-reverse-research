package com.applovin.impl;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class sh extends b {
    private final int g;
    private final int h;
    private final int[] i;
    private final int[] j;
    private final fo[] k;
    private final Object[] l;
    private final HashMap m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sh(Collection collection, wj wjVar) {
        super(false, wjVar);
        int iB = 0;
        int size = collection.size();
        this.i = new int[size];
        this.j = new int[size];
        this.k = new fo[size];
        this.l = new Object[size];
        this.m = new HashMap();
        Iterator it = collection.iterator();
        int iA = 0;
        int i = 0;
        while (it.hasNext()) {
            de deVar = (de) it.next();
            this.k[i] = deVar.b();
            this.j[i] = iB;
            this.i[i] = iA;
            iB += this.k[i].b();
            iA += this.k[i].a();
            this.l[i] = deVar.a();
            this.m.put(this.l[i], Integer.valueOf(i));
            i++;
        }
        this.g = iB;
        this.h = iA;
    }

    @Override // com.applovin.impl.b
    protected int d(int i) {
        return xp.a(this.i, i + 1, false, false);
    }

    @Override // com.applovin.impl.b
    protected int e(int i) {
        return xp.a(this.j, i + 1, false, false);
    }

    @Override // com.applovin.impl.b
    protected int b(Object obj) {
        Integer num = (Integer) this.m.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.applovin.impl.b
    protected fo i(int i) {
        return this.k[i];
    }

    @Override // com.applovin.impl.b
    protected int g(int i) {
        return this.i[i];
    }

    @Override // com.applovin.impl.b
    protected int h(int i) {
        return this.j[i];
    }

    @Override // com.applovin.impl.b
    protected Object f(int i) {
        return this.l[i];
    }

    @Override // com.applovin.impl.fo
    public int a() {
        return this.h;
    }

    List d() {
        return Arrays.asList(this.k);
    }

    @Override // com.applovin.impl.fo
    public int b() {
        return this.g;
    }
}
