package com.onesignal.notifications.internal.common;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.service.notification.StatusBarNotification;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.onesignal.common.AndroidUtils;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.onesignal.core.internal.time.ITime;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.INotification;
import com.onesignal.notifications.internal.NotificationClickEvent;
import com.onesignal.notifications.internal.NotificationClickResult;
import com.onesignal.session.internal.influence.impl.InfluenceConstants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: NotificationHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0016\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006J*\u0010\f\u001a\u00020\r2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u0011H\u0007J\u001d\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0000¢\u0006\u0002\b\u0018J \u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u00112\u0006\u0010\t\u001a\u00020\nH\u0007J\u001b\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00100\u001b2\u0006\u0010\t\u001a\u00020\nH\u0007¢\u0006\u0002\u0010\u001cJ\u000e\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001fJ\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0007J\u0012\u0010$\u001a\u0004\u0018\u00010\u00062\b\u0010%\u001a\u0004\u0018\u00010!J\u000e\u0010&\u001a\u00020'2\u0006\u0010\t\u001a\u00020\nJ\u001a\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010\t\u001a\u00020\n2\b\u0010*\u001a\u0004\u0018\u00010\u0006J\u000e\u0010+\u001a\u00020\b2\u0006\u0010,\u001a\u00020\u0010J\u0010\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010/\u001a\u00020!R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"Lcom/onesignal/notifications/internal/common/NotificationHelper;", "", "()V", "GROUPLESS_SUMMARY_ID", "", "GROUPLESS_SUMMARY_KEY", "", "areNotificationsEnabled", "", "context", "Landroid/content/Context;", "channelId", "assignGrouplessNotifications", "", "grouplessNotifs", "Ljava/util/ArrayList;", "Landroid/service/notification/StatusBarNotification;", "Lkotlin/collections/ArrayList;", "generateNotificationOpenedResult", "Lcom/onesignal/notifications/internal/NotificationClickEvent;", "jsonArray", "Lorg/json/JSONArray;", InfluenceConstants.TIME, "Lcom/onesignal/core/internal/time/ITime;", "generateNotificationOpenedResult$com_onesignal_notifications", "getActiveGrouplessNotifications", "getActiveNotifications", "", "(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;", "getCampaignNameFromNotification", OneSignalDbContract.NotificationTable.TABLE_NAME, "Lcom/onesignal/notifications/INotification;", "getCustomJSONObject", "Lorg/json/JSONObject;", "jsonObject", "getGrouplessNotifsCount", "getNotificationIdFromFCMJson", "fcmJson", "getNotificationManager", "Landroid/app/NotificationManager;", "getSoundUri", "Landroid/net/Uri;", "sound", "isGroupSummary", "notif", "parseVibrationPattern", "", "fcmBundle", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationHelper {
    public static final int GROUPLESS_SUMMARY_ID = -718463522;
    public static final String GROUPLESS_SUMMARY_KEY = "os_group_undefined";
    public static final NotificationHelper INSTANCE = new NotificationHelper();

    private NotificationHelper() {
    }

    public final StatusBarNotification[] getActiveNotifications(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        StatusBarNotification[] statusBarNotificationArr = new StatusBarNotification[0];
        try {
            StatusBarNotification[] activeNotifications = getNotificationManager(context).getActiveNotifications();
            Intrinsics.checkNotNullExpressionValue(activeNotifications, "getNotificationManager(c…text).activeNotifications");
            return activeNotifications;
        } catch (Throwable unused) {
            return statusBarNotificationArr;
        }
    }

    public final int getGrouplessNotifsCount(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        int i = 0;
        for (StatusBarNotification statusBarNotification : getActiveNotifications(context)) {
            if (!NotificationCompat.isGroupSummary(statusBarNotification.getNotification()) && Intrinsics.areEqual(GROUPLESS_SUMMARY_KEY, statusBarNotification.getNotification().getGroup())) {
                i++;
            }
        }
        return i;
    }

    public final ArrayList<StatusBarNotification> getActiveGrouplessNotifications(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ArrayList<StatusBarNotification> arrayList = new ArrayList<>();
        for (StatusBarNotification statusBarNotification : getActiveNotifications(context)) {
            Notification notification = statusBarNotification.getNotification();
            boolean zIsGroupSummary = isGroupSummary(statusBarNotification);
            boolean z = notification.getGroup() == null || Intrinsics.areEqual(notification.getGroup(), GROUPLESS_SUMMARY_KEY);
            if (!zIsGroupSummary && z) {
                arrayList.add(statusBarNotification);
            }
        }
        return arrayList;
    }

    public final boolean isGroupSummary(StatusBarNotification notif) {
        Intrinsics.checkNotNullParameter(notif, "notif");
        return (notif.getNotification().flags & 512) != 0;
    }

    public final void assignGrouplessNotifications(Context context, ArrayList<StatusBarNotification> grouplessNotifs) {
        Intrinsics.checkNotNullParameter(grouplessNotifs, "grouplessNotifs");
        for (StatusBarNotification statusBarNotification : grouplessNotifs) {
            Notification.Builder builderRecoverBuilder = Notification.Builder.recoverBuilder(context, statusBarNotification.getNotification());
            Intrinsics.checkNotNullExpressionValue(builderRecoverBuilder, "recoverBuilder(context, …uplessNotif.notification)");
            Notification notificationBuild = builderRecoverBuilder.setGroup(GROUPLESS_SUMMARY_KEY).setOnlyAlertOnce(true).build();
            Intrinsics.checkNotNullExpressionValue(notificationBuild, "grouplessNotifBuilder\n  …                 .build()");
            Intrinsics.checkNotNull(context);
            NotificationManagerCompat.from(context).notify(statusBarNotification.getId(), notificationBuild);
        }
    }

    public static /* synthetic */ boolean areNotificationsEnabled$default(NotificationHelper notificationHelper, Context context, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        return notificationHelper.areNotificationsEnabled(context, str);
    }

    public final boolean areNotificationsEnabled(Context context, String channelId) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            if (!NotificationManagerCompat.from(context).areNotificationsEnabled()) {
                return false;
            }
            if (channelId == null || Build.VERSION.SDK_INT < 26) {
                return true;
            }
            NotificationManager notificationManager = getNotificationManager(context);
            NotificationChannel notificationChannel = notificationManager != null ? notificationManager.getNotificationChannel(channelId) : null;
            return notificationChannel == null || notificationChannel.getImportance() != 0;
        } catch (Throwable unused) {
            return true;
        }
    }

    public final NotificationManager getNotificationManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService(OneSignalDbContract.NotificationTable.TABLE_NAME);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        return (NotificationManager) systemService;
    }

    public final JSONObject getCustomJSONObject(JSONObject jsonObject) throws JSONException {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        return new JSONObject(jsonObject.optString(NotificationFormatHelper.PAYLOAD_OS_ROOT_CUSTOM));
    }

    public final String getNotificationIdFromFCMJson(JSONObject fcmJson) {
        if (fcmJson == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(fcmJson.getString(NotificationFormatHelper.PAYLOAD_OS_ROOT_CUSTOM));
            if (jSONObject.has("i")) {
                return jSONObject.optString("i", null);
            }
            Logging.debug$default("Not a OneSignal formatted FCM message. No 'i' field in custom.", null, 2, null);
            return null;
        } catch (JSONException unused) {
            Logging.debug$default("Not a OneSignal formatted FCM message. No 'custom' field in the JSONObject.", null, 2, null);
        }
    }

    public final long[] parseVibrationPattern(JSONObject fcmBundle) {
        JSONArray jSONArray;
        Intrinsics.checkNotNullParameter(fcmBundle, "fcmBundle");
        try {
            Object objOpt = fcmBundle.opt("vib_pt");
            if (objOpt instanceof String) {
                jSONArray = new JSONArray((String) objOpt);
            } else {
                Intrinsics.checkNotNull(objOpt, "null cannot be cast to non-null type org.json.JSONArray");
                jSONArray = (JSONArray) objOpt;
            }
            long[] jArr = new long[jSONArray.length()];
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                jArr[i] = jSONArray.optLong(i);
            }
            return jArr;
        } catch (JSONException unused) {
            return null;
        }
    }

    public final Uri getSoundUri(Context context, String sound) {
        int identifier;
        Intrinsics.checkNotNullParameter(context, "context");
        Resources resources = context.getResources();
        String packageName = context.getPackageName();
        if (AndroidUtils.INSTANCE.isValidResourceName(sound) && (identifier = resources.getIdentifier(sound, "raw", packageName)) != 0) {
            return Uri.parse("android.resource://" + packageName + '/' + identifier);
        }
        int identifier2 = resources.getIdentifier("onesignal_default_sound", "raw", packageName);
        if (identifier2 == 0) {
            return null;
        }
        return Uri.parse("android.resource://" + packageName + '/' + identifier2);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0033  */
    public final String getCampaignNameFromNotification(INotification notification) {
        boolean z;
        boolean z2;
        Intrinsics.checkNotNullParameter(notification, "notification");
        String templateName = notification.getTemplateName();
        if (templateName == null) {
            z = false;
        } else {
            if (templateName.length() == 0) {
                z = true;
            } else {
                z = false;
            }
        }
        if (!z) {
            String templateId = notification.getTemplateId();
            if (templateId != null) {
                z2 = templateId.length() == 0;
            }
            if (!z2) {
                return notification.getTemplateName() + " - " + notification.getTemplateId();
            }
        }
        if (notification.getTitle() == null) {
            return "";
        }
        String title = notification.getTitle();
        Intrinsics.checkNotNull(title);
        String title2 = notification.getTitle();
        Intrinsics.checkNotNull(title2);
        String strSubstring = title.substring(0, Math.min(10, title2.length()));
        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public final NotificationClickEvent generateNotificationOpenedResult$com_onesignal_notifications(JSONArray jsonArray, ITime time) {
        Intrinsics.checkNotNullParameter(jsonArray, "jsonArray");
        Intrinsics.checkNotNullParameter(time, "time");
        int length = jsonArray.length();
        int iOptInt = jsonArray.optJSONObject(0).optInt(NotificationConstants.BUNDLE_KEY_ANDROID_NOTIFICATION_ID);
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        JSONObject jSONObject = null;
        String strOptString = null;
        for (int i = 0; i < length; i++) {
            try {
                jSONObject = jsonArray.getJSONObject(i);
                if (strOptString == null && jSONObject.has(NotificationConstants.GENERATE_NOTIFICATION_BUNDLE_KEY_ACTION_ID)) {
                    strOptString = jSONObject.optString(NotificationConstants.GENERATE_NOTIFICATION_BUNDLE_KEY_ACTION_ID, null);
                }
                if (z) {
                    z = false;
                } else {
                    arrayList.add(new com.onesignal.notifications.internal.Notification(jSONObject, time));
                }
            } catch (Throwable th) {
                Logging.error("Error parsing JSON item " + i + '/' + length + " for callback.", th);
            }
        }
        Intrinsics.checkNotNull(jSONObject);
        com.onesignal.notifications.internal.Notification notification = new com.onesignal.notifications.internal.Notification(arrayList, jSONObject, iOptInt, time);
        return new NotificationClickEvent(notification, new NotificationClickResult(strOptString, notification.getLaunchURL()));
    }
}
