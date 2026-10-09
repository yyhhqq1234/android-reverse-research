.class public final enum Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;
.super Ljava/lang/Enum;
.source "SubscriptionModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0018\u0008\u0086\u0001\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001aB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "SUBSCRIBED",
        "NO_PERMISSION",
        "UNSUBSCRIBE",
        "MISSING_JETPACK_LIBRARY",
        "MISSING_FIREBASE_FCM_LIBRARY",
        "OUTDATED_JETPACK_LIBRARY",
        "INVALID_FCM_SENDER_ID",
        "OUTDATED_GOOGLE_PLAY_SERVICES_APP",
        "FIREBASE_FCM_INIT_ERROR",
        "FIREBASE_FCM_ERROR_IOEXCEPTION_SERVICE_NOT_AVAILABLE",
        "FIREBASE_FCM_ERROR_IOEXCEPTION_OTHER",
        "FIREBASE_FCM_ERROR_MISC_EXCEPTION",
        "HMS_TOKEN_TIMEOUT",
        "HMS_ARGUMENTS_INVALID",
        "HMS_API_EXCEPTION_OTHER",
        "MISSING_HMS_PUSHKIT_LIBRARY",
        "FIREBASE_FCM_ERROR_IOEXCEPTION_AUTHENTICATION_FAILED",
        "DISABLED_FROM_REST_API_DEFAULT_REASON",
        "ERROR",
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
.field private static final synthetic $VALUES:[Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final Companion:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus$Companion;

.field public static final enum DISABLED_FROM_REST_API_DEFAULT_REASON:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum ERROR:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum FIREBASE_FCM_ERROR_IOEXCEPTION_AUTHENTICATION_FAILED:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum FIREBASE_FCM_ERROR_IOEXCEPTION_OTHER:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum FIREBASE_FCM_ERROR_IOEXCEPTION_SERVICE_NOT_AVAILABLE:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum FIREBASE_FCM_ERROR_MISC_EXCEPTION:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum FIREBASE_FCM_INIT_ERROR:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum HMS_API_EXCEPTION_OTHER:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum HMS_ARGUMENTS_INVALID:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum HMS_TOKEN_TIMEOUT:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum INVALID_FCM_SENDER_ID:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum MISSING_FIREBASE_FCM_LIBRARY:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum MISSING_HMS_PUSHKIT_LIBRARY:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum MISSING_JETPACK_LIBRARY:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum NO_PERMISSION:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum OUTDATED_GOOGLE_PLAY_SERVICES_APP:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum OUTDATED_JETPACK_LIBRARY:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum SUBSCRIBED:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

.field public static final enum UNSUBSCRIBE:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/4 v1, 0x0

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->SUBSCRIBED:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->NO_PERMISSION:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->UNSUBSCRIBE:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->MISSING_JETPACK_LIBRARY:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->MISSING_FIREBASE_FCM_LIBRARY:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->OUTDATED_JETPACK_LIBRARY:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->INVALID_FCM_SENDER_ID:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->OUTDATED_GOOGLE_PLAY_SERVICES_APP:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->FIREBASE_FCM_INIT_ERROR:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->FIREBASE_FCM_ERROR_IOEXCEPTION_SERVICE_NOT_AVAILABLE:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->FIREBASE_FCM_ERROR_IOEXCEPTION_OTHER:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->FIREBASE_FCM_ERROR_MISC_EXCEPTION:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->HMS_TOKEN_TIMEOUT:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->HMS_ARGUMENTS_INVALID:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->HMS_API_EXCEPTION_OTHER:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->MISSING_HMS_PUSHKIT_LIBRARY:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->FIREBASE_FCM_ERROR_IOEXCEPTION_AUTHENTICATION_FAILED:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->DISABLED_FROM_REST_API_DEFAULT_REASON:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->ERROR:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const-string v1, "SUBSCRIBED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->SUBSCRIBED:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 16
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const-string v1, "NO_PERMISSION"

    invoke-direct {v0, v1, v3, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->NO_PERMISSION:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 19
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/4 v1, 0x2

    const/4 v2, -0x2

    const-string v3, "UNSUBSCRIBE"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->UNSUBSCRIBE:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 22
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/4 v1, 0x3

    const/4 v2, -0x3

    const-string v3, "MISSING_JETPACK_LIBRARY"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->MISSING_JETPACK_LIBRARY:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 25
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/4 v1, 0x4

    const/4 v2, -0x4

    const-string v3, "MISSING_FIREBASE_FCM_LIBRARY"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->MISSING_FIREBASE_FCM_LIBRARY:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 28
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/4 v1, 0x5

    const/4 v2, -0x5

    const-string v3, "OUTDATED_JETPACK_LIBRARY"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->OUTDATED_JETPACK_LIBRARY:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 31
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/4 v1, 0x6

    const/4 v2, -0x6

    const-string v3, "INVALID_FCM_SENDER_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->INVALID_FCM_SENDER_ID:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 34
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/4 v1, 0x7

    const/4 v2, -0x7

    const-string v3, "OUTDATED_GOOGLE_PLAY_SERVICES_APP"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->OUTDATED_GOOGLE_PLAY_SERVICES_APP:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 37
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/16 v1, 0x8

    const/4 v2, -0x8

    const-string v3, "FIREBASE_FCM_INIT_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->FIREBASE_FCM_INIT_ERROR:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 40
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/16 v1, 0x9

    const/16 v2, -0x9

    const-string v3, "FIREBASE_FCM_ERROR_IOEXCEPTION_SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->FIREBASE_FCM_ERROR_IOEXCEPTION_SERVICE_NOT_AVAILABLE:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 45
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/16 v1, 0xa

    const/16 v2, -0xb

    const-string v3, "FIREBASE_FCM_ERROR_IOEXCEPTION_OTHER"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->FIREBASE_FCM_ERROR_IOEXCEPTION_OTHER:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 48
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/16 v1, 0xb

    const/16 v2, -0xc

    const-string v3, "FIREBASE_FCM_ERROR_MISC_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->FIREBASE_FCM_ERROR_MISC_EXCEPTION:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 53
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/16 v1, 0xc

    const/16 v2, -0x19

    const-string v3, "HMS_TOKEN_TIMEOUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->HMS_TOKEN_TIMEOUT:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 59
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/16 v1, 0xd

    const/16 v2, -0x1a

    const-string v3, "HMS_ARGUMENTS_INVALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->HMS_ARGUMENTS_INVALID:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 62
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/16 v1, 0xe

    const/16 v2, -0x1b

    const-string v3, "HMS_API_EXCEPTION_OTHER"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->HMS_API_EXCEPTION_OTHER:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 65
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/16 v1, 0xf

    const/16 v2, -0x1c

    const-string v3, "MISSING_HMS_PUSHKIT_LIBRARY"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->MISSING_HMS_PUSHKIT_LIBRARY:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 68
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/16 v1, 0x10

    const/16 v2, -0x1d

    const-string v3, "FIREBASE_FCM_ERROR_IOEXCEPTION_AUTHENTICATION_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->FIREBASE_FCM_ERROR_IOEXCEPTION_AUTHENTICATION_FAILED:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 71
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/16 v1, 0x11

    const/16 v2, -0x1e

    const-string v3, "DISABLED_FROM_REST_API_DEFAULT_REASON"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->DISABLED_FROM_REST_API_DEFAULT_REASON:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    .line 74
    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    const/16 v1, 0x12

    const/16 v2, 0x270f

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->ERROR:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    invoke-static {}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->$values()[Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    move-result-object v0

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->$VALUES:[Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    new-instance v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->Companion:Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;
    .locals 1

    const-class v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;
    .locals 1

    sget-object v0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->$VALUES:[Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;->value:I

    return v0
.end method
