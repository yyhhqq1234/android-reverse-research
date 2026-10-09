.class public Lcom/pay/api/APPayGameService;
.super Ljava/lang/Object;
.source "APPayGameService.java"


# static fields
.field public static final ACCOUNT_TYPE_COMMON:Ljava/lang/String; = "common"

.field public static final ACCOUNT_TYPE_SECURITY:Ljava/lang/String; = "secrety"

.field public static final LOGINPLATFORM_MOBILEQQ:I = 0x2

.field public static final LOGINPLATFORM_WECHAT:I = 0x1

.field public static final PAY_CHANNEL_BANK:Ljava/lang/String; = "bank"

.field public static final PAY_CHANNEL_WECHAT:Ljava/lang/String; = "wechat"

.field private static midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

.field private static serviceDelegate:Lcom/pay/api/IAPPayGameServiceCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/pay/api/APPayGameService;->serviceDelegate:Lcom/pay/api/IAPPayGameServiceCallBack;

    .line 41
    new-instance v0, Lcom/pay/api/APPayGameService$1;

    invoke-direct {v0}, Lcom/pay/api/APPayGameService$1;-><init>()V

    sput-object v0, Lcom/pay/api/APPayGameService;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetDelegate()Lcom/pay/api/IAPPayGameServiceCallBack;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/pay/api/APPayGameService;->serviceDelegate:Lcom/pay/api/IAPPayGameServiceCallBack;

    return-object v0
.end method

.method public static LauchVmallView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "extras"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;

    invoke-direct {v0}, Lcom/tencent/midas/api/request/APMidasGoodsRequest;-><init>()V

    .local v0, "goodsRequest":Lcom/tencent/midas/api/request/APMidasGoodsRequest;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 74
    invoke-static/range {v0 .. v7}, Lcom/pay/api/APPayGameService;->setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v1, 0x2

    iput v1, v0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mallType:I

    .line 76
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v1

    iget-object v1, v1, Lcom/pay/AndroidPay;->fromActivity:Landroid/app/Activity;

    sget-object v2, Lcom/pay/api/APPayGameService;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-static {v1, v0, v2}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 77
    return-void
.end method

.method public static LaunchGroupBuyView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "extras"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;

    invoke-direct {v0}, Lcom/tencent/midas/api/request/APMidasGoodsRequest;-><init>()V

    .local v0, "goodsRequest":Lcom/tencent/midas/api/request/APMidasGoodsRequest;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 86
    invoke-static/range {v0 .. v7}, Lcom/pay/api/APPayGameService;->setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mallType:I

    .line 88
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v1

    iget-object v1, v1, Lcom/pay/AndroidPay;->fromActivity:Landroid/app/Activity;

    sget-object v2, Lcom/pay/api/APPayGameService;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-static {v1, v0, v2}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 89
    return-void
.end method

.method public static LaunchMPSaveCurrencyView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "acctType"    # Ljava/lang/String;
    .param p8, "saveValue"    # Ljava/lang/String;
    .param p9, "gameCoinResId"    # I
    .param p10, "payChannel"    # Ljava/lang/String;
    .param p11, "discounttype"    # Ljava/lang/String;
    .param p12, "discountUrl"    # Ljava/lang/String;
    .param p13, "extras"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v1, Lcom/tencent/midas/api/request/APMidasGameRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasGameRequest;-><init>()V

    .local v1, "gameRequest":Lcom/tencent/midas/api/request/APMidasGameRequest;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 163
    invoke-static/range {v1 .. v8}, Lcom/pay/api/APPayGameService;->setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->acctType:Ljava/lang/String;

    .line 165
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->saveValue:Ljava/lang/String;

    .line 166
    move/from16 v0, p9

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->resId:I

    .line 167
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p10

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->payChannel:Ljava/lang/String;

    .line 168
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountType:Ljava/lang/String;

    .line 169
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p12

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountUrl:Ljava/lang/String;

    .line 170
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p13

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->extras:Ljava/lang/String;

    .line 171
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v2

    iget-object v2, v2, Lcom/pay/AndroidPay;->fromActivity:Landroid/app/Activity;

    sget-object v3, Lcom/pay/api/APPayGameService;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-static {v2, v1, v3}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 172
    return-void
.end method

