package com.netease.epay.sdk.base.util;

import android.util.Log;
import com.netease.download.Const;
import com.netease.epay.sdk.base.core.SdkConfig;

/* loaded from: classes.dex */
public class LogUtil {
    private static String defaultTag = "epaySdk";

    public static void e(String msg, Throwable t) {
        Log.e(defaultTag, getTargetStackTraceElement(msg), t);
    }

    public static void e(String msg) {
        Log.e(defaultTag, getTargetStackTraceElement(msg));
    }

    public static void d(String msg) {
    }

    public static void v(String msg) {
        if (SdkConfig.isLogEnable) {
            Log.v(defaultTag, msg);
        }
    }

    private static String getTargetStackTraceElement(String msg) {
        StackTraceElement stackTraceElement;
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int length = stackTrace.length;
        int i = 0;
        boolean z = false;
        while (true) {
            if (i >= length) {
                stackTraceElement = null;
                break;
            }
            stackTraceElement = stackTrace[i];
            boolean equals = stackTraceElement.getClassName().equals(LogUtil.class.getName());
            if (z && !equals) {
                break;
            }
            i++;
            z = equals;
        }
        return "(" + stackTraceElement.getFileName() + Const.RESP_CONTENT_SPIT2 + stackTraceElement.getLineNumber() + "):" + msg;
    }
}
