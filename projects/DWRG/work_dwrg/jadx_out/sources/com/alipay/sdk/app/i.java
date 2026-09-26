package com.alipay.sdk.app;

/* loaded from: classes.dex */
public final class i {
    public static String a;

    private static void a(String str) {
        a = str;
    }

    private static String b() {
        return a;
    }

    public static String a() {
        j a2 = j.a(j.CANCELED.h);
        return a(a2.h, a2.i, "");
    }

    private static String c() {
        j a2 = j.a(j.DOUBLE_REQUEST.h);
        return a(a2.h, a2.i, "");
    }

    private static String d() {
        j a2 = j.a(j.PARAMS_ERROR.h);
        return a(a2.h, a2.i, "");
    }

    public static String a(int i, String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("resultStatus={").append(i).append("};memo={").append(str).append("};result={").append(str2).append(com.alipay.sdk.util.i.d);
        return sb.toString();
    }
}
