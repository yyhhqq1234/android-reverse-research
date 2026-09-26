package com.netease.push.utils;

import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;

/* loaded from: classes.dex */
public class PushConstants {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final String ACTION_HEAD = "com.netease.push.action.";
    public static final String ANDROIR_PUHS_TAG = "AndroidPush";
    public static final String CLIENT_ACTION_HEAD = "com.netease.push.action.client.";
    public static final String CLIENT_ACTION_MESSAGE = "com.netease.push.action.client.MESSAGE";
    public static final String CLIENT_ACTION_MESSAGE_GCM = "com.google.android.c2dm.intent.RECEIVE";
    public static final String CLIENT_ACTION_METHOD = "com.netease.push.action.client.METHOD";
    public static final String CLIENT_ACTION_NOTIFICATION_CLICK = "com.netease.push.action.client.NOTIFICATION_CLICK";
    public static final String CLIENT_ACTION_REFRESH_DEVID = "com.netease.push.action.client.NEWID";
    public static final int CLIENT_MESSAGE_VER = 1;
    public static final String CLIENT_METHOD_NATIVENOTIFY = "nativenotify";
    public static final String CLIENT_METHOD_ONBIND = "onbind";
    public static final String CLIENT_METHOD_ONUNBIND = "onunbind";
    public static final int CLIENT_METHOD_VER = 1;
    public static final int CLIENT_NEWID_VER = 1;
    public static final String COMMON_PARAMETER_SEPARATOR = ",";
    public static final int EVERYDAY = 127;
    public static final int FRIDAY = 16;
    public static final String GCM = "gcm";
    public static final String HEAD = "com.netease.push.";
    public static final String HUAWEI = "huawei";
    public static final String INTENT_DEVID_NAME = "devid";
    public static final String INTENT_FLAG_NAME = "flag";
    public static final String INTENT_LASTTIME_NAME = "lasttime";
    public static final String INTENT_MESSAGE_NAME = "message";
    public static final String INTENT_METHOD_NAME = "method";
    public static final String INTENT_PACKAGE_NAME = "package";
    public static final String INTENT_PUSH_NAME = "pushname";
    public static final int JAR_VER_CODE = 18;
    public static final String KEY_SEPARATOR = ".";
    public static final int MAX_ALARM_COUNT = 500;
    public static final int MAX_RECONNECT_COUNT = 7;
    public static final String MESSAGE_CONTENT = "content";
    public static final String MESSAGE_EXT = "ext";
    public static final String MESSAGE_ICON = "icon";
    public static final String MESSAGE_TITLE = "title";
    public static final String MESSAGE_VER_NAME = "message_ver";
    public static final String METHOD_VER_NAME = "method_ver";
    public static final String MIUI = "miui";
    public static final int MONDAY = 1;
    public static final String NEWID_VER_NAME = "newid_ver";
    public static final String NIEPUSH = "niepush";
    public static final String NOTIFICATION_EXT = "NOTIFICATION_EXT";
    public static final String NOTIFICATION_ICON = "NOTIFICATION_ICON";
    public static final String NOTIFICATION_MESSAGE = "NOTIFICATION_MESSAGE";
    public static final String NOTIFICATION_NOTIFYID = "NOTIFICATION_NOTIFYID";
    public static final String NOTIFICATION_TITLE = "NOTIFICATION_TITLE";
    public static final String NOTIFICATION_URI = "NOTIFICATION_URI";
    public static final int REQ_READ_PHONE_STATE = 1;
    public static final int REQ_WRITE_EXTERNAL_STORAGE = 0;
    public static final int RUNTIME_PERMISSION_API_LEVEL = 23;
    public static final int SATURDAY = 32;
    public static final String SDK_VERSION = "1.2.8";
    public static final String SERVICE_ACTION2 = "com.netease.push.action.service.PUSHSERVICE2";
    public static final String SERVICE_ACTION_HEAD = "com.netease.push.action.service.";
    public static final String SERVICE_ACTION_METHOD = "com.netease.push.action.service.METHOD";
    public static final String SERVICE_METHOD_NATIVENOTIFY = "nativenotify";
    public static final String SERVICE_METHOD_NETWORKCONNECT = "networkconnect";
    public static final String SERVICE_METHOD_NETWORKDISCONNECT = "networkdisconnect";
    public static final String SERVICE_METHOD_REGISTER = "register";
    public static final String SERVICE_METHOD_REMOVEAPP = "removeapp";
    public static final String SERVICE_METHOD_REPEATPROTECT = "setrepeatprotect";
    public static final String SERVICE_METHOD_RESTART = "restart";
    public static final String SERVICE_METHOD_SETSOUND = "setsound";
    public static final String SERVICE_METHOD_SETVIBRATE = "setvibrate";
    public static final String SERVICE_METHOD_STOP = "stopservice";
    public static final String SERVICE_METHOD_TIME_TICK = "time_tick";
    public static final int SERVICE_METHOD_VER = 1;
    public static final int SHARED_PREFERENCE_API_LEVEL = 24;
    public static final int SUNDAY = 64;
    private static final String TAG;
    public static final int THURSDAY = 8;
    public static final int TUESDAY = 2;
    public static final int WEDNESDAY = 4;
    public static final int WEEKEND = 96;
    public static final int WORKDAY = 31;

    static {
        $assertionsDisabled = !PushConstants.class.desiredAssertionStatus();
        TAG = "NGPush_" + PushConstants.class.getSimpleName();
    }

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public static int MONTH_DAY(int day) {
        if ($assertionsDisabled || (day > 0 && day < 32)) {
            return 1 << (day - 1);
        }
        throw new AssertionError();
    }

    public static int MONTH_DAY_RANGE(int from, int to) {
        if (!$assertionsDisabled && (from <= 0 || from >= 32)) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && (to <= 0 || to >= 32)) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && from >= to) {
            throw new AssertionError();
        }
        int tmp = to == 31 ? Integer.MAX_VALUE : (1 << to) - 1;
        return tmp - ((1 << (from - 1)) - 1);
    }
}
