package com.netease.dwrg;

import android.content.Context;
import com.netease.neox.NativeInterface;
import com.netease.push.utils.NotifyMessage;
import com.netease.pushclient.PushClientReceiver;

/* loaded from: classes.dex */
public class PushNotificationReceiver extends PushClientReceiver {
    @Override // com.netease.pushclient.PushClientReceiver
    public void onGetNewDevId(Context context, String devId) {
        NativeInterface.NativeOnRegisterPushService(devId);
    }

    @Override // com.netease.pushclient.PushClientReceiver
    public void onReceiveNotifyMessage(Context context, NotifyMessage notifyMessage) {
        super.onReceiveNotifyMessage(context, notifyMessage);
    }
}
