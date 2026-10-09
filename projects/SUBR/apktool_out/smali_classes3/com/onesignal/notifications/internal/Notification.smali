.class public final Lcom/onesignal/notifications/internal/Notification;
.super Ljava/lang/Object;
.source "Notification.kt"

# interfaces
.implements Lcom/onesignal/notifications/IDisplayableMutableNotification;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/notifications/internal/Notification$ActionButton;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\t\n\u0002\u0008\u001a\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001:\u0001\u007fB\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B/\u0008\u0016\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0008\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010t\u001a\u00020uH\u0016J\u0006\u0010v\u001a\u000200J\u0018\u0010w\u001a\u00020u2\u0006\u0010x\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0008\u0010y\u001a\u00020uH\u0002J\u0010\u0010z\u001a\u00020u2\u0006\u0010x\u001a\u00020\u0003H\u0002J\u0012\u0010{\u001a\u00020u2\u0008\u0010|\u001a\u0004\u0018\u00010KH\u0016J\u0006\u0010}\u001a\u00020\u0003J\u0008\u0010~\u001a\u00020#H\u0016R\"\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\n\u001a\u00020\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010(\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010%\"\u0004\u0008*\u0010\'R\u001c\u0010+\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010%\"\u0004\u0008-\u0010\'R\u0017\u0010.\u001a\u0008\u0012\u0004\u0012\u0002000/\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u001c\u00103\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010%\"\u0004\u00085\u0010\'R\u001c\u00106\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010%\"\u0004\u00088\u0010\'R\u001c\u00109\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010%\"\u0004\u0008;\u0010\'R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u0010\"\u0004\u0008=\u0010\u0012R\u001c\u0010>\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010%\"\u0004\u0008@\u0010\'R\u001c\u0010A\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010%\"\u0004\u0008C\u0010\'R\u001c\u0010D\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010%\"\u0004\u0008F\u0010\'R\u001a\u0010G\u001a\u00020\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010\u0019\"\u0004\u0008I\u0010\u001bR\u001c\u0010J\u001a\u0004\u0018\u00010KX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\u001c\u0010P\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010%\"\u0004\u0008R\u0010\'R\u001a\u0010S\u001a\u00020\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010\u0019\"\u0004\u0008U\u0010\u001bR\u001a\u0010V\u001a\u00020#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010%\"\u0004\u0008X\u0010\'R\u001a\u0010Y\u001a\u00020ZX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R\u001c\u0010_\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010%\"\u0004\u0008a\u0010\'R\u001c\u0010b\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008c\u0010%\"\u0004\u0008d\u0010\'R\u001c\u0010e\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010%\"\u0004\u0008g\u0010\'R\u001c\u0010h\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010%\"\u0004\u0008j\u0010\'R\u001c\u0010k\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008l\u0010%\"\u0004\u0008m\u0010\'R\u001c\u0010n\u001a\u0004\u0018\u00010#X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008o\u0010%\"\u0004\u0008p\u0010\'R\u001a\u0010q\u001a\u00020\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008r\u0010\u0019\"\u0004\u0008s\u0010\u001b\u00a8\u0006\u0080\u0001"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/Notification;",
        "Lcom/onesignal/notifications/IDisplayableMutableNotification;",
        "payload",
        "Lorg/json/JSONObject;",
        "time",
        "Lcom/onesignal/core/internal/time/ITime;",
        "(Lorg/json/JSONObject;Lcom/onesignal/core/internal/time/ITime;)V",
        "groupedNotifications",
        "",
        "jsonPayload",
        "androidNotificationId",
        "",
        "(Ljava/util/List;Lorg/json/JSONObject;ILcom/onesignal/core/internal/time/ITime;)V",
        "actionButtons",
        "Lcom/onesignal/notifications/IActionButton;",
        "getActionButtons",
        "()Ljava/util/List;",
        "setActionButtons",
        "(Ljava/util/List;)V",
        "additionalData",
        "getAdditionalData",
        "()Lorg/json/JSONObject;",
        "setAdditionalData",
        "(Lorg/json/JSONObject;)V",
        "getAndroidNotificationId",
        "()I",
        "setAndroidNotificationId",
        "(I)V",
        "backgroundImageLayout",
        "Lcom/onesignal/notifications/BackgroundImageLayout;",
        "getBackgroundImageLayout",
        "()Lcom/onesignal/notifications/BackgroundImageLayout;",
        "setBackgroundImageLayout",
        "(Lcom/onesignal/notifications/BackgroundImageLayout;)V",
        "bigPicture",
        "",
        "getBigPicture",
        "()Ljava/lang/String;",
        "setBigPicture",
        "(Ljava/lang/String;)V",
        "body",
        "getBody",
        "setBody",
        "collapseId",
        "getCollapseId",
        "setCollapseId",
        "displayWaiter",
        "Lcom/onesignal/common/threading/WaiterWithValue;",
        "",
        "getDisplayWaiter",
        "()Lcom/onesignal/common/threading/WaiterWithValue;",
        "fromProjectNumber",
        "getFromProjectNumber",
        "setFromProjectNumber",
        "groupKey",
        "getGroupKey",
        "setGroupKey",
        "groupMessage",
        "getGroupMessage",
        "setGroupMessage",
        "getGroupedNotifications",
        "setGroupedNotifications",
        "largeIcon",
        "getLargeIcon",
        "setLargeIcon",
        "launchURL",
        "getLaunchURL",
        "setLaunchURL",
        "ledColor",
        "getLedColor",
        "setLedColor",
        "lockScreenVisibility",
        "getLockScreenVisibility",
        "setLockScreenVisibility",
        "notificationExtender",
        "Landroidx/core/app/NotificationCompat$Extender;",
        "getNotificationExtender",
        "()Landroidx/core/app/NotificationCompat$Extender;",
        "setNotificationExtender",
        "(Landroidx/core/app/NotificationCompat$Extender;)V",
        "notificationId",
        "getNotificationId",
        "setNotificationId",
        "priority",
        "getPriority",
        "setPriority",
        "rawPayload",
        "getRawPayload",
        "setRawPayload",
        "sentTime",
        "",
        "getSentTime",
        "()J",
        "setSentTime",
        "(J)V",
        "smallIcon",
        "getSmallIcon",
        "setSmallIcon",
        "smallIconAccentColor",
        "getSmallIconAccentColor",
        "setSmallIconAccentColor",
        "sound",
        "getSound",
        "setSound",
        "templateId",
        "getTemplateId",
        "setTemplateId",
        "templateName",
        "getTemplateName",
        "setTemplateName",
        "title",
        "getTitle",
        "setTitle",
        "ttl",
        "getTtl",
        "setTtl",
        "display",
        "",
        "hasNotificationId",
        "initPayloadData",
        "currentJsonPayload",
        "setActionButtonsFromData",
        "setBackgroundImageLayoutFromData",
        "setExtender",
        "extender",
        "toJSONObject",
        "toString",
        "ActionButton",
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


