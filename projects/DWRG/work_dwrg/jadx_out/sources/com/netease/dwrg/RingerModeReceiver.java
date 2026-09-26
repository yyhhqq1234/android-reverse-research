package com.netease.dwrg;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import com.netease.neox.NativeInterface;

/* compiled from: Client.java */
/* loaded from: classes.dex */
class RingerModeReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AudioManager am = (AudioManager) context.getSystemService("audio");
        if (am != null) {
            NativeInterface.NativeOnRingerMode(am.getRingerMode());
        }
    }
}
