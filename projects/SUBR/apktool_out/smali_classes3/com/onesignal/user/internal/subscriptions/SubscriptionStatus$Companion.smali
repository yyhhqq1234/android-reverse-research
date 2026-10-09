.class public final Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus$Companion;
.super Ljava/lang/Object;
.source "SubscriptionModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubscriptionModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionModel.kt\ncom/onesignal/user/internal/subscriptions/SubscriptionStatus$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,151:1\n1282#2,2:152\n*S KotlinDebug\n*F\n+ 1 SubscriptionModel.kt\ncom/onesignal/user/internal/subscriptions/SubscriptionStatus$Companion\n*L\n79#1:152,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus$Companion;",
        "",
        "()V",
        "fromInt",
        "Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;",
        "value",
        "",
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
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInt(I)Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;
    .locals 6

    .line 79
    invoke-static {}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->values()[Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    move-result-object v0

    .line 152
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 79
    invoke-virtual {v4}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->getValue()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    return-object v4
.end method
