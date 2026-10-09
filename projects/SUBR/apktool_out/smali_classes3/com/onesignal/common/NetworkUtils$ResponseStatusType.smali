.class public final enum Lcom/onesignal/common/NetworkUtils$ResponseStatusType;
.super Ljava/lang/Enum;
.source "NetworkUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/common/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseStatusType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/common/NetworkUtils$ResponseStatusType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onesignal/common/NetworkUtils$ResponseStatusType;",
        "",
        "(Ljava/lang/String;I)V",
        "INVALID",
        "RETRYABLE",
        "UNAUTHORIZED",
        "MISSING",
        "CONFLICT",
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
.field private static final synthetic $VALUES:[Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

.field public static final enum CONFLICT:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

.field public static final enum INVALID:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

.field public static final enum MISSING:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

.field public static final enum RETRYABLE:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

.field public static final enum UNAUTHORIZED:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;


# direct methods
.method private static final synthetic $values()[Lcom/onesignal/common/NetworkUtils$ResponseStatusType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    const/4 v1, 0x0

    sget-object v2, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->INVALID:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->RETRYABLE:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->UNAUTHORIZED:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->MISSING:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->CONFLICT:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->INVALID:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    .line 6
    new-instance v0, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    const-string v1, "RETRYABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->RETRYABLE:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    .line 7
    new-instance v0, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    const-string v1, "UNAUTHORIZED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->UNAUTHORIZED:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    .line 8
    new-instance v0, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    const-string v1, "MISSING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->MISSING:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    .line 9
    new-instance v0, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    const-string v1, "CONFLICT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->CONFLICT:Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    invoke-static {}, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->$values()[Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    move-result-object v0

    sput-object v0, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->$VALUES:[Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/common/NetworkUtils$ResponseStatusType;
    .locals 1

    const-class v0, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/common/NetworkUtils$ResponseStatusType;
    .locals 1

    sget-object v0, Lcom/onesignal/common/NetworkUtils$ResponseStatusType;->$VALUES:[Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/common/NetworkUtils$ResponseStatusType;

    return-object v0
.end method
