package com.netease.inner.pushclient;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;
import com.netease.push.utils.NotifyMessage;
import com.netease.push.utils.PushConstants;
import com.netease.push.utils.PushSetting;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class NativePushData {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final int ONCE = 0;
    public static final int REPEAT_MONTH = 2;
    public static final int REPEAT_MONTH_BACKWARDS = 3;
    public static final int REPEAT_WEEK = 1;
    private static final String TAG;
    private String mPushName;
    private NotifyMessage mNotifyMessage = new NotifyMessage();
    private int mHour = 0;
    private int mMinute = 0;
    private int mSecond = 0;
    private String mTimeZone = "";
    private int delayTriggerSec = 0;
    private int mRepeatMode = 0;
    private int mMode = 0;
    private int mYear = 0;
    private int mMonth = 0;
    private int mDay = 0;
    private int mPushID = 0;

    static {
        $assertionsDisabled = !NativePushData.class.desiredAssertionStatus();
        TAG = "NGPush_" + NativePushData.class.getSimpleName();
    }

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public NotifyMessage getNotifyMessage() {
        return this.mNotifyMessage;
    }

    public void setDelayTriggerSec(int t) {
        this.delayTriggerSec = t;
        Log.i(TAG, "delay trigger second:" + t);
    }

    public int getRepeatMode() {
        return this.mRepeatMode;
    }

    public String getPushName() {
        return this.mPushName;
    }

    public NativePushData(String pushName) {
        this.mPushName = "default";
        clear();
        this.mPushName = pushName;
    }

    public void clear() {
        this.mNotifyMessage.clear();
        this.mHour = 0;
        this.mMinute = 0;
        this.mSecond = 0;
        this.mMode = 0;
        this.mYear = 0;
        this.mMonth = 0;
        this.mDay = 0;
        this.mRepeatMode = 0;
        this.mPushName = "default";
        this.mPushID = 0;
    }

    public void setMessage(String title, String msg, String ext) {
        this.mNotifyMessage.mTitle = title;
        this.mNotifyMessage.mMsg = msg;
        this.mNotifyMessage.mExt = ext;
    }

    public void setTime(int hour, int minute) {
        this.mHour = hour;
        this.mMinute = minute;
        this.mSecond = 0;
    }

    public void setTime(int hour, int minute, int second) {
        this.mHour = hour;
        this.mMinute = minute;
        this.mSecond = second;
    }

    public void setTime(int hour, int minute, String tz) {
        this.mHour = hour;
        this.mMinute = minute;
        this.mSecond = 0;
        this.mTimeZone = tz;
    }

    public void setTime(int hour, int minute, int second, String tz) {
        this.mHour = hour;
        this.mMinute = minute;
        this.mSecond = second;
        this.mTimeZone = tz;
    }

    public void setWeekRepeat(int weekMode) {
        if (!$assertionsDisabled && (weekMode <= 0 || weekMode > 127)) {
            throw new AssertionError();
        }
        this.mRepeatMode = 1;
        this.mMode = weekMode;
    }

    public void setMonthRepeat(int monthMode) {
        this.mRepeatMode = 2;
        this.mMode = monthMode;
    }

    public void setMonthRepeatBackwards(int monthMode) {
        this.mRepeatMode = 3;
        this.mMode = monthMode;
    }

    public void setOnce(int year, int month, int day) {
        this.mRepeatMode = 0;
        this.mYear = year;
        this.mMonth = month;
        this.mDay = day;
    }

    public void setOnceUnixtime(long ut) {
        Calendar c = Calendar.getInstance();
        c.setTime(new Date(1000 * ut));
        if (!TextUtils.isEmpty(this.mTimeZone)) {
            c.setTimeZone(TimeZone.getTimeZone(this.mTimeZone));
        } else {
            c.setTimeZone(TimeZone.getDefault());
        }
        this.mYear = c.get(1);
        this.mMonth = c.get(2);
        this.mDay = c.get(5);
        this.mHour = c.get(11);
        this.mMinute = c.get(12);
        this.mSecond = c.get(13);
        this.mRepeatMode = 0;
    }

    public void createPushID(Context context) {
        String push = String.valueOf(context.getPackageName()) + this.mPushName;
        this.mPushID = push.hashCode();
    }

    public Intent getNativeNotifyIntent(String packageName) {
        Intent intent = PushClientReceiver.createMethodIntent();
        intent.setPackage(packageName);
        intent.putExtra(PushConstants.INTENT_PACKAGE_NAME, packageName);
        intent.putExtra(PushConstants.INTENT_PUSH_NAME, this.mPushName);
        intent.putExtra("method", "nativenotify");
        return intent;
    }

    private long getTriggerAtMillis() {
        long systemTime = System.currentTimeMillis();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        if (!TextUtils.isEmpty(this.mTimeZone)) {
            calendar.setTimeZone(TimeZone.getTimeZone(this.mTimeZone));
        } else {
            calendar.setTimeZone(TimeZone.getDefault());
        }
        calendar.set(11, this.mHour);
        calendar.set(12, this.mMinute);
        calendar.set(13, this.mSecond);
        calendar.set(14, 0);
        long selectTime = 0;
        if (this.mRepeatMode == 0) {
            calendar.set(this.mYear, this.mMonth, this.mDay);
            selectTime = calendar.getTimeInMillis();
        } else if (this.mRepeatMode == 1) {
            if (this.mMode == 0) {
                return 0L;
            }
            int mode = 0;
            if ((this.mMode & 64) != 0) {
                mode = 1;
            }
            selectTime = getRepeatNextTime(calendar, 7, ((this.mMode << 1) | mode) & 127);
        } else if (this.mRepeatMode == 2 || this.mRepeatMode == 3) {
            if (this.mMode == 0) {
                return 0L;
            }
            selectTime = getRepeatNextTime(calendar, 5, this.mMode);
        }
        Log.i(TAG, String.format("%s next trigger time:%s, after %d sec", this.mPushName, calendar.getTime().toString(), Long.valueOf((selectTime - systemTime) / 1000)));
        if (selectTime < systemTime) {
            return 0L;
        }
        return (0 + selectTime) - systemTime;
    }

    private long getRepeatNextTime(Calendar calendar, int field, int pattern) {
        long selectTime = calendar.getTimeInMillis();
        long systemTime = System.currentTimeMillis() + (this.delayTriggerSec * 1000);
        if (this.mRepeatMode != 3) {
            while (true) {
                if (selectTime >= systemTime && ((1 << (calendar.get(field) - 1)) & pattern) != 0) {
                    break;
                }
                calendar.add(5, 1);
                selectTime = calendar.getTimeInMillis();
            }
        } else {
            Calendar gcar = new GregorianCalendar(calendar.get(1), calendar.get(2), calendar.get(5));
            while (true) {
                if (selectTime >= systemTime && ((1 << (gcar.getActualMaximum(5) - calendar.get(field))) & pattern) != 0) {
                    break;
                }
                calendar.add(5, 1);
                selectTime = calendar.getTimeInMillis();
                gcar.add(5, 1);
            }
        }
        Log.d(TAG, "getRepeatNextTime select:" + selectTime + " dalayTriggerSec:" + this.delayTriggerSec + " current:" + System.currentTimeMillis());
        return selectTime;
    }

    public void startAlarm(Context context) {
        Intent intent = getNativeNotifyIntent(context.getPackageName());
        startAlarm(context, intent);
    }

    public void startAlarm(Context context, String packageName) {
        Intent intent = getNativeNotifyIntent(packageName);
        startAlarm(context, intent);
    }

    @SuppressLint({"NewApi"})
    public void startAlarm(Context context, Intent intent) {
        Log.i(TAG, "startAlarm mPushName=" + this.mPushName);
        PendingIntent pendingIntent = PendingIntent.getBroadcast(context, this.mPushID, intent, 1073741824);
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        long triggerAtMillis = getTriggerAtMillis();
        if (triggerAtMillis > 0) {
            long triggerAtMillis2 = triggerAtMillis + System.currentTimeMillis();
            Log.d(TAG, String.valueOf(this.mPushName) + " triggerAtmillis:" + triggerAtMillis2);
            if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, triggerAtMillis2, pendingIntent);
                return;
            } else {
                alarmManager.set(0, triggerAtMillis2, pendingIntent);
                return;
            }
        }
        Log.d(TAG, "triggerAtmillis timeout");
        PushSetting.rmNativePushName(context, this.mPushName);
    }

    public void stopAlarm(Context context) {
        Log.i(TAG, "stopAlarm mPushName=" + this.mPushName);
        Intent intent = getNativeNotifyIntent(context.getPackageName());
        PendingIntent pendingIntent = PendingIntent.getBroadcast(context, this.mPushID, intent, 0);
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        alarmManager.cancel(pendingIntent);
    }

    public String writeToJsonString() throws JSONException {
        JSONObject jsonObject = new JSONObject();
        String sMessage = this.mNotifyMessage.writeToJsonString();
        jsonObject.put("notify", sMessage);
        jsonObject.put("repeat", this.mRepeatMode);
        jsonObject.put("mode", this.mMode);
        jsonObject.put("year", this.mYear);
        jsonObject.put("month", this.mMonth);
        jsonObject.put("day", this.mDay);
        jsonObject.put("hour", this.mHour);
        jsonObject.put("min", this.mMinute);
        jsonObject.put("sec", this.mSecond);
        jsonObject.put("pushid", this.mPushID);
        return jsonObject.toString();
    }

    public static NativePushData readFromJsonString(String pushName, String data) throws JSONException {
        JSONObject jsonObject = new JSONObject(data);
        NativePushData nativePushData = new NativePushData(pushName);
        String messageData = jsonObject.getString("notify");
        nativePushData.mNotifyMessage = NotifyMessage.readFromJsonString(messageData);
        nativePushData.mRepeatMode = jsonObject.getInt("repeat");
        nativePushData.mMode = jsonObject.getInt("mode");
        nativePushData.mHour = jsonObject.getInt("hour");
        nativePushData.mMinute = jsonObject.getInt("min");
        try {
            nativePushData.mSecond = jsonObject.getInt("sec");
        } catch (Exception e) {
            nativePushData.mSecond = 0;
        }
        nativePushData.mPushID = jsonObject.getInt("pushid");
        nativePushData.mYear = jsonObject.getInt("year");
        nativePushData.mMonth = jsonObject.getInt("month");
        nativePushData.mDay = jsonObject.getInt("day");
        return nativePushData;
    }
}
