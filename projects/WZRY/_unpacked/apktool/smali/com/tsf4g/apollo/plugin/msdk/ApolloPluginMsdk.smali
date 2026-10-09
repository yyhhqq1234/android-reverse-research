.class public Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;
.super Lcom/tsf4g/apollo/ApolloPlugin;
.source "ApolloPluginMsdk.java"


# static fields
.field public static Instance:Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "MSDKSystem"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    const-string v0, "MsdkAdapter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;

    invoke-direct {v0}, Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;-><init>()V

    sput-object v0, Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;->Instance:Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tsf4g/apollo/ApolloPlugin;-><init>()V

    return-void
.end method

.method private IsEmtpy(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getPlatformId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const-string v0, ""

    .line 77
    .local v0, "platformId":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 78
    const-string v2, ""

    move-object v1, v0

    .line 96
    .end local v0    # "platformId":Ljava/lang/String;
    .local v1, "platformId":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 81
    .end local v1    # "platformId":Ljava/lang/String;
    .restart local v0    # "platformId":Ljava/lang/String;
    :cond_0
    const-string v2, "platformId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-direct {p0, v0}, Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;->IsEmtpy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const-string v2, "platform"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-direct {p0, v0}, Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;->IsEmtpy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const-string v2, "current_uin"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-direct {p0, v0}, Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;->IsEmtpy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    const-string/jumbo v2, "wx_callback"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-direct {p0, v0}, Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;->IsEmtpy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const-string v2, "KEY_REPORT_CHID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_1
    const-string v2, "MsdkAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPlatformId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .end local v0    # "platformId":Ljava/lang/String;
    .restart local v1    # "platformId":Ljava/lang/String;
    move-object v2, v0

    .line 96
    goto :goto_0
.end method

.method private native hasBeenWokenup()V
.end method

.method private native nativeSetPlatformInfo(Ljava/lang/Object;)V
.end method


# virtual methods
.method public HandleCallback(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0, v0}, Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;->getPlatformId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "platformId":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;->IsEmtpy(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;->hasBeenWokenup()V

    .line 112
    .end local v1    # "platformId":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/tencent/msdk/api/WGPlatform;->handleCallback(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method public OnActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 153
    const-string v0, "MsdkAdapter"

    const-string v1, "OnActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {p1, p2, p3}, Lcom/tencent/msdk/api/WGPlatform;->onActivityResult(IILandroid/content/Intent;)V

    .line 155
    return-void
.end method

.method public OnDestroy(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 129
    const-string v0, "MsdkAdapter"

    const-string v1, "Apollo onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {p1}, Lcom/tencent/msdk/api/WGPlatform;->onDestory(Landroid/app/Activity;)V

    .line 131
    return-void
.end method

.method public OnInitialize(Landroid/app/Activity;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "in"    # Ljava/lang/Object;

    .prologue
    .line 30
    const-string v3, "ApolloPluginMsdk"

    const-string v4, "OnInitialize"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {p1}, Lcom/tencent/msdk/api/WGPlatform;->IsDifferentActivity(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    const/4 v3, 0x0

    .line 67
    :goto_0
    return v3

    :cond_0
    move-object v2, p2

    .line 35
    check-cast v2, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;

    .line 37
    .local v2, "info":Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;
    iget-boolean v3, v2, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->useMSDK:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->qqAppId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 38
    iget-object v3, v2, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->qqAppKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->wxAppId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 39
    iget-object v3, v2, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->msdkKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->offerId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 40
    iget-object v3, v2, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->qqAppId:Ljava/lang/String;

    const-string v4, "0"

    if-eq v3, v4, :cond_1

    iget-object v3, v2, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->qqAppKey:Ljava/lang/String;

    const-string v4, "0"

    if-eq v3, v4, :cond_1

    .line 41
    iget-object v3, v2, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->wxAppId:Ljava/lang/String;

    const-string v4, "0"

    if-eq v3, v4, :cond_1

    iget-object v3, v2, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->msdkKey:Ljava/lang/String;

    const-string v4, "0"

    if-eq v3, v4, :cond_1

    .line 42
    iget-object v3, v2, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->offerId:Ljava/lang/String;

    const-string v4, "0"

    if-eq v3, v4, :cond_1

    .line 43
    const-string v3, "Apollo.Initialize"

    const-string v4, "MSDK Attached to Apollo init"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Lcom/tencent/msdk/api/MsdkBaseInfo;

    invoke-direct {v0}, Lcom/tencent/msdk/api/MsdkBaseInfo;-><init>()V

    .line 45
    .local v0, "baseinfo":Lcom/tencent/msdk/api/MsdkBaseInfo;
    iget-object v3, v2, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->qqAppId:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    .line 47
    iget-object v3, v2, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->wxAppId:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    .line 48
    iget-object v3, v2, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->msdkKey:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->msdkKey:Ljava/lang/String;

    .line 49
    iget-object v3, v2, Lcom/tsf4g/apollo/plugin/msdk/ApolloPlatformInfo;->offerId:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->offerId:Ljava/lang/String;

    .line 50
    invoke-static {p1, v0}, Lcom/tencent/msdk/api/WGPlatform;->Initialized(Landroid/app/Activity;Lcom/tencent/msdk/api/MsdkBaseInfo;)V

    .line 51
    const v3, 0xffffff

    invoke-static {v3}, Lcom/tencent/msdk/api/WGPlatform;->WGSetPermission(I)V

    .line 52
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/api/WGPlatform;->handleCallback(Landroid/content/Intent;)V

    .line 57
    :try_start_0
    invoke-direct {p0, v2}, Lcom/tsf4g/apollo/plugin/msdk/ApolloPluginMsdk;->nativeSetPlatformInfo(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "baseinfo":Lcom/tencent/msdk/api/MsdkBaseInfo;
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 59
    .restart local v0    # "baseinfo":Lcom/tencent/msdk/api/MsdkBaseInfo;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 64
    .end local v0    # "baseinfo":Lcom/tencent/msdk/api/MsdkBaseInfo;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "Apollo.Initialize"

    const-string v4, "MSDK Attached to Apollo not init"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public OnPause()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "MsdkAdapter"

    const-string v1, "Apollo onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->onPause()V

    .line 119
    return-void
.end method

.method public OnRestart(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 135
    const-string v0, "MsdkAdapter"

    const-string v1, "Apollo OnRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->onRestart()V

    .line 137
    return-void
.end method

.method public OnResume()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "MsdkAdapter"

    const-string v1, "Apollo onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->onResume()V

    .line 125
    return-void
.end method

.method public OnStart(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 141
    const-string v0, "MsdkAdapter"

    const-string v1, "Apollo OnStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public OnStop(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 147
    const-string v0, "MsdkAdapter"

    const-string v1, "Apollo OnRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->onStop()V

    .line 149
    return-void
.end method