.method public static LaunchMPSaveGoodsView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "tonkenUrl"    # Ljava/lang/String;
    .param p8, "goodsResId"    # I
    .param p9, "payChannel"    # Ljava/lang/String;
    .param p10, "discounttype"    # Ljava/lang/String;
    .param p11, "discountUrl"    # Ljava/lang/String;
    .param p12, "extras"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasGoodsRequest;-><init>()V

    .line 194
    .local v1, "goodsRequest":Lcom/tencent/midas/api/request/APMidasGoodsRequest;
    const/4 v2, 0x1

    iput v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->tokenType:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 195
    invoke-static/range {v1 .. v8}, Lcom/pay/api/APPayGameService;->setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->goodsTokenUrl:Ljava/lang/String;

    .line 197
    move/from16 v0, p8

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->resId:I

    .line 198
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p9

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->payChannel:Ljava/lang/String;

    .line 199
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p10

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountType:Ljava/lang/String;

    .line 200
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountUrl:Ljava/lang/String;

    .line 201
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p12

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->extras:Ljava/lang/String;

    .line 202
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v2

    iget-object v2, v2, Lcom/pay/AndroidPay;->fromActivity:Landroid/app/Activity;

    sget-object v3, Lcom/pay/api/APPayGameService;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-static {v2, v1, v3}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 203
    return-void
.end method

.method public static LaunchMp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pay/http/IAPHttpAnsObserver;)V
    .locals 9
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "observer"    # Lcom/pay/http/IAPHttpAnsObserver;

    .prologue
    .line 225
    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/pay/api/APPayGameService;->startMpNetWork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pay/http/IAPHttpAnsObserver;)V

    .line 226
    return-void
.end method

.method public static LaunchMp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pay/http/IAPHttpAnsObserver;)V
    .locals 0
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "drmInfo"    # Ljava/lang/String;
    .param p8, "observer"    # Lcom/pay/http/IAPHttpAnsObserver;

    .prologue
    .line 232
    invoke-static/range {p0 .. p8}, Lcom/pay/api/APPayGameService;->startMpNetWork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pay/http/IAPHttpAnsObserver;)V

    .line 233
    return-void
.end method

.method public static LaunchSaveCurrencyView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "acctType"    # Ljava/lang/String;
    .param p8, "gameCoinResId"    # I

    .prologue
    .line 129
    new-instance v1, Lcom/tencent/midas/api/request/APMidasGameRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasGameRequest;-><init>()V

    .local v1, "gameRequest":Lcom/tencent/midas/api/request/APMidasGameRequest;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 130
    invoke-static/range {v1 .. v8}, Lcom/pay/api/APPayGameService;->setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->acctType:Ljava/lang/String;

    .line 132
    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->saveValue:Ljava/lang/String;

    .line 133
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->isCanChange:Z

    .line 134
    move/from16 v0, p8

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->resId:I

    .line 135
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v2

    iget-object v2, v2, Lcom/pay/AndroidPay;->fromActivity:Landroid/app/Activity;

    sget-object v3, Lcom/pay/api/APPayGameService;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-static {v2, v1, v3}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 136
    return-void
.end method

.method public static LaunchSaveCurrencyView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "acctType"    # Ljava/lang/String;
    .param p8, "gameCoinResId"    # I
    .param p9, "drmInfo"    # Ljava/lang/String;
    .param p10, "discountId"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v1, Lcom/tencent/midas/api/request/APMidasGameRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasGameRequest;-><init>()V

    .local v1, "gameRequest":Lcom/tencent/midas/api/request/APMidasGameRequest;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 145
    invoke-static/range {v1 .. v8}, Lcom/pay/api/APPayGameService;->setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->acctType:Ljava/lang/String;

    .line 147
    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->saveValue:Ljava/lang/String;

    .line 148
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->isCanChange:Z

    .line 149
    move/from16 v0, p8

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->resId:I

    .line 150
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p9

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->drmInfo:Ljava/lang/String;

    .line 151
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p10

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discoutId:Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v2

    iget-object v2, v2, Lcom/pay/AndroidPay;->fromActivity:Landroid/app/Activity;

    sget-object v3, Lcom/pay/api/APPayGameService;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-static {v2, v1, v3}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 153
    return-void
.end method

