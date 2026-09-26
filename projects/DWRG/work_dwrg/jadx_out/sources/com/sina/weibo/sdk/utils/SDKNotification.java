package com.sina.weibo.sdk.utils;

import android.R;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v4.app.NotificationCompat;
import com.netease.unisdk.gmbridge.utils.ResIdReader;

/* loaded from: classes.dex */
public class SDKNotification {
    private Context mContext;
    private Notification mNotification;

    private SDKNotification(Context ctx, Notification notification) {
        this.mContext = ctx.getApplicationContext();
        this.mNotification = notification;
    }

    /* synthetic */ SDKNotification(Context context, Notification notification, SDKNotification sDKNotification) {
        this(context, notification);
    }

    public void show(int notificationId) {
        if (this.mNotification != null) {
            ((NotificationManager) this.mContext.getSystemService("notification")).notify(notificationId, this.mNotification);
        }
    }

    /* loaded from: classes.dex */
    public static class SDKNotificationBuilder {
        private String mNotificationContent;
        private PendingIntent mNotificationPendingIntent;
        private String mNotificationTitle;
        private Uri mSoundUri;
        private String mTickerText;
        private long[] mVibrate;

        public static SDKNotificationBuilder buildUpon() {
            return new SDKNotificationBuilder();
        }

        public SDKNotificationBuilder setTickerText(String tickerText) {
            this.mTickerText = tickerText;
            return this;
        }

        public SDKNotificationBuilder setNotificationTitle(String notificationTitle) {
            this.mNotificationTitle = notificationTitle;
            return this;
        }

        public SDKNotificationBuilder setNotificationContent(String notificationContent) {
            this.mNotificationContent = notificationContent;
            return this;
        }

        public SDKNotificationBuilder setNotificationPendingIntent(PendingIntent notificationPendingIntent) {
            this.mNotificationPendingIntent = notificationPendingIntent;
            return this;
        }

        public SDKNotificationBuilder setVibrate(long[] vibrate) {
            this.mVibrate = vibrate;
            return this;
        }

        public SDKNotificationBuilder setSoundUri(Uri soundUri) {
            this.mSoundUri = soundUri;
            return this;
        }

        public SDKNotification build(Context ctx) {
            NotificationCompat.Builder mNotificationBuilder = new NotificationCompat.Builder(ctx);
            mNotificationBuilder.setAutoCancel(true);
            mNotificationBuilder.setContentIntent(this.mNotificationPendingIntent);
            mNotificationBuilder.setTicker(this.mTickerText);
            mNotificationBuilder.setSmallIcon(getNotificationIcon(ctx));
            mNotificationBuilder.setWhen(System.currentTimeMillis());
            if (this.mSoundUri != null) {
                mNotificationBuilder.setSound(this.mSoundUri);
            }
            if (this.mVibrate != null) {
                mNotificationBuilder.setVibrate(this.mVibrate);
            }
            Drawable drawable = ResourceManager.getDrawable(ctx, "weibosdk_notification_icon.png");
            mNotificationBuilder.setLargeIcon(((BitmapDrawable) drawable).getBitmap());
            mNotificationBuilder.setContentTitle(this.mNotificationTitle);
            mNotificationBuilder.setContentText(this.mNotificationContent);
            Notification notification = mNotificationBuilder.build();
            return new SDKNotification(ctx, notification, null);
        }

        private static int getNotificationIcon(Context ctx) {
            int resId = getResourceId(ctx, "com_sina_weibo_sdk_weibo_logo", ResIdReader.RES_TYPE_DRAWABLE);
            return resId > 0 ? resId : R.drawable.ic_dialog_info;
        }

        private static int getResourceId(Context ctx, String name, String type) {
            String packageName = ctx.getApplicationContext().getPackageName();
            PackageManager pm = ctx.getPackageManager();
            try {
                Resources themeResources = pm.getResourcesForApplication(packageName);
                return themeResources.getIdentifier(name, type, packageName);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                return 0;
            }
        }
    }
}
