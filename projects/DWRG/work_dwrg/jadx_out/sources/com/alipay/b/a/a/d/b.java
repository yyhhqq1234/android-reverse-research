package com.alipay.b.a.a.d;

import java.io.File;

/* loaded from: classes.dex */
public final class b {
    public static String a(String str) {
        String str2 = "";
        try {
            str2 = System.getProperty(str);
        } catch (Throwable th) {
        }
        return com.alipay.b.a.a.a.a.a(str2) ? c.a(".SystemConfig" + File.separator + str) : str2;
    }
}
