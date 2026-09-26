.class public Lcom/netease/epay/sdk/base/model/RiskChallengeType;
.super Ljava/lang/Object;
.source "RiskChallengeType.java"


# instance fields
.field public cardArray:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "passProtectCard"
    .end annotation
.end field

.field public faceType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "faceDetect"
    .end annotation
.end field

.field public general:Lcom/netease/epay/sdk/base/model/General;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "generalToken"
    .end annotation
.end field

.field public pwd:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payPassword"
    .end annotation
.end field

.field public smsContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sms"
    .end annotation
.end field

.field public voiceContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sms_mobile_vvc"
    .end annotation
.end field

.field public voiceQPContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sms_qp_vvc"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->faceType:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->smsContent:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->cardArray:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->pwd:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->voiceContent:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->general:Lcom/netease/epay/sdk/base/model/General;

    .line 24
    iput-object v0, p0, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->voiceQPContent:Ljava/lang/String;

    return-void
.end method
