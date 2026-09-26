package com.soundcloud.android.crop;

/* loaded from: classes.dex */
class Log {
    private static final String TAG = "android-crop";

    Log() {
    }

    public static final void e(String msg) {
        android.util.Log.e(TAG, msg);
    }

    public static final void e(String msg, Throwable e) {
        android.util.Log.e(TAG, msg, e);
    }
}
