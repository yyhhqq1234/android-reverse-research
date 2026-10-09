package com.iab.omid.library.applovin.internal;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public class g {
    private static g b = new g();
    private Context a;

    private g() {
    }

    public static g b() {
        return b;
    }

    public Context a() {
        return this.a;
    }

    public void a(Context context) {
        this.a = context != null ? context.getApplicationContext() : null;
    }
}
