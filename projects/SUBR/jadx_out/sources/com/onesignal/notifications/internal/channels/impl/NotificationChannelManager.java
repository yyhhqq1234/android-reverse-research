package com.onesignal.notifications.internal.channels.impl;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.NotificationChannelCompat;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.language.ILanguageContext;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.channels.INotificationChannelManager;
import com.onesignal.notifications.internal.common.NotificationGenerationJob;
import com.onesignal.notifications.internal.common.NotificationHelper;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: NotificationChannelManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J \u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0003J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0003J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0003J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0012\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/onesignal/notifications/internal/channels/impl/NotificationChannelManager;", "Lcom/onesignal/notifications/internal/channels/INotificationChannelManager;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_languageContext", "Lcom/onesignal/core/internal/language/ILanguageContext;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/language/ILanguageContext;)V", "hexPattern", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "createChannel", "", "context", "Landroid/content/Context;", "notificationManager", "Landroid/app/NotificationManager;", "payload", "Lorg/json/JSONObject;", "createDefaultChannel", "createNotificationChannel", "notificationJob", "Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;", "createRestoreChannel", "priorityToImportance", "", HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, "processChannelList", "", "list", "Lorg/json/JSONArray;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationChannelManager implements INotificationChannelManager {
    private static final String CHANNEL_PREFIX = "OS_";
    private static final String DEFAULT_CHANNEL_ID = "fcm_fallback_notification_channel";
    private static final String RESTORE_CHANNEL_ID = "restored_OS_notifications";
    private final IApplicationService _applicationService;
    private final ILanguageContext _languageContext;
    private final Pattern hexPattern;

    private final int priorityToImportance(int priority) {
        if (priority > 9) {
            return 5;
        }
        if (priority > 7) {
            return 4;
        }
        if (priority > 5) {
            return 3;
        }
        if (priority > 3) {
            return 2;
        }
        return priority > 1 ? 1 : 0;
    }

    public NotificationChannelManager(IApplicationService _applicationService, ILanguageContext _languageContext) {
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_languageContext, "_languageContext");
        this._applicationService = _applicationService;
        this._languageContext = _languageContext;
        this.hexPattern = Pattern.compile("^([A-Fa-f0-9]{8})$");
    }

    @Override // com.onesignal.notifications.internal.channels.INotificationChannelManager
    public String createNotificationChannel(NotificationGenerationJob notificationJob) {
        Intrinsics.checkNotNullParameter(notificationJob, "notificationJob");
        if (Build.VERSION.SDK_INT < 26) {
            return "fcm_fallback_notification_channel";
        }
        Context appContext = this._applicationService.getAppContext();
        JSONObject jsonPayload = notificationJob.getJsonPayload();
        Intrinsics.checkNotNull(jsonPayload);
        NotificationManager notificationManager = NotificationHelper.INSTANCE.getNotificationManager(appContext);
        if (notificationJob.getIsRestoring()) {
            return createRestoreChannel(notificationManager);
        }
        if (jsonPayload.has("oth_chnl")) {
            String otherChannel = jsonPayload.optString("oth_chnl");
            if (notificationManager.getNotificationChannel(otherChannel) != null) {
                Intrinsics.checkNotNullExpressionValue(otherChannel, "otherChannel");
                return otherChannel;
            }
        }
        if (!jsonPayload.has("chnl")) {
            return createDefaultChannel(notificationManager);
        }
        try {
            return createChannel(appContext, notificationManager, jsonPayload);
        } catch (JSONException e) {
            Logging.error("Could not create notification channel due to JSON payload error!", e);
            return "fcm_fallback_notification_channel";
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0049  */
    private final String createChannel(Context context, NotificationManager notificationManager, JSONObject payload) throws JSONException {
        JSONObject jSONObject;
        JSONObject jSONObjectOptJSONObject;
        long[] vibrationPattern;
        Object objOpt = payload.opt("chnl");
        if (objOpt instanceof String) {
            jSONObject = new JSONObject((String) objOpt);
        } else {
            Intrinsics.checkNotNull(objOpt, "null cannot be cast to non-null type org.json.JSONObject");
            jSONObject = (JSONObject) objOpt;
        }
        String strOptString = jSONObject.optString("id", "fcm_fallback_notification_channel");
        String channelId = Intrinsics.areEqual(strOptString, NotificationChannelCompat.DEFAULT_CHANNEL_ID) ? "fcm_fallback_notification_channel" : strOptString;
        if (jSONObject.has("langs")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("langs");
            String language = this._languageContext.getLanguage();
            if (jSONObject2.has(language)) {
                jSONObjectOptJSONObject = jSONObject2.optJSONObject(language);
            } else {
                jSONObjectOptJSONObject = jSONObject;
            }
        } else {
            jSONObjectOptJSONObject = jSONObject;
        }
        Intrinsics.checkNotNull(jSONObjectOptJSONObject);
        NotificationChannel notificationChannel = new NotificationChannel(channelId, jSONObjectOptJSONObject.optString("nm", "Miscellaneous"), priorityToImportance(payload.optInt("pri", 6)));
        notificationChannel.setDescription(jSONObjectOptJSONObject.optString("dscr", null));
        if (jSONObject.has("grp_id")) {
            String strOptString2 = jSONObject.optString("grp_id");
            String strOptString3 = jSONObjectOptJSONObject.optString("grp_nm");
            Intrinsics.checkNotNullExpressionValue(strOptString3, "payloadWithText.optString(\"grp_nm\")");
            notificationManager.createNotificationChannelGroup(new NotificationChannelGroup(strOptString2, strOptString3));
            notificationChannel.setGroup(strOptString2);
        }
        if (payload.has("ledc")) {
            String strOptString4 = payload.optString("ledc");
            if (!this.hexPattern.matcher(strOptString4).matches()) {
                Logging.warn$default("OneSignal LED Color Settings: ARGB Hex value incorrect format (E.g: FF9900FF)", null, 2, null);
                strOptString4 = "FFFFFFFF";
            }
            try {
                notificationChannel.setLightColor(new BigInteger(strOptString4, 16).intValue());
            } catch (Throwable th) {
                Logging.error("Couldn't convert ARGB Hex value to BigInteger:", th);
            }
        }
        notificationChannel.enableLights(payload.optInt("led", 1) == 1);
        if (payload.has("vib_pt") && (vibrationPattern = NotificationHelper.INSTANCE.parseVibrationPattern(payload)) != null) {
            notificationChannel.setVibrationPattern(vibrationPattern);
        }
        notificationChannel.enableVibration(payload.optInt("vib", 1) == 1);
        if (payload.has("sound")) {
            String strOptString5 = payload.optString("sound", null);
            Uri soundUri = NotificationHelper.INSTANCE.getSoundUri(context, strOptString5);
            if (soundUri != null) {
                notificationChannel.setSound(soundUri, null);
            } else if (Intrinsics.areEqual("null", strOptString5) || Intrinsics.areEqual("nil", strOptString5)) {
                notificationChannel.setSound(null, null);
            }
        }
        notificationChannel.setLockscreenVisibility(payload.optInt("vis", 0));
        notificationChannel.setShowBadge(payload.optInt("bdg", 1) == 1);
        notificationChannel.setBypassDnd(payload.optInt("bdnd", 0) == 1);
        Logging.verbose$default("Creating notification channel with channel:\n" + notificationChannel, null, 2, null);
        try {
            notificationManager.createNotificationChannel(notificationChannel);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
        Intrinsics.checkNotNullExpressionValue(channelId, "channelId");
        return channelId;
    }

    private final String createDefaultChannel(NotificationManager notificationManager) {
        NotificationChannel notificationChannel = new NotificationChannel("fcm_fallback_notification_channel", "Miscellaneous", 3);
        notificationChannel.enableLights(true);
        notificationChannel.enableVibration(true);
        notificationManager.createNotificationChannel(notificationChannel);
        return "fcm_fallback_notification_channel";
    }

    private final String createRestoreChannel(NotificationManager notificationManager) {
        notificationManager.createNotificationChannel(new NotificationChannel(RESTORE_CHANNEL_ID, "Restored", 2));
        return RESTORE_CHANNEL_ID;
    }

    @Override // com.onesignal.notifications.internal.channels.INotificationChannelManager
    public void processChannelList(JSONArray list) {
        if (Build.VERSION.SDK_INT < 26 || list == null || list.length() == 0) {
            return;
        }
        NotificationManager notificationManager = NotificationHelper.INSTANCE.getNotificationManager(this._applicationService.getAppContext());
        HashSet hashSet = new HashSet();
        int length = list.length();
        for (int i = 0; i < length; i++) {
            try {
                Context appContext = this._applicationService.getAppContext();
                JSONObject jSONObject = list.getJSONObject(i);
                Intrinsics.checkNotNullExpressionValue(jSONObject, "list.getJSONObject(i)");
                hashSet.add(createChannel(appContext, notificationManager, jSONObject));
            } catch (JSONException e) {
                Logging.error("Could not create notification channel due to JSON payload error!", e);
            }
        }
        if (hashSet.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        try {
            List<NotificationChannel> notificationChannels = notificationManager.getNotificationChannels();
            Intrinsics.checkNotNullExpressionValue(notificationChannels, "notificationManager.notificationChannels");
            arrayList = notificationChannels;
        } catch (NullPointerException e2) {
            Logging.error$default("Error when trying to delete notification channel: " + e2.getMessage(), null, 2, null);
        }
        Iterator<NotificationChannel> it = arrayList.iterator();
        while (it.hasNext()) {
            String id = it.next().getId();
            Intrinsics.checkNotNullExpressionValue(id, "id");
            if (StringsKt.startsWith$default(id, CHANNEL_PREFIX, false, 2, (Object) null) && !hashSet.contains(id)) {
                notificationManager.deleteNotificationChannel(id);
            }
        }
    }
}