.method public static LaunchSaveCurrencyView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 9
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "acctType"    # Ljava/lang/String;
    .param p8, "saveValue"    # Ljava/lang/String;
    .param p9, "isCanChange"    # Z
    .param p10, "gameCoinResId"    # I

    .prologue
    .line 97
    new-instance v1, Lcom/tencent/midas/api/request/APMidasGameRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasGameRequest;-><init>()V

    .local v1, "gameRequest":Lcom/tencent/midas/api/request/APMidasGameRequest;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 98
    invoke-static/range {v1 .. v8}, Lcom/pay/api/APPayGameService;->setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->acctType:Ljava/lang/String;

    .line 100
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->saveValue:Ljava/lang/String;

    .line 101
    move/from16 v0, p9

    iput-boolean v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->isCanChange:Z

    .line 102
    move/from16 v0, p10

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->resId:I

    .line 103
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v2

    iget-object v2, v2, Lcom/pay/AndroidPay;->fromActivity:Landroid/app/Activity;

    sget-object v3, Lcom/pay/api/APPayGameService;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-static {v2, v1, v3}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 104
    return-void
.end method

.method public static LaunchSaveCurrencyView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "acctType"    # Ljava/lang/String;
    .param p8, "saveValue"    # Ljava/lang/String;
    .param p9, "isCanChange"    # Z
    .param p10, "gameCoinResId"    # I
    .param p11, "drmInfo"    # Ljava/lang/String;
    .param p12, "discountId"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v1, Lcom/tencent/midas/api/request/APMidasGameRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasGameRequest;-><init>()V

    .local v1, "gameRequest":Lcom/tencent/midas/api/request/APMidasGameRequest;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 113
    invoke-static/range {v1 .. v8}, Lcom/pay/api/APPayGameService;->setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->acctType:Ljava/lang/String;

    .line 115
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->saveValue:Ljava/lang/String;

    .line 116
    move/from16 v0, p9

    iput-boolean v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->isCanChange:Z

    .line 117
    move/from16 v0, p10

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->resId:I

    .line 118
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->drmInfo:Ljava/lang/String;

    .line 119
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p12

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discoutId:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v2

    iget-object v2, v2, Lcom/pay/AndroidPay;->fromActivity:Landroid/app/Activity;

    sget-object v3, Lcom/pay/api/APPayGameService;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-static {v2, v1, v3}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 121
    return-void
.end method

.method public static LaunchSaveGoodsView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "tonkenUrl"    # Ljava/lang/String;
    .param p8, "goodsResId"    # I

    .prologue
    .line 179
    new-instance v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasGoodsRequest;-><init>()V

    .line 180
    .local v1, "goodsRequest":Lcom/tencent/midas/api/request/APMidasGoodsRequest;
    const/4 v2, 0x1

    iput v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->tokenType:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 181
    invoke-static/range {v1 .. v8}, Lcom/pay/api/APPayGameService;->setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->goodsTokenUrl:Ljava/lang/String;

    .line 183
    move/from16 v0, p8

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->resId:I

    .line 184
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v2

    iget-object v2, v2, Lcom/pay/AndroidPay;->fromActivity:Landroid/app/Activity;

    sget-object v3, Lcom/pay/api/APPayGameService;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-static {v2, v1, v3}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 185
    return-void
.end method

.method public static LaunchSaveGoodsViewWithoutToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 9
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "productId"    # Ljava/lang/String;
    .param p8, "saveNum"    # Ljava/lang/String;
    .param p9, "canChange"    # Z
    .param p10, "extras"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasGoodsRequest;-><init>()V

    .line 213
    .local v1, "goodsRequest":Lcom/tencent/midas/api/request/APMidasGoodsRequest;
    const/4 v2, 0x2

    iput v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->tokenType:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 214
    invoke-static/range {v1 .. v8}, Lcom/pay/api/APPayGameService;->setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->prodcutId:Ljava/lang/String;

    .line 216
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->saveValue:Ljava/lang/String;

    .line 217
    move/from16 v0, p9

    iput-boolean v0, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->isCanChange:Z

    .line 218
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v2

    iget-object v2, v2, Lcom/pay/AndroidPay;->fromActivity:Landroid/app/Activity;

    sget-object v3, Lcom/pay/api/APPayGameService;->midasCallBack:Lcom/tencent/midas/api/IAPMidasPayCallBack;

    invoke-static {v2, v1, v3}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 219
    return-void
.end method

.method public static SetDelegate(Lcom/pay/api/IAPPayGameServiceCallBack;)V
    .locals 0
    .param p0, "delegate"    # Lcom/pay/api/IAPPayGameServiceCallBack;

    .prologue
    .line 285
    sput-object p0, Lcom/pay/api/APPayGameService;->serviceDelegate:Lcom/pay/api/IAPPayGameServiceCallBack;

    .line 286
    return-void
.end method

.method public static SetNeedReloginInSDK(Z)V
    .locals 0
    .param p0, "relogin"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 282
    return-void
.end method

