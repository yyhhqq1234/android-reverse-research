package com.ta.utdid2.android.utils;

import android.util.Log;
import com.sina.weibo.sdk.statistic.LogBuilder;

/* loaded from: classes.dex */
public class TimeUtils {
    public static final String TAG = TimeUtils.class.getName();
    public static final int TOTAL_M_S_ONE_DAY = 86400000;

    public static boolean isUpToDate(long j, int i) {
        boolean z = (System.currentTimeMillis() - j) / LogBuilder.MAX_INTERVAL < ((long) i);
        if (DebugUtils.DBG) {
            Log.d(TAG, "isUpToDate: " + z + "; oldTimestamp: " + j + "; currentTimestamp" + System.currentTimeMillis());
        }
        return z;
    }
}
