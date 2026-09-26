package com.sina.weibo.sdk.statistic;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
class PageLog {
    private static String FILE_SESSION = "session";
    private static long MIN_ENDTIME = 1000;
    private long mDuration;
    private long mEnd_time;
    protected String mPage_id;
    protected long mStart_time;
    protected LogType mType;

    public PageLog(Context context) {
        this.mStart_time = getSessionTime(context, LogBuilder.KEY_START_TIME);
        this.mEnd_time = getSessionTime(context, LogBuilder.KEY_END_TIME);
        this.mDuration = this.mEnd_time - this.mStart_time;
    }

    public PageLog(String pageName) {
        this.mPage_id = pageName;
        this.mStart_time = System.currentTimeMillis();
    }

    public PageLog(Context context, long time) {
        this.mStart_time = time;
        this.mEnd_time = MIN_ENDTIME;
        updateSession(context, null, Long.valueOf(this.mStart_time), Long.valueOf(this.mEnd_time));
    }

    public PageLog(String pageName, long time) {
        this.mPage_id = pageName;
        this.mStart_time = time;
    }

    public LogType getType() {
        return this.mType;
    }

    public void setType(LogType type) {
        this.mType = type;
    }

    public String getPage_id() {
        return this.mPage_id;
    }

    public long getStartTime() {
        return this.mStart_time;
    }

    public long getEndTime() {
        return this.mEnd_time;
    }

    public void setDuration(long mDuration) {
        this.mDuration = mDuration;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public static boolean isNewSession(Context context, long curTime) {
        long last_endtime = getSessionTime(context, LogBuilder.KEY_END_TIME);
        return last_endtime > MIN_ENDTIME ? curTime - last_endtime > StatisticConfig.kContinueSessionMillis : last_endtime != MIN_ENDTIME;
    }

    private static long getSessionTime(Context context, String key) {
        SharedPreferences sp = context.getSharedPreferences(FILE_SESSION, 0);
        return sp.getLong(key, 0L);
    }

    public static void updateSession(Context context, String session_id, Long starttime, Long endtime) {
        SharedPreferences sp = context.getSharedPreferences(FILE_SESSION, 0);
        SharedPreferences.Editor editor = sp.edit();
        if (starttime.longValue() != 0) {
            editor.putLong(LogBuilder.KEY_START_TIME, starttime.longValue());
        }
        editor.putLong(LogBuilder.KEY_END_TIME, endtime.longValue());
        editor.commit();
    }
}
