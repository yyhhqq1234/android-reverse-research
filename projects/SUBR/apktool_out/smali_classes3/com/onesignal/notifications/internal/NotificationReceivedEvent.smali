.class public final Lcom/onesignal/notifications/internal/NotificationReceivedEvent;
.super Ljava/lang/Object;
.source "NotificationReceivedEvent.kt"

# interfaces
.implements Lcom/onesignal/notifications/INotificationReceivedEvent;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/NotificationReceivedEvent;",
        "Lcom/onesignal/notifications/INotificationReceivedEvent;",
        "context",
        "Landroid/content/Context;",
        "notification",
        "Lcom/onesignal/notifications/internal/Notification;",
        "(Landroid/content/Context;Lcom/onesignal/notifications/internal/Notification;)V",
        "getContext",
        "()Landroid/content/Context;",
        "discard",
        "",
        "getDiscard",
        "()Z",
        "setDiscard",
        "(Z)V",
        "isPreventDefault",
        "setPreventDefault",
        "getNotification",
        "()Lcom/onesignal/notifications/internal/Notification;",
        "preventDefault",
        "",
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
.field private final context:Landroid/content/Context;

.field private discard:Z

.field private isPreventDefault:Z

.field private final notification:Lcom/onesignal/notifications/internal/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onesignal/notifications/internal/Notification;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/onesignal/notifications/internal/NotificationReceivedEvent;->context:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/onesignal/notifications/internal/NotificationReceivedEvent;->notification:Lcom/onesignal/notifications/internal/Notification;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/onesignal/notifications/internal/NotificationReceivedEvent;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getDiscard()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/onesignal/notifications/internal/NotificationReceivedEvent;->discard:Z

    return v0
.end method

.method public bridge synthetic getNotification()Lcom/onesignal/notifications/IDisplayableMutableNotification;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/NotificationReceivedEvent;->getNotification()Lcom/onesignal/notifications/internal/Notification;

    move-result-object v0

    check-cast v0, Lcom/onesignal/notifications/IDisplayableMutableNotification;

    return-object v0
.end method

.method public getNotification()Lcom/onesignal/notifications/internal/Notification;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/onesignal/notifications/internal/NotificationReceivedEvent;->notification:Lcom/onesignal/notifications/internal/Notification;

    return-object v0
.end method

.method public final isPreventDefault()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/onesignal/notifications/internal/NotificationReceivedEvent;->isPreventDefault:Z

    return v0
.end method

.method public preventDefault()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/onesignal/notifications/internal/NotificationReceivedEvent;->preventDefault(Z)V

    return-void
.end method

.method public preventDefault(Z)V
    .locals 3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationReceivedEvent.preventDefault("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 24
    iget-boolean v0, p0, Lcom/onesignal/notifications/internal/NotificationReceivedEvent;->isPreventDefault:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/NotificationReceivedEvent;->getNotification()Lcom/onesignal/notifications/internal/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/notifications/internal/Notification;->getDisplayWaiter()Lcom/onesignal/common/threading/WaiterWithValue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/common/threading/WaiterWithValue;->wake(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/onesignal/notifications/internal/NotificationReceivedEvent;->isPreventDefault:Z

    .line 28
    iput-boolean p1, p0, Lcom/onesignal/notifications/internal/NotificationReceivedEvent;->discard:Z

    return-void
.end method

.method public final setDiscard(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/onesignal/notifications/internal/NotificationReceivedEvent;->discard:Z

    return-void
.end method

.method public final setPreventDefault(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/onesignal/notifications/internal/NotificationReceivedEvent;->isPreventDefault:Z

    return-void
.end method
