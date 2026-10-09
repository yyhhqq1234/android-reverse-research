.class public Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;
.super Ljava/lang/Object;
.source "MSDKBeaconUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;
    }
.end annotation


# static fields
.field private static firstGetQIMEI:Z

.field private static mMatId:Ljava/lang/String;

.field private static sMatIdTimeOut:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->sMatIdTimeOut:J

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->mMatId:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->firstGetQIMEI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 22
    sget-wide v0, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->sMatIdTimeOut:J

    return-wide v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->mMatId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 22
    sput-object p0, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->mMatId:Ljava/lang/String;

    return-object p0
.end method

.method public static getBeaconVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, ""

    return-object v0
.end method

.method public static initBeacon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "openId"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Beacon init, appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " openId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channelId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 90
    :try_start_0
    invoke-static {p0}, Lcom/tencent/beacon/event/UserAction;->setAppKey(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/framework/MSDKEnv;->application:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/msdk/config/ConfigManager;->needStatLog(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 92
    .local v1, "isDebug":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/beacon/event/UserAction;->setLogAble(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "isDebug":Ljava/lang/Boolean;
    :goto_0
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/framework/MSDKEnv;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/beacon/event/UserAction;->setAPPVersion(Ljava/lang/String;)V

    .line 97
    invoke-static {p2}, Lcom/tencent/beacon/event/UserAction;->setChannelID(Ljava/lang/String;)V

    .line 98
    invoke-static {p1}, Lcom/tencent/beacon/event/UserAction;->setUserID(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/framework/MSDKEnv;->application:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/beacon/event/UserAction;->initUserAction(Landroid/content/Context;)V

    .line 101
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "paramsJsonStr"    # Ljava/lang/String;
    .param p2, "isRealTime"    # Z

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->reportEvent(ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 128
    return-void
.end method

.method public static reportEvent(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p0, "isOk"    # Z
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "paramsJsonStr"    # Ljava/lang/String;
    .param p3, "isRealTime"    # Z

    .prologue
    .line 132
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    .local v4, "json":Lorg/json/JSONObject;
    if-eqz v4, :cond_4

    .line 135
    const-string v8, "eventList"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 137
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v2, "extraMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "eventList"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 139
    .local v1, "eventList":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 140
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 141
    .local v6, "subJson":Lorg/json/JSONObject;
    const-string v5, ""

    .line 142
    .local v5, "key":Ljava/lang/String;
    const-string v7, ""

    .line 143
    .local v7, "value":Ljava/lang/String;
    const-string v8, "key"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 145
    const-string v8, "key"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 148
    :cond_0
    const-string/jumbo v8, "value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 150
    const-string/jumbo v8, "value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    :cond_1
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "subJson":Lorg/json/JSONObject;
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    invoke-static {p0, p1, v2, p3}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->reportEvent(ZLjava/lang/String;Ljava/util/Map;Z)V

    .line 166
    .end local v1    # "eventList":Lorg/json/JSONArray;
    .end local v2    # "extraMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "json":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 157
    .restart local v4    # "json":Lorg/json/JSONObject;
    :cond_3
    const-string v8, "Json has not key of eventList"

    invoke-static {v8}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 163
    .end local v4    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Lorg/json/JSONException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportEvent failed!eventName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " paramsJsonStr:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 160
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v4    # "json":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    const-string v8, "Get eventList json is null;"

    invoke-static {v8}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static reportEvent(ZLjava/lang/String;Ljava/util/Map;Z)V
    .locals 12
    .param p0, "isOk"    # Z
    .param p1, "eventName"    # Ljava/lang/String;
    .param p3, "isRealTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p1

    move v1, p0

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    .line 111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v8, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 113
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 114
    .local v10, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 115
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 117
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v0, "="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v0, "&"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 123
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&isok="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static reqMatid(Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;

    .prologue
    .line 33
    const-string v1, "matId"

    invoke-static {v1}, Lcom/tencent/msdk/framework/tools/SettingDBHelper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "matId":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-interface {p0, v0}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;->onSuccess(Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-boolean v1, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->firstGetQIMEI:Z

    if-eqz v1, :cond_1

    .line 41
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->firstGetQIMEI:Z

    .line 42
    new-instance v1, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$1;

    invoke-direct {v1, p0}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$1;-><init>(Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;)V

    .line 68
    invoke-virtual {v1}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$1;->start()V

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Lcom/tencent/beacon/event/UserAction;->getQIMEI()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->mMatId:Ljava/lang/String;

    .line 71
    sget-object v1, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->mMatId:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get QIMEI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->mMatId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 73
    const-string v1, "matId"

    sget-object v2, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->mMatId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/msdk/framework/tools/SettingDBHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    sget-object v1, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->mMatId:Ljava/lang/String;

    invoke-interface {p0, v1}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    const-string v1, "Get QIMEI fail!"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 77
    invoke-interface {p0}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;->onTimeout()V

    goto :goto_0
.end method

.method public static setLoginStateToBeasonSDK(Ljava/lang/String;)V
    .locals 2
    .param p0, "openId"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Beacon set openid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 105
    invoke-static {p0}, Lcom/tencent/beacon/event/UserAction;->setUserID(Ljava/lang/String;)V

    .line 106
    return-void
.end method
