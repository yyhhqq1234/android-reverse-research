package com.netease.mobsecurity.factory;

import android.content.Context;

/* loaded from: classes.dex */
public class b {
    private JNIFactory a = JNIFactory.getInstance();
    private Context b;

    public b(Context context) {
        this.b = context;
    }

    public final String a(String[] strArr, String str, int i, int i2) {
        return this.a.wd92f591f6307ab76(this.b, strArr, str, i, i2);
    }
}
