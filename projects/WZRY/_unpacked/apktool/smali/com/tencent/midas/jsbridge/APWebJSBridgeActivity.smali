.class public Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;
.super Landroid/app/Activity;
.source "APWebJSBridgeActivity.java"


# static fields
.field private static final KEY_REQUEST:Ljava/lang/String; = "key_request"

.field private static final KEY_TYPE:Ljava/lang/String; = "key_pure_h5_pay"

.field private static final TAG:Ljava/lang/String; = "APWebJSBridgeActivity"

.field private static final VALUE_PURE_H5:Ljava/lang/String; = "value_pure_h5_pay"

.field private static final WEB_URL_POST:Ljava/lang/String; = "/index.html"

.field private static final WEB_URL_PRE:Ljava/lang/String; = "http://youxi.vip.qq.com/m/act/"


# instance fields
.field private webPage:Lcom/tencent/midas/jsbridge/IAPWebPage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->webPage:Lcom/tencent/midas/jsbridge/IAPWebPage;

    return-void
.end method

.method private constructUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 343
    const-string v0, ""

    .line 344
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/midas/data/APPluginDataInterface;->getDiscountUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://youxi.vip.qq.com/m/act/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/midas/data/APPluginDataInterface;->getOfferId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/index.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->webPage:Lcom/tencent/midas/jsbridge/IAPWebPage;

    invoke-interface {v2, v0}, Lcom/tencent/midas/jsbridge/IAPWebPage;->updateWebViewSize(Ljava/lang/String;)V

    .line 351
    :goto_0
    const-string v2, "constructUrl"

    invoke-static {v2, v0}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 355
    .local v1, "urlParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "offerId"

    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/midas/data/APPluginDataInterface;->getOfferId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v2, "openId"

    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/midas/data/APPluginDataInterface;->getOpenId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v2, "openKey"

    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/midas/data/APPluginDataInterface;->getOpenKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v2, "sessionId"

    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/midas/data/APPluginDataInterface;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v2, "sessionType"

    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/midas/data/APPluginDataInterface;->getSessionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v2, "pf"

    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/midas/data/APPluginDataInterface;->getPf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v2, "pfKey"

    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/midas/data/APPluginDataInterface;->getPfKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v2, "zoneId"

    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/midas/data/APPluginDataInterface;->getZoneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 366
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/pay/tool/APMidasTools;->map2UrlParams(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    const-string v2, "constructUrl"

    invoke-static {v2, v0}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-object v0

    .line 348
    .end local v1    # "urlParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->webPage:Lcom/tencent/midas/jsbridge/IAPWebPage;

    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/midas/data/APPluginDataInterface;->getDiscountUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/midas/jsbridge/IAPWebPage;->updateWebViewSize(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/midas/data/APPluginDataInterface;->getDiscountUrl()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 370
    .restart local v1    # "urlParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getPureH5PayURLParameters(Lcom/tencent/midas/api/request/APMidasBaseRequest;)Ljava/lang/String;
    .locals 9
    .param p1, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .prologue
    .line 94
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "m"

    const-string v7, "buy"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v6, "_version"

    const-string/jumbo v7, "v3"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v6, "appid"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->offerId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v6, "pf"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->pf:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v6, "n"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->saveValue:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v6, "sessionid"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v6, "sessiontype"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionType:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v6, "openid"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->openId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v6, "openkey"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->openKey:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v6, "zoneid"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->zoneId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v6, "sdktype"

    const-string v7, "android"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginUtils;->getMidasCoreVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "app_version":Ljava/lang/String;
    const-string v6, "APWebJSBridgeActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "app_version = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v6, "appversion"

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v6, "request_from"

    const-string v7, "androidsdk"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v6, "is_android_sdk_error_version"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v6, "android_sdk_reserve"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->reserv:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v6, "android_sdk_mpinfo_discountType"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iget-object v7, v7, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountType:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v6, "android_sdk_mpinfo_discountUrl"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iget-object v7, v7, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountUrl:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v6, "android_sdk_mpinfo_discoutId"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iget-object v7, v7, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discoutId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v6, "android_sdk_mpinfo_drmInfo"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iget-object v7, v7, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->drmInfo:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v6, "android_sdk_mpinfo_extras"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iget-object v7, v7, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->extras:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v6, "android_sdk_mpinfo_payChannel"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iget-object v7, v7, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->payChannel:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v6, "android_sdk_extendInfo_unit"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    iget-object v7, v7, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->unit:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v6, "android_sdk_extendInfo_isShowListOtherNum"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    iget-boolean v7, v7, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowListOtherNum:Z

    .line 133
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    .line 132
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v6, "android_sdk_extendInfo_isShowNum"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    iget-boolean v7, v7, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowNum:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    instance-of v6, p1, Lcom/tencent/midas/api/request/APMidasGameRequest;

    if-eqz v6, :cond_4

    .line 137
    const-string v6, "hy_gameid"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "wc_actoken"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionType:Ljava/lang/String;

    .line 138
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 139
    const-string v6, "c"

    const-string/jumbo v7, "wechat_game"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :goto_0
    iget-object v6, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->saveValue:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 209
    :cond_0
    :goto_1
    sget-object v1, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    .line 210
    .local v1, "env":Ljava/lang/String;
    const-string v6, "dev"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 211
    const-string v6, "sandbox"

    const-string v7, "2"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_1
    :goto_2
    invoke-static {v4}, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->map2UrlParams(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 141
    .end local v1    # "env":Ljava/lang/String;
    :cond_2
    const-string v6, "c"

    const-string v7, "game"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    :cond_3
    const-string v6, "as"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 151
    :cond_4
    instance-of v6, p1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;

    if-eqz v6, :cond_6

    move-object v2, p1

    .line 152
    check-cast v2, Lcom/tencent/midas/api/request/APMidasGoodsRequest;

    .line 154
    .local v2, "goodsRequest":Lcom/tencent/midas/api/request/APMidasGoodsRequest;
    const-string v6, "c"

    const-string v7, "goods"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget v6, v2, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->tokenType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 157
    const-string v6, "params"

    iget-object v7, v2, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->goodsTokenUrl:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 160
    :cond_5
    const-string v6, "productid"

    iget-object v7, v2, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->prodcutId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 162
    .end local v2    # "goodsRequest":Lcom/tencent/midas/api/request/APMidasGoodsRequest;
    :cond_6
    instance-of v6, p1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;

    if-eqz v6, :cond_a

    move-object v5, p1

    .line 163
    check-cast v5, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;

    .line 165
    .local v5, "subcribeRequest":Lcom/tencent/midas/api/request/APMidasSubscribeRequest;
    const-string/jumbo v6, "uin"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "openid"

    iget-object v7, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 167
    :cond_7
    const-string v6, "c"

    const-string v7, "qqsubscribe"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :goto_3
    iget-object v6, v5, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->productId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 175
    const-string v6, "as"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v6, "productid"

    iget-object v7, v5, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->productId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_8
    const-string v6, "service"

    iget-object v7, v5, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->serviceCode:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v6, "aid"

    iget-object v7, v5, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->remark:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-boolean v6, v5, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->autoPay:Z

    if-eqz v6, :cond_0

    .line 185
    const-string v6, "ap"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 170
    :cond_9
    const-string v6, "c"

    const-string/jumbo v7, "subscribe"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 188
    .end local v5    # "subcribeRequest":Lcom/tencent/midas/api/request/APMidasSubscribeRequest;
    :cond_a
    instance-of v6, p1, Lcom/tencent/midas/api/request/APMidasMonthRequest;

    if-eqz v6, :cond_0

    move-object v3, p1

    .line 189
    check-cast v3, Lcom/tencent/midas/api/request/APMidasMonthRequest;

    .line 190
    .local v3, "monthRequest":Lcom/tencent/midas/api/request/APMidasMonthRequest;
    const-string v6, "da"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v6, "c"

    iget-object v7, v3, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v6, "_newservice"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-boolean v6, v3, Lcom/tencent/midas/api/request/APMidasMonthRequest;->autoPay:Z

    if-eqz v6, :cond_b

    .line 197
    const-string v6, "ap"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_b
    iget-object v6, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->saveValue:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 203
    const-string v6, "as"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_c
    const-string v6, "aid"

    iget-object v7, v3, Lcom/tencent/midas/api/request/APMidasMonthRequest;->remark:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 212
    .end local v3    # "monthRequest":Lcom/tencent/midas/api/request/APMidasMonthRequest;
    .restart local v1    # "env":Ljava/lang/String;
    :cond_d
    const-string/jumbo v6, "test"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 213
    const-string v6, "sandbox"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->webPage:Lcom/tencent/midas/jsbridge/IAPWebPage;

    invoke-interface {v0, p0}, Lcom/tencent/midas/jsbridge/IAPWebPage;->initUI(Landroid/app/Activity;)V

    .line 326
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->webPage:Lcom/tencent/midas/jsbridge/IAPWebPage;

    invoke-direct {p0}, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->constructUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/midas/jsbridge/IAPWebPage;->loadUrl(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method private initWebPage()V
    .locals 5

    .prologue
    .line 314
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v0

    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/midas/data/APPluginDataInterface;->getLaunchInterface()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk.plugin.webpage.init"

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/midas/data/APPluginReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {p0}, Lcom/tencent/midas/jsbridge/APX5;->isX5Enabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Lcom/tencent/midas/jsbridge/APX5WebPage;

    invoke-direct {v0}, Lcom/tencent/midas/jsbridge/APX5WebPage;-><init>()V

    iput-object v0, p0, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->webPage:Lcom/tencent/midas/jsbridge/IAPWebPage;

    .line 317
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v0

    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/midas/data/APPluginDataInterface;->getLaunchInterface()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk.plugin.webpage.x5"

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/midas/data/APPluginReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_0
    return-void

    .line 319
    :cond_0
    new-instance v0, Lcom/tencent/midas/jsbridge/APSystemWebPage;

    invoke-direct {v0}, Lcom/tencent/midas/jsbridge/APSystemWebPage;-><init>()V

    iput-object v0, p0, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->webPage:Lcom/tencent/midas/jsbridge/IAPWebPage;

    .line 320
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v0

    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/midas/data/APPluginDataInterface;->getLaunchInterface()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk.plugin.webpage.system"

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/midas/data/APPluginReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static map2UrlParams(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 228
    .local v2, "paramBuffer":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 229
    .local v1, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    .end local v1    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 235
    :cond_1
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static startPureH5Pay(Landroid/content/Context;Lcom/tencent/midas/api/request/APMidasBaseRequest;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .prologue
    .line 300
    if-nez p0, :cond_0

    .line 301
    const-string v1, "APWebJSBridgeActivity"

    const-string v2, "Cannot start pure h5 pay with null context!"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v1, 0x0

    .line 310
    :goto_0
    return v1

    .line 305
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 307
    const-string v1, "key_pure_h5_pay"

    const-string/jumbo v2, "value_pure_h5_pay"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v1, "key_request"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 310
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static startPureH5Pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "scene"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 267
    const-string v3, "APWebJSBridgeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Calling into startPureH5Pay caller = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 268
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-static {v3, v4}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v3

    const-string v4, "launchpay"

    const-string v5, "sdk.plugin.pureH5.error.reason"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scene="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/midas/data/APPluginReportManager;->reportImmediatelyOneRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    if-nez p0, :cond_0

    .line 275
    const-string v3, "APWebJSBridgeActivity"

    const-string v4, "Cannot start pure h5 pay with null context!"

    invoke-static {v3, v4}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :goto_0
    return v2

    .line 279
    :cond_0
    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->requestObject:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .line 280
    .local v1, "request":Lcom/tencent/midas/api/request/APMidasBaseRequest;
    if-nez v1, :cond_1

    .line 281
    const-string v3, "APWebJSBridgeActivity"

    const-string v4, "Cannot start pure h5 pay with null request object!"

    invoke-static {v3, v4}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    sget-object v0, Lcom/tencent/midas/control/APMidasPayHelper;->staticActivityContext:Landroid/app/Activity;

    .line 286
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 287
    const-string v3, "APWebJSBridgeActivity"

    const-string v4, "Cannot start pure h5 pay with null activity object!"

    invoke-static {v3, v4}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_2
    const/4 v2, 0x0

    sput-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->staticActivityContext:Landroid/app/Activity;

    .line 293
    invoke-static {v0, v1}, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->startPureH5Pay(Landroid/content/Context;Lcom/tencent/midas/api/request/APMidasBaseRequest;)Z

    move-result v2

    goto :goto_0
.end method

.method private toPureH5Pay(Lcom/tencent/midas/api/request/APMidasBaseRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->webPage:Lcom/tencent/midas/jsbridge/IAPWebPage;

    invoke-interface {v1, p0, p1}, Lcom/tencent/midas/jsbridge/IAPWebPage;->toPureH5Pay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;)V

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://pay.qq.com/h5/index.shtml?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 252
    invoke-direct {p0, p1}, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->getPureH5PayURLParameters(Lcom/tencent/midas/api/request/APMidasBaseRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "desUrl":Ljava/lang/String;
    const-string v1, "APWebJSBridgeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To pure h5 pay full url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->webPage:Lcom/tencent/midas/jsbridge/IAPWebPage;

    invoke-interface {v1, v0}, Lcom/tencent/midas/jsbridge/IAPWebPage;->loadUrl(Ljava/lang/String;)V

    .line 257
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    :try_start_0
    invoke-static {p0}, Lcom/pay/tool/APMidasCommMethod;->pushActivity(Landroid/app/Activity;)V

    .line 57
    invoke-direct {p0}, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->initWebPage()V

    .line 61
    invoke-virtual {p0}, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 62
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 63
    const-string v5, "key_pure_h5_pay"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "type":Ljava/lang/String;
    const-string/jumbo v5, "value_pure_h5_pay"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    const-string v5, "key_request"

    .line 68
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .line 70
    .local v3, "request":Lcom/tencent/midas/api/request/APMidasBaseRequest;
    invoke-direct {p0, v3}, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->toPureH5Pay(Lcom/tencent/midas/api/request/APMidasBaseRequest;)V

    .line 90
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "request":Lcom/tencent/midas/api/request/APMidasBaseRequest;
    .end local v4    # "type":Ljava/lang/String;
    :goto_0
    return-void

    .line 75
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->initUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    invoke-static {v0}, Lcom/tencent/midas/plugin/APPluginUtils;->getFullExceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "errorMsg":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "webview"

    .line 81
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Webview"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    :cond_1
    const-string/jumbo v5, "\u7cfb\u7edf\u7ec4\u4ef6\u7f3a\u5931\uff0c\u8bf7\u9000\u51fa\u91cd\u8bd5"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 85
    :cond_2
    const/16 v5, 0x64

    const-string/jumbo v6, "\u8fd4\u56de"

    invoke-static {p0, v5, v6}, Lcom/tencent/midas/plugin/APPluginUtils;->callbackInMidasPluginWithoutCaringAboutNewProcess(Landroid/content/Context;ILjava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->finish()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/KeyEvent;

    .prologue
    .line 382
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 384
    const-string v1, "APWebJSBridgeActivity"

    const-string v2, "onKey down = back!"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v0, Lcom/tencent/midas/api/APMidasResponse;

    invoke-direct {v0}, Lcom/tencent/midas/api/APMidasResponse;-><init>()V

    .line 391
    .local v0, "responseInfo":Lcom/tencent/midas/api/APMidasResponse;
    const/16 v1, 0x64

    iput v1, v0, Lcom/tencent/midas/api/APMidasResponse;->resultCode:I

    .line 392
    const-string/jumbo v1, "\u8fd4\u56de"

    iput-object v1, v0, Lcom/tencent/midas/api/APMidasResponse;->resultMsg:Ljava/lang/String;

    .line 393
    invoke-static {v0}, Lcom/tencent/midas/control/APMidasPayHelper;->midasCallBack(Lcom/tencent/midas/api/APMidasResponse;)V

    .line 395
    invoke-virtual {p0}, Lcom/tencent/midas/jsbridge/APWebJSBridgeActivity;->finish()V

    .line 398
    .end local v0    # "responseInfo":Lcom/tencent/midas/api/APMidasResponse;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 332
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 336
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 337
    return-void
.end method
