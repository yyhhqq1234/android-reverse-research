package com.netease.neox;

/* loaded from: classes.dex */
public final class NXLog {
    private static native void NativeLog(int i, String str);

    private static native void NativeLogError(String str);

    private static native void NativeLogWarning(String str);

    public static void e(String message) {
        NativeLogError(message);
    }

    public static void w(String message) {
        NativeLogWarning(message);
    }

    public static void i(int level, String message) {
        NativeLog(level, message);
    }
}
