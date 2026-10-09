package com.applovin.impl;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
class cb extends g implements Serializable {
    final Object a;
    final Object b;

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }

    cb(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    @Override // com.applovin.impl.g, java.util.Map.Entry
    public final Object getKey() {
        return this.a;
    }

    @Override // com.applovin.impl.g, java.util.Map.Entry
    public final Object getValue() {
        return this.b;
    }
}
