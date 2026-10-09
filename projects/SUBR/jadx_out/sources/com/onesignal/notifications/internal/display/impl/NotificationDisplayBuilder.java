package com.onesignal.notifications.internal.display.impl;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.onesignal.common.AndroidUtils;
import com.onesignal.core.R;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.inAppMessages.internal.prompt.InAppMessagePromptTypes;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.bundle.impl.NotificationBundleProcessor;
import com.onesignal.notifications.internal.channels.INotificationChannelManager;
import com.onesignal.notifications.internal.common.NotificationConstants;
import com.onesignal.notifications.internal.common.NotificationFormatHelper;
import com.onesignal.notifications.internal.common.NotificationGenerationJob;
import com.onesignal.notifications.internal.common.NotificationHelper;
import com.onesignal.notifications.internal.display.INotificationDisplayBuilder;
import com.onesignal.notifications.receivers.NotificationDismissReceiver;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.lang.reflect.Field;
import java.math.BigInteger;
import java.net.URL;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.y8;

/* JADX INFO: compiled from: NotificationDisplayBuilder.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001:\u0001UB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J4\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\f2\u0006\u0010 \u001a\u00020!2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001a0#2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001a0#H\u0002J,\u0010%\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020!2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001a0#2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001a0#H\u0002J4\u0010&\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020!2\u0006\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010+\u001a\u00020\u00142\b\u0010,\u001a\u0004\u0018\u00010\u001aH\u0016J\u001a\u0010-\u001a\u00020\u001e2\b\u0010.\u001a\u0004\u0018\u00010/2\u0006\u00100\u001a\u000201H\u0016J\u0010\u00102\u001a\u00020\u00142\u0006\u00103\u001a\u00020\u0014H\u0002J\u0012\u00104\u001a\u0004\u0018\u0001052\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u00106\u001a\u00020/2\u0006\u00107\u001a\u000208H\u0016J\u0014\u00109\u001a\u0004\u0018\u00010\u00102\b\u0010:\u001a\u0004\u0018\u00010\u001aH\u0002J\u0012\u0010;\u001a\u0004\u0018\u00010\u00102\u0006\u0010<\u001a\u00020\u001aH\u0002J\u0012\u0010=\u001a\u0004\u0018\u00010\u00102\u0006\u0010>\u001a\u00020\u001aH\u0002J\u0010\u0010?\u001a\u00020\u00142\u0006\u0010:\u001a\u00020\u001aH\u0002J\b\u0010@\u001a\u00020\u0014H\u0016J\u0012\u0010A\u001a\u0004\u0018\u00010\u00102\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010B\u001a\u00020C2\u0006\u0010+\u001a\u00020\u0014H\u0016J\u0018\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020\u00142\u0006\u0010G\u001a\u00020CH\u0016J\u0012\u0010H\u001a\u00020\u00142\b\u0010I\u001a\u0004\u0018\u00010\u001aH\u0002J\u0010\u0010J\u001a\u00020\u00142\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010K\u001a\u00020L2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010M\u001a\u00020N2\u0006\u0010 \u001a\u00020!H\u0002J\u0012\u0010O\u001a\u00020\u001e2\b\u0010P\u001a\u0004\u0018\u00010*H\u0016J\u0014\u0010Q\u001a\u0004\u0018\u00010\u00102\b\u0010R\u001a\u0004\u0018\u00010\u0010H\u0002J\u0018\u0010S\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020!2\u0006\u0010T\u001a\u00020*H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0012\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u001a8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c¨\u0006V"}, d2 = {"Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder;", "Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_notificationChannelManager", "Lcom/onesignal/notifications/internal/channels/INotificationChannelManager;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/channels/INotificationChannelManager;)V", "contextResources", "Landroid/content/res/Resources;", "getContextResources", "()Landroid/content/res/Resources;", "currentContext", "Landroid/content/Context;", "getCurrentContext", "()Landroid/content/Context;", "defaultLargeIcon", "Landroid/graphics/Bitmap;", "getDefaultLargeIcon", "()Landroid/graphics/Bitmap;", "defaultSmallIconId", "", "getDefaultSmallIconId", "()I", "notificationDismissedClass", "Ljava/lang/Class;", HandleInvocationsFromAdViewer.KEY_PACKAGE_NAME, "", "getPackageName", "()Ljava/lang/String;", "addAlertButtons", "", "context", "fcmJson", "Lorg/json/JSONObject;", "buttonsLabels", "", "buttonsIds", "addCustomAlertButtons", "addNotificationActionButtons", "intentGenerator", "Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;", "mBuilder", "Landroidx/core/app/NotificationCompat$Builder;", "notificationId", "groupSummary", "addXiaomiSettings", "oneSignalNotificationBuilder", "Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;", OneSignalDbContract.NotificationTable.TABLE_NAME, "Landroid/app/Notification;", "convertOSToAndroidPriority", HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, "getAccentColor", "Ljava/math/BigInteger;", "getBaseOneSignalNotificationBuilder", "notificationJob", "Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;", "getBitmap", "name", "getBitmapFromAssetsOrResourceName", "bitmapStr", "getBitmapFromURL", InAppMessagePromptTypes.LOCATION_PROMPT_KEY, "getDrawableId", "getGroupAlertBehavior", "getLargeIcon", "getNewBaseDismissIntent", "Landroid/content/Intent;", "getNewDismissActionPendingIntent", "Landroid/app/PendingIntent;", "requestCode", "intent", "getResourceIcon", "iconName", "getSmallIconId", "getTitle", "", "isSoundEnabled", "", "removeNotifyOptions", "builder", "resizeBitmapForLargeIconArea", "bitmap", "setAlertnessOptions", "notifBuilder", "OneSignalNotificationBuilder", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationDisplayBuilder implements INotificationDisplayBuilder {
    private final IApplicationService _applicationService;
    private final INotificationChannelManager _notificationChannelManager;
    private final Class<?> notificationDismissedClass;

    private final int convertOSToAndroidPriority(int priority) {
        if (priority > 9) {
            return 2;
        }
        if (priority > 7) {
            return 1;
        }
        if (priority > 4) {
            return 0;
        }
        return priority > 2 ? -1 : -2;
    }

    public NotificationDisplayBuilder(IApplicationService _applicationService, INotificationChannelManager _notificationChannelManager) {
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_notificationChannelManager, "_notificationChannelManager");
        this._applicationService = _applicationService;
        this._notificationChannelManager = _notificationChannelManager;
        this.notificationDismissedClass = NotificationDismissReceiver.class;
    }

    private final Resources getContextResources() {
        return this._applicationService.getAppContext().getResources();
    }

    private final Context getCurrentContext() {
        return this._applicationService.getAppContext();
    }

    private final String getPackageName() {
        return this._applicationService.getAppContext().getPackageName();
    }

    @Override // com.onesignal.notifications.internal.display.INotificationDisplayBuilder
    public int getGroupAlertBehavior() {
        return Build.VERSION.SDK_INT >= 24 ? 2 : 1;
    }

    @Override // com.onesignal.notifications.internal.display.INotificationDisplayBuilder
    public CharSequence getTitle(JSONObject fcmJson) {
        Intrinsics.checkNotNullParameter(fcmJson, "fcmJson");
        String strOptString = fcmJson.optString("title", null);
        if (strOptString != null) {
            return strOptString;
        }
        Context currentContext = getCurrentContext();
        Intrinsics.checkNotNull(currentContext);
        PackageManager packageManager = currentContext.getPackageManager();
        Context currentContext2 = getCurrentContext();
        Intrinsics.checkNotNull(currentContext2);
        CharSequence applicationLabel = packageManager.getApplicationLabel(currentContext2.getApplicationInfo());
        Intrinsics.checkNotNullExpressionValue(applicationLabel, "currentContext!!.package…cationInfo,\n            )");
        return applicationLabel;
    }

    @Override // com.onesignal.notifications.internal.display.INotificationDisplayBuilder
    public PendingIntent getNewDismissActionPendingIntent(int requestCode, Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        PendingIntent broadcast = PendingIntent.getBroadcast(getCurrentContext(), requestCode, intent, 201326592);
        Intrinsics.checkNotNullExpressionValue(broadcast, "getBroadcast(\n          …FLAG_IMMUTABLE,\n        )");
        return broadcast;
    }

    @Override // com.onesignal.notifications.internal.display.INotificationDisplayBuilder
    public Intent getNewBaseDismissIntent(int notificationId) {
        Intent intentPutExtra = new Intent(getCurrentContext(), this.notificationDismissedClass).putExtra(NotificationConstants.BUNDLE_KEY_ANDROID_NOTIFICATION_ID, notificationId).putExtra(OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, true);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "Intent(currentContext, n…tExtra(\"dismissed\", true)");
        return intentPutExtra;
    }

    @Override // com.onesignal.notifications.internal.display.INotificationDisplayBuilder
    public OneSignalNotificationBuilder getBaseOneSignalNotificationBuilder(NotificationGenerationJob notificationJob) {
        int i;
        Intrinsics.checkNotNullParameter(notificationJob, "notificationJob");
        JSONObject jsonPayload = notificationJob.getJsonPayload();
        Intrinsics.checkNotNull(jsonPayload);
        OneSignalNotificationBuilder oneSignalNotificationBuilder = new OneSignalNotificationBuilder();
        NotificationCompat.Builder builder = new NotificationCompat.Builder(getCurrentContext(), this._notificationChannelManager.createNotificationChannel(notificationJob));
        String strOptString = jsonPayload.optString("alert", null);
        builder.setAutoCancel(true).setSmallIcon(getSmallIconId(jsonPayload)).setStyle(new NotificationCompat.BigTextStyle().bigText(strOptString)).setContentText(strOptString).setTicker(strOptString);
        if (Build.VERSION.SDK_INT < 24 || !Intrinsics.areEqual(jsonPayload.optString("title"), "")) {
            builder.setContentTitle(getTitle(jsonPayload));
        }
        try {
            BigInteger accentColor = getAccentColor(jsonPayload);
            if (accentColor != null) {
                builder.setColor(accentColor.intValue());
            }
        } catch (Throwable unused) {
        }
        try {
            if (jsonPayload.has("vis")) {
                String strOptString2 = jsonPayload.optString("vis");
                Intrinsics.checkNotNullExpressionValue(strOptString2, "fcmJson.optString(\"vis\")");
                i = Integer.parseInt(strOptString2);
            } else {
                i = 1;
            }
            builder.setVisibility(i);
        } catch (Throwable unused2) {
        }
        Bitmap largeIcon = getLargeIcon(jsonPayload);
        if (largeIcon != null) {
            oneSignalNotificationBuilder.setHasLargeIcon(true);
            builder.setLargeIcon(largeIcon);
        }
        Bitmap bitmap = getBitmap(jsonPayload.optString("bicon", null));
        if (bitmap != null) {
            builder.setStyle(new NotificationCompat.BigPictureStyle().bigPicture(bitmap).setSummaryText(strOptString));
        }
        if (notificationJob.getShownTimeStamp() != null) {
            try {
                Long shownTimeStamp = notificationJob.getShownTimeStamp();
                Intrinsics.checkNotNull(shownTimeStamp);
                builder.setWhen(shownTimeStamp.longValue() * 1000);
            } catch (Throwable unused3) {
            }
        }
        setAlertnessOptions(jsonPayload, builder);
        oneSignalNotificationBuilder.setCompatBuilder(builder);
        return oneSignalNotificationBuilder;
    }

    private final void setAlertnessOptions(JSONObject fcmJson, NotificationCompat.Builder notifBuilder) {
        int iConvertOSToAndroidPriority = convertOSToAndroidPriority(fcmJson.optInt("pri", 6));
        notifBuilder.setPriority(iConvertOSToAndroidPriority);
        int i = 0;
        if (iConvertOSToAndroidPriority < 0) {
            return;
        }
        if (fcmJson.has("ledc") && fcmJson.optInt("led", 1) == 1) {
            try {
                notifBuilder.setLights(new BigInteger(fcmJson.optString("ledc"), 16).intValue(), 2000, 5000);
            } catch (Throwable unused) {
                i = 4;
            }
        } else {
            i = 4;
        }
        if (fcmJson.optInt("vib", 1) == 1) {
            if (fcmJson.has("vib_pt")) {
                long[] vibrationPattern = NotificationHelper.INSTANCE.parseVibrationPattern(fcmJson);
                if (vibrationPattern != null) {
                    notifBuilder.setVibrate(vibrationPattern);
                }
            } else {
                i |= 2;
            }
        }
        if (isSoundEnabled(fcmJson)) {
            NotificationHelper notificationHelper = NotificationHelper.INSTANCE;
            Context currentContext = getCurrentContext();
            Intrinsics.checkNotNull(currentContext);
            Uri soundUri = notificationHelper.getSoundUri(currentContext, fcmJson.optString("sound", null));
            if (soundUri != null) {
                notifBuilder.setSound(soundUri);
            } else {
                i |= 1;
            }
        }
        notifBuilder.setDefaults(i);
    }

    @Override // com.onesignal.notifications.internal.display.INotificationDisplayBuilder
    public void removeNotifyOptions(NotificationCompat.Builder builder) {
        Intrinsics.checkNotNull(builder);
        builder.setOnlyAlertOnce(true).setDefaults(0).setSound(null).setVibrate(null).setTicker(null);
    }

    @Override // com.onesignal.notifications.internal.display.INotificationDisplayBuilder
    public void addXiaomiSettings(OneSignalNotificationBuilder oneSignalNotificationBuilder, Notification notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNull(oneSignalNotificationBuilder);
        if (oneSignalNotificationBuilder.getHasLargeIcon()) {
            try {
                Object objNewInstance = Class.forName("android.app.MiuiNotification").newInstance();
                Field declaredField = objNewInstance.getClass().getDeclaredField("customizedIcon");
                declaredField.setAccessible(true);
                declaredField.set(objNewInstance, true);
                Field field = notification.getClass().getField("extraNotification");
                field.setAccessible(true);
                field.set(notification, objNewInstance);
            } catch (Throwable unused) {
            }
        }
    }

    private final Bitmap getLargeIcon(JSONObject fcmJson) {
        Bitmap bitmap = getBitmap(fcmJson.optString("licon"));
        if (bitmap == null) {
            bitmap = getBitmapFromAssetsOrResourceName("ic_onesignal_large_icon_default");
        }
        if (bitmap == null) {
            return null;
        }
        return resizeBitmapForLargeIconArea(bitmap);
    }

    @Override // com.onesignal.notifications.internal.display.INotificationDisplayBuilder
    public Bitmap getDefaultLargeIcon() {
        return resizeBitmapForLargeIconArea(getBitmapFromAssetsOrResourceName("ic_onesignal_large_icon_default"));
    }

    private final Bitmap resizeBitmapForLargeIconArea(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        try {
            Resources contextResources = getContextResources();
            Intrinsics.checkNotNull(contextResources);
            int dimension = (int) contextResources.getDimension(R.dimen.notification_large_icon_height);
            Resources contextResources2 = getContextResources();
            Intrinsics.checkNotNull(contextResources2);
            int dimension2 = (int) contextResources2.getDimension(R.dimen.notification_large_icon_width);
            int height = bitmap.getHeight();
            int width = bitmap.getWidth();
            if (width <= dimension2 && height <= dimension) {
                return bitmap;
            }
            if (height > width) {
                dimension2 = (int) (dimension * (width / height));
            } else if (width > height) {
                dimension = (int) (dimension2 * (height / width));
            }
            return Bitmap.createScaledBitmap(bitmap, dimension2, dimension, true);
        } catch (Throwable unused) {
            return bitmap;
        }
    }

    private final Bitmap getBitmapFromAssetsOrResourceName(String bitmapStr) {
        Bitmap bitmapDecodeStream;
        try {
            Context currentContext = getCurrentContext();
            Intrinsics.checkNotNull(currentContext);
            bitmapDecodeStream = BitmapFactory.decodeStream(currentContext.getAssets().open(bitmapStr));
        } catch (Throwable unused) {
            bitmapDecodeStream = null;
        }
        if (bitmapDecodeStream != null) {
            return bitmapDecodeStream;
        }
        try {
            for (String str : Arrays.asList(".png", ".webp", ".jpg", ".gif", ".bmp")) {
                try {
                    Context currentContext2 = getCurrentContext();
                    Intrinsics.checkNotNull(currentContext2);
                    bitmapDecodeStream = BitmapFactory.decodeStream(currentContext2.getAssets().open(bitmapStr + str));
                } catch (Throwable unused2) {
                }
                if (bitmapDecodeStream != null) {
                    return bitmapDecodeStream;
                }
            }
            int resourceIcon = getResourceIcon(bitmapStr);
            if (resourceIcon != 0) {
                return BitmapFactory.decodeResource(getContextResources(), resourceIcon);
            }
        } catch (Throwable unused3) {
        }
        return null;
    }

    private final Bitmap getBitmapFromURL(String location) {
        try {
            return BitmapFactory.decodeStream(new URL(location).openConnection().getInputStream());
        } catch (Throwable th) {
            Logging.warn("Could not download image!", th);
            return null;
        }
    }

    private final int getSmallIconId(JSONObject fcmJson) {
        int resourceIcon = getResourceIcon(fcmJson.optString("sicon", null));
        return resourceIcon != 0 ? resourceIcon : getDefaultSmallIconId();
    }

    @Override // com.onesignal.notifications.internal.display.INotificationDisplayBuilder
    public int getDefaultSmallIconId() {
        int drawableId = getDrawableId("ic_stat_onesignal_default");
        if (drawableId != 0) {
            return drawableId;
        }
        int drawableId2 = getDrawableId("corona_statusbar_icon_default");
        if (drawableId2 != 0) {
            return drawableId2;
        }
        int drawableId3 = getDrawableId("ic_os_notification_fallback_white_24dp");
        return drawableId3 != 0 ? drawableId3 : android.R.drawable.ic_popup_reminder;
    }

    private final int getDrawableId(String name) {
        Resources contextResources = getContextResources();
        Intrinsics.checkNotNull(contextResources);
        return contextResources.getIdentifier(name, "drawable", getPackageName());
    }

    private final boolean isSoundEnabled(JSONObject fcmJson) {
        String strOptString = fcmJson.optString("sound", null);
        return (Intrinsics.areEqual("null", strOptString) || Intrinsics.areEqual("nil", strOptString)) ? false : true;
    }

    private final BigInteger getAccentColor(JSONObject fcmJson) {
        try {
            if (fcmJson.has("bgac")) {
                return new BigInteger(fcmJson.optString("bgac", null), 16);
            }
        } catch (Throwable unused) {
        }
        try {
            String resourceString = AndroidUtils.INSTANCE.getResourceString(this._applicationService.getAppContext(), "onesignal_notification_accent_color", null);
            if (resourceString != null) {
                return new BigInteger(resourceString, 16);
            }
        } catch (Throwable unused2) {
        }
        try {
            String manifestMeta = AndroidUtils.INSTANCE.getManifestMeta(this._applicationService.getAppContext(), "com.onesignal.NotificationAccentColor.DEFAULT");
            if (manifestMeta != null) {
                return new BigInteger(manifestMeta, 16);
            }
        } catch (Throwable unused3) {
        }
        return null;
    }

    @Override // com.onesignal.notifications.internal.display.INotificationDisplayBuilder
    public void addNotificationActionButtons(JSONObject fcmJson, IntentGeneratorForAttachingToNotifications intentGenerator, NotificationCompat.Builder mBuilder, int notificationId, String groupSummary) {
        int resourceIcon;
        Intrinsics.checkNotNullParameter(fcmJson, "fcmJson");
        Intrinsics.checkNotNullParameter(intentGenerator, "intentGenerator");
        try {
            JSONObject jSONObject = new JSONObject(fcmJson.optString(NotificationFormatHelper.PAYLOAD_OS_ROOT_CUSTOM));
            if (jSONObject.has("a")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("a");
                if (jSONObject2.has("actionButtons")) {
                    JSONArray jSONArray = jSONObject2.getJSONArray("actionButtons");
                    int length = jSONArray.length();
                    for (int i = 0; i < length; i++) {
                        JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                        JSONObject jSONObject3 = new JSONObject(fcmJson.toString());
                        Intent newBaseIntent = intentGenerator.getNewBaseIntent(notificationId);
                        newBaseIntent.setAction("" + i);
                        newBaseIntent.putExtra("action_button", true);
                        jSONObject3.put(NotificationConstants.GENERATE_NOTIFICATION_BUNDLE_KEY_ACTION_ID, jSONObjectOptJSONObject.optString("id"));
                        newBaseIntent.putExtra(NotificationConstants.BUNDLE_KEY_ONESIGNAL_DATA, jSONObject3.toString());
                        if (groupSummary != null) {
                            newBaseIntent.putExtra("summary", groupSummary);
                        } else if (fcmJson.has("grp")) {
                            newBaseIntent.putExtra("grp", fcmJson.optString("grp"));
                        }
                        PendingIntent newActionPendingIntent = intentGenerator.getNewActionPendingIntent(notificationId, newBaseIntent);
                        if (jSONObjectOptJSONObject.has(y8.h.H0)) {
                            try {
                                resourceIcon = getResourceIcon(jSONObjectOptJSONObject.optString(y8.h.H0));
                            } catch (Throwable th) {
                                th = th;
                            }
                        } else {
                            resourceIcon = 0;
                        }
                        Intrinsics.checkNotNull(mBuilder);
                        mBuilder.addAction(resourceIcon, jSONObjectOptJSONObject.optString(y8.h.K0), newActionPendingIntent);
                    }
                    return;
                }
                return;
            }
            return;
        } catch (Throwable th2) {
            th = th2;
        }
        th.printStackTrace();
    }

    private final void addAlertButtons(Context context, JSONObject fcmJson, List<String> buttonsLabels, List<String> buttonsIds) {
        try {
            addCustomAlertButtons(fcmJson, buttonsLabels, buttonsIds);
        } catch (Throwable th) {
            Logging.error("Failed to parse JSON for custom buttons for alert dialog.", th);
        }
        if (buttonsLabels.size() == 0 || buttonsLabels.size() < 3) {
            String resourceString = AndroidUtils.INSTANCE.getResourceString(context, "onesignal_in_app_alert_ok_button_text", "Ok");
            Intrinsics.checkNotNull(resourceString);
            buttonsLabels.add(resourceString);
            buttonsIds.add(NotificationBundleProcessor.DEFAULT_ACTION);
        }
    }

    private final void addCustomAlertButtons(JSONObject fcmJson, List<String> buttonsLabels, List<String> buttonsIds) throws JSONException {
        JSONObject jSONObject = new JSONObject(fcmJson.optString(NotificationFormatHelper.PAYLOAD_OS_ROOT_CUSTOM));
        if (jSONObject.has("a")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("a");
            if (jSONObject2.has("actionButtons")) {
                JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("actionButtons");
                int length = jSONArrayOptJSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject3 = jSONArrayOptJSONArray.getJSONObject(i);
                    String strOptString = jSONObject3.optString(y8.h.K0);
                    Intrinsics.checkNotNullExpressionValue(strOptString, "button.optString(\"text\")");
                    buttonsLabels.add(strOptString);
                    String strOptString2 = jSONObject3.optString("id");
                    Intrinsics.checkNotNullExpressionValue(strOptString2, "button.optString(\"id\")");
                    buttonsIds.add(strOptString2);
                }
            }
        }
    }

    /* JADX INFO: compiled from: NotificationDisplayBuilder.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;", "", "()V", "compatBuilder", "Landroidx/core/app/NotificationCompat$Builder;", "getCompatBuilder", "()Landroidx/core/app/NotificationCompat$Builder;", "setCompatBuilder", "(Landroidx/core/app/NotificationCompat$Builder;)V", "hasLargeIcon", "", "getHasLargeIcon", "()Z", "setHasLargeIcon", "(Z)V", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class OneSignalNotificationBuilder {
        private NotificationCompat.Builder compatBuilder;
        private boolean hasLargeIcon;

        public final NotificationCompat.Builder getCompatBuilder() {
            return this.compatBuilder;
        }

        public final void setCompatBuilder(NotificationCompat.Builder builder) {
            this.compatBuilder = builder;
        }

        public final boolean getHasLargeIcon() {
            return this.hasLargeIcon;
        }

        public final void setHasLargeIcon(boolean z) {
            this.hasLargeIcon = z;
        }
    }

    private final Bitmap getBitmap(String name) {
        if (name == null) {
            return null;
        }
        String str = name;
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i : length), 32) <= 0;
            if (z) {
                if (!z2) {
                    break;
                }
                length--;
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        String string = str.subSequence(i, length + 1).toString();
        if (StringsKt.startsWith$default(string, "http://", false, 2, (Object) null) || StringsKt.startsWith$default(string, "https://", false, 2, (Object) null)) {
            return getBitmapFromURL(string);
        }
        return getBitmapFromAssetsOrResourceName(name);
    }

    private final int getResourceIcon(String iconName) {
        if (iconName == null) {
            return 0;
        }
        String str = iconName;
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i : length), 32) <= 0;
            if (z) {
                if (!z2) {
                    break;
                }
                length--;
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        String string = str.subSequence(i, length + 1).toString();
        if (!AndroidUtils.INSTANCE.isValidResourceName(string)) {
            return 0;
        }
        int drawableId = getDrawableId(string);
        if (drawableId != 0) {
            return drawableId;
        }
        try {
            return android.R.drawable.class.getField(iconName).getInt(null);
        } catch (Throwable unused) {
            return 0;
        }
    }
}
