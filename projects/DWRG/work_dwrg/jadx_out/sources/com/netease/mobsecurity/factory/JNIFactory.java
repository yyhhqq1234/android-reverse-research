package com.netease.mobsecurity.factory;

/* loaded from: classes.dex */
public class JNIFactory {
    private static JNIFactory a;

    private JNIFactory() {
    }

    public static JNIFactory getInstance() {
        if (a == null) {
            a = new JNIFactory();
        }
        return a;
    }

    public native String w410e0e9eb51cc6b0(Object obj, int i, int i2);

    public native String w6e685a9adf5af10b(Object obj, double d, double d2);

    public native String wd92f591f6307ab76(Object obj, String[] strArr, String str, int i, int i2);
}
