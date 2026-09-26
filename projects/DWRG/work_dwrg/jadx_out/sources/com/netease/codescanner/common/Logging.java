package com.netease.codescanner.common;

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;

/* loaded from: classes.dex */
public class Logging {
    private static int a = 4;

    public static final void d(String str) {
        if (isLevelLogging(0)) {
            Log.d(getTag(), str);
        }
    }

    public static final void e(String str) {
        if (isLevelLogging(2)) {
            Log.e(getTag(), str);
        }
    }

    public static final String getTag() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        for (int i = 1; i < stackTrace.length; i++) {
            if (stackTrace[i - 1].getClassName().endsWith("common.Logging") && !stackTrace[i].getClassName().endsWith("common.Logging")) {
                return stackTrace[i].getClassName().replaceAll("^.*\\.", "");
            }
        }
        return "Logging";
    }

    public static final void i(String str) {
        if (isLevelLogging(1)) {
            Log.i(getTag(), str);
        }
    }

    public static boolean isLevelLogging(int i) {
        return a <= i;
    }

    public static void logStackTrace(Throwable th) {
        if (isLevelLogging(2)) {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            stringWriter.flush();
            e(stringWriter.toString());
        }
    }

    public static void setLogLevel(int i) {
        a = i;
    }
}
