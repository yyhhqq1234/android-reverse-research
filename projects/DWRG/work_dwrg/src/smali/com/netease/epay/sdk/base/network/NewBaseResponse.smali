.class public Lcom/netease/epay/sdk/base/network/NewBaseResponse;
.super Ljava/lang/Object;
.source "NewBaseResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public retcode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "operationResp"
    .end annotation
.end field

.field public retdesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "detailMsg"
    .end annotation
.end field

.field public riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "challengeError"
        }
        value = "newRiskChallengeType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;)V
    .locals 1
    .param p1, "code"    # Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    .prologue
    .line 30
    .local p0, "this":Lcom/netease/epay/sdk/base/network/NewBaseResponse;, "Lcom/netease/epay/sdk/base/network/NewBaseResponse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->getMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 25
    .local p0, "this":Lcom/netease/epay/sdk/base/network/NewBaseResponse;, "Lcom/netease/epay/sdk/base/network/NewBaseResponse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 2

    .prologue
    .line 36
    const-string v0, "000000"

    iget-object v1, p0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
