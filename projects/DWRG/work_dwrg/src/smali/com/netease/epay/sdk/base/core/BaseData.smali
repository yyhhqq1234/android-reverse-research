.class public Lcom/netease/epay/sdk/base/core/BaseData;
.super Ljava/lang/Object;
.source "BaseData.java"


# static fields
.field public static accountId:Ljava/lang/String;

.field public static accountMobile:Ljava/lang/String;

.field public static accountState:Ljava/lang/String;

.field public static appId:Ljava/lang/String;

.field public static appNameFromSelf:Ljava/lang/String;

.field public static appPlatformId:Ljava/lang/String;

.field public static appVersionFromSelf:Ljava/lang/String;

.field public static cardInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/Card;",
            ">;"
        }
    .end annotation
.end field

.field public static cookie:Ljava/lang/String;

.field public static cookieType:Ljava/lang/String;

.field public static deviceId:Ljava/lang/String;

.field public static hasShortPwd:Z

.field public static loginId:Ljava/lang/String;

.field public static loginToken:Ljava/lang/String;

.field public static mEnd:I

.field public static mStart:I

.field public static nEnd:I

.field public static nStart:I

.field public static neURSKey:Ljava/lang/String;

.field public static orderAmount:Ljava/math/BigDecimal;

.field public static orderId:Ljava/lang/String;

.field public static orderPlatformId:Ljava/lang/String;

.field public static originalAmount:Ljava/math/BigDecimal;

.field public static payAdditionalInfo:Lorg/json/JSONObject;

.field public static platformSign:Ljava/lang/String;

.field public static platformSignExpireTime:Ljava/lang/String;

.field public static riskInfo:Lorg/json/JSONObject;

.field public static servicePhone:Ljava/lang/String;

.field public static sessionId:Ljava/lang/String;

.field public static timeStamp:Ljava/lang/String;

.field public static userName:Ljava/lang/String;

.field public static wordEnd:I

.field public static wordStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/epay/sdk/base/core/BaseData;->hasShortPwd:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerivcePhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->servicePhone:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->servicePhone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->servicePhone:Ljava/lang/String;

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "400-0881188"

    goto :goto_0
.end method

.method public static resetData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->neURSKey:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->loginToken:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->loginId:Ljava/lang/String;

    .line 54
    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cookieType:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cookie:Ljava/lang/String;

    .line 55
    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->platformSignExpireTime:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->platformSign:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->appPlatformId:Ljava/lang/String;

    .line 56
    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->timeStamp:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->orderPlatformId:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->orderId:Ljava/lang/String;

    .line 57
    sput v1, Lcom/netease/epay/sdk/base/core/BaseData;->nEnd:I

    sput v1, Lcom/netease/epay/sdk/base/core/BaseData;->nStart:I

    sput v1, Lcom/netease/epay/sdk/base/core/BaseData;->mEnd:I

    sput v1, Lcom/netease/epay/sdk/base/core/BaseData;->mStart:I

    sput v1, Lcom/netease/epay/sdk/base/core/BaseData;->wordEnd:I

    sput v1, Lcom/netease/epay/sdk/base/core/BaseData;->wordStart:I

    .line 58
    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->servicePhone:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->accountMobile:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->accountState:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->sessionId:Ljava/lang/String;

    .line 59
    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    .line 60
    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->userName:Ljava/lang/String;

    .line 61
    sput-boolean v1, Lcom/netease/epay/sdk/base/core/BaseData;->hasShortPwd:Z

    .line 62
    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->appVersionFromSelf:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->appNameFromSelf:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->deviceId:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->appId:Ljava/lang/String;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->accountId:Ljava/lang/String;

    .line 63
    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->originalAmount:Ljava/math/BigDecimal;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->orderAmount:Ljava/math/BigDecimal;

    .line 64
    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->payAdditionalInfo:Lorg/json/JSONObject;

    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->riskInfo:Lorg/json/JSONObject;

    .line 65
    return-void
.end method
