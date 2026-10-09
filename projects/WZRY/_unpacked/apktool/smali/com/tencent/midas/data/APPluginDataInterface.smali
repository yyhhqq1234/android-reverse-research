.class public Lcom/tencent/midas/data/APPluginDataInterface;
.super Ljava/lang/Object;
.source "APPluginDataInterface.java"


# static fields
.field public static final LAUNCHPAY_INTERVAL_TIME:Ljava/lang/String; = "launchpayintervaltime"

.field public static final LAUNCHPAY_TIME:Ljava/lang/String; = "launchpaytime"

.field public static final LAUNCHPAY_UUID:Ljava/lang/String; = "launchpayuuid"

.field public static final SHARE_PREFERENCE_NAME:Ljava/lang/String; = "TencentUnipay"

.field private static gInstance:Lcom/tencent/midas/data/APPluginDataInterface;


# instance fields
.field private acctType:Ljava/lang/String;

.field private autoPay:Z

.field private discountType:Ljava/lang/String;

.field private discountUrl:Ljava/lang/String;

.field private discoutId:Ljava/lang/String;

.field private drmInfo:Ljava/lang/String;

.field private extras:Ljava/lang/String;

.field private goodsTokenUrl:Ljava/lang/String;

.field private h5Message:Ljava/lang/String;

.field private h5Url:Ljava/lang/String;

.field private isCanChange:Z

.field private isNumVisible:Z

.field private isShowListOtherNum:Z

.field private isShowNum:Z

.field private launchInterface:Ljava/lang/String;

.field private logEnable:Z

.field private mallType:I

.field private offerId:Ljava/lang/String;

.field private openId:Ljava/lang/String;

.field private openKey:Ljava/lang/String;

.field private payChannel:Ljava/lang/String;

.field private pf:Ljava/lang/String;

.field private pfKey:Ljava/lang/String;

.field private processData:Lcom/tencent/midas/data/APMultiProcessData;

.field private prodcutId:Ljava/lang/String;

.field private propUnit:Ljava/lang/String;

.field private remark:Ljava/lang/String;

.field private reqType:Ljava/lang/String;

