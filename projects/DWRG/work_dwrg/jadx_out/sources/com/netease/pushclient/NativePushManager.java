package com.netease.pushclient;

import android.content.Context;
import android.util.Log;
import com.netease.inner.pushclient.NativePushData;
import com.netease.ntunisdk.base.PatchPlaceholder;

/* loaded from: classes.dex */
public class NativePushManager {
    private static final String TAG = "NGPush_" + NativePushManager.class.getSimpleName();
    public static Context mContext = null;

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public static void init(Context context) {
        mContext = context;
        if (mContext != null) {
            com.netease.inner.pushclient.NativePushManager.getInstance().init(mContext);
        }
    }

    public static boolean newAlarm(String alarmID, String title, String msg, String ext) {
        if (mContext != null) {
            return com.netease.inner.pushclient.NativePushManager.getInstance().newAlarm(alarmID, title, msg, ext);
        }
        return false;
    }

    public static boolean setAlarmTime(String alarmID, int hour, int minute) {
        if (mContext != null) {
            return com.netease.inner.pushclient.NativePushManager.getInstance().setAlarmTime(alarmID, hour, minute);
        }
        return false;
    }

    public static boolean setAlarmTime(String alarmID, int hour, int minute, String tz) {
        if (mContext != null) {
            return com.netease.inner.pushclient.NativePushManager.getInstance().setAlarmTime(alarmID, hour, minute, tz);
        }
        return false;
    }

    public static boolean setAlarmTime(String alarmID, int hour, int minute, int second, String tz) {
        if (mContext != null) {
            return com.netease.inner.pushclient.NativePushManager.getInstance().setAlarmTime(alarmID, hour, minute, second, tz);
        }
        return false;
    }

    public static boolean setWeekRepeat(String alarmID, int weekMode) {
        if (mContext != null) {
            return com.netease.inner.pushclient.NativePushManager.getInstance().setWeekRepeat(alarmID, weekMode);
        }
        return false;
    }

    public static boolean setMonthRepeat(String alarmID, int monthMode) {
        if (mContext != null) {
            return com.netease.inner.pushclient.NativePushManager.getInstance().setMonthRepeat(alarmID, monthMode);
        }
        return false;
    }

    public static boolean setMonthRepeatBackwards(String alarmID, int monthMode) {
        if (mContext != null) {
            return com.netease.inner.pushclient.NativePushManager.getInstance().setMonthRepeatBackwards(alarmID, monthMode);
        }
        return false;
    }

    public static boolean setOnce(String alarmID, int year, int month, int day) {
        if (mContext != null) {
            return com.netease.inner.pushclient.NativePushManager.getInstance().setOnce(alarmID, year, month, day);
        }
        return false;
    }

    public static boolean setOnceUnixtime(String alarmID, long ut) {
        if (mContext != null) {
            return com.netease.inner.pushclient.NativePushManager.getInstance().setOnceUnixtime(alarmID, ut);
        }
        return false;
    }

    public static boolean setOnceLater(String alarmID, int delaySecond) {
        if (mContext != null) {
            return com.netease.inner.pushclient.NativePushManager.getInstance().setOnceUnixtime(alarmID, (System.currentTimeMillis() / 1000) + delaySecond);
        }
        return false;
    }

    public static boolean startAlarm(String alarmID) {
        if (mContext != null) {
            return com.netease.inner.pushclient.NativePushManager.getInstance().startAlarm(alarmID);
        }
        return false;
    }

    public static boolean startAlarm(NativePushData nativePushData) {
        if (mContext != null) {
            return com.netease.inner.pushclient.NativePushManager.getInstance().startAlarm(nativePushData);
        }
        return false;
    }

    public static boolean stopPush(String alarmID) {
        if (mContext != null) {
            return com.netease.inner.pushclient.NativePushManager.getInstance().stopPush(alarmID);
        }
        return false;
    }

    public static boolean removeAlarm(String alarmID) {
        if (mContext != null) {
            return com.netease.inner.pushclient.NativePushManager.getInstance().removeAlarm(alarmID);
        }
        return false;
    }

    public static boolean removeAllAlarms() {
        if (mContext != null) {
            return com.netease.inner.pushclient.NativePushManager.getInstance().removeAllAlarms();
        }
        return false;
    }

    public static String[] getAllAlarms() {
        if (mContext != null) {
            return com.netease.inner.pushclient.NativePushManager.getInstance().getAllAlarms();
        }
        return null;
    }
}
