.class public Lcom/tencent/apollo/plugin/midas/APIHelper;
.super Ljava/lang/Object;
.source "APIHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "atv"    # Landroid/app/Activity;
    .param p1, "env"    # Ljava/lang/String;
    .param p2, "logable"    # Z
    .param p3, "offerID"    # Ljava/lang/String;
    .param p4, "reserv"    # Ljava/lang/String;
    .param p5, "openID"    # Ljava/lang/String;
    .param p6, "openKey"    # Ljava/lang/String;
    .param p7, "sessionID"    # Ljava/lang/String;
    .param p8, "sessionType"    # Ljava/lang/String;
    .param p9, "pf"    # Ljava/lang/String;
    .param p10, "pfKey"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Lcom/tencent/midas/api/request/APMidasGameRequest;

    invoke-direct {v0}, Lcom/tencent/midas/api/request/APMidasGameRequest;-><init>()V

    .line 28
    .local v0, "req":Lcom/tencent/midas/api/request/APMidasGameRequest;
    iput-object p3, v0, Lcom/tencent/midas/api/request/APMidasGameRequest;->offerId:Ljava/lang/String;

    .line 29
    iput-object p4, v0, Lcom/tencent/midas/api/request/APMidasGameRequest;->reserv:Ljava/lang/String;

    .line 30
    iput-object p5, v0, Lcom/tencent/midas/api/request/APMidasGameRequest;->openId:Ljava/lang/String;

    .line 31
    iput-object p6, v0, Lcom/tencent/midas/api/request/APMidasGameRequest;->openKey:Ljava/lang/String;

    .line 32
    iput-object p7, v0, Lcom/tencent/midas/api/request/APMidasGameRequest;->sessionId:Ljava/lang/String;

    .line 33
    iput-object p8, v0, Lcom/tencent/midas/api/request/APMidasGameRequest;->sessionType:Ljava/lang/String;

    .line 34
    iput-object p9, v0, Lcom/tencent/midas/api/request/APMidasGameRequest;->pf:Ljava/lang/String;

    .line 35
    iput-object p10, v0, Lcom/tencent/midas/api/request/APMidasGameRequest;->pfKey:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/tencent/midas/api/APMidasPayAPI;->setEnv(Ljava/lang/String;)V

    .line 38
    invoke-static {p0, v0}, Lcom/tencent/midas/api/APMidasPayAPI;->init(Landroid/content/Context;Lcom/tencent/midas/api/request/APMidasBaseRequest;)V

    .line 39
    invoke-static {p2}, Lcom/tencent/midas/api/APMidasPayAPI;->setLogEnable(Z)V

    .line 40
    return-void
.end method

