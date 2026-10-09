.class public final Lcom/onesignal/notifications/internal/pushtoken/PushTokenResponse;
.super Ljava/lang/Object;
.source "IPushTokenManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/pushtoken/PushTokenResponse;",
        "",
        "token",
        "",
        "status",
        "Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;",
        "(Ljava/lang/String;Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;)V",
        "getStatus",
        "()Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;",
        "getToken",
        "()Ljava/lang/String;",
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
.field private final status:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenResponse;->token:Ljava/lang/String;

    iput-object p2, p0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenResponse;->status:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenResponse;->status:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenResponse;->token:Ljava/lang/String;

    return-object v0
.end method
