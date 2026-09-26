package com.netease.pushservice;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.SystemClock;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;
import com.netease.push.utils.PushConstants;
import com.netease.push.utils.PushSetting;

/* loaded from: classes.dex */
public class PushService extends Service {
    private static final String TAG = "NGPush_" + PushService.class.getSimpleName();
    private int clientCount = 0;
    private PhoneStateListener phoneStateListener;
    private TelephonyManager telephonyManager;

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Log.i(TAG, "PushService onCreate, this:" + this);
        PushSetting.checkWriteLocation(this);
        this.clientCount = 0;
        this.phoneStateListener = new PhoneStateChangeListener();
        this.telephonyManager = (TelephonyManager) getSystemService("phone");
        if (PushServiceHelper.getInstance().init(this)) {
            PushServiceHelper.getInstance().getTaskSubmitter().submit(new Runnable() { // from class: com.netease.pushservice.PushService.1
                @Override // java.lang.Runnable
                public void run() {
                    PushService.this.start();
                }
            });
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        Log.i(TAG, "onDestroy, this:" + this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.d(TAG, "onStartCommand");
        Log.d(TAG, "intent:" + intent);
        Log.d(TAG, "flags:" + flags);
        Log.d(TAG, "startId:" + startId);
        Log.d(TAG, "package name:" + getApplicationContext().getPackageName());
        if (intent != null) {
            PushServiceHelper.getInstance().processCommand(this, intent);
            return 1;
        }
        return 1;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        Log.d(TAG, "onUnbind");
        Log.d(TAG, "intent:" + intent);
        Log.d(TAG, "package:" + getPackageName());
        this.clientCount--;
        Log.d(TAG, "clientcount:" + this.clientCount);
        return super.onUnbind(intent);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Log.d(TAG, "onBind");
        Log.d(TAG, "intent:" + intent);
        Log.d(TAG, "package:" + getPackageName());
        this.clientCount++;
        Log.d(TAG, "clientcount:" + this.clientCount);
        return null;
    }

    private void registerConnectivityReceiver() {
        Log.d(TAG, "registerConnectivityReceiver");
        this.telephonyManager.listen(this.phoneStateListener, 64);
    }

    private void unregisterConnectivityReceiver() {
        Log.d(TAG, "unregisterConnectivityReceiver");
        this.telephonyManager.listen(this.phoneStateListener, 0);
    }

    public void start() {
        Log.i(TAG, "start...");
        registerConnectivityReceiver();
    }

    public void restart(String packageName) {
        Log.d(TAG, PushConstants.SERVICE_METHOD_RESTART);
        Log.d(TAG, "packageName:" + packageName);
        Log.d(TAG, "this.getPackageName():" + getPackageName());
        if (!packageName.equals(getPackageName())) {
            Intent intent = PushServiceHelper.createMethodIntent();
            intent.setPackage(packageName);
            PendingIntent pendingIntent = PendingIntent.getBroadcast(this, 0, intent, 268435456);
            long triggerTime = SystemClock.elapsedRealtime() + 1000;
            AlarmManager alarmManager = (AlarmManager) getSystemService("alarm");
            alarmManager.set(3, triggerTime, pendingIntent);
            stop();
        }
    }

    public void stop() {
        Log.i(TAG, "stop..., this:" + this);
        try {
            unregisterConnectivityReceiver();
        } catch (IllegalArgumentException e) {
        }
        PushServiceHelper.getInstance().stop();
        stopSelf();
    }
}
