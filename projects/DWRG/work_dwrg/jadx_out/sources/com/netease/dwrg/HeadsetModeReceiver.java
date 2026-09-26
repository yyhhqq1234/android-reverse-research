package com.netease.dwrg;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.netease.neox.NativeInterface;

/* compiled from: Client.java */
/* loaded from: classes.dex */
class HeadsetModeReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.HEADSET_PLUG")) {
            int state = intent.getIntExtra("state", -1);
            switch (state) {
                case 0:
                    Log.d("Headset", "Headset is unplugged");
                    NativeInterface.NativeOnHeadset(0);
                    return;
                case 1:
                    Log.d("Headset", "Headset is plugged");
                    NativeInterface.NativeOnHeadset(1);
                    return;
                default:
                    Log.d("Headset", "I have no idea what the headset state is");
                    return;
            }
        }
    }
}
