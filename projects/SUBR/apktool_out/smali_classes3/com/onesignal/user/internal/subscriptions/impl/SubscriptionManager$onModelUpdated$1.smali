.class final Lcom/onesignal/user/internal/subscriptions/impl/SubscriptionManager$onModelUpdated$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SubscriptionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/user/internal/subscriptions/impl/SubscriptionManager;->onModelUpdated(Lcom/onesignal/common/modeling/ModelChangedArgs;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onesignal/user/subscriptions/IPushSubscriptionObserver;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onesignal/user/subscriptions/IPushSubscriptionObserver;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $subscription:Lcom/onesignal/user/subscriptions/ISubscription;


# direct methods
.method constructor <init>(Lcom/onesignal/user/subscriptions/ISubscription;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/user/internal/subscriptions/impl/SubscriptionManager$onModelUpdated$1;->$subscription:Lcom/onesignal/user/subscriptions/ISubscription;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 171
    check-cast p1, Lcom/onesignal/user/subscriptions/IPushSubscriptionObserver;

    invoke-virtual {p0, p1}, Lcom/onesignal/user/internal/subscriptions/impl/SubscriptionManager$onModelUpdated$1;->invoke(Lcom/onesignal/user/subscriptions/IPushSubscriptionObserver;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/onesignal/user/subscriptions/IPushSubscriptionObserver;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v0, Lcom/onesignal/user/subscriptions/PushSubscriptionChangedState;

    .line 174
    iget-object v1, p0, Lcom/onesignal/user/internal/subscriptions/impl/SubscriptionManager$onModelUpdated$1;->$subscription:Lcom/onesignal/user/subscriptions/ISubscription;

    check-cast v1, Lcom/onesignal/user/internal/PushSubscription;

    invoke-virtual {v1}, Lcom/onesignal/user/internal/PushSubscription;->getSavedState()Lcom/onesignal/user/subscriptions/PushSubscriptionState;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/onesignal/user/internal/subscriptions/impl/SubscriptionManager$onModelUpdated$1;->$subscription:Lcom/onesignal/user/subscriptions/ISubscription;

    check-cast v2, Lcom/onesignal/user/internal/PushSubscription;

    invoke-virtual {v2}, Lcom/onesignal/user/internal/PushSubscription;->refreshState()Lcom/onesignal/user/subscriptions/PushSubscriptionState;

    move-result-object v2

    .line 173
    invoke-direct {v0, v1, v2}, Lcom/onesignal/user/subscriptions/PushSubscriptionChangedState;-><init>(Lcom/onesignal/user/subscriptions/PushSubscriptionState;Lcom/onesignal/user/subscriptions/PushSubscriptionState;)V

    .line 172
    invoke-interface {p1, v0}, Lcom/onesignal/user/subscriptions/IPushSubscriptionObserver;->onPushSubscriptionChange(Lcom/onesignal/user/subscriptions/PushSubscriptionChangedState;)V

    return-void
.end method
