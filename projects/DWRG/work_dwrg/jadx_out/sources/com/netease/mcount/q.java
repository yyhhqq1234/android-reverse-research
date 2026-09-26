package com.netease.mcount;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class q {
    private Context a;

    public q(Context context) {
        this.a = context;
    }

    private SharedPreferences b() {
        return this.a.getSharedPreferences("com.netease.mcount.netease_mcount", 0);
    }

    public final String a() {
        return b().getString(com.alipay.sdk.cons.b.h, "");
    }

    public final void a(String str) {
        SharedPreferences.Editor edit = b().edit();
        edit.putInt("version", 1);
        edit.putString(com.alipay.sdk.cons.b.h, str);
        edit.commit();
    }
}
