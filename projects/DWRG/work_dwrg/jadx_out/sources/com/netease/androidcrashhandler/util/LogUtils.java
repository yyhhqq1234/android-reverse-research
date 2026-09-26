package com.netease.androidcrashhandler.util;

import android.util.Log;

/* loaded from: classes.dex */
public class LogUtils {
    private static final String TAG = "Util";
    private static boolean isDebug = true;

    public static void d(String tag, String msg) {
        if (isDebug) {
            Log.d(msg, msg);
        }
    }

    public static void v(String tag, String msg) {
        if (isDebug) {
            Log.v(tag, msg);
        }
    }

    public static void i(String tag, String msg) {
        if (isDebug) {
            Log.i(tag, msg);
        }
    }

    public static void w(String tag, String msg) {
        Log.w(tag, msg);
    }

    public static void e(String tag, String msg) {
        Log.e(tag, msg);
    }

    private static boolean isDebug() {
        return isDebug;
    }
}