# instance fields
.field private actionButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onesignal/notifications/IActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private additionalData:Lorg/json/JSONObject;

.field private androidNotificationId:I

.field private backgroundImageLayout:Lcom/onesignal/notifications/BackgroundImageLayout;

.field private bigPicture:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private collapseId:Ljava/lang/String;

.field private final displayWaiter:Lcom/onesignal/common/threading/WaiterWithValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/common/threading/WaiterWithValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private fromProjectNumber:Ljava/lang/String;

.field private groupKey:Ljava/lang/String;

.field private groupMessage:Ljava/lang/String;

.field private groupedNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/notifications/internal/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private largeIcon:Ljava/lang/String;

.field private launchURL:Ljava/lang/String;

.field private ledColor:Ljava/lang/String;

.field private lockScreenVisibility:I

.field private notificationExtender:Landroidx/core/app/NotificationCompat$Extender;

.field private notificationId:Ljava/lang/String;

.field private priority:I

.field private rawPayload:Ljava/lang/String;

.field private sentTime:J

.field private smallIcon:Ljava/lang/String;

.field private smallIconAccentColor:Ljava/lang/String;

.field private sound:Ljava/lang/String;

.field private templateId:Ljava/lang/String;

.field private templateName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private ttl:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/json/JSONObject;ILcom/onesignal/core/internal/time/ITime;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/notifications/internal/Notification;",
            ">;",
            "Lorg/json/JSONObject;",
            "I",
            "Lcom/onesignal/core/internal/time/ITime;",
            ")V"
        }
    .end annotation

    const-string v0, "jsonPayload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/onesignal/common/threading/WaiterWithValue;

    invoke-direct {v0}, Lcom/onesignal/common/threading/WaiterWithValue;-><init>()V

    iput-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->displayWaiter:Lcom/onesignal/common/threading/WaiterWithValue;

    const/4 v0, 0x1

    .line 48
    iput v0, p0, Lcom/onesignal/notifications/internal/Notification;->lockScreenVisibility:I

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->rawPayload:Ljava/lang/String;

    .line 67
    invoke-direct {p0, p2, p4}, Lcom/onesignal/notifications/internal/Notification;->initPayloadData(Lorg/json/JSONObject;Lcom/onesignal/core/internal/time/ITime;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/onesignal/notifications/internal/Notification;->setGroupedNotifications(Ljava/util/List;)V

    .line 69
    invoke-virtual {p0, p3}, Lcom/onesignal/notifications/internal/Notification;->setAndroidNotificationId(I)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/onesignal/core/internal/time/ITime;)V
    .locals 2

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/onesignal/notifications/internal/Notification;-><init>(Ljava/util/List;Lorg/json/JSONObject;ILcom/onesignal/core/internal/time/ITime;)V

    return-void
