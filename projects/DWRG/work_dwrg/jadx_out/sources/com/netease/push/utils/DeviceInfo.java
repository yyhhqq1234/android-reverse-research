package com.netease.push.utils;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;

/* loaded from: classes.dex */
public class DeviceInfo {
    private static final String TAG = "NGPush_" + DeviceInfo.class.getSimpleName();

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public static boolean isMIUI(Context ctx) {
        Log.i(TAG, "Build.MODEL:" + Build.MODEL);
        Log.i(TAG, "Build.BRAND:" + Build.BRAND);
        Log.i(TAG, "Build.MANUFACTURER:" + Build.MANUFACTURER);
        return "xiaomi".equalsIgnoreCase(Build.BRAND);
    }

    public static boolean isHuawei(Context ctx) {
        Log.i(TAG, "Build.MODEL:" + Build.MODEL);
        Log.i(TAG, "Build.BRAND:" + Build.BRAND);
        Log.i(TAG, "Build.MANUFACTURER:" + Build.MANUFACTURER);
        return PushConstants.HUAWEI.equalsIgnoreCase(Build.BRAND);
    }
}
