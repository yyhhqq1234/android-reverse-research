package com.netease.inner.pushclient;

import android.content.Context;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;
import com.netease.push.utils.NotifyMessage;
import com.netease.push.utils.PushSetting;
import java.util.HashMap;
import java.util.Set;

/* loaded from: classes.dex */
public class NativePushManager {
    private static final String TAG = "NGPush_" + NativePushManager.class.getSimpleName() + "_inner";
    private static NativePushManager nativePushManager = new NativePushManager();
    private Context mContext = null;
    private HashMap<String, NativePushData> mNativePushHashMap = new HashMap<>();
    public final String PUSH_NAME_PREFIX = "nn_";

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    private NativePushManager() {
    }

    public static NativePushManager getInstance() {
        return nativePushManager;
    }

    public void init(Context context) {
        Log.i(TAG, "init");
        this.mContext = context;
        Log.d(TAG, "this:" + this);
        Set<String> nativePushNameSet = PushSetting.getNativePushNames(this.mContext);
        Log.d(TAG, "nativePushNameSet:" + nativePushNameSet);
    }

    public boolean newAlarm(String alarmID, String title, String msg, String ext) {
        String pushName = "nn_" + alarmID;
        Log.i(TAG, "newAlarm alarmID:" + alarmID + ", title:" + title + ", msg:" + msg + ", ext:" + ext + ", pushName:" + pushName);
        Set<String> nativePushNameSet = PushSetting.getNativePushNames(this.mContext);
        Log.d(TAG, "nativePushNameSet:" + nativePushNameSet);
        if (nativePushNameSet.contains(pushName)) {
            NativePushData nativePushData = PushSetting.getNativeNotification(this.mContext, pushName);
            if (nativePushData != null) {
                this.mNativePushHashMap.put(pushName, nativePushData);
            } else {
                PushSetting.rmNativePushName(this.mContext, pushName);
            }
        }
        if (this.mNativePushHashMap.containsKey(pushName)) {
            this.mNativePushHashMap.get(pushName).setMessage(title, msg, ext);
            return true;
        }
        NativePushData nativePushData2 = new NativePushData(pushName);
        nativePushData2.setMessage(title, msg, ext);
        this.mNativePushHashMap.put(pushName, nativePushData2);
        return true;
    }

    public boolean setAlarmTime(String alarmID, int hour, int minute) {
        return setAlarmTime(alarmID, hour, minute, 0, "");
    }

    public boolean setAlarmTime(String alarmID, int hour, int minute, String tz) {
        return setAlarmTime(alarmID, hour, minute, 0, tz);
    }

    public boolean setAlarmTime(String alarmID, int hour, int minute, int second, String tz) {
        String pushName = "nn_" + alarmID;
        Log.i(TAG, "setAlarmTime");
        Log.d(TAG, "pushName:" + pushName);
        Log.d(TAG, "alarmID:" + alarmID);
        Log.d(TAG, "hour:" + hour);
        Log.d(TAG, "minute:" + minute);
        Log.d(TAG, "second:" + second);
        Log.d(TAG, "tz:" + tz);
        if (this.mNativePushHashMap.containsKey(pushName)) {
            this.mNativePushHashMap.get(pushName).setTime(hour, minute, second, tz);
            return true;
        }
        return false;
    }

    public boolean setWeekRepeat(String alarmID, int weekMode) {
        String pushName = "nn_" + alarmID;
        Log.i(TAG, "setWeekRepeat alarmID:" + alarmID + ", weekMode:" + weekMode + ", pushName:" + pushName);
        if (weekMode > 127 || weekMode <= 0 || !this.mNativePushHashMap.containsKey(pushName)) {
            return false;
        }
        this.mNativePushHashMap.get(pushName).setWeekRepeat(weekMode);
        return true;
    }

    public boolean setMonthRepeat(String alarmID, int monthMode) {
        String pushName = "nn_" + alarmID;
        Log.i(TAG, "setMonthRepeat alarmID:" + alarmID + ", monthMode:" + monthMode + ", pushName:" + pushName);
        if (monthMode == 0 || !this.mNativePushHashMap.containsKey(pushName)) {
            return false;
        }
        this.mNativePushHashMap.get(pushName).setMonthRepeat(monthMode);
        return true;
    }

