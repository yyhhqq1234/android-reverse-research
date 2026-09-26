.class public final enum Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/util/ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CUSTOM_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

.field public static final enum NO_PERMISSION:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

.field public static final enum SDK_ERROR:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

.field public static final enum SERVER_ERROR:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

.field public static final enum USER_ABORT:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;


# instance fields
.field private code:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    new-instance v0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    const-string v1, "USER_ABORT"

    const-string v2, "-100"

    const-string v3, "\u7528\u6237\u624b\u52a8\u9000\u51fa\u8be5\u4e1a\u52a1"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->USER_ABORT:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    .line 151
    new-instance v0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    const-string v1, "SDK_ERROR"

    const-string v2, "-101"

    const-string v3, "SDK\u5185\u90e8\u51fa\u73b0\u9519\u8bef\u9000\u51fa"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->SDK_ERROR:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    .line 152
    new-instance v0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    const-string v1, "SERVER_ERROR"

    const-string v2, "-103"

    const-string v3, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u6709\u8bef"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->SERVER_ERROR:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    .line 153
    new-instance v0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    const-string v1, "NO_PERMISSION"

    const-string v2, "-104"

    const-string v3, "\u7528\u6237\u672a\u6388\u4e88App\u6743\u9650"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->NO_PERMISSION:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    sget-object v1, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->USER_ABORT:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->SDK_ERROR:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->SERVER_ERROR:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->NO_PERMISSION:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->$VALUES:[Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 158
    iput-object p3, p0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->code:Ljava/lang/String;

    .line 159
    iput-object p4, p0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->msg:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 149
    const-class v0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    return-object v0
.end method

.method public static values()[Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->$VALUES:[Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-virtual {v0}, [Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->msg:Ljava/lang/String;

    return-object v0
.end method
