package com.sina.weibo.sdk.statistic;

import android.content.Context;

/* loaded from: classes.dex */
class StatisticConfig {
    private static final long MAX_UPLOAD_INTERVAL = 28800000;
    private static String mAppkey = null;
    private static String mChannel = null;
    public static boolean ACTIVITY_DURATION_OPEN = true;
    private static boolean mNeedGizp = true;
    public static final long MIN_UPLOAD_INTERVAL = 30000;
    public static long kContinueSessionMillis = MIN_UPLOAD_INTERVAL;
    private static final long DEFAULT_UPLOAD_INTERVAL = 90000;
    private static long kUploadInterval = DEFAULT_UPLOAD_INTERVAL;
    private static long kForceUploadInterval = MIN_UPLOAD_INTERVAL;

    StatisticConfig() {
    }

    public static void setAppkey(String appkey) {
        mAppkey = appkey;
    }

    public static void setChannel(String channel) {
        mChannel = channel;
    }

    public static String getAppkey(Context context) {
        if (mAppkey == null) {
            mAppkey = LogBuilder.getAppKey(context);
        }
        return mAppkey;
    }

    public static String getChannel(Context context) {
        if (mChannel == null) {
            mChannel = LogBuilder.getChannel(context);
        }
        return mChannel;
    }

    public static long getUploadInterval() {
        return kUploadInterval;
    }

    public static void setUploadInterval(long kUploadInterval2) throws Exception {
        if (kUploadInterval2 < MIN_UPLOAD_INTERVAL || kUploadInterval2 > MAX_UPLOAD_INTERVAL) {
            throw new Exception("The interval must be between 30 seconds and 8 hours");
        }
        kUploadInterval = kUploadInterval2;
    }

    public static boolean isNeedGizp() {
        return mNeedGizp;
    }

    public static void setNeedGizp(boolean needGizp) {
        mNeedGizp = needGizp;
    }

    public static long getForceUploadInterval() {
        return kForceUploadInterval;
    }

    public static void setForceUploadInterval(long forceUploadInterval) {
        kForceUploadInterval = forceUploadInterval;
    }
}
