.class public interface abstract Lcom/onesignal/notifications/INotification;
.super Ljava/lang/Object;
.source "INotification.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/notifications/INotification$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u001d\n\u0002\u0010\t\n\u0002\u0008\u0011\u0008f\u0018\u00002\u00020\u0001R\u001a\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u00108&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0018R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0018R\u0014\u0010\u001d\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0018R\u0014\u0010\u001f\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0018R\u0014\u0010!\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u0018R\u001a\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0006R\u0014\u0010%\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u0018R\u0014\u0010\'\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\u0018R\u0014\u0010)\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u0018R\u0012\u0010+\u001a\u00020\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010\u000eR\u0014\u0010-\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010\u0018R\u0012\u0010/\u001a\u00020\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u0010\u000eR\u0012\u00101\u001a\u00020\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u0010\u0018R\u0012\u00103\u001a\u000204X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00085\u00106R\u0014\u00107\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00088\u0010\u0018R\u0014\u00109\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010\u0018R\u0014\u0010;\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010\u0018R\u0014\u0010=\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010\u0018R\u0014\u0010?\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010\u0018R\u0014\u0010A\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010\u0018R\u0012\u0010C\u001a\u00020\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010\u000e\u00a8\u0006E"
    }
    d2 = {
        "Lcom/onesignal/notifications/INotification;",
        "",
        "actionButtons",
        "",
        "Lcom/onesignal/notifications/IActionButton;",
        "getActionButtons",
        "()Ljava/util/List;",
        "additionalData",
        "Lorg/json/JSONObject;",
        "getAdditionalData",
        "()Lorg/json/JSONObject;",
        "androidNotificationId",
        "",
        "getAndroidNotificationId",
        "()I",
        "backgroundImageLayout",
        "Lcom/onesignal/notifications/BackgroundImageLayout;",
        "getBackgroundImageLayout$annotations",
        "()V",
        "getBackgroundImageLayout",
        "()Lcom/onesignal/notifications/BackgroundImageLayout;",
        "bigPicture",
        "",
        "getBigPicture",
        "()Ljava/lang/String;",
        "body",
        "getBody",
        "collapseId",
        "getCollapseId",
        "fromProjectNumber",
        "getFromProjectNumber",
        "groupKey",
        "getGroupKey",
        "groupMessage",
        "getGroupMessage",
        "groupedNotifications",
        "getGroupedNotifications",
        "largeIcon",
        "getLargeIcon",
        "launchURL",
        "getLaunchURL",
        "ledColor",
        "getLedColor",
        "lockScreenVisibility",
        "getLockScreenVisibility",
        "notificationId",
        "getNotificationId",
        "priority",
        "getPriority",
        "rawPayload",
        "getRawPayload",
        "sentTime",
        "",
        "getSentTime",
        "()J",
        "smallIcon",
        "getSmallIcon",
        "smallIconAccentColor",
        "getSmallIconAccentColor",
        "sound",
        "getSound",
        "templateId",
        "getTemplateId",
        "templateName",
        "getTemplateName",
        "title",
        "getTitle",
        "ttl",
        "getTtl",
        "com.onesignal.core"
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
.method public abstract getActionButtons()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/notifications/IActionButton;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdditionalData()Lorg/json/JSONObject;
.end method

.method public abstract getAndroidNotificationId()I
.end method

.method public abstract getBackgroundImageLayout()Lcom/onesignal/notifications/BackgroundImageLayout;
.end method

.method public abstract getBigPicture()Ljava/lang/String;
.end method

.method public abstract getBody()Ljava/lang/String;
.end method

.method public abstract getCollapseId()Ljava/lang/String;
.end method

.method public abstract getFromProjectNumber()Ljava/lang/String;
.end method

.method public abstract getGroupKey()Ljava/lang/String;
.end method

.method public abstract getGroupMessage()Ljava/lang/String;
.end method

.method public abstract getGroupedNotifications()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/notifications/INotification;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLargeIcon()Ljava/lang/String;
.end method

.method public abstract getLaunchURL()Ljava/lang/String;
.end method

.method public abstract getLedColor()Ljava/lang/String;
.end method

.method public abstract getLockScreenVisibility()I
.end method

.method public abstract getNotificationId()Ljava/lang/String;
.end method

.method public abstract getPriority()I
.end method

.method public abstract getRawPayload()Ljava/lang/String;
.end method

.method public abstract getSentTime()J
.end method

.method public abstract getSmallIcon()Ljava/lang/String;
.end method

.method public abstract getSmallIconAccentColor()Ljava/lang/String;
.end method

.method public abstract getSound()Ljava/lang/String;
.end method

.method public abstract getTemplateId()Ljava/lang/String;
.end method

.method public abstract getTemplateName()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTtl()I
.end method
