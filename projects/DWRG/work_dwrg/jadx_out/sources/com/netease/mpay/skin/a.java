package com.netease.mpay.skin;

/* loaded from: classes.dex */
public class a {
    public static d a(String str, int i, String str2, String str3) {
        d bVar;
        if ("background".equals(str) || "src".equals(str) || "popupBackground".equals(str) || "drawableBottom".equals(str) || "drawableTop".equals(str) || "drawableLeft".equals(str) || "drawableRight".equals(str)) {
            bVar = new b();
        } else if ("textColor".equals(str) || "textColorHint".equals(str)) {
            bVar = new i();
        } else {
            if (!"divider".equals(str)) {
                return null;
            }
            bVar = new c();
        }
        bVar.a = str;
        bVar.b = i;
        bVar.c = str2;
        bVar.d = str3;
        return bVar;
    }

    public static boolean a(String str) {
        return "background".equals(str.trim()) || "src".equals(str.trim()) || "popupBackground".equals(str.trim()) || "drawableTop".equals(str.trim()) || "drawableLeft".equals(str.trim()) || "drawableRight".equals(str.trim()) || "drawableBottom".equals(str.trim()) || "textColor".equals(str) || "textColorHint".equals(str) || "divider".equals(str);
    }
}
