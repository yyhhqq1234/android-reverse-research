package com.netease.dwrg;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.netease.unisdk.gmbridge.utils.ResIdReader;

/* loaded from: classes.dex */
public class AlarmReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context arg0, Intent arg1) {
        String action = arg1.getAction();
        if (action != null && action.equals("ScheduleNotice")) {
            Notification notif = (Notification) arg1.getExtras().getParcelable("notice");
            int notice_id = arg1.getExtras().getInt(ResIdReader.RES_TYPE_ID);
            long now = arg1.getExtras().getLong("now");
            if (Client.getCancelAllTime() <= now) {
                NotificationManager nm = (NotificationManager) arg0.getSystemService("notification");
                nm.notify(notice_id, notif);
            }
        }
    }
}
