package com.iab.omid.library.unity3d.utils;

import android.os.Build;
import org.json.JSONObject;
import org.json.md;
import org.json.y8;

/* JADX INFO: loaded from: classes3.dex */
public final class b {
    public static String a() {
        return Build.MANUFACTURER + "; " + Build.MODEL;
    }

    public static String b() {
        return y8.d;
    }

    public static String c() {
        return Integer.toString(Build.VERSION.SDK_INT);
    }

    public static JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        c.a(jSONObject, "deviceType", a());
        c.a(jSONObject, "osVersion", c());
        c.a(jSONObject, md.y, b());
        return jSONObject;
    }
}
