.class public Lcom/onesignal/user/internal/PushSubscription;
.super Lcom/onesignal/user/internal/Subscription;
.source "PushSubscription.kt"

# interfaces
.implements Lcom/onesignal/user/subscriptions/IPushSubscription;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0010\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0008H\u0016J\u0008\u0010\u001b\u001a\u00020\u0010H\u0002J\u0008\u0010\u001c\u001a\u00020\u0019H\u0016J\u0008\u0010\u001d\u001a\u00020\u0019H\u0016J\u0006\u0010\u001e\u001a\u00020\u0010J\u0010\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0008H\u0016R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onesignal/user/internal/PushSubscription;",
        "Lcom/onesignal/user/internal/Subscription;",
        "Lcom/onesignal/user/subscriptions/IPushSubscription;",
        "model",
        "Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;",
        "(Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;)V",
        "changeHandlersNotifier",
        "Lcom/onesignal/common/events/EventProducer;",
        "Lcom/onesignal/user/subscriptions/IPushSubscriptionObserver;",
        "getChangeHandlersNotifier",
        "()Lcom/onesignal/common/events/EventProducer;",
        "optedIn",
        "",
        "getOptedIn",
        "()Z",
        "<set-?>",
        "Lcom/onesignal/user/subscriptions/PushSubscriptionState;",
        "savedState",
        "getSavedState",
        "()Lcom/onesignal/user/subscriptions/PushSubscriptionState;",
        "token",
        "",
        "getToken",
        "()Ljava/lang/String;",
        "addObserver",
        "",
        "observer",
        "fetchState",
        "optIn",
        "optOut",
        "refreshState",
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


# instance fields
.field private final changeHandlersNotifier:Lcom/onesignal/common/events/EventProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/common/events/EventProducer<",
            "Lcom/onesignal/user/subscriptions/IPushSubscriptionObserver;",
            ">;"
        }
    .end annotation
.end field

.field private savedState:Lcom/onesignal/user/subscriptions/PushSubscriptionState;


# direct methods
.method public constructor <init>(Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/onesignal/user/internal/Subscription;-><init>(Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;)V

    .line 14
    new-instance p1, Lcom/onesignal/common/events/EventProducer;

    invoke-direct {p1}, Lcom/onesignal/common/events/EventProducer;-><init>()V

    iput-object p1, p0, Lcom/onesignal/user/internal/PushSubscription;->changeHandlersNotifier:Lcom/onesignal/common/events/EventProducer;

    .line 15
    invoke-direct {p0}, Lcom/onesignal/user/internal/PushSubscription;->fetchState()Lcom/onesignal/user/subscriptions/PushSubscriptionState;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/user/internal/PushSubscription;->savedState:Lcom/onesignal/user/subscriptions/PushSubscriptionState;

    return-void
.end method

.method private final fetchState()Lcom/onesignal/user/subscriptions/PushSubscriptionState;
    .locals 4

    .line 44
    new-instance v0, Lcom/onesignal/user/subscriptions/PushSubscriptionState;

    invoke-virtual {p0}, Lcom/onesignal/user/internal/PushSubscription;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onesignal/user/internal/PushSubscription;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onesignal/user/internal/PushSubscription;->getOptedIn()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/onesignal/user/subscriptions/PushSubscriptionState;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public addObserver(Lcom/onesignal/user/subscriptions/IPushSubscriptionObserver;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/onesignal/user/internal/PushSubscription;->changeHandlersNotifier:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/events/EventProducer;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public final getChangeHandlersNotifier()Lcom/onesignal/common/events/EventProducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/common/events/EventProducer<",
            "Lcom/onesignal/user/subscriptions/IPushSubscriptionObserver;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/onesignal/user/internal/PushSubscription;->changeHandlersNotifier:Lcom/onesignal/common/events/EventProducer;

    return-object v0
.end method

.method public getOptedIn()Z
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/onesignal/user/internal/PushSubscription;->getModel()Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->getOptedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onesignal/user/internal/PushSubscription;->getModel()Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->getStatus()Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    move-result-object v0

    sget-object v1, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->NO_PERMISSION:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getSavedState()Lcom/onesignal/user/subscriptions/PushSubscriptionState;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/onesignal/user/internal/PushSubscription;->savedState:Lcom/onesignal/user/subscriptions/PushSubscriptionState;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/onesignal/user/internal/PushSubscription;->getModel()Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optIn()V
    .locals 8

    .line 27
    invoke-virtual {p0}, Lcom/onesignal/user/internal/PushSubscription;->getModel()Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onesignal/common/modeling/Model;

    const-string v2, "optedIn"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/onesignal/common/modeling/Model;->setBooleanProperty$default(Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public optOut()V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lcom/onesignal/user/internal/PushSubscription;->getModel()Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->setOptedIn(Z)V

    return-void
.end method

.method public final refreshState()Lcom/onesignal/user/subscriptions/PushSubscriptionState;
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/onesignal/user/internal/PushSubscription;->fetchState()Lcom/onesignal/user/subscriptions/PushSubscriptionState;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/user/internal/PushSubscription;->savedState:Lcom/onesignal/user/subscriptions/PushSubscriptionState;

    return-object v0
.end method

.method public removeObserver(Lcom/onesignal/user/subscriptions/IPushSubscriptionObserver;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/onesignal/user/internal/PushSubscription;->changeHandlersNotifier:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/events/EventProducer;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method