    public boolean setMonthRepeatBackwards(String alarmID, int monthMode) {
        String pushName = "nn_" + alarmID;
        Log.i(TAG, "setMonthRepeatBackwards alarmID:" + alarmID + ", monthMode:" + monthMode + ", pushName:" + pushName);
        if (monthMode == 0 || !this.mNativePushHashMap.containsKey(pushName)) {
            return false;
        }
        this.mNativePushHashMap.get(pushName).setMonthRepeatBackwards(monthMode);
        return true;
    }

    public boolean setOnce(String alarmID, int year, int month, int day) {
        String pushName = "nn_" + alarmID;
        Log.i(TAG, "setOnce alarmID:" + alarmID + ", year:" + year + ", month:" + month + ", day:" + day + ", pushName:" + pushName);
        if (this.mNativePushHashMap.containsKey(pushName)) {
            this.mNativePushHashMap.get(pushName).setOnce(year, month, day);
            return true;
        }
        return false;
    }

    public boolean setOnceUnixtime(String alarmID, long ut) {
        String pushName = "nn_" + alarmID;
        Log.i(TAG, "setOnceUnixtime alarmID:" + alarmID + ", ut:" + ut + ", pushName:" + pushName);
        if (this.mNativePushHashMap.containsKey(pushName)) {
            this.mNativePushHashMap.get(pushName).setOnceUnixtime(ut);
            return true;
        }
        return false;
    }

    public boolean startAlarm(String alarmID) {
        String pushName = "nn_" + alarmID;
        Log.i(TAG, "startAlarm alarmID:" + alarmID + ", pushName:" + pushName);
        if (!this.mNativePushHashMap.containsKey(pushName)) {
            Log.e(TAG, "mNativePushHashMap does not contain pushName");
            return false;
        }
        NativePushData nativePushData = this.mNativePushHashMap.get(pushName);
        nativePushData.createPushID(this.mContext);
        Log.d(TAG, "nativePushData.getPushName():" + nativePushData.getPushName());
        if (!pushName.equals(nativePushData.getPushName())) {
            Log.e(TAG, "invalid nativePushData: inconsistent pushName");
            return false;
        }
        Set<String> nativePushNameSet = PushSetting.getNativePushNames(this.mContext);
        Log.d(TAG, "nativePushNameSet:" + nativePushNameSet);
        if (nativePushNameSet.contains(pushName)) {
            stopPushWithPushName(pushName);
        }
        if (!nativePushNameSet.contains(pushName)) {
            if (nativePushNameSet.size() >= 500) {
                Log.e(TAG, "exceed max alarm count!");
                this.mNativePushHashMap.remove(pushName);
                return false;
            }
            nativePushNameSet.add(pushName);
            PushSetting.setNativePushNames(this.mContext, nativePushNameSet);
        }
        boolean ret = PushSetting.setNativeNotification(this.mContext, nativePushData);
        if (!ret) {
            Log.e(TAG, "PushSetting.setNativeNotification error");
            this.mNativePushHashMap.remove(pushName);
            nativePushNameSet.remove(pushName);
            PushSetting.rmNativePushName(this.mContext, pushName);
            return false;
        }
        Log.d(TAG, "nativePushData.startAlarm");
        nativePushData.startAlarm(this.mContext);
        return true;
    }

