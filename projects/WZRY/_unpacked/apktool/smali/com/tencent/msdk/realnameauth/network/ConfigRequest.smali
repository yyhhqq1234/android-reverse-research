.class public Lcom/tencent/msdk/realnameauth/network/ConfigRequest;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/realnameauth/network/ConfigRequest$ConfigCallback;
    }
.end annotation


# static fields
.field private static final MSG_CALLBACK:I = 0x1

.field private static final PATH_ACTION:Ljava/lang/String; = "/comm/ui_ctl/"


# instance fields
.field private configCallback:Lcom/tencent/msdk/realnameauth/network/ConfigRequest$ConfigCallback;

.field private mainHandler:Landroid/os/Handler;

.field private networkHelper:Lcom/tencent/msdk/realnameauth/network/NetworkInterface;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "platform"    # I
    .param p2, "openid"    # Ljava/lang/String;
    .param p3, "extInfo"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v7, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->networkHelper:Lcom/tencent/msdk/realnameauth/network/NetworkInterface;

    .line 28
    iput-object v7, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->configCallback:Lcom/tencent/msdk/realnameauth/network/ConfigRequest$ConfigCallback;

    .line 135
    new-instance v7, Lcom/tencent/msdk/realnameauth/network/ConfigRequest$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/tencent/msdk/realnameauth/network/ConfigRequest$1;-><init>(Lcom/tencent/msdk/realnameauth/network/ConfigRequest;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->mainHandler:Landroid/os/Handler;

    .line 35
    const-string v0, ""

    .line 36
    .local v0, "appid":Ljava/lang/String;
    sget-object v7, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual {v7}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v7

    if-ne p1, v7, :cond_3

    .line 37
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v0, v7, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    .line 41
    :cond_0
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .local v1, "body":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .local v2, "deviceInfo":Lorg/json/JSONObject;
    new-instance v3, Lcom/tencent/msdk/stat/DeviceInfo;

    invoke-static {}, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->getInstance()Lcom/tencent/msdk/realnameauth/RealNameAuthManager;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/realnameauth/RealNameAuthManager;->activity:Landroid/app/Activity;

    invoke-direct {v3, v7}, Lcom/tencent/msdk/stat/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 46
    .local v3, "deviceUtil":Lcom/tencent/msdk/stat/DeviceInfo;
    const-string/jumbo v7, "version"

    const-string v8, "1.0"

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v7, "appId"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v7, "openId"

    invoke-virtual {v2, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v7, "os"

    const-string v8, "android"

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v7, "plat"

    invoke-virtual {v2, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    const-string v7, "gameVersion"

    invoke-static {}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->getAppVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v7, "msdkVersion"

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/msdk/framework/MSDKEnv;->getMSDKVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v7, "envType"

    const-string v8, "1"

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v7, "loginPlatform"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v7, "launchPlatform"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v7, "channelId"

    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/msdk/pf/WGPfManager;->getChannelId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v7, "regChannelId"

    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/msdk/pf/WGPfManager;->getRegChannelId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v7, "networkType"

    invoke-virtual {v3}, Lcom/tencent/msdk/stat/DeviceInfo;->getApn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v7, "osVersion"

    const-string v8, "android"

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v7, "deviceModel"

    invoke-virtual {v3}, Lcom/tencent/msdk/stat/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v7, "deviceCPU"

    invoke-virtual {v3}, Lcom/tencent/msdk/stat/DeviceInfo;->getCpuInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v7, "deviceRAM"

    invoke-virtual {v3}, Lcom/tencent/msdk/stat/DeviceInfo;->getRAMInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v7, "deviceROM"

    invoke-virtual {v3}, Lcom/tencent/msdk/stat/DeviceInfo;->getROMInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v7, "deviceScreen"

    invoke-virtual {v3}, Lcom/tencent/msdk/stat/DeviceInfo;->getResolution()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v7, "deviceManufacturer"

    invoke-virtual {v3}, Lcom/tencent/msdk/stat/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v7, "qimei"

    invoke-virtual {v3}, Lcom/tencent/msdk/stat/DeviceInfo;->getQImei()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v7, "matid"

    invoke-virtual {v3}, Lcom/tencent/msdk/stat/DeviceInfo;->getQImei()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v7, "mid"

    invoke-virtual {v3}, Lcom/tencent/msdk/stat/DeviceInfo;->getMid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v7, "clientInfo"

    invoke-virtual {v1, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 71
    const-string v7, "extend1"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v2    # "deviceInfo":Lorg/json/JSONObject;
    .end local v3    # "deviceUtil":Lcom/tencent/msdk/stat/DeviceInfo;
    :cond_1
    :goto_1
    :try_start_1
    const-string v7, "com.tencent.msdk.sdkwrapper.realname.NetworkV3Impl"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 79
    .local v5, "networkV3Impl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 80
    .local v6, "object":Ljava/lang/Object;
    if-eqz v6, :cond_2

    instance-of v7, v6, Lcom/tencent/msdk/realnameauth/network/NetworkInterface;

    if-eqz v7, :cond_2

    .line 81
    check-cast v6, Lcom/tencent/msdk/realnameauth/network/NetworkInterface;

    .end local v6    # "object":Ljava/lang/Object;
    iput-object v6, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->networkHelper:Lcom/tencent/msdk/realnameauth/network/NetworkInterface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    .end local v5    # "networkV3Impl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->networkHelper:Lcom/tencent/msdk/realnameauth/network/NetworkInterface;

    if-eqz v7, :cond_4

    .line 87
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->networkHelper:Lcom/tencent/msdk/realnameauth/network/NetworkInterface;

    const-string v8, "/comm/ui_ctl/"

    invoke-interface {v7, v8, p1, p2}, Lcom/tencent/msdk/realnameauth/network/NetworkInterface;->setUrl(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    iget-object v7, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->networkHelper:Lcom/tencent/msdk/realnameauth/network/NetworkInterface;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/tencent/msdk/realnameauth/network/NetworkInterface;->setBody(Ljava/lang/String;)V

    .line 92
    :goto_3
    return-void

    .line 38
    .end local v1    # "body":Lorg/json/JSONObject;
    :cond_3
    sget-object v7, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual {v7}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v7

    if-ne p1, v7, :cond_0

    .line 39
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v0, v7, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    goto/16 :goto_0

    .line 73
    .restart local v1    # "body":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 74
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 83
    .end local v4    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v4

    .line 84
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 90
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v7, "Get NetworkV3Impl fail"

    invoke-static {v7}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logError(Ljava/lang/String;)V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/tencent/msdk/realnameauth/network/ConfigRequest;)Lcom/tencent/msdk/realnameauth/network/ConfigRequest$ConfigCallback;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/network/ConfigRequest;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->configCallback:Lcom/tencent/msdk/realnameauth/network/ConfigRequest$ConfigCallback;

    return-object v0
.end method

.method private sendCallback(ILcom/tencent/msdk/realnameauth/model/CloudParameters;)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "params"    # Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->mainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 128
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 129
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 130
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/tencent/msdk/realnameauth/network/ConfigRequest$ConfigCallback;)V
    .locals 2
    .param p1, "configCallback"    # Lcom/tencent/msdk/realnameauth/network/ConfigRequest$ConfigCallback;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->configCallback:Lcom/tencent/msdk/realnameauth/network/ConfigRequest$ConfigCallback;

    .line 96
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->networkHelper:Lcom/tencent/msdk/realnameauth/network/NetworkInterface;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->networkHelper:Lcom/tencent/msdk/realnameauth/network/NetworkInterface;

    invoke-interface {v0, p0}, Lcom/tencent/msdk/realnameauth/network/NetworkInterface;->send(Lcom/tencent/msdk/realnameauth/network/NetworkLisenter;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->sendCallback(ILcom/tencent/msdk/realnameauth/model/CloudParameters;)V

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/String;I)V
    .locals 2
    .param p1, "errorContent"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 122
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->sendCallback(ILcom/tencent/msdk/realnameauth/model/CloudParameters;)V

    .line 123
    return-void
.end method

.method public onSuccess(Ljava/lang/String;I)V
    .locals 4
    .param p1, "netContent"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 105
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->sendCallback(ILcom/tencent/msdk/realnameauth/model/CloudParameters;)V

    .line 116
    :goto_0
    return-void

    .line 109
    :cond_1
    new-instance v0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;

    invoke-direct {v0}, Lcom/tencent/msdk/realnameauth/model/CloudParameters;-><init>()V

    .line 110
    .local v0, "parameters":Lcom/tencent/msdk/realnameauth/model/CloudParameters;
    invoke-virtual {v0, p1}, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->parseJson(Ljava/lang/String;)V

    .line 111
    iget v1, v0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->ret:I

    if-eqz v1, :cond_2

    .line 112
    invoke-direct {p0, v2, v3}, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->sendCallback(ILcom/tencent/msdk/realnameauth/model/CloudParameters;)V

    goto :goto_0

    .line 114
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/tencent/msdk/realnameauth/network/ConfigRequest;->sendCallback(ILcom/tencent/msdk/realnameauth/model/CloudParameters;)V

    goto :goto_0
.end method
