package com.netease.mcount.a;

import android.os.Build;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class a {
    public static c a(String str, HashMap hashMap, JSONObject jSONObject, int i, int i2) {
        return a().a(str, hashMap, jSONObject, i, i2);
    }

    private static f a() {
        return b() ? new e() : new d();
    }

    private static boolean b() {
        return Build.VERSION.SDK_INT >= 9;
    }
}
