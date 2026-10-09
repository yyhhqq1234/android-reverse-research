.class public interface abstract Lcom/onesignal/user/subscriptions/IPushSubscription;
.super Ljava/lang/Object;
.source "IPushSubscription.kt"

# interfaces
.implements Lcom/onesignal/user/subscriptions/ISubscription;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0008\u0010\u000e\u001a\u00020\u000bH&J\u0008\u0010\u000f\u001a\u00020\u000bH&J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onesignal/user/subscriptions/IPushSubscription;",
        "Lcom/onesignal/user/subscriptions/ISubscription;",
        "optedIn",
        "",
        "getOptedIn",
        "()Z",
        "token",
        "",
        "getToken",
        "()Ljava/lang/String;",
        "addObserver",
        "",
        "observer",
        "Lcom/onesignal/user/subscriptions/IPushSubscriptionObserver;",
        "optIn",
        "optOut",
        "removeObserver",
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
.method public abstract addObserver(Lcom/onesignal/user/subscriptions/IPushSubscriptionObserver;)V
.end method

.method public abstract getOptedIn()Z
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract optIn()V
.end method

.method public abstract optOut()V
.end method

.method public abstract removeObserver(Lcom/onesignal/user/subscriptions/IPushSubscriptionObserver;)V
.end method
