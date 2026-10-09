.class public Lcom/pay/AndroidPay;
.super Ljava/lang/Object;
.source "AndroidPay.java"


# static fields
.field public static final LANDSCAPE:I = 0x0

.field public static final PORTRAINT:I = 0x1

.field private static gInstance:Lcom/pay/AndroidPay;


# instance fields
.field public applicationContext:Landroid/content/Context;

.field public fromActivity:Landroid/app/Activity;

.field public isShowListOtherNum:Z

.field public isShowNum:Z

.field public offerId:Ljava/lang/String;

.field public payResponseInfo:Lcom/pay/api/APPayResponseInfo;

.field public resdata:[B

.field public unit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/pay/AndroidPay;->gInstance:Lcom/pay/AndroidPay;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/pay/AndroidPay;->applicationContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/pay/AndroidPay;->payResponseInfo:Lcom/pay/api/APPayResponseInfo;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/AndroidPay;->unit:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/pay/AndroidPay;->isShowNum:Z

    .line 34
    iput-boolean v1, p0, Lcom/pay/AndroidPay;->isShowListOtherNum:Z

    .line 37
    new-instance v0, Lcom/pay/api/APPayResponseInfo;

    invoke-direct {v0}, Lcom/pay/api/APPayResponseInfo;-><init>()V

    iput-object v0, p0, Lcom/pay/AndroidPay;->payResponseInfo:Lcom/pay/api/APPayResponseInfo;

    .line 38
    return-void
.end method

.method public static Destory()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public static getPaySDKVersion(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 120
    invoke-static {p0}, Lcom/tencent/midas/api/APMidasPayAPI;->getMidasSDKVersion(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setCustomUrlParam(Ljava/lang/String;)V
    .locals 0
    .param p0, "urlParam"    # Ljava/lang/String;

    .prologue
    .line 80
    return-void
.end method

.method public static setElseNumberVisible(Z)V
    .locals 1
    .param p0, "elseNumberVisible"    # Z

    .prologue
    .line 115
    sget-object v0, Lcom/pay/AndroidPay;->gInstance:Lcom/pay/AndroidPay;

    iput-boolean p0, v0, Lcom/pay/AndroidPay;->isShowListOtherNum:Z

    .line 116
    return-void
.end method

.method public static setEnv(Ljava/lang/String;)V
    .locals 0
    .param p0, "env"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/tencent/midas/api/APMidasPayAPI;->setEnv(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static setIsShowSaveNum(Z)V
    .locals 1
    .param p0, "isShow"    # Z

    .prologue
    .line 104
    sget-object v0, Lcom/pay/AndroidPay;->gInstance:Lcom/pay/AndroidPay;

    iput-boolean p0, v0, Lcom/pay/AndroidPay;->isShowNum:Z

    .line 105
    return-void
.end method

.method public static setLogEnable(Z)V
    .locals 0
    .param p0, "logEnable"    # Z

    .prologue
    .line 84
    invoke-static {p0}, Lcom/tencent/midas/api/APMidasPayAPI;->setLogEnable(Z)V

    .line 85
    return-void
.end method

.method public static setNumberVisible(Z)V
    .locals 0
    .param p0, "isNumVisible"    # Z

    .prologue
    .line 89
    invoke-static {p0}, Lcom/pay/AndroidPay;->setIsShowSaveNum(Z)V

    .line 90
    return-void
.end method

.method public static setOfferId(Ljava/lang/String;)V
    .locals 1
    .param p0, "offerId"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v0, Lcom/pay/AndroidPay;->gInstance:Lcom/pay/AndroidPay;

    iput-object p0, v0, Lcom/pay/AndroidPay;->offerId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static setPropUnit(Ljava/lang/String;)V
    .locals 1
    .param p0, "propUnit"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-object v0, Lcom/pay/AndroidPay;->gInstance:Lcom/pay/AndroidPay;

    iput-object p0, v0, Lcom/pay/AndroidPay;->unit:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public static setResData([B)V
    .locals 1
    .param p0, "resdata"    # [B

    .prologue
    .line 94
    sget-object v0, Lcom/pay/AndroidPay;->gInstance:Lcom/pay/AndroidPay;

    iput-object p0, v0, Lcom/pay/AndroidPay;->resdata:[B

    .line 95
    return-void
.end method

.method public static setScreenType(I)V
    .locals 0
    .param p0, "type"    # I

    .prologue
    .line 126
    return-void
.end method

.method public static setWechatAppId(Ljava/lang/String;)V
    .locals 0
    .param p0, "appid"    # Ljava/lang/String;

    .prologue
    .line 111
    return-void
.end method

.method public static singleton()Lcom/pay/AndroidPay;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/pay/AndroidPay;->gInstance:Lcom/pay/AndroidPay;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/pay/AndroidPay;

    invoke-direct {v0}, Lcom/pay/AndroidPay;-><init>()V

    sput-object v0, Lcom/pay/AndroidPay;->gInstance:Lcom/pay/AndroidPay;

    .line 44
    :cond_0
    sget-object v0, Lcom/pay/AndroidPay;->gInstance:Lcom/pay/AndroidPay;

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/pay/AndroidPay;->applicationContext:Landroid/content/Context;

    return-object v0
.end method
