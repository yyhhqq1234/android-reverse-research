.class public final Lcom/onesignal/user/internal/SmsSubscription;
.super Lcom/onesignal/user/internal/Subscription;
.source "SmsSubscription.kt"

# interfaces
.implements Lcom/onesignal/user/subscriptions/ISmsSubscription;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onesignal/user/internal/SmsSubscription;",
        "Lcom/onesignal/user/internal/Subscription;",
        "Lcom/onesignal/user/subscriptions/ISmsSubscription;",
        "model",
        "Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;",
        "(Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;)V",
        "number",
        "",
        "getNumber",
        "()Ljava/lang/String;",
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


# direct methods
.method public constructor <init>(Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/onesignal/user/internal/Subscription;-><init>(Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;)V

    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/onesignal/user/internal/SmsSubscription;->getModel()Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
