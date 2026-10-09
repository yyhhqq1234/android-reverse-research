.class public final Lcom/onesignal/notifications/internal/NotificationClickEvent;
.super Ljava/lang/Object;
.source "NotificationClickEvent.kt"

# interfaces
.implements Lcom/onesignal/notifications/INotificationClickEvent;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/NotificationClickEvent;",
        "Lcom/onesignal/notifications/INotificationClickEvent;",
        "_notification",
        "Lcom/onesignal/notifications/internal/Notification;",
        "_result",
        "Lcom/onesignal/notifications/internal/NotificationClickResult;",
        "(Lcom/onesignal/notifications/internal/Notification;Lcom/onesignal/notifications/internal/NotificationClickResult;)V",
        "notification",
        "Lcom/onesignal/notifications/INotification;",
        "getNotification",
        "()Lcom/onesignal/notifications/INotification;",
        "result",
        "Lcom/onesignal/notifications/INotificationClickResult;",
        "getResult",
        "()Lcom/onesignal/notifications/INotificationClickResult;",
        "toJSONObject",
        "Lorg/json/JSONObject;",
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
.field private final _notification:Lcom/onesignal/notifications/internal/Notification;

.field private final _result:Lcom/onesignal/notifications/internal/NotificationClickResult;


# direct methods
.method public constructor <init>(Lcom/onesignal/notifications/internal/Notification;Lcom/onesignal/notifications/internal/NotificationClickResult;)V
    .locals 1

    const-string v0, "_notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/onesignal/notifications/internal/NotificationClickEvent;->_notification:Lcom/onesignal/notifications/internal/Notification;

    .line 15
    iput-object p2, p0, Lcom/onesignal/notifications/internal/NotificationClickEvent;->_result:Lcom/onesignal/notifications/internal/NotificationClickResult;

    return-void
.end method


# virtual methods
.method public getNotification()Lcom/onesignal/notifications/INotification;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/onesignal/notifications/internal/NotificationClickEvent;->_notification:Lcom/onesignal/notifications/internal/Notification;

    check-cast v0, Lcom/onesignal/notifications/INotification;

    return-object v0
.end method

.method public getResult()Lcom/onesignal/notifications/INotificationClickResult;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/onesignal/notifications/internal/NotificationClickEvent;->_result:Lcom/onesignal/notifications/internal/NotificationClickResult;

    check-cast v0, Lcom/onesignal/notifications/INotificationClickResult;

    return-object v0
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 27
    iget-object v1, p0, Lcom/onesignal/notifications/internal/NotificationClickEvent;->_notification:Lcom/onesignal/notifications/internal/Notification;

    invoke-virtual {v1}, Lcom/onesignal/notifications/internal/Notification;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/onesignal/notifications/internal/NotificationClickEvent;->_result:Lcom/onesignal/notifications/internal/NotificationClickResult;

    invoke-virtual {v1}, Lcom/onesignal/notifications/internal/NotificationClickResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "JSONObject()\n           \u2026, _result.toJSONObject())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