.field private resData:[B

.field private resId:I

.field private resUrl:Ljava/lang/String;

.field private reserv:Ljava/lang/String;

.field private saveType:I

.field private saveValue:Ljava/lang/String;

.field private serviceCode:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private serviceType:I

.field private sessionId:Ljava/lang/String;

.field private sessionType:Ljava/lang/String;

.field private tokenType:I

.field private unit:Ljava/lang/String;

.field private zoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/tencent/midas/data/APPluginDataInterface;

    invoke-direct {v0}, Lcom/tencent/midas/data/APPluginDataInterface;-><init>()V

    sput-object v0, Lcom/tencent/midas/data/APPluginDataInterface;->gInstance:Lcom/tencent/midas/data/APPluginDataInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->h5Message:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->offerId:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->openId:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->openKey:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->sessionId:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->sessionType:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->zoneId:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->pf:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->pfKey:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->saveValue:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->isCanChange:Z

    .line 35
    iput v2, p0, Lcom/tencent/midas/data/APPluginDataInterface;->resId:I

    .line 36
    iput-object v3, p0, Lcom/tencent/midas/data/APPluginDataInterface;->resData:[B

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->acctType:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->reserv:Ljava/lang/String;

    .line 39
    iput v2, p0, Lcom/tencent/midas/data/APPluginDataInterface;->mallType:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->h5Url:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->logEnable:Z

    .line 43
    iput-boolean v1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->isNumVisible:Z

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->propUnit:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->unit:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->isShowNum:Z

    .line 49
    iput-boolean v1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->isShowListOtherNum:Z

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->payChannel:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->discountType:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->discountUrl:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->drmInfo:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->discoutId:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->extras:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->goodsTokenUrl:Ljava/lang/String;

    .line 61
    iput v2, p0, Lcom/tencent/midas/data/APPluginDataInterface;->tokenType:I

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->prodcutId:Ljava/lang/String;

    .line 65
    iput-boolean v1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->autoPay:Z

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->remark:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->serviceCode:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->serviceName:Ljava/lang/String;

    .line 69
    iput v2, p0, Lcom/tencent/midas/data/APPluginDataInterface;->serviceType:I

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->resUrl:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->reqType:Ljava/lang/String;

    .line 76
    iput v2, p0, Lcom/tencent/midas/data/APPluginDataInterface;->saveType:I

    .line 79
    const-string v0, "launchpay"

    iput-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->launchInterface:Ljava/lang/String;

    .line 81
    iput-object v3, p0, Lcom/tencent/midas/data/APPluginDataInterface;->processData:Lcom/tencent/midas/data/APMultiProcessData;

    .line 85
    return-void
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/tencent/midas/data/APPluginDataInterface;

    invoke-direct {v0}, Lcom/tencent/midas/data/APPluginDataInterface;-><init>()V

    sput-object v0, Lcom/tencent/midas/data/APPluginDataInterface;->gInstance:Lcom/tencent/midas/data/APPluginDataInterface;

    .line 90
    return-void
.end method

.method public static singleton()Lcom/tencent/midas/data/APPluginDataInterface;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/tencent/midas/data/APPluginDataInterface;->gInstance:Lcom/tencent/midas/data/APPluginDataInterface;

    return-object v0
.end method


# virtual methods
.method public getAcctType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->acctType:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->discountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->discountUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->discoutId:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->drmInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->extras:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsTokenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->goodsTokenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getH5Message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->h5Message:Ljava/lang/String;

    return-object v0
.end method

.method public getH5Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->h5Url:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->launchInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getMallType()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->mallType:I

    return v0
.end method

.method public getOfferId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->offerId:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->openKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPayChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->payChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getPf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->pf:Ljava/lang/String;

    return-object v0
.end method

.method public getPfKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->pfKey:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessData()Lcom/tencent/midas/data/APMultiProcessData;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->processData:Lcom/tencent/midas/data/APMultiProcessData;

    return-object v0
.end method

.method public getProdcutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->prodcutId:Ljava/lang/String;

    return-object v0
.end method

.method public getPropUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->propUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getReqType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->reqType:Ljava/lang/String;

    return-object v0
.end method

.method public getResData()[B
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->resData:[B

    return-object v0
.end method

.method public getResId()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->resId:I

    return v0
.end method

.method public getResUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->resUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReserv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->reserv:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveType()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->saveType:I

    return v0
.end method

.method public getSaveValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->saveValue:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->serviceType:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->sessionType:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->tokenType:I

    return v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->zoneId:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoPay()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->autoPay:Z

    return v0
.end method

.method public isCanChange()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->isCanChange:Z

    return v0
.end method

.method public isLogEnable()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->logEnable:Z

    return v0
.end method

.method public isNumVisible()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->isNumVisible:Z

    return v0
.end method

.method public isShowListOtherNum()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->isShowListOtherNum:Z

    return v0
.end method

.method public isShowNum()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/tencent/midas/data/APPluginDataInterface;->isShowNum:Z

    return v0
.end method

.method public setAcctType(Ljava/lang/String;)V
    .locals 0
    .param p1, "acctType"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->acctType:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setAutoPay(Z)V
    .locals 0
    .param p1, "autoPay"    # Z

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->autoPay:Z

    .line 366
    return-void
.end method

.method public setCanChange(Z)V
    .locals 0
    .param p1, "isCanChange"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->isCanChange:Z

    .line 182
    return-void
.end method

.method public setDiscountType(Ljava/lang/String;)V
    .locals 0
    .param p1, "discountType"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->discountType:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setDiscountUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "discountUrl"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->discountUrl:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setDiscoutId(Ljava/lang/String;)V
    .locals 0
    .param p1, "discoutId"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->discoutId:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setDrmInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "drmInfo"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->drmInfo:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setExtras(Ljava/lang/String;)V
    .locals 0
    .param p1, "extras"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->extras:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setGoodsTokenUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "goodsTokenUrl"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->goodsTokenUrl:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setH5Message(Ljava/lang/String;)V
    .locals 1
    .param p1, "h5Message"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v0, Lcom/tencent/midas/data/APPluginDataInterface;->gInstance:Lcom/tencent/midas/data/APPluginDataInterface;

    iput-object p1, v0, Lcom/tencent/midas/data/APPluginDataInterface;->h5Message:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setH5Url(Ljava/lang/String;)V
    .locals 0
    .param p1, "h5Url"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->h5Url:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setLaunchInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "launchInterface"    # Ljava/lang/String;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->launchInterface:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setLogEnable(Z)V
    .locals 0
    .param p1, "logEnable"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->logEnable:Z

    .line 254
    return-void
.end method

.method public setMallType(I)V
    .locals 0
    .param p1, "mallType"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->mallType:I

    .line 230
    return-void
.end method

.method public setNumVisible(Z)V
    .locals 0
    .param p1, "isNumVisible"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->isNumVisible:Z

    .line 246
    return-void
.end method

.method public setOfferId(Ljava/lang/String;)V
    .locals 0
    .param p1, "offerId"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->offerId:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->openId:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setOpenKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "openKey"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->openKey:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setPayChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "payChannel"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->payChannel:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setPf(Ljava/lang/String;)V
    .locals 0
    .param p1, "pf"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->pf:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setPfKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "pfKey"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->pfKey:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setProcessData(Lcom/tencent/midas/data/APMultiProcessData;)V
    .locals 0
    .param p1, "processData"    # Lcom/tencent/midas/data/APMultiProcessData;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->processData:Lcom/tencent/midas/data/APMultiProcessData;

    .line 437
    return-void
.end method

.method public setProdcutId(Ljava/lang/String;)V
    .locals 0
    .param p1, "prodcutId"    # Ljava/lang/String;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->prodcutId:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setPropUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "propUnit"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->propUnit:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .param p1, "remark"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->remark:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setReqType(Ljava/lang/String;)V
    .locals 0
    .param p1, "reqType"    # Ljava/lang/String;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->reqType:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setResData([B)V
    .locals 0
    .param p1, "resData"    # [B

    .prologue
    .line 197
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->resData:[B

    .line 198
    return-void
.end method

.method public setResId(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->resId:I

    .line 190
    return-void
.end method

.method public setResUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "resUrl"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->resUrl:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setReserv(Ljava/lang/String;)V
    .locals 0
    .param p1, "reserv"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->reserv:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setSaveType(I)V
    .locals 0
    .param p1, "savetype"    # I

    .prologue
    .line 413
    iput p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->saveType:I

    .line 414
    return-void
.end method

.method public setSaveValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "saveValue"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->saveValue:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setServiceCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceCode"    # Ljava/lang/String;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->serviceCode:Ljava/lang/String;

    .line 382
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->serviceName:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setServiceType(I)V
    .locals 0
    .param p1, "serviceType"    # I

    .prologue
    .line 397
    iput p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->serviceType:I

    .line 398
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->sessionId:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setSessionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionType"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->sessionType:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setShowListOtherNum(Z)V
    .locals 0
    .param p1, "isShowListOtherNum"    # Z

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->isShowListOtherNum:Z

    .line 286
    return-void
.end method

.method public setShowNum(Z)V
    .locals 0
    .param p1, "isShowNum"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->isShowNum:Z

    .line 278
    return-void
.end method

.method public setTokenType(I)V
    .locals 0
    .param p1, "tokenType"    # I

    .prologue
    .line 349
    iput p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->tokenType:I

    .line 350
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->unit:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setZoneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/tencent/midas/data/APPluginDataInterface;->zoneId:Ljava/lang/String;

    .line 150
    return-void
.end method
