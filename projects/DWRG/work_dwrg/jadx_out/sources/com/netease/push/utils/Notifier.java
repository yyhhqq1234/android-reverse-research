package com.netease.push.utils;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import com.netease.ntunisdk.base.PatchPlaceholder;
import java.util.Random;

/* loaded from: classes.dex */
public class Notifier {
    private static final String GROUP_KEY_NGPUSH = "group_key_ngpush";
    private static final String TAG = "Notifier";
    private static final Random random = new Random(System.currentTimeMillis());
    private Context context;
    private NotificationManager notificationManager;

    private void patchPlaceholder() {
        Log.i(TAG, PatchPlaceholder.class.getSimpleName());
    }

    public Notifier(Context context) {
        this.context = context;
        this.notificationManager = (NotificationManager) context.getSystemService("notification");
    }

    public void notify(NotifyMessage notifyMessage, AppInfo appInfo) {
        Log.d(TAG, "notify");
        Log.d(TAG, "notifyMessage=" + notifyMessage);
        Log.d(TAG, "appInfo=" + appInfo);
        if (notifyMessage != null && appInfo != null) {
            int msgId = random.nextInt();
            Intent intent = this.context.getPackageManager().getLaunchIntentForPackage(appInfo.mPackageName);
            intent.setFlags(603979776);
            intent.putExtra(PushConstants.NOTIFICATION_TITLE, notifyMessage.mTitle);
            intent.putExtra(PushConstants.NOTIFICATION_MESSAGE, notifyMessage.mMsg);
            intent.putExtra(PushConstants.NOTIFICATION_EXT, notifyMessage.mExt);
            PendingIntent contentIntent = PendingIntent.getActivity(this.context, 0, intent, 134217728);
            NotificationCompat.Builder mBuilder = new NotificationCompat.Builder(this.context);
            if (notifyMessage.mIcon > 0) {
                mBuilder.setSmallIcon(notifyMessage.mIcon);
            } else {
                mBuilder.setSmallIcon(this.context.getApplicationInfo().icon);
            }
            mBuilder.setGroup(GROUP_KEY_NGPUSH);
            mBuilder.setContentTitle(notifyMessage.mTitle);
            mBuilder.setContentText(notifyMessage.mMsg);
            int defaults = 0;
            if (appInfo.mbEnableSound) {
                defaults = 0 | 1;
            }
            if (appInfo.mbEnableVibrate) {
                defaults |= 2;
            }
            mBuilder.setDefaults(defaults);
            mBuilder.setAutoCancel(true);
            mBuilder.setTicker(notifyMessage.mMsg);
            mBuilder.setStyle(new NotificationCompat.BigTextStyle().bigText(notifyMessage.mMsg));
            mBuilder.setContentIntent(contentIntent);
            this.notificationManager.notify(msgId, mBuilder.build());
        }
    }
}
