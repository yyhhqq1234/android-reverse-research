.class public final enum Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/h5c/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityFinishReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

.field public static final enum ERROR_PAGE:Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

.field public static final enum ERROR_PARAM:Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

.field public static final enum NORMAL:Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

.field public static final enum OPEN_NEW_PAGE:Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;->NORMAL:Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

    .line 5
    new-instance v1, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

    const-string v3, "OPEN_NEW_PAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;->OPEN_NEW_PAGE:Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

    .line 9
    new-instance v3, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

    const-string v5, "ERROR_PARAM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;->ERROR_PARAM:Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

    .line 13
    new-instance v5, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

    const-string v7, "ERROR_PAGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;->ERROR_PAGE:Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 14
    sput-object v7, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;->$VALUES:[Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;
    .locals 1

    .line 1
    const-class v0, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

    return-object p0
.end method

.method public static values()[Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;->$VALUES:[Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

    invoke-virtual {v0}, [Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/epay/sdk/h5c/Constants$ActivityFinishReason;

    return-object v0
.end method