.end method

.method private final initPayloadData(Lorg/json/JSONObject;Lcom/onesignal/core/internal/time/ITime;)V
    .locals 7

    .line 78
    :try_start_0
    sget-object v0, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    invoke-virtual {v0, p1}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->getCustomJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 83
    invoke-interface {p2}, Lcom/onesignal/core/internal/time/ITime;->getCurrentTimeMillis()J

    move-result-wide v1

    const-string p2, "google.ttl"

    .line 84
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x3f480

    const/16 v5, 0x3e8

    if-eqz v3, :cond_0

    const-string v3, "google.sent_time"

    .line 85
    invoke-virtual {p1, v3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    int-to-long v5, v5

    div-long/2addr v1, v5

    invoke-virtual {p0, v1, v2}, Lcom/onesignal/notifications/internal/Notification;->setSentTime(J)V

    .line 90
    invoke-virtual {p1, p2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 89
    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setTtl(I)V

    goto :goto_0

    :cond_0
    const-string p2, "hms.ttl"

    .line 94
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "hms.sent_time"

    .line 95
    invoke-virtual {p1, v3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    int-to-long v5, v5

    div-long/2addr v1, v5

    invoke-virtual {p0, v1, v2}, Lcom/onesignal/notifications/internal/Notification;->setSentTime(J)V

    .line 100
    invoke-virtual {p1, p2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 99
    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setTtl(I)V

    goto :goto_0

    :cond_1
    int-to-long v5, v5

    .line 105
    div-long/2addr v1, v5

    invoke-virtual {p0, v1, v2}, Lcom/onesignal/notifications/internal/Notification;->setSentTime(J)V

    .line 106
    invoke-virtual {p0, v4}, Lcom/onesignal/notifications/internal/Notification;->setTtl(I)V

    :goto_0
    const-string p2, "i"

    .line 108
    invoke-static {v0, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setNotificationId(Ljava/lang/String;)V

    const-string p2, "ti"

    .line 109
    invoke-static {v0, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setTemplateId(Ljava/lang/String;)V

    const-string p2, "tn"

    .line 110
    invoke-static {v0, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setTemplateName(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "currentJsonPayload.toString()"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setRawPayload(Ljava/lang/String;)V

    const-string p2, "a"

    .line 112
    invoke-static {v0, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setAdditionalData(Lorg/json/JSONObject;)V

    const-string p2, "u"

    .line 113
    invoke-static {v0, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setLaunchURL(Ljava/lang/String;)V

    const-string p2, "alert"

    .line 114
    invoke-static {p1, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setBody(Ljava/lang/String;)V

    const-string p2, "title"

    .line 115
    invoke-static {p1, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setTitle(Ljava/lang/String;)V

    const-string p2, "sicon"

    .line 116
    invoke-static {p1, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setSmallIcon(Ljava/lang/String;)V

    const-string p2, "bicon"

    .line 117
    invoke-static {p1, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setBigPicture(Ljava/lang/String;)V

    const-string p2, "licon"

    .line 118
    invoke-static {p1, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setLargeIcon(Ljava/lang/String;)V

    const-string p2, "sound"

    .line 119
    invoke-static {p1, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setSound(Ljava/lang/String;)V

    const-string p2, "grp"

    .line 120
    invoke-static {p1, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setGroupKey(Ljava/lang/String;)V

    const-string p2, "grp_msg"

    .line 121
    invoke-static {p1, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setGroupMessage(Ljava/lang/String;)V

    const-string p2, "bgac"

    .line 122
    invoke-static {p1, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setSmallIconAccentColor(Ljava/lang/String;)V

    const-string p2, "ledc"

    .line 123
    invoke-static {p1, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setLedColor(Ljava/lang/String;)V

    const-string p2, "vis"

    .line 124
    invoke-static {p1, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 125
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setLockScreenVisibility(I)V

    :cond_2
    const-string p2, "from"

    .line 126
    invoke-static {p1, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setFromProjectNumber(Ljava/lang/String;)V

    const-string p2, "pri"

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setPriority(I)V

    const-string p2, "collapse_key"

    .line 128
    invoke-static {p1, p2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "do_not_collapse"

    .line 129
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/onesignal/notifications/internal/Notification;->setCollapseId(Ljava/lang/String;)V

    .line 131
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/Notification;->setActionButtonsFromData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    const-string v0, "Error assigning OSNotificationReceivedEvent.actionButtons values!"

    .line 133
    invoke-static {v0, p2}, Lcom/onesignal/debug/internal/logging/Logging;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    :goto_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/onesignal/notifications/internal/Notification;->setBackgroundImageLayoutFromData(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    const-string p2, "Error assigning OSNotificationReceivedEvent.backgroundImageLayout values!"

    .line 138
    invoke-static {p2, p1}, Lcom/onesignal/debug/internal/logging/Logging;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :catchall_2
    move-exception p1

    const-string p2, "Error assigning OSNotificationReceivedEvent payload values!"

    .line 80
    invoke-static {p2, p1}, Lcom/onesignal/debug/internal/logging/Logging;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final setActionButtonsFromData()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "actionButtons"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 147
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 148
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 150
    new-instance v6, Lcom/onesignal/notifications/internal/Notification$ActionButton;

    const-string v7, "jsonActionButton"

    .line 151
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "id"

    invoke-static {v5, v7}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "text"

    .line 152
    invoke-static {v5, v8}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "icon"

    .line 153
    invoke-static {v5, v9}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-direct {v6, v7, v8, v5}, Lcom/onesignal/notifications/internal/Notification$ActionButton;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0, v2}, Lcom/onesignal/notifications/internal/Notification;->setActionButtons(Ljava/util/List;)V

    .line 158
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "actionId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private final setBackgroundImageLayoutFromData(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "bg_img"

    .line 165
    invoke-static {p1, v0}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 169
    new-instance p1, Lcom/onesignal/notifications/BackgroundImageLayout;

    const-string v1, "img"

    .line 170
    invoke-static {v0, v1}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tc"

    .line 171
    invoke-static {v0, v2}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bc"

    .line 172
    invoke-static {v0, v3}, Lcom/onesignal/common/JSONObjectExtensionsKt;->safeString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-direct {p1, v1, v2, v0}, Lcom/onesignal/notifications/BackgroundImageLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/onesignal/notifications/internal/Notification;->setBackgroundImageLayout(Lcom/onesignal/notifications/BackgroundImageLayout;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public display()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->displayWaiter:Lcom/onesignal/common/threading/WaiterWithValue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/common/threading/WaiterWithValue;->wake(Ljava/lang/Object;)V

    return-void
.end method

.method public getActionButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/notifications/IActionButton;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->actionButtons:Ljava/util/List;

    return-object v0
.end method

.method public getAdditionalData()Lorg/json/JSONObject;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->additionalData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getAndroidNotificationId()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/onesignal/notifications/internal/Notification;->androidNotificationId:I

    return v0
.end method

.method public getBackgroundImageLayout()Lcom/onesignal/notifications/BackgroundImageLayout;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->backgroundImageLayout:Lcom/onesignal/notifications/BackgroundImageLayout;

    return-object v0
.end method

.method public getBigPicture()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->bigPicture:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCollapseId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->collapseId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayWaiter()Lcom/onesignal/common/threading/WaiterWithValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/common/threading/WaiterWithValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->displayWaiter:Lcom/onesignal/common/threading/WaiterWithValue;

    return-object v0
.end method

.method public getFromProjectNumber()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->fromProjectNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupKey()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->groupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupMessage()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->groupMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupedNotifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/notifications/internal/Notification;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->groupedNotifications:Ljava/util/List;

    return-object v0
.end method

.method public getLargeIcon()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->largeIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchURL()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->launchURL:Ljava/lang/String;

    return-object v0
.end method

.method public getLedColor()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->ledColor:Ljava/lang/String;

    return-object v0
.end method

.method public getLockScreenVisibility()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/onesignal/notifications/internal/Notification;->lockScreenVisibility:I

    return v0
.end method

.method public final getNotificationExtender()Landroidx/core/app/NotificationCompat$Extender;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->notificationExtender:Landroidx/core/app/NotificationCompat$Extender;

    return-object v0
.end method

.method public getNotificationId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->notificationId:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/onesignal/notifications/internal/Notification;->priority:I

    return v0
.end method

.method public getRawPayload()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->rawPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getSentTime()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/onesignal/notifications/internal/Notification;->sentTime:J

    return-wide v0
.end method

.method public getSmallIcon()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->smallIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIconAccentColor()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->smallIconAccentColor:Ljava/lang/String;

    return-object v0
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->sound:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->templateName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/onesignal/notifications/internal/Notification;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/onesignal/notifications/internal/Notification;->ttl:I

    return v0
.end method

.method public final hasNotificationId()Z
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getAndroidNotificationId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActionButtons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onesignal/notifications/IActionButton;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->actionButtons:Ljava/util/List;

    return-void
.end method

.method public setAdditionalData(Lorg/json/JSONObject;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->additionalData:Lorg/json/JSONObject;

    return-void
.end method

.method public setAndroidNotificationId(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/onesignal/notifications/internal/Notification;->androidNotificationId:I

    return-void
.end method

.method public setBackgroundImageLayout(Lcom/onesignal/notifications/BackgroundImageLayout;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->backgroundImageLayout:Lcom/onesignal/notifications/BackgroundImageLayout;

    return-void
.end method

.method public setBigPicture(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->bigPicture:Ljava/lang/String;

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->body:Ljava/lang/String;

    return-void
.end method

.method public setCollapseId(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->collapseId:Ljava/lang/String;

    return-void
.end method

.method public setExtender(Landroidx/core/app/NotificationCompat$Extender;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->notificationExtender:Landroidx/core/app/NotificationCompat$Extender;

    return-void
.end method

.method public setFromProjectNumber(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->fromProjectNumber:Ljava/lang/String;

    return-void
.end method

.method public setGroupKey(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->groupKey:Ljava/lang/String;

    return-void
.end method

.method public setGroupMessage(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->groupMessage:Ljava/lang/String;

    return-void
.end method

.method public setGroupedNotifications(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/notifications/internal/Notification;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->groupedNotifications:Ljava/util/List;

    return-void
.end method

.method public setLargeIcon(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->largeIcon:Ljava/lang/String;

    return-void
.end method

.method public setLaunchURL(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->launchURL:Ljava/lang/String;

    return-void
.end method

.method public setLedColor(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->ledColor:Ljava/lang/String;

    return-void
.end method

.method public setLockScreenVisibility(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/onesignal/notifications/internal/Notification;->lockScreenVisibility:I

    return-void
.end method

.method public final setNotificationExtender(Landroidx/core/app/NotificationCompat$Extender;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->notificationExtender:Landroidx/core/app/NotificationCompat$Extender;

    return-void
.end method

.method public setNotificationId(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->notificationId:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/onesignal/notifications/internal/Notification;->priority:I

    return-void
.end method

.method public setRawPayload(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->rawPayload:Ljava/lang/String;

    return-void
.end method

.method public setSentTime(J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/onesignal/notifications/internal/Notification;->sentTime:J

    return-void
.end method

.method public setSmallIcon(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->smallIcon:Ljava/lang/String;

    return-void
.end method

.method public setSmallIconAccentColor(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->smallIconAccentColor:Ljava/lang/String;

    return-void
.end method

.method public setSound(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->sound:Ljava/lang/String;

    return-void
.end method

.method public setTemplateId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->templateId:Ljava/lang/String;

    return-void
.end method

.method public setTemplateName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->templateName:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/onesignal/notifications/internal/Notification;->title:Ljava/lang/String;

    return-void
.end method

.method public setTtl(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/onesignal/notifications/internal/Notification;->ttl:I

    return-void
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .line 186
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "androidNotificationId"

    .line 188
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getAndroidNotificationId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 190
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getGroupedNotifications()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getGroupedNotifications()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/notifications/internal/Notification;

    invoke-virtual {v3}, Lcom/onesignal/notifications/internal/Notification;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "groupedNotifications"

    .line 193
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "notificationId"

    .line 194
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getNotificationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "templateName"

    .line 195
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getTemplateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "templateId"

    .line 196
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getTemplateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    .line 197
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "body"

    .line 198
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "smallIcon"

    .line 199
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getSmallIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "largeIcon"

    .line 200
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getLargeIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bigPicture"

    .line 201
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getBigPicture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "smallIconAccentColor"

    .line 202
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getSmallIconAccentColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "launchURL"

    .line 203
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getLaunchURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sound"

    .line 204
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getSound()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ledColor"

    .line 205
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getLedColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lockScreenVisibility"

    .line 206
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getLockScreenVisibility()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "groupKey"

    .line 207
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "groupMessage"

    .line 208
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getGroupMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fromProjectNumber"

    .line 209
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getFromProjectNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "collapseId"

    .line 210
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getCollapseId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "priority"

    .line 211
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getPriority()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "additionalData"

    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getActionButtons()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 214
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 215
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getActionButtons()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/notifications/IActionButton;

    const-string v4, "null cannot be cast to non-null type com.onesignal.notifications.internal.Notification.ActionButton"

    .line 216
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/onesignal/notifications/internal/Notification$ActionButton;

    invoke-virtual {v3}, Lcom/onesignal/notifications/internal/Notification$ActionButton;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const-string v2, "actionButtons"

    .line 218
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "rawPayload"

    .line 220
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getRawPayload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 222
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OSNotification{notificationExtender="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/onesignal/notifications/internal/Notification;->notificationExtender:Landroidx/core/app/NotificationCompat$Extender;

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", groupedNotifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getGroupedNotifications()Ljava/util/List;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", androidNotificationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getAndroidNotificationId()I

    move-result v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notificationId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getNotificationId()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', templateName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getTemplateName()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', templateId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', body=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', additionalData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", smallIcon=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getSmallIcon()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', largeIcon=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getLargeIcon()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', bigPicture=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getBigPicture()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', smallIconAccentColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getSmallIconAccentColor()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', launchURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getLaunchURL()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', sound=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getSound()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', ledColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getLedColor()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', lockScreenVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getLockScreenVisibility()I

    move-result v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", groupKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', groupMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getGroupMessage()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', actionButtons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getActionButtons()Ljava/util/List;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromProjectNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getFromProjectNumber()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', backgroundImageLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getBackgroundImageLayout()Lcom/onesignal/notifications/BackgroundImageLayout;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", collapseId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getCollapseId()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getPriority()I

    move-result v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rawPayload=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/Notification;->getRawPayload()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
