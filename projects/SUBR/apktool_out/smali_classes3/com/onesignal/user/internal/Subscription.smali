.class public abstract Lcom/onesignal/user/internal/Subscription;
.super Ljava/lang/Object;
.source "Subscription.kt"

# interfaces
.implements Lcom/onesignal/user/subscriptions/ISubscription;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008 \u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onesignal/user/internal/Subscription;",
        "Lcom/onesignal/user/subscriptions/ISubscription;",
        "model",
        "Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;",
        "(Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;)V",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "getModel",
        "()Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;",
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
.field private final model:Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;


# direct methods
.method public constructor <init>(Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/onesignal/user/internal/Subscription;->model:Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .line 14
    sget-object v0, Lcom/onesignal/common/IDManager;->INSTANCE:Lcom/onesignal/common/IDManager;

    iget-object v1, p0, Lcom/onesignal/user/internal/Subscription;->model:Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;

    invoke-virtual {v1}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/common/IDManager;->isLocalId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onesignal/user/internal/Subscription;->model:Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;

    invoke-virtual {v0}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getModel()Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/onesignal/user/internal/Subscription;->model:Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;

    return-object v0
.end method
