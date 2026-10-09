.class public final Lcom/onesignal/user/internal/UninitializedPushSubscription;
.super Lcom/onesignal/user/internal/PushSubscription;
.source "PushSubscription.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/user/internal/UninitializedPushSubscription$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/onesignal/user/internal/UninitializedPushSubscription;",
        "Lcom/onesignal/user/internal/PushSubscription;",
        "()V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onesignal/user/internal/UninitializedPushSubscription$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onesignal/user/internal/UninitializedPushSubscription$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/user/internal/UninitializedPushSubscription$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/user/internal/UninitializedPushSubscription;->Companion:Lcom/onesignal/user/internal/UninitializedPushSubscription$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    sget-object v0, Lcom/onesignal/user/internal/UninitializedPushSubscription;->Companion:Lcom/onesignal/user/internal/UninitializedPushSubscription$Companion;

    invoke-virtual {v0}, Lcom/onesignal/user/internal/UninitializedPushSubscription$Companion;->createFakePushSub()Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onesignal/user/internal/PushSubscription;-><init>(Lcom/onesignal/user/internal/subscriptions/SubscriptionModel;)V

    return-void
.end method
