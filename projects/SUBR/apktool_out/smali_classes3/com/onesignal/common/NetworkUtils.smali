.class public final Lcom/onesignal/common/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/common/NetworkUtils$ResponseStatusType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onesignal/common/NetworkUtils;",
        "",
        "()V",
        "maxNetworkRequestAttemptCount",
        "",
        "getMaxNetworkRequestAttemptCount",
        "()I",
        "setMaxNetworkRequestAttemptCount",
        "(I)V",
        "getResponseStatusType",
        "Lcom/onesignal/common/NetworkUtils$ResponseStatusType;",
        "statusCode",
        "ResponseStatusType",
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
.field public static final INSTANCE:Lcom/onesignal/common/NetworkUtils;

.field private static maxNetworkRequestAttemptCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onesignal/common/NetworkUtils;

    invoke-direct {v0}, Lcom/onesignal/common/NetworkUtils;-><init>()V

    sput-object v0, Lcom/onesignal/common/NetworkUtils;->INSTANCE:Lcom/onesignal/common/NetworkUtils;

    const/4 v0, 0x3

    .line 12
    sput v0, Lcom/onesignal/common/NetworkUtils;->maxNetworkRequestAttemptCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMaxNetworkRequestAttemptCount()I
    .locals 1

    .line 12
    sget v0, Lcom/onesignal/common/NetworkUtils;->maxNetworkRequestAttemptCount:I

    return v0
.end method

.method public final getResponseStatusType(I)Lcom/onesignal/common/NetworkUtils$ResponseStatusType;
    .locals 1

    const/16 v0, 0x199

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1ad

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 21
    sget-object p1, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->RETRYABLE:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    goto :goto_0

    .line 17
    :pswitch_0
    sget-object p1, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->UNAUTHORIZED:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    goto :goto_0

    .line 16
    :pswitch_1
    sget-object p1, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->INVALID:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    goto :goto_0

    .line 20
    :cond_0
    sget-object p1, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->RETRYABLE:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    goto :goto_0

    .line 18
    :cond_1
    :pswitch_2
    sget-object p1, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->MISSING:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    goto :goto_0

    .line 19
    :cond_2
    sget-object p1, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->CONFLICT:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final setMaxNetworkRequestAttemptCount(I)V
    .locals 0

    .line 12
    sput p1, Lcom/onesignal/common/NetworkUtils;->maxNetworkRequestAttemptCount:I

    return-void
.end method
