.class public interface abstract Lcom/onesignal/notifications/INotificationsManager;
.super Ljava/lang/Object;
.source "INotificationsManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0008\u0010\u0011\u001a\u00020\tH&J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\rH&J\u0010\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0016H&J\u0010\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0010\u0010\u001a\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0019\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0003H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dR\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onesignal/notifications/INotificationsManager;",
        "",
        "canRequestPermission",
        "",
        "getCanRequestPermission",
        "()Z",
        "permission",
        "getPermission",
        "addClickListener",
        "",
        "listener",
        "Lcom/onesignal/notifications/INotificationClickListener;",
        "addForegroundLifecycleListener",
        "Lcom/onesignal/notifications/INotificationLifecycleListener;",
        "addPermissionObserver",
        "observer",
        "Lcom/onesignal/notifications/IPermissionObserver;",
        "clearAllNotifications",
        "removeClickListener",
        "removeForegroundLifecycleListener",
        "removeGroupedNotifications",
        "group",
        "",
        "removeNotification",
        "id",
        "",
        "removePermissionObserver",
        "requestPermission",
        "fallbackToSettings",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract addClickListener(Lcom/onesignal/notifications/INotificationClickListener;)V
.end method

.method public abstract addForegroundLifecycleListener(Lcom/onesignal/notifications/INotificationLifecycleListener;)V
.end method

.method public abstract addPermissionObserver(Lcom/onesignal/notifications/IPermissionObserver;)V
.end method

.method public abstract clearAllNotifications()V
.end method

.method public abstract getCanRequestPermission()Z
.end method

.method public abstract getPermission()Z
.end method

.method public abstract removeClickListener(Lcom/onesignal/notifications/INotificationClickListener;)V
.end method

.method public abstract removeForegroundLifecycleListener(Lcom/onesignal/notifications/INotificationLifecycleListener;)V
.end method

.method public abstract removeGroupedNotifications(Ljava/lang/String;)V
.end method

.method public abstract removeNotification(I)V
.end method

.method public abstract removePermissionObserver(Lcom/onesignal/notifications/IPermissionObserver;)V
.end method

.method public abstract requestPermission(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
