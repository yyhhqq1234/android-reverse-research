package com.netease.mobsecurity.a.a;

import android.content.Context;

/* loaded from: classes.dex */
public class a implements b {
    com.netease.mobsecurity.factory.a a;
    Context b;

    public a(Context context) {
        this.b = context;
        this.a = new com.netease.mobsecurity.factory.a(context);
    }

    @Override // com.netease.mobsecurity.a.a.b
    public final String a() {
        return this.a.a();
    }

    @Override // com.netease.mobsecurity.a.a.b
    public final String a(double d, double d2) {
        return this.a.a(d, d2);
    }

    @Override // com.netease.mobsecurity.a.a.b
    public final String a(int i) {
        return this.a.a(1, i);
    }
}
