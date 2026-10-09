.class public interface abstract Lcom/onesignal/notifications/INotificationWillDisplayEvent;
.super Ljava/lang/Object;
.source "INotificationWillDisplayEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onesignal/notifications/INotificationWillDisplayEvent;",
        "",
        "notification",
        "Lcom/onesignal/notifications/IDisplayableNotification;",
        "getNotification",
        "()Lcom/onesignal/notifications/IDisplayableNotification;",
        "preventDefault",
        "",
        "discard",
        "",
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
.method public abstract getNotification()Lcom/onesignal/notifications/IDisplayableNotification;
.end method

.method public abstract preventDefault()V
.end method

.method public abstract preventDefault(Z)V
.end method
