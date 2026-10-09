.class public interface abstract Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;
.super Ljava/lang/Object;
.source "ISubscriptionManager.kt"

# interfaces
.implements Lcom/onesignal/common/events/IEventNotifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/onesignal/common/events/IEventNotifier<",
        "Lcom/onesignal/user/internal/subscriptions/ISubscriptionChangedHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u001a\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u0014H&J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0010H&J\u0010\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0010H&R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\u00020\u0008X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;",
        "Lcom/onesignal/common/events/IEventNotifier;",
        "Lcom/onesignal/user/internal/subscriptions/ISubscriptionChangedHandler;",
        "pushSubscriptionModel",
        "Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;",
        "getPushSubscriptionModel",
        "()Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;",
        "subscriptions",
        "Lcom/onesignal/user/internal/subscriptions/SubscriptionList;",
        "getSubscriptions",
        "()Lcom/onesignal/user/internal/subscriptions/SubscriptionList;",
        "setSubscriptions",
        "(Lcom/onesignal/user/internal/subscriptions/SubscriptionList;)V",
        "addEmailSubscription",
        "",
        "email",
        "",
        "addOrUpdatePushSubscriptionToken",
        "pushToken",
        "pushTokenStatus",
        "Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;",
        "addSmsSubscription",
        "sms",
        "removeEmailSubscription",
        "removeSmsSubscription",
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
.method public abstract addEmailSubscription(Ljava/lang/String;)V
.end method

.method public abstract addOrUpdatePushSubscriptionToken(Ljava/lang/String;Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;)V
.end method

.method public abstract addSmsSubscription(Ljava/lang/String;)V
.end method

.method public abstract getPushSubscriptionModel()Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;
.end method

.method public abstract getSubscriptions()Lcom/onesignal/user/internal/subscriptions/SubscriptionList;
.end method

.method public abstract removeEmailSubscription(Ljava/lang/String;)V
.end method

.method public abstract removeSmsSubscription(Ljava/lang/String;)V
.end method

.method public abstract setSubscriptions(Lcom/onesignal/user/internal/subscriptions/SubscriptionList;)V
.end method
