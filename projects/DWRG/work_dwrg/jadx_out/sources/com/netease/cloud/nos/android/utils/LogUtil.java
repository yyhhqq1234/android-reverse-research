package com.netease.cloud.nos.android.utils;

import android.util.Log;

/* loaded from: classes.dex */
public class LogUtil {
    public static final int ASSERT = 7;
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    private static int level = 2;

    public static String makeLogTag(Class cls) {
        return "NetEaseNosService_" + cls.getSimpleName();
    }

    public static int getLevel() {
        return level;
    }

    public static void setLevel(int level2) {
        level = level2;
    }

    private LogUtil() {
    }

    public static int v(String tag, String msg) {
        if (2 >= level) {
            return Log.v(tag, msg);
        }
        return 0;
    }

    public static int v(String tag, String msg, Throwable tr) {
        if (2 >= level) {
            return Log.v(tag, msg, tr);
        }
        return 0;
    }

    public static int d(String tag, String msg) {
        if (3 >= level) {
            return Log.d(tag, msg);
        }
        return 0;
    }

    public static int d(String tag, String msg, Throwable tr) {
        if (3 >= level) {
            return Log.d(tag, msg, tr);
        }
        return 0;
    }

    public static int i(String tag, String msg) {
        if (4 >= level) {
            return Log.i(tag, msg);
        }
        return 0;
    }

    public static int i(String tag, String msg, Throwable tr) {
        if (4 >= level) {
            return Log.i(tag, msg, tr);
        }
        return 0;
    }

    public static int e(String tag, String msg) {
        if (6 >= level) {
            return Log.e(tag, msg);
        }
        return 0;
    }

    public static int e(String tag, String msg, Throwable tr) {
        if (6 >= level) {
            return Log.e(tag, msg, tr);
        }
        return 0;
    }

    public static int w(String tag, String msg) {
        if (5 >= level) {
            return Log.w(tag, msg);
        }
        return 0;
    }

    public static int w(String tag, Throwable tr) {
        if (5 >= level) {
            return Log.w(tag, tr);
        }
        return 0;
    }

    public static int w(String tag, String msg, Throwable tr) {
        if (5 >= level) {
            return Log.w(tag, msg, tr);
        }
        return 0;
    }
}
