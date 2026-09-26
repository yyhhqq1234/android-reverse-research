package com.netease.environment.utils;

import android.util.Log;

/* loaded from: classes.dex */
public class LogUtils {
    public static final String TAG = "EnvSDK_";
    private static boolean sIfLogConsole = false;

    public static void info(String tag, String message) {
        if (sIfLogConsole && tag != null && message != null) {
            Log.i(TAG + tag, message);
        }
    }

    public static void error(String tag, String message) {
        if (sIfLogConsole && tag != null && message != null) {
            Log.e(TAG + tag, message);
        }
    }

    public static void enableLog(boolean enable) {
        sIfLogConsole = enable;
    }
}
