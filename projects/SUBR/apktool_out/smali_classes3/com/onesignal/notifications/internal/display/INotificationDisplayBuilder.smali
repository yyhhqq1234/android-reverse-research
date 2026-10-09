.class public interface abstract Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;
.super Ljava/lang/Object;
.source "INotificationDisplayBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0002\u0008\u0003\u0008`\u0018\u00002\u00020\u0001J4\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H&J\u001a\u0010\u0015\u001a\u00020\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH&J\u0008\u0010\u001d\u001a\u00020\u0007H&J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0012\u001a\u00020\u0007H&J\u0018\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u001fH&J\u0010\u0010$\u001a\u00020%2\u0006\u0010\u000c\u001a\u00020\rH&J\u0012\u0010&\u001a\u00020\u000b2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0011H&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006("
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;",
        "",
        "defaultLargeIcon",
        "Landroid/graphics/Bitmap;",
        "getDefaultLargeIcon",
        "()Landroid/graphics/Bitmap;",
        "defaultSmallIconId",
        "",
        "getDefaultSmallIconId",
        "()I",
        "addNotificationActionButtons",
        "",
        "fcmJson",
        "Lorg/json/JSONObject;",
        "intentGenerator",
        "Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;",
        "mBuilder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "notificationId",
        "groupSummary",
        "",
        "addXiaomiSettings",
        "oneSignalNotificationBuilder",
        "Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;",
        "notification",
        "Landroid/app/Notification;",
        "getBaseOneSignalNotificationBuilder",
        "notificationJob",
        "Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;",
        "getGroupAlertBehavior",
        "getNewBaseDismissIntent",
        "Landroid/content/Intent;",
        "getNewDismissActionPendingIntent",
        "Landroid/app/PendingIntent;",
        "requestCode",
        "intent",
        "getTitle",
        "",
        "removeNotifyOptions",
        "builder",
        "com.onesignal.notifications"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract addNotificationActionButtons(Lorg/json/JSONObject;Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;)V
.end method

.method public abstract addXiaomiSettings(Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;Landroid/app/Notification;)V
.end method

.method public abstract getBaseOneSignalNotificationBuilder(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;)Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;
.end method

.method public abstract getDefaultLargeIcon()Landroid/graphics/Bitmap;
.end method

.method public abstract getDefaultSmallIconId()I
.end method

.method public abstract getGroupAlertBehavior()I
.end method

.method public abstract getNewBaseDismissIntent(I)Landroid/content/Intent;
.end method

.method public abstract getNewDismissActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;
.end method

.method public abstract getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;
.end method

.method public abstract removeNotifyOptions(Landroidx/core/app/NotificationCompat$Builder;)V
.end method