    public boolean startAlarm(NativePushData nativePushData) {
        Log.i(TAG, "startAlarm nativePushData:" + nativePushData + ", this:" + this);
        if (nativePushData == null) {
            Log.e(TAG, "nativePushData is null");
            return false;
        }
        String pushName = nativePushData.getPushName();
        Log.d(TAG, "pushName:" + pushName);
        Set<String> nativePushNameSet = PushSetting.getNativePushNames(this.mContext);
        Log.d(TAG, "nativePushNameSet:" + nativePushNameSet);
        if (nativePushNameSet.contains(pushName)) {
            NativePushData nativePushDataTemp = PushSetting.getNativeNotification(this.mContext, pushName);
            if (nativePushDataTemp != null) {
                this.mNativePushHashMap.put(pushName, nativePushDataTemp);
            } else {
                nativePushNameSet.remove(pushName);
                PushSetting.rmNativePushName(this.mContext, pushName);
            }
        }
        NotifyMessage notifyMessage = nativePushData.getNotifyMessage();
        if (this.mNativePushHashMap.containsKey(pushName)) {
            this.mNativePushHashMap.get(pushName).setMessage(notifyMessage.mTitle, notifyMessage.mMsg, notifyMessage.mExt);
        } else {
            this.mNativePushHashMap.put(pushName, nativePushData);
        }
        NativePushData pushData = this.mNativePushHashMap.get(pushName);
        pushData.createPushID(this.mContext);
        Log.d(TAG, "pushData.getPushName():" + pushData.getPushName());
        if (!pushName.equals(pushData.getPushName())) {
            Log.e(TAG, "invalid pushData: inconsistent pushName");
            return false;
        }
        if (nativePushNameSet.contains(pushName)) {
            stopPushWithPushName(pushName);
        }
        if (!nativePushNameSet.contains(pushName)) {
            if (nativePushNameSet.size() >= 500) {
                Log.e(TAG, "exceed max alarm count!");
                this.mNativePushHashMap.remove(pushName);
                return false;
            }
            nativePushNameSet.add(pushName);
            PushSetting.setNativePushNames(this.mContext, nativePushNameSet);
        }
        boolean ret = PushSetting.setNativeNotification(this.mContext, pushData);
        if (!ret) {
            Log.e(TAG, "PushSetting.setNativeNotification error");
            this.mNativePushHashMap.remove(pushName);
            nativePushNameSet.remove(pushName);
            PushSetting.rmNativePushName(this.mContext, pushName);
            return false;
        }
        Log.d(TAG, "pushData.startAlarm");
        pushData.startAlarm(this.mContext);
        return true;
    }

    public boolean stopPush(String alarmID) {
        NativePushData nativePushData;
        String pushName = "nn_" + alarmID;
        Log.i(TAG, "stopPush alarmID:" + alarmID + ", pushName:" + pushName);
        if (this.mNativePushHashMap.containsKey(pushName)) {
            NativePushData nativePushData2 = this.mNativePushHashMap.get(pushName);
            nativePushData = nativePushData2;
        } else {
            nativePushData = PushSetting.getNativeNotification(this.mContext, pushName);
        }
        if (nativePushData != null) {
            nativePushData.stopAlarm(this.mContext);
            return true;
        }
        return false;
    }

    private boolean stopPushWithPushName(String pushName) {
        Log.i(TAG, "stopPushWithPushName pushName:" + pushName);
        if (!this.mNativePushHashMap.containsKey(pushName)) {
            return false;
        }
        NativePushData nativePushData = this.mNativePushHashMap.get(pushName);
        nativePushData.stopAlarm(this.mContext);
        return true;
    }

    public boolean removeAlarm(String alarmID) {
        Log.i(TAG, "removeAlarm alarmID:" + alarmID);
        stopPush(alarmID);
        String pushName = "nn_" + alarmID;
        Log.d(TAG, "pushName:" + pushName);
        this.mNativePushHashMap.remove(pushName);
        PushSetting.rmNativePushName(this.mContext, pushName);
        return true;
    }

    public boolean removeAllAlarms() {
        Set<String> nativePushNameSet = PushSetting.getNativePushNames(this.mContext);
        Log.i(TAG, "removeAllAlarms, nativePushNameSet=" + nativePushNameSet);
        int start = "nn_".length();
        for (String pushName : nativePushNameSet) {
            String id = pushName.substring(start);
            Log.i(TAG, "id=" + id);
            stopPush(id);
        }
        this.mNativePushHashMap.clear();
        PushSetting.rmAllNativePushNames(this.mContext);
        return true;
    }

    public String[] getAllAlarms() {
        Set<String> nativePushNameSet = PushSetting.getNativePushNames(this.mContext);
        Log.i(TAG, "getAllAlarms, nativePushNameSet=" + nativePushNameSet);
        String[] ids = new String[nativePushNameSet.size()];
        int start = "nn_".length();
        int i = 0;
        for (String pushName : nativePushNameSet) {
            String id = pushName.substring(start);
            ids[i] = id;
            i++;
        }
        return ids;
    }
}
