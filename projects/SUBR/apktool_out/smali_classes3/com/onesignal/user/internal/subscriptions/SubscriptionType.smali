.class public final enum Lcom/onesignal/user/internal/subscriptions/SubscriptionType;
.super Ljava/lang/Enum;
.source "SubscriptionModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/user/internal/subscriptions/SubscriptionType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/onesignal/user/internal/subscriptions/SubscriptionType;",
        "",
        "(Ljava/lang/String;I)V",
        "EMAIL",
        "SMS",
        "PUSH",
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
.field private static final synthetic $VALUES:[Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

.field public static final enum EMAIL:Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

.field public static final enum PUSH:Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

.field public static final enum SMS:Lcom/onesignal/user/internal/subscriptions/SubscriptionType;


# direct methods
.method private static final synthetic $values()[Lcom/onesignal/user/internal/subscriptions/SubscriptionType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    const/4 v1, 0x0

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;->EMAIL:Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;->SMS:Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;->PUSH:Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    const-string v1, "EMAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;->EMAIL:Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    .line 7
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    const-string v1, "SMS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;->SMS:Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    .line 8
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    const-string v1, "PUSH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;->PUSH:Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    invoke-static {}, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;->$values()[Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    move-result-object v0

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;->$VALUES:[Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/user/internal/subscriptions/SubscriptionType;
    .locals 1

    const-class v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/user/internal/subscriptions/SubscriptionType;
    .locals 1

    sget-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionType;->$VALUES:[Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/user/internal/subscriptions/SubscriptionType;

    return-object v0
.end method
