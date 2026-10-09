.class public final enum Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;
.super Ljava/lang/Enum;
.source "BaseProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProxyStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

.field public static final enum ERROR_BUILD:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

.field public static final enum ERROR_NETWORK:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

.field public static final enum ERROR_SERVER:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

.field public static final enum ERROR_UNKNOW:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

.field public static final enum PROXY_SUCCESS:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

.field public static final enum TIMEOUT:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    new-instance v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    const-string v1, "ERROR_UNKNOW"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_UNKNOW:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    .line 111
    new-instance v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    const-string v1, "ERROR_NETWORK"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_NETWORK:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    .line 112
    new-instance v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    const-string v1, "ERROR_SERVER"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_SERVER:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    .line 113
    new-instance v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    const-string v1, "TIMEOUT"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v6, v2}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->TIMEOUT:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    .line 114
    new-instance v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    const-string v1, "ERROR_BUILD"

    const/4 v2, -0x5

    invoke-direct {v0, v1, v7, v2}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_BUILD:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    .line 115
    new-instance v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    const-string v1, "PROXY_SUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->PROXY_SUCCESS:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    .line 109
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    sget-object v1, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_UNKNOW:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_NETWORK:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_SERVER:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->TIMEOUT:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->ERROR_BUILD:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->PROXY_SUCCESS:Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->$VALUES:[Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput p3, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->errorCode:I

    .line 121
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const-class v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->$VALUES:[Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    invoke-virtual {v0}, [Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;->errorCode:I

    return v0
.end method
