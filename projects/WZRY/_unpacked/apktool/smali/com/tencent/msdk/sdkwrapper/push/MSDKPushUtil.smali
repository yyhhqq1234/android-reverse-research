.class public Lcom/tencent/msdk/sdkwrapper/push/MSDKPushUtil;
.super Ljava/lang/Object;
.source "MSDKPushUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddLocalNotification(Ljava/lang/String;)J
    .locals 8
    .param p0, "msgData"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    invoke-static {p0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 29
    const-string v5, "msgData is null"

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 66
    :cond_0
    :goto_0
    return-wide v2

    .line 34
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 37
    new-instance v4, Lcom/tencent/msdk/api/LocalMessage;

    invoke-direct {v4}, Lcom/tencent/msdk/api/LocalMessage;-><init>()V

    .line 38
    .local v4, "message":Lcom/tencent/msdk/api/LocalMessage;
    const-string/jumbo v5, "type"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setType(I)V

    .line 39
    const-string v5, "action_type"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setAction_type(I)V

    .line 40
    const-string v5, "icon_type"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setIcon_type(I)V

    .line 41
    const-string v5, "lights"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setLights(I)V

    .line 42
    const-string v5, "ring"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setRing(I)V

    .line 43
    const-string/jumbo v5, "vibrate"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setVibrate(I)V

    .line 44
    const-string/jumbo v5, "style_id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setStyle_id(I)V

    .line 45
    const-string v5, "builderId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/tencent/msdk/api/LocalMessage;->setBuilderId(J)V

    .line 46
    const-string v5, "content"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setContent(Ljava/lang/String;)V

    .line 47
    const-string v5, "custom_content"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setCustom_content(Ljava/lang/String;)V

    .line 48
    const-string v5, "activity"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setActivity(Ljava/lang/String;)V

    .line 49
    const-string v5, "packageDownloadUrl"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setPackageDownloadUrl(Ljava/lang/String;)V

    .line 50
    const-string v5, "icon_res"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setIcon_res(Ljava/lang/String;)V

    .line 51
    const-string v5, "packageName"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setPackageName(Ljava/lang/String;)V

    .line 52
    const-string v5, "date"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setDate(Ljava/lang/String;)V

    .line 53
    const-string v5, "hour"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setHour(Ljava/lang/String;)V

    .line 54
    const-string v5, "intent"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setIntent(Ljava/lang/String;)V

    .line 55
    const-string v5, "min"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setMin(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v5, "title"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setTitle(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setUrl(Ljava/lang/String;)V

    .line 58
    const-string v5, "ring_raw"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setRing_raw(Ljava/lang/String;)V

    .line 59
    const-string v5, "small_icon"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/api/LocalMessage;->setSmall_icon(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->getInstance()Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->addLocalNotification(Lcom/tencent/msdk/api/LocalMessage;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 61
    .local v2, "jid":J
    goto/16 :goto_0

    .line 63
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "jid":J
    .end local v4    # "message":Lcom/tencent/msdk/api/LocalMessage;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add AddLocalNotification push data failed!msgData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static ClearLocalNotifications()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->getInstance()Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->clearLocalNotifications()V

    .line 71
    return-void
.end method

.method public static DeletePushTag(Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->getInstance()Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->deleteTag(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static InitPush(Landroid/app/Activity;Lcom/tencent/msdk/api/MsdkBaseInfo;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "baseInfo"    # Lcom/tencent/msdk/api/MsdkBaseInfo;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/tencent/msdk/config/ConfigManager;->getApiDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "originDomain":Ljava/lang/String;
    const/4 v0, 0x0

    .line 89
    .local v0, "isTestEnv":Z
    const-string/jumbo v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "dev"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x1

    .line 92
    :cond_1
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->getInstance()Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    invoke-virtual {v2, p0, v3, v4, v0}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method public static RegisterAppPush()V
    .locals 1

    .prologue
    .line 103
    const-string v0, "RegisterAppPush"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->getInstance()Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->registerAppPush()V

    .line 105
    return-void
.end method

.method public static RegisterAppUserPush(IILjava/lang/String;)V
    .locals 2
    .param p0, "flag"    # I
    .param p1, "platform"    # I
    .param p2, "openid"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->getInstance()Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->registerAppUserPush(IILjava/lang/String;Z)V

    .line 83
    return-void
.end method

.method public static SetPushTag(Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->getInstance()Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->setTag(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static UninitPush()V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->getInstance()Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->disableInitXG()V

    .line 99
    return-void
.end method

.method public static getXgVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    const v0, 0x40466666    # 3.1f

    .line 24
    .local v0, "xgVersion":F
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
