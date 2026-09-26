package com.netease.download.util;

import android.util.Log;
import com.netease.download.Const;
import com.netease.ntunisdk.base.ReplacebyPatch;

/* loaded from: classes.dex */
public class LogUtil {
    private static final String TAG = "Downloader";
    public static boolean mIsShowLog = true;

    public static void v(String tag, String info) {
        if (mIsShowLog) {
            if (TAG != 0) {
                Log.v(TAG, info);
            } else {
                Log.v(tag, info);
            }
        }
    }

    public static void d(String tag, String info) {
        if (mIsShowLog) {
            if (TAG != 0) {
                Log.d(TAG, info);
            } else {
                Log.d(tag, info);
            }
        }
    }

    public static void i(String tag, String info) {
        if (mIsShowLog) {
            if (TAG != 0) {
                Log.i(TAG, info);
            } else {
                Log.i(tag, info);
            }
        }
    }

    public static void w(String tag, String info) {
        if (mIsShowLog) {
            if (TAG != 0) {
                Log.w(TAG, info);
            } else {
                Log.w(tag, info);
            }
        }
    }

    public static void e(String tag, String info) {
        if (mIsShowLog) {
            if (TAG != 0) {
                Log.e(TAG, info);
            } else {
                Log.e(tag, info);
            }
        }
    }

    private void supportPatch() {
        Log.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }

    public static boolean IsShowLog() {
        return mIsShowLog;
    }

    public static void setIsShowLog(boolean isShowLog) {
        mIsShowLog = isShowLog;
    }

    public static void stepLog(String info) {
        if (mIsShowLog) {
            Log.i(TAG, "=============================================");
            Log.i(TAG, info);
            Log.i(TAG, "=============================================");
        }
    }
}
