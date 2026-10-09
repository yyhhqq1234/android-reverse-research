.class public Lcom/tencent/msdk/weixin/WXEntry;
.super Ljava/lang/Object;
.source "WXEntry.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# static fields
.field public static final WX_EVENT_DATA:Ljava/lang/String; = "wx_event_data"

.field public static final WX_EVENT_REQ:I = 0x1

.field public static final WX_EVENT_RESP:I = 0x2

.field public static final WX_EVENT_TYPE:Ljava/lang/String; = "wx_event_type"


# instance fields
.field private messageExt:Ljava/lang/String;

.field private platformId:Ljava/lang/String;

.field private transpatentData:Lorg/json/JSONObject;

.field private wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

.field private wx_card_list:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/msdk/weixin/BaseWXEntryActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    .line 45
    iput-object p1, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    .line 46
    return-void
.end method

.method public static native isMSDKInited()Z
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const/4 v3, 0x0

    .line 52
    .local v3, "isHandled":Z
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 54
    .local v1, "extras":Landroid/os/Bundle;
    const-string v6, "platformId"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->platformId:Ljava/lang/String;

    .line 55
    const-string v6, "messageExt"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->messageExt:Ljava/lang/String;

    .line 56
    const-string v6, "_wxapi_add_card_to_wx_card_list"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->wx_card_list:Ljava/lang/String;

    .line 58
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/msdk/framework/MSDKEnv;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    if-nez v6, :cond_1

    .line 59
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    .line 60
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v8, v8, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    .line 59
    invoke-static {v7, v8}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v7

    iput-object v7, v6, Lcom/tencent/msdk/framework/MSDKEnv;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 61
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/msdk/framework/MSDKEnv;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v7, v7, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 63
    :cond_1
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/msdk/framework/MSDKEnv;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v6, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 68
    if-nez v3, :cond_2

    .line 69
    const-string v6, "WX API can not handle this Intent!"

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 73
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v6}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Use game\'s startActivity:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v7}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 75
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    iget-object v7, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v7}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v2, "i":Landroid/content/Intent;
    :goto_0
    if-eqz v2, :cond_4

    .line 82
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    const/high16 v6, 0x20000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v6, v2}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    :goto_1
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v6}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->finish()V

    .line 90
    .end local v2    # "i":Landroid/content/Intent;
    :cond_2
    :goto_2
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v6}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 78
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v6}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .restart local v2    # "i":Landroid/content/Intent;
    goto :goto_0

    .line 86
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    const-string v6, "Get Launch Intent is null!"

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 13
    .param p1, "req"    # Lcom/tencent/mm/opensdk/modelbase/BaseReq;

    .prologue
    .line 96
    const-string v10, "onReq"

    invoke-static {v10}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 97
    iget-object v10, p1, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    invoke-static {v10}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 98
    const-string/jumbo v10, "wx req openId is null"

    invoke-static {v10}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 99
    const-string v10, ""

    iput-object v10, p1, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    .line 105
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string/jumbo v11, "wx_callback"

    const-string v12, "onReq"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string v11, "platformId"

    iget-object v12, p0, Lcom/tencent/msdk/weixin/WXEntry;->platformId:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string/jumbo v11, "wx_transaction"

    iget-object v12, p1, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->transaction:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string/jumbo v11, "wx_openId"

    iget-object v12, p1, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string v11, "msdk_errCode"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    instance-of v10, p1, Lcom/tencent/mm/opensdk/modelmsg/LaunchFromWX$Req;

    if-eqz v10, :cond_3

    .line 111
    const-string v10, "req is LaunchFromWX.Req"

    invoke-static {v10}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 114
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string/jumbo v11, "wx_mediaTagName"

    const-string/jumbo v12, "wgWXGameRecommend"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/opensdk/modelmsg/LaunchFromWX$Req;

    move-object v4, v0

    .line 117
    .local v4, "launchReq":Lcom/tencent/mm/opensdk/modelmsg/LaunchFromWX$Req;
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string v11, "messageExt"

    iget-object v12, v4, Lcom/tencent/mm/opensdk/modelmsg/LaunchFromWX$Req;->messageExt:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string v11, "country"

    iget-object v12, v4, Lcom/tencent/mm/opensdk/modelmsg/LaunchFromWX$Req;->country:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string v11, "lang"

    iget-object v12, v4, Lcom/tencent/mm/opensdk/modelmsg/LaunchFromWX$Req;->lang:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v4    # "launchReq":Lcom/tencent/mm/opensdk/modelmsg/LaunchFromWX$Req;
    :cond_0
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WeiXin data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v10, "wechat"

    invoke-static {v10}, Lcom/tencent/msdk/framework/tools/ChannelUtil;->setPlatformId(Ljava/lang/String;)V

    .line 145
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v10}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 146
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Use game\'s startActivity:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v11}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 147
    new-instance v3, Landroid/content/Intent;

    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    iget-object v11, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v11}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v3, "intent":Landroid/content/Intent;
    :goto_2
    if-eqz v3, :cond_1

    .line 154
    const/high16 v10, 0x10000000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    const/high16 v10, 0x20000000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    :cond_1
    invoke-static {}, Lcom/tencent/msdk/weixin/WXEntry;->isMSDKInited()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 159
    if-eqz v3, :cond_6

    .line 160
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v10, v3}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 164
    :goto_3
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v10}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->finish()V

    .line 165
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->platformReqEvent(Ljava/lang/String;)V

    .line 177
    :goto_4
    return-void

    .line 101
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "wx req openId is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_3
    :try_start_1
    instance-of v10, p1, Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;

    if-eqz v10, :cond_0

    .line 121
    const-string v10, "req is ShowMessageFromWX.Req"

    invoke-static {v10}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 123
    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;

    move-object v9, v0

    .line 124
    .local v9, "smReq":Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;
    iget-object v10, v9, Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    iget-object v1, v10, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    check-cast v1, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;

    .line 125
    .local v1, "appObj":Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;
    iget-object v6, v1, Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 126
    .local v6, "mediaTagName":Ljava/lang/String;
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string/jumbo v11, "wx_mediaTagName"

    invoke-virtual {v10, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    iget-object v5, v9, Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 128
    .local v5, "mediaMsg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string v11, "country"

    iget-object v12, v9, Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;->country:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string v11, "lang"

    iget-object v12, v9, Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;->lang:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    iget-object v10, v5, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->messageExt:Ljava/lang/String;

    invoke-static {v10}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 132
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string v11, "messageExt"

    iget-object v12, v5, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->messageExt:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 137
    .end local v1    # "appObj":Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;
    .end local v5    # "mediaMsg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .end local v6    # "mediaTagName":Ljava/lang/String;
    .end local v9    # "smReq":Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Lorg/json/JSONException;
    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 134
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v1    # "appObj":Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;
    .restart local v5    # "mediaMsg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .restart local v6    # "mediaTagName":Ljava/lang/String;
    .restart local v9    # "smReq":Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;
    :cond_4
    :try_start_2
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string v11, "messageExt"

    iget-object v12, p0, Lcom/tencent/msdk/weixin/WXEntry;->messageExt:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 149
    .end local v1    # "appObj":Lcom/tencent/mm/opensdk/modelmsg/WXAppExtendObject;
    .end local v5    # "mediaMsg":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .end local v6    # "mediaTagName":Ljava/lang/String;
    .end local v9    # "smReq":Lcom/tencent/mm/opensdk/modelmsg/ShowMessageFromWX$Req;
    :cond_5
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v10}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 150
    .local v8, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v10}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    .line 162
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    const-string v10, "Get Launch Intent is null!"

    invoke-static {v10}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 167
    :cond_7
    const-string v10, "MSDK is not init, would call back in WGPlatform.handleCallback()"

    invoke-static {v10}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 168
    if-eqz v3, :cond_8

    .line 169
    const-string/jumbo v10, "wx_event_type"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    const-string/jumbo v10, "wx_event_data"

    iget-object v11, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v10, v3}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    :goto_5
    iget-object v10, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v10}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->finish()V

    goto/16 :goto_4

    .line 173
    :cond_8
    const-string v10, "Get Launch Intent is null!"

    invoke-static {v10}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 9
    .param p1, "resp"    # Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    .prologue
    .line 182
    const-string v6, "onResp"

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 185
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v6}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Use game\'s startActivity:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v7}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 187
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    iget-object v7, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v7}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getMSDKStartActivity()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v2, "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v2, :cond_0

    .line 194
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    const/high16 v6, 0x20000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getComponent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 200
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string/jumbo v7, "wx_callback"

    const-string v8, "onResp"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string v7, "platformId"

    iget-object v8, p0, Lcom/tencent/msdk/weixin/WXEntry;->platformId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string/jumbo v7, "wx_errCode"

    iget v8, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string v7, "msdk_errCode"

    iget v8, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {p0, v8}, Lcom/tencent/msdk/weixin/WXEntry;->toMSDKFlag(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string/jumbo v7, "wx_errStr"

    iget-object v8, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string/jumbo v7, "wx_transaction"

    iget-object v8, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string/jumbo v7, "wx_openId"

    iget-object v8, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->openId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wx transaction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 209
    instance-of v6, p1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    if-eqz v6, :cond_1

    .line 210
    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    move-object v5, v0

    .line 211
    .local v5, "res":Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 212
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string/jumbo v7, "wx_code"

    iget-object v8, v5, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string v7, "country"

    iget-object v8, v5, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->country:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string v7, "lang"

    iget-object v8, v5, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->lang:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    .end local v5    # "res":Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;
    :cond_1
    const-string/jumbo v6, "wechatAddCardToWXCardPackage"

    iget-object v7, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 218
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    const-string v7, "_wxapi_add_card_to_wx_card_list"

    iget-object v8, p0, Lcom/tencent/msdk/weixin/WXEntry;->wx_card_list:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_2
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WeiXin data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/tencent/msdk/weixin/WXEntry;->isMSDKInited()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 230
    const-string v6, "msdkwebpage"

    iget-object v7, p1, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 231
    if-eqz v2, :cond_5

    .line 232
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v6, v2}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v6}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->finish()V

    .line 238
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/sdkwrapper/wx/WXSdk;->platformRespEvent(Ljava/lang/String;)V

    .line 251
    :goto_3
    return-void

    .line 189
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v6}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 190
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v6}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .restart local v2    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 220
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 234
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_5
    const-string v6, "Get Launch Intent is null!"

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 241
    :cond_6
    const-string v6, "MSDK is not init, would call back in WGPlatform.handleCallback()"

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 242
    if-eqz v2, :cond_7

    .line 243
    const-string/jumbo v6, "wx_event_type"

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    const-string/jumbo v6, "wx_event_data"

    iget-object v7, p0, Lcom/tencent/msdk/weixin/WXEntry;->transpatentData:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v6, v2}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 249
    :goto_4
    iget-object v6, p0, Lcom/tencent/msdk/weixin/WXEntry;->wxEntryActivity:Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v6}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->finish()V

    goto :goto_3

    .line 247
    :cond_7
    const-string v6, "Get Launch Intent is null!"

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_4
.end method

.method toMSDKFlag(I)I
    .locals 1
    .param p1, "wxErrCode"    # I

    .prologue
    .line 254
    const/4 v0, -0x1

    .line 255
    .local v0, "flag":I
    packed-switch p1, :pswitch_data_0

    .line 266
    :pswitch_0
    const/16 v0, 0x7d4

    .line 269
    :goto_0
    return v0

    .line 257
    :pswitch_1
    const/4 v0, 0x0

    .line 258
    goto :goto_0

    .line 260
    :pswitch_2
    const/16 v0, 0x7d2

    .line 261
    goto :goto_0

    .line 263
    :pswitch_3
    const/16 v0, 0x7d3

    .line 264
    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
