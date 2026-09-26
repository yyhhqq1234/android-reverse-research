package com.netease.pharos.util;

import android.util.Log;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;

/* loaded from: classes.dex */
public class LogUtil {
    private static final String TAG = "pharos";
    private static boolean sIsDebug = false;

    public static void setIsShowLog(boolean isDebug) {
        sIsDebug = isDebug;
        Log.i(TAG, "pharos sIsDebug = " + sIsDebug);
    }

    public static void v(String tag, String info) {
        if (sIsDebug) {
            if (TAG != 0) {
                Log.v(TAG, info);
            } else {
                Log.v(tag, info);
            }
        }
    }

    public static void d(String tag, String info) {
        if (sIsDebug) {
            if (TAG != 0) {
                Log.d(TAG, info);
            } else {
                Log.d(tag, info);
            }
        }
    }

    public static void i(String tag, String info) {
        if (sIsDebug) {
            if (TAG != 0) {
                Log.i(TAG, info);
            } else {
                Log.i(tag, info);
            }
        }
    }

    public static void w(String tag, String info) {
        if (sIsDebug) {
            if (TAG != 0) {
                Log.w(TAG, info);
            } else {
                Log.w(tag, info);
            }
        }
    }

    public static void e(String tag, String info) {
        if (sIsDebug) {
            if (TAG != 0) {
                Log.e(TAG, info);
            } else {
                Log.e(tag, info);
            }
        }
    }

    public static void stepLog(String info) {
        if (sIsDebug) {
            Log.i(TAG, "=============================================");
            Log.i(TAG, info);
            Log.i(TAG, "=============================================");
        }
    }

    private void supportPatch() {
        v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