.method static synthetic access$000()Lcom/pay/api/IAPPayGameServiceCallBack;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/pay/api/APPayGameService;->serviceDelegate:Lcom/pay/api/IAPPayGameServiceCallBack;

    return-object v0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    sput-object v0, Lcom/pay/api/APPayGameService;->serviceDelegate:Lcom/pay/api/IAPPayGameServiceCallBack;

    .line 294
    return-void
.end method

.method public static reportCrashApLog(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "ex"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 275
    return-void
.end method

.method private static setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "baseReq"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userKey"    # Ljava/lang/String;
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "sessionType"    # Ljava/lang/String;
    .param p5, "zoneId"    # Ljava/lang/String;
    .param p6, "pf"    # Ljava/lang/String;
    .param p7, "pfKey"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v0

    iget-object v0, v0, Lcom/pay/AndroidPay;->offerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->offerId:Ljava/lang/String;

    .line 302
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->openId:Ljava/lang/String;

    .line 303
    iput-object p2, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->openKey:Ljava/lang/String;

    .line 304
    iput-object p3, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionId:Ljava/lang/String;

    .line 305
    iput-object p4, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionType:Ljava/lang/String;

    .line 306
    iput-object p5, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->zoneId:Ljava/lang/String;

    .line 307
    iput-object p6, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->pf:Ljava/lang/String;

    .line 308
    iput-object p7, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->pfKey:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v1

    iget-object v1, v1, Lcom/pay/AndroidPay;->unit:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->unit:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v1

    iget-boolean v1, v1, Lcom/pay/AndroidPay;->isShowNum:Z

    iput-boolean v1, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowNum:Z

    .line 312
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v0

    iget-object v0, v0, Lcom/pay/AndroidPay;->resdata:[B

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->resData:[B

    .line 313
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v1

    iget-boolean v1, v1, Lcom/pay/AndroidPay;->isShowListOtherNum:Z

    iput-boolean v1, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowListOtherNum:Z

    .line 314
    return-void
.end method

.method private static startMpNetWork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pay/http/IAPHttpAnsObserver;)V
    .locals 10
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionType"    # Ljava/lang/String;
    .param p4, "zoneId"    # Ljava/lang/String;
    .param p5, "pf"    # Ljava/lang/String;
    .param p6, "pfKey"    # Ljava/lang/String;
    .param p7, "drmInfo"    # Ljava/lang/String;
    .param p8, "observer"    # Lcom/pay/http/IAPHttpAnsObserver;

    .prologue
    .line 238
    new-instance v1, Lcom/tencent/midas/api/request/APMidasNetRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasNetRequest;-><init>()V

    .local v1, "netRequest":Lcom/tencent/midas/api/request/APMidasNetRequest;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    .line 239
    invoke-static/range {v1 .. v8}, Lcom/pay/api/APPayGameService;->setCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v2, Lcom/tencent/midas/api/request/APMidasNetRequest;->NET_REQ_MP:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->reqType:Ljava/lang/String;

    .line 242
    if-nez p7, :cond_0

    const-string v2, ""

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    :cond_0
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p7

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->drmInfo:Ljava/lang/String;

    .line 246
    :cond_1
    new-instance v9, Lcom/pay/network/model/APMpAns;

    invoke-static {}, Lcom/pay/http/APHttpHandle;->getIntanceHandel()Lcom/pay/http/APHttpHandle;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lcom/tencent/midas/api/request/APMidasNetRequest;->NET_REQ_MP:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-direct {v9, v2, v0, v3, v4}, Lcom/pay/network/model/APMpAns;-><init>(Lcom/pay/http/APHttpHandle;Lcom/pay/http/IAPHttpAnsObserver;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 248
    .local v9, "mpAns":Lcom/pay/network/model/APMpAns;
    invoke-static {}, Lcom/pay/AndroidPay;->singleton()Lcom/pay/AndroidPay;

    move-result-object v2

    iget-object v2, v2, Lcom/pay/AndroidPay;->fromActivity:Landroid/app/Activity;

    new-instance v3, Lcom/pay/api/APPayGameService$2;

    move-object/from16 v0, p8

    invoke-direct {v3, v0, v9}, Lcom/pay/api/APPayGameService$2;-><init>(Lcom/pay/http/IAPHttpAnsObserver;Lcom/pay/network/model/APMpAns;)V

    invoke-static {v2, v1, v3}, Lcom/tencent/midas/api/APMidasPayAPI;->launchNet(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasNetRequest;Lcom/tencent/midas/api/IAPMidasNetCallBack;)V

    .line 268
    return-void
.end method
