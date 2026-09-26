package com.sina.weibo.sdk.utils;

import android.util.Log;

/* loaded from: classes.dex */
public class LogUtil {
    public static boolean sIsLogEnable = false;

    public static void enableLog() {
        sIsLogEnable = true;
    }

    public static void disableLog() {
        sIsLogEnable = false;
    }

    public static void d(String tag, String msg) {
        if (sIsLogEnable) {
            StackTraceElement stackTrace = Thread.currentThread().getStackTrace()[3];
            String fileInfo = String.valueOf(stackTrace.getFileName()) + "(" + stackTrace.getLineNumber() + ") " + stackTrace.getMethodName();
            Log.d(tag, String.valueOf(fileInfo) + ": " + msg);
        }
    }

    public static void i(String tag, String msg) {
        if (sIsLogEnable) {
            StackTraceElement stackTrace = Thread.currentThread().getStackTrace()[3];
            String fileInfo = String.valueOf(stackTrace.getFileName()) + "(" + stackTrace.getLineNumber() + ") " + stackTrace.getMethodName();
            Log.i(tag, String.valueOf(fileInfo) + ": " + msg);
        }
    }

    public static void e(String tag, String msg) {
        if (sIsLogEnable) {
            StackTraceElement stackTrace = Thread.currentThread().getStackTrace()[3];
            String fileInfo = String.valueOf(stackTrace.getFileName()) + "(" + stackTrace.getLineNumber() + ") " + stackTrace.getMethodName();
            Log.e(tag, String.valueOf(fileInfo) + ": " + msg);
        }
    }

    public static void w(String tag, String msg) {
        if (sIsLogEnable) {
            StackTraceElement stackTrace = Thread.currentThread().getStackTrace()[3];
            String fileInfo = String.valueOf(stackTrace.getFileName()) + "(" + stackTrace.getLineNumber() + ") " + stackTrace.getMethodName();
            Log.w(tag, String.valueOf(fileInfo) + ": " + msg);
        }
    }

    public static void v(String tag, String msg) {
        if (sIsLogEnable) {
            StackTraceElement stackTrace = Thread.currentThread().getStackTrace()[3];
            String fileInfo = String.valueOf(stackTrace.getFileName()) + "(" + stackTrace.getLineNumber() + ") " + stackTrace.getMethodName();
            Log.v(tag, String.valueOf(fileInfo) + ": " + msg);
        }
    }

    public static String getStackTraceMsg() {
        StackTraceElement stackTrace = Thread.currentThread().getStackTrace()[3];
        String fileInfo = String.valueOf(stackTrace.getFileName()) + "(" + stackTrace.getLineNumber() + ") " + stackTrace.getMethodName();
        return fileInfo;
    }
}