.method public static LauncPayMonth(Landroid/app/Activity;Lcom/tencent/midas/api/IAPMidasPayCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI[BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 3
    .param p0, "atv"    # Landroid/app/Activity;
    .param p1, "callback"    # Lcom/tencent/midas/api/IAPMidasPayCallBack;
    .param p2, "offerID"    # Ljava/lang/String;
    .param p3, "openID"    # Ljava/lang/String;
    .param p4, "openKey"    # Ljava/lang/String;
    .param p5, "sessionID"    # Ljava/lang/String;
    .param p6, "sessionType"    # Ljava/lang/String;
    .param p7, "zoneID"    # Ljava/lang/String;
    .param p8, "pf"    # Ljava/lang/String;
    .param p9, "pfKey"    # Ljava/lang/String;
    .param p10, "saveValue"    # Ljava/lang/String;
    .param p11, "isCanChange"    # Z
    .param p12, "resID"    # I
    .param p13, "resData"    # [B
    .param p14, "accType"    # Ljava/lang/String;
    .param p15, "reserv"    # Ljava/lang/String;
    .param p16, "mallType"    # I
    .param p17, "h5URL"    # Ljava/lang/String;
    .param p18, "payChannel"    # Ljava/lang/String;
    .param p19, "discountType"    # Ljava/lang/String;
    .param p20, "discountURL"    # Ljava/lang/String;
    .param p21, "drmInfo"    # Ljava/lang/String;
    .param p22, "discountID"    # Ljava/lang/String;
    .param p23, "extras"    # Ljava/lang/String;
    .param p24, "unit"    # Ljava/lang/String;
    .param p25, "isShowNum"    # Z
    .param p26, "isShowListOtherNum"    # Z
    .param p27, "serviceCode"    # Ljava/lang/String;
    .param p28, "serviceName"    # Ljava/lang/String;
    .param p29, "remark"    # Ljava/lang/String;
    .param p30, "serviceType"    # I
    .param p31, "autoPay"    # Z
    .param p32, "gameLogo"    # I

    .prologue
    .line 204
    new-instance v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasMonthRequest;-><init>()V

    .line 206
    .local v1, "req":Lcom/tencent/midas/api/request/APMidasMonthRequest;
    iput-object p2, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->offerId:Ljava/lang/String;

    .line 207
    iput-object p3, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->openId:Ljava/lang/String;

    .line 208
    iput-object p4, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->openKey:Ljava/lang/String;

    .line 209
    iput-object p5, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->sessionId:Ljava/lang/String;

    .line 210
    iput-object p6, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->sessionType:Ljava/lang/String;

    .line 211
    iput-object p7, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->zoneId:Ljava/lang/String;

    .line 212
    iput-object p8, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->pf:Ljava/lang/String;

    .line 213
    iput-object p9, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->pfKey:Ljava/lang/String;

    .line 214
    iput-object p10, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->saveValue:Ljava/lang/String;

    .line 215
    iput-boolean p11, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->isCanChange:Z

    .line 216
    iput p12, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->resId:I

    .line 217
    move-object/from16 v0, p13

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->resData:[B

    .line 218
    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->acctType:Ljava/lang/String;

    .line 219
    move-object/from16 v0, p15

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->reserv:Ljava/lang/String;

    .line 220
    move/from16 v0, p16

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->mallType:I

    .line 221
    move-object/from16 v0, p17

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->h5Url:Ljava/lang/String;

    .line 222
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p18

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->payChannel:Ljava/lang/String;

    .line 223
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p19

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountType:Ljava/lang/String;

    .line 224
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p20

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountUrl:Ljava/lang/String;

    .line 225
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p21

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->drmInfo:Ljava/lang/String;

    .line 226
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p22

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discoutId:Ljava/lang/String;

    .line 227
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p23

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->extras:Ljava/lang/String;

    .line 228
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    move-object/from16 v0, p24

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->unit:Ljava/lang/String;

    .line 229
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    move/from16 v0, p25

    iput-boolean v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowNum:Z

    .line 230
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    move/from16 v0, p26

    iput-boolean v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowListOtherNum:Z

    .line 231
    move-object/from16 v0, p27

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceCode:Ljava/lang/String;

    .line 232
    move-object/from16 v0, p28

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceName:Ljava/lang/String;

    .line 233
    move-object/from16 v0, p29

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->remark:Ljava/lang/String;

    .line 234
    move/from16 v0, p30

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceType:I

    .line 235
    move/from16 v0, p31

    iput-boolean v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->autoPay:Z

    .line 236
    move/from16 v0, p32

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasMonthRequest;->gameLogo:I

    .line 237
    invoke-static {p0, v1, p1}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 238
    return-void
.end method

.method public static LaunchMC(Landroid/app/Activity;Lcom/tencent/midas/api/IAPMidasPayCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI[BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;I)V
    .locals 3
    .param p0, "atv"    # Landroid/app/Activity;
    .param p1, "callback"    # Lcom/tencent/midas/api/IAPMidasPayCallBack;
    .param p2, "offerID"    # Ljava/lang/String;
    .param p3, "openID"    # Ljava/lang/String;
    .param p4, "openKey"    # Ljava/lang/String;
    .param p5, "sessionID"    # Ljava/lang/String;
    .param p6, "sessionType"    # Ljava/lang/String;
    .param p7, "zoneID"    # Ljava/lang/String;
    .param p8, "pf"    # Ljava/lang/String;
    .param p9, "pfKey"    # Ljava/lang/String;
    .param p10, "saveValue"    # Ljava/lang/String;
    .param p11, "isCanChange"    # Z
    .param p12, "resID"    # I
    .param p13, "resData"    # [B
    .param p14, "accType"    # Ljava/lang/String;
    .param p15, "reserv"    # Ljava/lang/String;
    .param p16, "mallType"    # I
    .param p17, "h5URL"    # Ljava/lang/String;
    .param p18, "payChannel"    # Ljava/lang/String;
    .param p19, "discountType"    # Ljava/lang/String;
    .param p20, "discountURL"    # Ljava/lang/String;
    .param p21, "drmInfo"    # Ljava/lang/String;
    .param p22, "discountID"    # Ljava/lang/String;
    .param p23, "extras"    # Ljava/lang/String;
    .param p24, "unit"    # Ljava/lang/String;
    .param p25, "isShowNum"    # Z
    .param p26, "isShowListOtherNum"    # Z
    .param p27, "serviceCode"    # Ljava/lang/String;
    .param p28, "serviceName"    # Ljava/lang/String;
    .param p29, "remark"    # Ljava/lang/String;
    .param p30, "serviceType"    # I
    .param p31, "autoPay"    # Z
    .param p32, "productId"    # Ljava/lang/String;
    .param p33, "gameLogo"    # I

    .prologue
    .line 277
    new-instance v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;-><init>()V

    .line 279
    .local v1, "req":Lcom/tencent/midas/api/request/APMidasSubscribeRequest;
    iput-object p2, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->offerId:Ljava/lang/String;

    .line 280
    iput-object p3, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->openId:Ljava/lang/String;

    .line 281
    iput-object p4, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->openKey:Ljava/lang/String;

    .line 282
    iput-object p5, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->sessionId:Ljava/lang/String;

    .line 283
    iput-object p6, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->sessionType:Ljava/lang/String;

    .line 284
    iput-object p7, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->zoneId:Ljava/lang/String;

    .line 285
    iput-object p8, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->pf:Ljava/lang/String;

    .line 286
    iput-object p9, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->pfKey:Ljava/lang/String;

    .line 287
    iput-object p10, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->saveValue:Ljava/lang/String;

    .line 288
    iput-boolean p11, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->isCanChange:Z

    .line 289
    iput p12, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->resId:I

    .line 290
    move-object/from16 v0, p13

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->resData:[B

    .line 291
    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->acctType:Ljava/lang/String;

    .line 292
    move-object/from16 v0, p15

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->reserv:Ljava/lang/String;

    .line 293
    move/from16 v0, p16

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->mallType:I

    .line 294
    move-object/from16 v0, p17

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->h5Url:Ljava/lang/String;

    .line 295
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p18

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->payChannel:Ljava/lang/String;

    .line 296
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p19

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountType:Ljava/lang/String;

    .line 297
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p20

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountUrl:Ljava/lang/String;

    .line 298
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p21

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->drmInfo:Ljava/lang/String;

    .line 299
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p22

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discoutId:Ljava/lang/String;

    .line 300
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p23

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->extras:Ljava/lang/String;

    .line 301
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    move-object/from16 v0, p24

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->unit:Ljava/lang/String;

    .line 302
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    move/from16 v0, p25

    iput-boolean v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowNum:Z

    .line 303
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    move/from16 v0, p26

    iput-boolean v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowListOtherNum:Z

    .line 304
    move-object/from16 v0, p27

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->serviceCode:Ljava/lang/String;

    .line 305
    move-object/from16 v0, p28

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->serviceName:Ljava/lang/String;

    .line 306
    move-object/from16 v0, p29

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->remark:Ljava/lang/String;

    .line 307
    move/from16 v0, p30

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->serviceType:I

    .line 308
    move/from16 v0, p31

    iput-boolean v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->autoPay:Z

    .line 309
    move-object/from16 v0, p32

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->productId:Ljava/lang/String;

    .line 310
    move/from16 v0, p33

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->gameLogo:I

    .line 312
    invoke-static {p0, v1, p1}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 313
    return-void
.end method

.method public static LaunchNet(Landroid/app/Activity;Lcom/tencent/midas/api/IAPMidasNetCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI[BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 3
    .param p0, "atv"    # Landroid/app/Activity;
    .param p1, "callback"    # Lcom/tencent/midas/api/IAPMidasNetCallBack;
    .param p2, "offerID"    # Ljava/lang/String;
    .param p3, "openID"    # Ljava/lang/String;
    .param p4, "openKey"    # Ljava/lang/String;
    .param p5, "sessionID"    # Ljava/lang/String;
    .param p6, "sessionType"    # Ljava/lang/String;
    .param p7, "zoneID"    # Ljava/lang/String;
    .param p8, "pf"    # Ljava/lang/String;
    .param p9, "pfKey"    # Ljava/lang/String;
    .param p10, "saveValue"    # Ljava/lang/String;
    .param p11, "isCanChange"    # Z
    .param p12, "resID"    # I
    .param p13, "resData"    # [B
    .param p14, "accType"    # Ljava/lang/String;
    .param p15, "reserv"    # Ljava/lang/String;
    .param p16, "mallType"    # I
    .param p17, "h5URL"    # Ljava/lang/String;
    .param p18, "payChannel"    # Ljava/lang/String;
    .param p19, "discountType"    # Ljava/lang/String;
    .param p20, "discountURL"    # Ljava/lang/String;
    .param p21, "drmInfo"    # Ljava/lang/String;
    .param p22, "discountID"    # Ljava/lang/String;
    .param p23, "extras"    # Ljava/lang/String;
    .param p24, "unit"    # Ljava/lang/String;
    .param p25, "isShowNum"    # Z
    .param p26, "isShowListOtherNum"    # Z
    .param p27, "reqType"    # Ljava/lang/String;

    .prologue
    .line 351
    new-instance v1, Lcom/tencent/midas/api/request/APMidasNetRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasNetRequest;-><init>()V

    .line 352
    .local v1, "req":Lcom/tencent/midas/api/request/APMidasNetRequest;
    iput-object p2, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->offerId:Ljava/lang/String;

    .line 353
    iput-object p3, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->openId:Ljava/lang/String;

    .line 354
    iput-object p4, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->openKey:Ljava/lang/String;

    .line 355
    iput-object p5, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->sessionId:Ljava/lang/String;

    .line 356
    iput-object p6, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->sessionType:Ljava/lang/String;

    .line 357
    iput-object p7, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->zoneId:Ljava/lang/String;

    .line 358
    iput-object p8, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->pf:Ljava/lang/String;

    .line 359
    iput-object p9, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->pfKey:Ljava/lang/String;

    .line 360
    iput-object p10, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->saveValue:Ljava/lang/String;

    .line 361
    iput-boolean p11, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->isCanChange:Z

    .line 362
    iput p12, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->resId:I

    .line 363
    move-object/from16 v0, p13

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->resData:[B

    .line 364
    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->acctType:Ljava/lang/String;

    .line 365
    move-object/from16 v0, p15

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->reserv:Ljava/lang/String;

    .line 366
    move/from16 v0, p16

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->mallType:I

    .line 367
    move-object/from16 v0, p17

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->h5Url:Ljava/lang/String;

    .line 368
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p18

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->payChannel:Ljava/lang/String;

    .line 369
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p19

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountType:Ljava/lang/String;

    .line 370
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p20

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountUrl:Ljava/lang/String;

    .line 371
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p21

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->drmInfo:Ljava/lang/String;

    .line 372
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p22

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discoutId:Ljava/lang/String;

    .line 373
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p23

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->extras:Ljava/lang/String;

    .line 374
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    move-object/from16 v0, p24

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->unit:Ljava/lang/String;

    .line 375
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    move/from16 v0, p25

    iput-boolean v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowNum:Z

    .line 376
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    move/from16 v0, p26

    iput-boolean v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowListOtherNum:Z

    .line 377
    move-object/from16 v0, p27

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasNetRequest;->reqType:Ljava/lang/String;

    .line 378
    invoke-static {p0, v1, p1}, Lcom/tencent/midas/api/APMidasPayAPI;->launchNet(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasNetRequest;Lcom/tencent/midas/api/IAPMidasNetCallBack;)V

    .line 380
    return-void
.end method

.method public static Pay(Landroid/app/Activity;Lcom/tencent/midas/api/IAPMidasPayCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI[BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 3
    .param p0, "atv"    # Landroid/app/Activity;
    .param p1, "callback"    # Lcom/tencent/midas/api/IAPMidasPayCallBack;
    .param p2, "offerID"    # Ljava/lang/String;
    .param p3, "openID"    # Ljava/lang/String;
    .param p4, "openKey"    # Ljava/lang/String;
    .param p5, "sessionID"    # Ljava/lang/String;
    .param p6, "sessionType"    # Ljava/lang/String;
    .param p7, "zoneID"    # Ljava/lang/String;
    .param p8, "pf"    # Ljava/lang/String;
    .param p9, "pfKey"    # Ljava/lang/String;
    .param p10, "saveValue"    # Ljava/lang/String;
    .param p11, "isCanChange"    # Z
    .param p12, "resID"    # I
    .param p13, "resData"    # [B
    .param p14, "accType"    # Ljava/lang/String;
    .param p15, "reserv"    # Ljava/lang/String;
    .param p16, "mallType"    # I
    .param p17, "h5URL"    # Ljava/lang/String;
    .param p18, "payChannel"    # Ljava/lang/String;
    .param p19, "discountType"    # Ljava/lang/String;
    .param p20, "discountURL"    # Ljava/lang/String;
    .param p21, "drmInfo"    # Ljava/lang/String;
    .param p22, "discountID"    # Ljava/lang/String;
    .param p23, "extras"    # Ljava/lang/String;
    .param p24, "unit"    # Ljava/lang/String;
    .param p25, "isShowNum"    # Z
    .param p26, "isShowListOtherNum"    # Z
    .param p27, "gameLogo"    # I

    .prologue
    .line 71
    new-instance v1, Lcom/tencent/midas/api/request/APMidasGameRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasGameRequest;-><init>()V

    .line 72
    .local v1, "req":Lcom/tencent/midas/api/request/APMidasGameRequest;
    iput-object p2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->offerId:Ljava/lang/String;

    .line 73
    iput-object p3, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->openId:Ljava/lang/String;

    .line 74
    iput-object p4, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->openKey:Ljava/lang/String;

    .line 75
    iput-object p5, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->sessionId:Ljava/lang/String;

    .line 76
    iput-object p6, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->sessionType:Ljava/lang/String;

    .line 77
    iput-object p7, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->zoneId:Ljava/lang/String;

    .line 78
    iput-object p8, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->pf:Ljava/lang/String;

    .line 79
    iput-object p9, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->pfKey:Ljava/lang/String;

    .line 80
    iput-object p10, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->saveValue:Ljava/lang/String;

    .line 81
    iput-boolean p11, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->isCanChange:Z

    .line 82
    iput p12, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->resId:I

    .line 83
    move-object/from16 v0, p13

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->resData:[B

    .line 84
    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->acctType:Ljava/lang/String;

    .line 85
    move-object/from16 v0, p15

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->reserv:Ljava/lang/String;

    .line 86
    move/from16 v0, p16

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->mallType:I

    .line 87
    move-object/from16 v0, p17

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->h5Url:Ljava/lang/String;

    .line 88
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p18

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->payChannel:Ljava/lang/String;

    .line 89
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p19

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountType:Ljava/lang/String;

    .line 90
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p20

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountUrl:Ljava/lang/String;

    .line 91
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p21

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->drmInfo:Ljava/lang/String;

    .line 92
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p22

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discoutId:Ljava/lang/String;

    .line 93
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p23

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->extras:Ljava/lang/String;

    .line 94
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    move-object/from16 v0, p24

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->unit:Ljava/lang/String;

    .line 95
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    move/from16 v0, p25

    iput-boolean v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowNum:Z

    .line 96
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    move/from16 v0, p26

    iput-boolean v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowListOtherNum:Z

    .line 97
    move/from16 v0, p27

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasGameRequest;->gameLogo:I

    .line 99
    invoke-static {p0, v1, p1}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 101
    return-void
.end method

.method public static Uninit()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public static launchPayGoods(Landroid/app/Activity;Lcom/tencent/midas/api/IAPMidasPayCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI[BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "atv"    # Landroid/app/Activity;
    .param p1, "callback"    # Lcom/tencent/midas/api/IAPMidasPayCallBack;
    .param p2, "offerID"    # Ljava/lang/String;
    .param p3, "openID"    # Ljava/lang/String;
    .param p4, "openKey"    # Ljava/lang/String;
    .param p5, "sessionID"    # Ljava/lang/String;
    .param p6, "sessionType"    # Ljava/lang/String;
    .param p7, "zoneID"    # Ljava/lang/String;
    .param p8, "pf"    # Ljava/lang/String;
    .param p9, "pfKey"    # Ljava/lang/String;
    .param p10, "saveValue"    # Ljava/lang/String;
    .param p11, "isCanChange"    # Z
    .param p12, "resID"    # I
    .param p13, "resData"    # [B
    .param p14, "accType"    # Ljava/lang/String;
    .param p15, "reserv"    # Ljava/lang/String;
    .param p16, "mallType"    # I
    .param p17, "h5URL"    # Ljava/lang/String;
    .param p18, "payChannel"    # Ljava/lang/String;
    .param p19, "discountType"    # Ljava/lang/String;
    .param p20, "discountURL"    # Ljava/lang/String;
    .param p21, "drmInfo"    # Ljava/lang/String;
    .param p22, "discountID"    # Ljava/lang/String;
    .param p23, "extras"    # Ljava/lang/String;
    .param p24, "unit"    # Ljava/lang/String;
    .param p25, "isShowNum"    # Z
    .param p26, "isShowListOtherNum"    # Z
    .param p27, "tokenType"    # I
    .param p28, "productId"    # Ljava/lang/String;
    .param p29, "goodsTokenUrl"    # Ljava/lang/String;
    .param p30, "gameLogo"    # I

    .prologue
    .line 135
    new-instance v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;

    invoke-direct {v1}, Lcom/tencent/midas/api/request/APMidasGoodsRequest;-><init>()V

    .line 136
    .local v1, "req":Lcom/tencent/midas/api/request/APMidasGoodsRequest;
    iput-object p2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->offerId:Ljava/lang/String;

    .line 137
    iput-object p3, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->openId:Ljava/lang/String;

    .line 138
    iput-object p4, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->openKey:Ljava/lang/String;

    .line 139
    iput-object p5, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->sessionId:Ljava/lang/String;

    .line 140
    iput-object p6, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->sessionType:Ljava/lang/String;

    .line 141
    iput-object p7, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->zoneId:Ljava/lang/String;

    .line 142
    iput-object p8, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->pf:Ljava/lang/String;

    .line 143
    iput-object p9, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->pfKey:Ljava/lang/String;

    .line 144
    move/from16 v0, p27

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->tokenType:I

    .line 145
    move-object/from16 v0, p28

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->prodcutId:Ljava/lang/String;

    .line 146
    iput-object p10, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->saveValue:Ljava/lang/String;

    .line 147
    move-object/from16 v0, p29

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->goodsTokenUrl:Ljava/lang/String;

    .line 148
    iput-boolean p11, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->isCanChange:Z

    .line 149
    iput p12, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->resId:I

    .line 150
    move-object/from16 v0, p13

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->resData:[B

    .line 151
    move-object/from16 v0, p14

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->acctType:Ljava/lang/String;

    .line 152
    move-object/from16 v0, p15

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->reserv:Ljava/lang/String;

    .line 153
    move/from16 v0, p16

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mallType:I

    .line 154
    move-object/from16 v0, p17

    iput-object v0, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->h5Url:Ljava/lang/String;

    .line 155
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p18

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->payChannel:Ljava/lang/String;

    .line 156
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p19

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountType:Ljava/lang/String;

    .line 157
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p20

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountUrl:Ljava/lang/String;

    .line 158
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p21

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->drmInfo:Ljava/lang/String;

    .line 159
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p22

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discoutId:Ljava/lang/String;

    .line 160
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    move-object/from16 v0, p23

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->extras:Ljava/lang/String;

    .line 161
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    move-object/from16 v0, p24

    iput-object v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->unit:Ljava/lang/String;

    .line 162
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    move/from16 v0, p25

    iput-boolean v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowNum:Z

    .line 163
    iget-object v2, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    move/from16 v0, p26

    iput-boolean v0, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowListOtherNum:Z

    .line 164
    move/from16 v0, p30

    iput v0, v1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->gameLogo:I

    .line 166
    invoke-static {p0, v1, p1}, Lcom/tencent/midas/api/APMidasPayAPI;->launchPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Lcom/tencent/midas/api/IAPMidasPayCallBack;)V

    .line 168
    return-void
.end method
