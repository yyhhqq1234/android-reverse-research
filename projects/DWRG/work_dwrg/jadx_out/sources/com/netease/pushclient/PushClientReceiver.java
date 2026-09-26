package com.netease.pushclient;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.netease.environment.config.SdkConstants;
import com.netease.inner.pushclient.NativePushData;
import com.netease.ntunisdk.base.PatchPlaceholder;
import com.netease.push.utils.AppInfo;
import com.netease.push.utils.Notifier;
import com.netease.push.utils.NotifyMessage;
import com.netease.push.utils.PushConstants;
import com.netease.push.utils.PushSetting;
import java.lang.reflect.Method;
import java.util.List;
import org.json.JSONException;

/* loaded from: classes.dex */
public class PushClientReceiver extends BroadcastReceiver {
    private static final String MESSAGE_TYPE_DELETED = "deleted_messages";
    private static final String MESSAGE_TYPE_MESSAGE = "gcm";
    private static final String MESSAGE_TYPE_SEND_ERROR = "send_error";
    private static final String TAG = "NGPush_" + PushClientReceiver.class.getSimpleName();
    protected boolean forceShowMsgOnFront = false;

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    protected boolean isBackground(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        List<ActivityManager.RunningAppProcessInfo> appProcesses = activityManager.getRunningAppProcesses();
        for (ActivityManager.RunningAppProcessInfo appProcess : appProcesses) {
            if (appProcess.processName.equals(context.getPackageName())) {
                Log.i(TAG, "check background:" + appProcess.processName + " imp:" + appProcess.importance + " reason:" + appProcess.importanceReasonCode);
                return appProcess.importance > 200;
            }
        }
        Log.e(TAG, "check background no process found");
        return false;
    }

    protected boolean canMsgShow(Context context) {
        PackageManager pm = context.getPackageManager();
        if (pm.checkPermission("android.permission.GET_TASKS", context.getPackageName()) != 0) {
            Log.i(TAG, "GET_TASKS permission forgot!");
            return true;
        }
        ActivityManager am = (ActivityManager) context.getSystemService("activity");
        List<ActivityManager.RunningTaskInfo> tasks = am.getRunningTasks(1);
        if (tasks.isEmpty()) {
            return true;
        }
        ComponentName topActivity = tasks.get(0).topActivity;
        return !topActivity.getPackageName().equals(context.getPackageName());
    }

    @Override // android.content.BroadcastReceiver
    @SuppressLint({"NewApi"})
    public void onReceive(Context context, Intent intent) {
        Log.e(TAG, "onReceive");
        Log.d(TAG, "intent:" + intent);
        String action = intent.getAction();
        Log.d(TAG, "action:" + action);
        if (PushConstants.CLIENT_ACTION_MESSAGE.equals(action)) {
            String sMessage = intent.getStringExtra("message");
            Log.d(TAG, "sMessage:" + sMessage);
            try {
                onReceiveNotifyMessage(context, NotifyMessage.readFromJsonString(sMessage));
                long lastTime = intent.getLongExtra(PushConstants.INTENT_LASTTIME_NAME, 0L);
                long lastReceiveTime = PushSetting.getReceiveTime(context);
                if (lastReceiveTime < lastTime) {
                    PushSetting.setReceiveTime(context, lastTime);
                    return;
                }
                return;
            } catch (JSONException e) {
                Log.e(TAG, "JSONException, error:" + e.toString());
                e.printStackTrace();
                return;
            }
        }
        if (PushConstants.CLIENT_ACTION_MESSAGE_GCM.equals(action)) {
            Bundle extras = intent.getExtras();
            String messageType = MESSAGE_TYPE_SEND_ERROR;
            try {
                Class<?> clazz = Class.forName("com.google.android.gms.gcm.GoogleCloudMessaging");
                Object gcm = clazz.getMethod("getInstance", Context.class).invoke(null, context);
                Method method1 = gcm.getClass().getMethod("getMessageType", Intent.class);
                messageType = (String) method1.invoke(gcm, intent);
            } catch (Exception e2) {
                Log.e(TAG, "onReceive, GCM reflect error:" + e2);
                e2.printStackTrace();
            }
            Log.d(TAG, "messageType=" + messageType);
            Log.d(TAG, "extras=" + extras.toString());
            if (!extras.isEmpty() && !MESSAGE_TYPE_SEND_ERROR.equals(messageType) && !MESSAGE_TYPE_DELETED.equals(messageType) && "gcm".equals(messageType)) {
                String content = extras.getString("msg", "");
                String title = extras.getString("title", "");
                String ext = extras.getString(PushConstants.MESSAGE_EXT, "");
                Log.d(TAG, "title=" + title);
                Log.d(TAG, SdkConstants.PRE_CONTENT + content);
                Log.d(TAG, "ext=" + ext);
                onReceiveNotifyMessage(context, new NotifyMessage(content, title, ext));
                return;
            }
            return;
        }
        if (PushConstants.CLIENT_ACTION_REFRESH_DEVID.equals(action)) {
            String devID = PushManager.getDevId(context);
            Log.d(TAG, "devID:" + devID);
            if (!TextUtils.isEmpty(devID)) {
                onGetNewDevId(context, devID);
                PushSetting.setFirstStart(context, context.getPackageName(), false);
                return;
            }
            return;
        }
        if (PushConstants.CLIENT_ACTION_METHOD.equals(action)) {
            String method = intent.getStringExtra("method");
            Log.d(TAG, "method:" + method);
            if ("nativenotify".equals(method)) {
                String pushName = intent.getStringExtra(PushConstants.INTENT_PUSH_NAME);
                Log.d(TAG, "native push id:" + pushName);
                NativePushData nativePushData = PushSetting.getNativeNotification(context, pushName);
                if (nativePushData != null) {
                    NotifyMessage notifyMessage = nativePushData.getNotifyMessage();
                    notifyMessage.mNative = true;
                    onReceiveNotifyMessage(context, notifyMessage);
                    int repeatMode = nativePushData.getRepeatMode();
                    Log.d(TAG, "native push repeat mode:" + repeatMode);
                    if (repeatMode != 0) {
                        nativePushData.setDelayTriggerSec(360);
                        nativePushData.startAlarm(context);
                        nativePushData.setDelayTriggerSec(0);
                        return;
                    }
                    PushSetting.rmNativePushName(context, pushName);
                }
            }
        }
    }

    public void onGetNewDevId(Context context, String regId) {
    }

    public void onReceiveNotifyMessage(Context context, NotifyMessage notifyMessage) {
        Log.d(TAG, "onReceiveNotifyMessage:" + notifyMessage);
        String serviceType = PushSetting.getServiceType(context, context.getPackageName());
        Log.d(TAG, "service type:" + serviceType);
        if (PushConstants.MIUI.equals(serviceType) && !notifyMessage.mNative) {
            Log.w(TAG, "MIUI will display the message itself for no pass_through message, and client should customize the display for pass_through message");
            return;
        }
        if (notifyMessage.mTitle.length() == 0 && notifyMessage.mMsg.length() == 0) {
            Log.i(TAG, "abandon msg");
            return;
        }
        if (!this.forceShowMsgOnFront && !canMsgShow(context)) {
            Log.i(TAG, "abandon msg coz background:" + isBackground(context) + " canshow:" + canMsgShow(context));
            return;
        }
        AppInfo appInfo = PushSetting.getAppInfo(context, context.getPackageName());
        if (appInfo == null) {
            appInfo = new AppInfo(context.getPackageName());
        }
        new Notifier(context).notify(notifyMessage, appInfo);
    }
}
