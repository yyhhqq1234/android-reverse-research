.class public interface abstract Lcom/onesignal/user/internal/subscriptions/ISubscriptionChangedHandler;
.super Ljava/lang/Object;
.source "ISubscriptionManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onesignal/user/internal/subscriptions/ISubscriptionChangedHandler;",
        "",
        "onSubscriptionAdded",
        "",
        "subscription",
        "Lcom/onesignal/user/subscriptions/ISubscription;",
        "onSubscriptionChanged",
        "args",
        "Lcom/onesignal/common/modeling/ModelChangedArgs;",
        "onSubscriptionRemoved",
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
.method public abstract onSubscriptionAdded(Lcom/onesignal/user/subscriptions/ISubscription;)V
.end method

.method public abstract onSubscriptionChanged(Lcom/onesignal/user/subscriptions/ISubscription;Lcom/onesignal/common/modeling/ModelChangedArgs;)V
.end method

.method public abstract onSubscriptionRemoved(Lcom/onesignal/user/subscriptions/ISubscription;)V
.end method
