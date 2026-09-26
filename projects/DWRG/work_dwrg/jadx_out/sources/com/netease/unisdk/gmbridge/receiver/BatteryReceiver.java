package com.netease.unisdk.gmbridge.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.netease.unisdk.gmbridge.device.BatteryInfo;

/* loaded from: classes.dex */
public class BatteryReceiver extends BroadcastReceiver {
    private IBatteryChangeListener mBatteryChangeListener;

    public BatteryReceiver(IBatteryChangeListener batteryChangeListener) {
        this.mBatteryChangeListener = batteryChangeListener;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && "android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
            BatteryInfo batteryInfo = new BatteryInfo();
            int level = intent.getIntExtra("level", 0);
            int scal = intent.getIntExtra("scal", 100);
            batteryInfo.batteryLevel = ((level * 100) / scal) + "%";
            int status = intent.getIntExtra("status", -1);
            boolean isCharging = status == 2 || status == 5;
            batteryInfo.batteryStatus = isCharging ? "charging" : "not charging";
            this.mBatteryChangeListener.onBatteryChanged(batteryInfo);
        }
    }
}
