.class public final enum Lcom/onesignal/core/internal/operations/ExecutionResult;
.super Ljava/lang/Enum;
.source "IOperationExecutor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/core/internal/operations/ExecutionResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onesignal/core/internal/operations/ExecutionResult;",
        "",
        "(Ljava/lang/String;I)V",
        "SUCCESS",
        "SUCCESS_STARTING_ONLY",
        "FAIL_RETRY",
        "FAIL_NORETRY",
        "FAIL_UNAUTHORIZED",
        "FAIL_CONFLICT",
        "FAIL_PAUSE_OPREPO",
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
.field private static final synthetic $VALUES:[Lcom/onesignal/core/internal/operations/ExecutionResult;

.field public static final enum FAIL_CONFLICT:Lcom/onesignal/core/internal/operations/ExecutionResult;

.field public static final enum FAIL_NORETRY:Lcom/onesignal/core/internal/operations/ExecutionResult;

.field public static final enum FAIL_PAUSE_OPREPO:Lcom/onesignal/core/internal/operations/ExecutionResult;

.field public static final enum FAIL_RETRY:Lcom/onesignal/core/internal/operations/ExecutionResult;

.field public static final enum FAIL_UNAUTHORIZED:Lcom/onesignal/core/internal/operations/ExecutionResult;

.field public static final enum SUCCESS:Lcom/onesignal/core/internal/operations/ExecutionResult;

.field public static final enum SUCCESS_STARTING_ONLY:Lcom/onesignal/core/internal/operations/ExecutionResult;


# direct methods
.method private static final synthetic $values()[Lcom/onesignal/core/internal/operations/ExecutionResult;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/onesignal/core/internal/operations/ExecutionResult;

    const/4 v1, 0x0

    sget-object v2, Lcom/onesignal/core/internal/operations/ExecutionResult;->SUCCESS:Lcom/onesignal/core/internal/operations/ExecutionResult;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/onesignal/core/internal/operations/ExecutionResult;->SUCCESS_STARTING_ONLY:Lcom/onesignal/core/internal/operations/ExecutionResult;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/onesignal/core/internal/operations/ExecutionResult;->FAIL_RETRY:Lcom/onesignal/core/internal/operations/ExecutionResult;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/onesignal/core/internal/operations/ExecutionResult;->FAIL_NORETRY:Lcom/onesignal/core/internal/operations/ExecutionResult;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/onesignal/core/internal/operations/ExecutionResult;->FAIL_UNAUTHORIZED:Lcom/onesignal/core/internal/operations/ExecutionResult;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/onesignal/core/internal/operations/ExecutionResult;->FAIL_CONFLICT:Lcom/onesignal/core/internal/operations/ExecutionResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/onesignal/core/internal/operations/ExecutionResult;->FAIL_PAUSE_OPREPO:Lcom/onesignal/core/internal/operations/ExecutionResult;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Lcom/onesignal/core/internal/operations/ExecutionResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/core/internal/operations/ExecutionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/core/internal/operations/ExecutionResult;->SUCCESS:Lcom/onesignal/core/internal/operations/ExecutionResult;

    .line 56
    new-instance v0, Lcom/onesignal/core/internal/operations/ExecutionResult;

    const-string v1, "SUCCESS_STARTING_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onesignal/core/internal/operations/ExecutionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/core/internal/operations/ExecutionResult;->SUCCESS_STARTING_ONLY:Lcom/onesignal/core/internal/operations/ExecutionResult;

    .line 61
    new-instance v0, Lcom/onesignal/core/internal/operations/ExecutionResult;

    const-string v1, "FAIL_RETRY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/core/internal/operations/ExecutionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/core/internal/operations/ExecutionResult;->FAIL_RETRY:Lcom/onesignal/core/internal/operations/ExecutionResult;

    .line 66
    new-instance v0, Lcom/onesignal/core/internal/operations/ExecutionResult;

    const-string v1, "FAIL_NORETRY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onesignal/core/internal/operations/ExecutionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/core/internal/operations/ExecutionResult;->FAIL_NORETRY:Lcom/onesignal/core/internal/operations/ExecutionResult;

    .line 72
    new-instance v0, Lcom/onesignal/core/internal/operations/ExecutionResult;

    const-string v1, "FAIL_UNAUTHORIZED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onesignal/core/internal/operations/ExecutionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/core/internal/operations/ExecutionResult;->FAIL_UNAUTHORIZED:Lcom/onesignal/core/internal/operations/ExecutionResult;

    .line 78
    new-instance v0, Lcom/onesignal/core/internal/operations/ExecutionResult;

    const-string v1, "FAIL_CONFLICT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onesignal/core/internal/operations/ExecutionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/core/internal/operations/ExecutionResult;->FAIL_CONFLICT:Lcom/onesignal/core/internal/operations/ExecutionResult;

    .line 85
    new-instance v0, Lcom/onesignal/core/internal/operations/ExecutionResult;

    const-string v1, "FAIL_PAUSE_OPREPO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/onesignal/core/internal/operations/ExecutionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/core/internal/operations/ExecutionResult;->FAIL_PAUSE_OPREPO:Lcom/onesignal/core/internal/operations/ExecutionResult;

    invoke-static {}, Lcom/onesignal/core/internal/operations/ExecutionResult;->$values()[Lcom/onesignal/core/internal/operations/ExecutionResult;

    move-result-object v0

    sput-object v0, Lcom/onesignal/core/internal/operations/ExecutionResult;->$VALUES:[Lcom/onesignal/core/internal/operations/ExecutionResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/core/internal/operations/ExecutionResult;
    .locals 1

    const-class v0, Lcom/onesignal/core/internal/operations/ExecutionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/core/internal/operations/ExecutionResult;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/core/internal/operations/ExecutionResult;
    .locals 1

    sget-object v0, Lcom/onesignal/core/internal/operations/ExecutionResult;->$VALUES:[Lcom/onesignal/core/internal/operations/ExecutionResult;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/core/internal/operations/ExecutionResult;

    return-object v0
.end method
