.class public Lcom/pay/api/APPayOpenService;
.super Ljava/lang/Object;
.source "APPayOpenService.java"


# static fields
.field private static midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

.field private static serviceDelegate:Lcom/pay/api/IAPPayOpenServiceCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/pay/api/APPayOpenService;->serviceDelegate:Lcom/pay/api/IAPPayOpenServiceCallBack;

    .line 23
    new-instance v0, Lcom/pay/api/APPayOpenService$1;

    invoke-direct {v0}, Lcom/pay/api/APPayOpenService$1;-><init>()V

    sput-object v0, Lcom/pay/api/APPayOpenService;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetDelegate()Lcom/pay/api/IAPPayOpenServiceCallBack;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/pay/api/APPayOpenService;->serviceDelegate:Lcom/pay/api/IAPPayOpenServiceCallBack;

    return-object v0
.end method

.method public static LaunchOpenServiceView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "serviceCode"    # Ljava/lang/String;
    .param p8, "serviceName"    # Ljava/lang/String;
    .param p9, "serviceResId"    # I
    .param p10, "remark"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasMonthRequest;-><init>()V

    .local v1, "monthRequest":Lcom/tencent/midas/api/request/APMidasMonthRequest;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 105
    invoke-static/range {v1 .. v8}, Lcom/pay/api/APPayOpenService;->setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceCode:Ljava/lang/String;

    .line 107
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceName:Ljava/lang/String;

    .line 108
    move/from16 v0, p9

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->resId:I

    .line 109
    move-object/from16 v0, p10

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->remark:Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v2

    iget-object v2, v2, Lcom/pay/AndroidPay;->fromActivity:Landroid/app/Activity;

    sget-object v3, Lcom/pay/api/APPayOpenService;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-static {v2, v1, v3}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 111
    return-void
.end method

.method public static LaunchOpenServiceView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 9
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "serviceCode"    # Ljava/lang/String;
    .param p8, "serviceName"    # Ljava/lang/String;
    .param p9, "serviceResId"    # I
    .param p10, "openNum"    # Ljava/lang/String;
    .param p11, "productId"    # Ljava/lang/String;
    .param p12, "isCanChange"    # Z
    .param p13, "remark"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;-><init>()V

    .local v1, "subscribeRequest":Lcom/tencent/midas/api/request/APMidasSubscribeRequest;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 139
    invoke-static/range {v1 .. v8}, Lcom/pay/api/APPayOpenService;->setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->serviceCode:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->serviceName:Ljava/lang/String;

    .line 142
    move/from16 v0, p9

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->resId:I

    .line 143
    move-object/from16 v0, p10

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->saveValue:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p11

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->productId:Ljava/lang/String;

    .line 145
    move/from16 v0, p12

    iput-boolean v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->isCanChange:Z

    .line 146
    move-object/from16 v0, p13

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->remark:Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v2

    iget-object v2, v2, Lcom/pay/AndroidPay;->fromActivity:Landroid/app/Activity;

    sget-object v3, Lcom/pay/api/APPayOpenService;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-static {v2, v1, v3}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 148
    return-void
.end method

.method public static LaunchOpenServiceView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 9
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "serviceCode"    # Ljava/lang/String;
    .param p8, "serviceName"    # Ljava/lang/String;
    .param p9, "serviceResId"    # I
    .param p10, "openMonth"    # Ljava/lang/String;
    .param p11, "isCanChange"    # Z
    .param p12, "remark"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasMonthRequest;-><init>()V

    .local v1, "monthRequest":Lcom/tencent/midas/api/request/APMidasMonthRequest;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 72
    invoke-static/range {v1 .. v8}, Lcom/pay/api/APPayOpenService;->setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceCode:Ljava/lang/String;

    .line 74
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceName:Ljava/lang/String;

    .line 75
    move/from16 v0, p9

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->resId:I

    .line 76
    move-object/from16 v0, p10

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->saveValue:Ljava/lang/String;

    .line 77
    move/from16 v0, p11

    iput-boolean v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->isCanChange:Z

    .line 78
    move-object/from16 v0, p12

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->remark:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v2

    iget-object v2, v2, Lcom/pay/AndroidPay;->fromActivity:Landroid/app/Activity;

    sget-object v3, Lcom/pay/api/APPayOpenService;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-static {v2, v1, v3}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 81
    return-void
.end method

.method public static LaunchOpenServiceView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Z)V
    .locals 9
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "serviceCode"    # Ljava/lang/String;
    .param p8, "serviceName"    # Ljava/lang/String;
    .param p9, "serviceResId"    # I
    .param p10, "openMonth"    # Ljava/lang/String;
    .param p11, "isCanChange"    # Z
    .param p12, "remark"    # Ljava/lang/String;
    .param p13, "autoPay"    # Z

    .prologue
    .line 174
    new-instance v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasMonthRequest;-><init>()V

    .local v1, "monthRequest":Lcom/tencent/midas/api/request/APMidasMonthRequest;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 175
    invoke-static/range {v1 .. v8}, Lcom/pay/api/APPayOpenService;->setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceCode:Ljava/lang/String;

    .line 177
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceName:Ljava/lang/String;

    .line 178
    move/from16 v0, p9

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->resId:I

    .line 179
    move-object/from16 v0, p12

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->remark:Ljava/lang/String;

    .line 180
    move/from16 v0, p13

    iput-boolean v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->autoPay:Z

    .line 181
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v2

    iget-object v2, v2, Lcom/pay/AndroidPay;->fromActivity:Landroid/app/Activity;

    sget-object v3, Lcom/pay/api/APPayOpenService;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-static {v2, v1, v3}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 182
    return-void
.end method

.method public static SetDelegate(Lcom/pay/api/IAPPayOpenServiceCallBack;)V
    .locals 0
    .param p0, "delegate"    # Lcom/pay/api/IAPPayOpenServiceCallBack;

    .prologue
    .line 194
    sput-object p0, Lcom/pay/api/APPayOpenService;->serviceDelegate:Lcom/pay/api/IAPPayOpenServiceCallBack;

    .line 195
    return-void
.end method

.method public static SetNeedReloginInSDK(Z)V
    .locals 0
    .param p0, "relogin"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    return-void
.end method

.method static synthetic access$000()Lcom/pay/api/IAPPayOpenServiceCallBack;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/pay/api/APPayOpenService;->serviceDelegate:Lcom/pay/api/IAPPayOpenServiceCallBack;

    return-object v0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    sput-object v0, Lcom/pay/api/APPayOpenService;->serviceDelegate:Lcom/pay/api/IAPPayOpenServiceCallBack;

    .line 203
    return-void
.end method

.method private static setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "baseReq"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userKey"    # Ljava/lang/String;
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "sessionType"    # Ljava/lang/String;
    .param p5, "zoneId"    # Ljava/lang/String;
    .param p6, "pf"    # Ljava/lang/String;
    .param p7, "pfKey"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v0

    iget-object v0, v0, Lcom/pay/AndroidPay;->offerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->offerId:Ljava/lang/String;

    .line 211
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->openId:Ljava/lang/String;

    .line 212
    iput-object p2, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->openKey:Ljava/lang/String;

    .line 213
    iput-object p3, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionId:Ljava/lang/String;

    .line 214
    iput-object p4, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionType:Ljava/lang/String;

    .line 215
    iput-object p5, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->zoneId:Ljava/lang/String;

    .line 216
    iput-object p6, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->pf:Ljava/lang/String;

    .line 217
    iput-object p7, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->pfKey:Ljava/lang/String;

    .line 218
    return-void
.end method
