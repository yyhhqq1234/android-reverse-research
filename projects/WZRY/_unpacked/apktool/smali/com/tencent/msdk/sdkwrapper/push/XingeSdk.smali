.class public Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;
.super Ljava/lang/Object;
.source "XingeSdk.java"


# static fields
.field private static final DEFAULT_XG_PUSH_PORT:I = 0x1f90

.field private static final DEFAULT_XG_PUSH_SERVER:Ljava/lang/String; = "183.232.93.168"

.field private static volatile instance:Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mIsInitXG:Z

.field private mIsTestEnv:Z

.field private mQqAppId:Ljava/lang/String;

.field private mWxAppId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->instance:Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mIsInitXG:Z

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mWxAppId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindXGUser(ILjava/lang/String;)V
    .locals 2
    .param p1, "platform"    # I
    .param p2, "openid"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register user bind for xgpush, openid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->initXG()V

    .line 152
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mAppContext:Landroid/content/Context;

    new-instance v1, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk$2;-><init>(Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;I)V

    invoke-static {v0, p2, v1}, Lcom/tencent/android/tpush/XGPush4Msdk;->registerPush(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 179
    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->instance:Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->instance:Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    invoke-direct {v0}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;-><init>()V

    sput-object v0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->instance:Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->instance:Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initXG()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 67
    iget-boolean v9, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mIsInitXG:Z

    if-eqz v9, :cond_0

    .line 68
    const-string v9, "initXG have finished, no need again."

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v9, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mAppContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/16 v11, 0x1f90

    invoke-static {v9, v10, v11}, Lcom/tencent/android/tpush/XGPush4Msdk;->setDebugServerInfo(Landroid/content/Context;Ljava/lang/String;I)V

    .line 72
    iget-boolean v9, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mIsTestEnv:Z

    if-eqz v9, :cond_1

    .line 73
    iget-object v9, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mAppContext:Landroid/content/Context;

    invoke-static {v9, v12}, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug(Landroid/content/Context;Z)V

    .line 77
    :cond_1
    iget-object v9, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mAppContext:Landroid/content/Context;

    sget-object v10, Lcom/tencent/msdk/config/ConfigManager;->configFileName:Ljava/lang/String;

    const-string v11, "XG_PUSH_SERVER"

    invoke-static {v9, v10, v11}, Lcom/tencent/msdk/config/ConfigManager;->readValueByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "xgServerPort":Ljava/lang/String;
    invoke-static {v7}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 80
    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "serverPort":[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v9, v4

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 82
    const/4 v9, 0x0

    aget-object v8, v4, v9

    .line 83
    .local v8, "xgServerStr":Ljava/lang/String;
    aget-object v6, v4, v12

    .line 84
    .local v6, "xgPortStr":Ljava/lang/String;
    const/16 v5, 0x1f90

    .line 85
    .local v5, "xgPort":I
    invoke-static {v6}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 87
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 93
    :cond_2
    :goto_1
    invoke-static {v8}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 94
    const-string v8, "183.232.93.168"

    .line 97
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "xgpush server:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", port:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 98
    iget-object v9, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mAppContext:Landroid/content/Context;

    invoke-static {v9, v8, v5}, Lcom/tencent/android/tpush/XGPush4Msdk;->setDebugServerInfo(Landroid/content/Context;Ljava/lang/String;I)V

    .line 105
    .end local v4    # "serverPort":[Ljava/lang/String;
    .end local v5    # "xgPort":I
    .end local v6    # "xgPortStr":Ljava/lang/String;
    .end local v8    # "xgServerStr":Ljava/lang/String;
    :goto_2
    const-wide/16 v2, 0x0

    .line 107
    .local v2, "qqAppId":J
    :try_start_1
    iget-object v9, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mQqAppId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v2

    .line 111
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "register init xgId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 114
    :try_start_2
    iget-object v9, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mAppContext:Landroid/content/Context;

    invoke-static {v9, v2, v3}, Lcom/tencent/android/tpush/XGPush4Msdk;->setQQAppId(Landroid/content/Context;J)V

    .line 115
    iget-object v9, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mAppContext:Landroid/content/Context;

    const-string v10, ""

    invoke-static {v9, v10}, Lcom/tencent/android/tpush/XGPush4Msdk;->setQQAppKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mIsInitXG:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 88
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "qqAppId":J
    .restart local v4    # "serverPort":[Ljava/lang/String;
    .restart local v5    # "xgPort":I
    .restart local v6    # "xgPortStr":Ljava/lang/String;
    .restart local v8    # "xgServerStr":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "xgPort can\'t revert to Integer, it\'s value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "xgPort":I
    .end local v6    # "xgPortStr":Ljava/lang/String;
    .end local v8    # "xgServerStr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, "xgpush are using xianwang environment"

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_2

    .line 103
    .end local v4    # "serverPort":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, "xgpush are using xianwang environment"

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_2

    .line 108
    .restart local v2    # "qqAppId":J
    :catch_2
    move-exception v0

    .line 109
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "qqAppId can\'t revert to Long, it\'s value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private jsonToMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 303
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 304
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 305
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 306
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 307
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 308
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 317
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v4, 0x0

    :cond_1
    return-object v4
.end method

.method private registerXGDeviceWhenInit()V
    .locals 3

    .prologue
    .line 131
    const-string v0, "register device for xgpush"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->initXG()V

    .line 134
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk$1;

    invoke-direct {v2, p0}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk$1;-><init>(Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/android/tpush/XGPush4Msdk;->registerPush(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 147
    return-void
.end method


# virtual methods
.method public addLocalNotification(Lcom/tencent/msdk/api/LocalMessage;)J
    .locals 9
    .param p1, "localMsg"    # Lcom/tencent/msdk/api/LocalMessage;

    .prologue
    const-wide/16 v0, 0x0

    const/4 v8, -0x1

    .line 209
    const-string v4, "addLocalNotification"

    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 210
    iget-boolean v4, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mIsInitXG:Z

    if-nez v4, :cond_1

    .line 211
    const-string v4, "push closed"

    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 297
    :cond_0
    :goto_0
    return-wide v0

    .line 214
    :cond_1
    if-eqz p1, :cond_0

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addLocalNotification:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 216
    new-instance v3, Lcom/tencent/android/tpush/XGLocalMessage;

    invoke-direct {v3}, Lcom/tencent/android/tpush/XGLocalMessage;-><init>()V

    .line 217
    .local v3, "msg":Lcom/tencent/android/tpush/XGLocalMessage;
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getType()I

    move-result v4

    if-eq v4, v8, :cond_2

    .line 218
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setType(I)V

    .line 220
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 221
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setTitle(Ljava/lang/String;)V

    .line 223
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 224
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setContent(Ljava/lang/String;)V

    .line 227
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 228
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setDate(Ljava/lang/String;)V

    .line 230
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getHour()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 231
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getHour()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setHour(Ljava/lang/String;)V

    .line 233
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getMin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 234
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getMin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setMin(Ljava/lang/String;)V

    .line 236
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getIntent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 237
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getIntent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setIntent(Ljava/lang/String;)V

    .line 239
    :cond_8
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 240
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setUrl(Ljava/lang/String;)V

    .line 242
    :cond_9
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getActivity()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 243
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getActivity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setActivity(Ljava/lang/String;)V

    .line 246
    :cond_a
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getAction_type()I

    move-result v4

    if-eq v4, v8, :cond_b

    .line 247
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getAction_type()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setAction_type(I)V

    .line 249
    :cond_b
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getBuilderId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_c

    .line 250
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getBuilderId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tencent/android/tpush/XGLocalMessage;->setBuilderId(J)V

    .line 253
    :cond_c
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getCustom_content()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 254
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getCustom_content()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->jsonToMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 255
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_d

    .line 256
    invoke-virtual {v3, v2}, Lcom/tencent/android/tpush/XGLocalMessage;->setCustomContent(Ljava/util/HashMap;)V

    .line 260
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getIcon_res()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 261
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getIcon_res()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setIcon_res(Ljava/lang/String;)V

    .line 263
    :cond_e
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getIcon_type()I

    move-result v4

    if-eq v4, v8, :cond_f

    .line 264
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getIcon_type()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setIcon_type(I)V

    .line 266
    :cond_f
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getLights()I

    move-result v4

    if-eq v4, v8, :cond_10

    .line 267
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getLights()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setLights(I)V

    .line 270
    :cond_10
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getPackageDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 271
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getPackageDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setPackageDownloadUrl(Ljava/lang/String;)V

    .line 273
    :cond_11
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 274
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setPackageName(Ljava/lang/String;)V

    .line 276
    :cond_12
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getRing()I

    move-result v4

    if-eq v4, v8, :cond_13

    .line 277
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getRing()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setRing(I)V

    .line 281
    :cond_13
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getRing_raw()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 282
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getRing_raw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setRing_raw(Ljava/lang/String;)V

    .line 284
    :cond_14
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getSmall_icon()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 285
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getSmall_icon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setSmall_icon(Ljava/lang/String;)V

    .line 287
    :cond_15
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getStyle_id()I

    move-result v4

    if-eq v4, v8, :cond_16

    .line 288
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getStyle_id()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setStyle_id(I)V

    .line 290
    :cond_16
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getVibrate()I

    move-result v4

    if-eq v4, v8, :cond_17

    .line 291
    invoke-virtual {p1}, Lcom/tencent/msdk/api/LocalMessage;->getVibrate()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/XGLocalMessage;->setVibrate(I)V

    .line 293
    :cond_17
    iget-object v4, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mAppContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/tencent/android/tpush/XGPush4Msdk;->addLocalNotification(Landroid/content/Context;Lcom/tencent/android/tpush/XGLocalMessage;)J

    move-result-wide v0

    .line 294
    .local v0, "jid":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addLocalNotification sucssee:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public cancelXGPush()V
    .locals 2

    .prologue
    .line 194
    const-string v0, "cancel xg push"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/XGPush4Msdk;->unregisterPush(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 198
    :cond_0
    return-void
.end method

.method public clearLocalNotifications()V
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mIsInitXG:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPushManager;->clearLocalNotifications(Landroid/content/Context;)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    const-string v0, "push closed"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "push deleteTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 331
    iget-boolean v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mIsInitXG:Z

    if-nez v0, :cond_0

    .line 332
    const-string v0, "push closed"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tencent/android/tpush/XGPush4Msdk;->deleteTag(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disableInitXG()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mIsInitXG:Z

    .line 61
    return-void
.end method

.method public getPushVersion()F
    .locals 1

    .prologue
    .line 122
    const v0, 0x40466666    # 3.1f

    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "qqAppId"    # Ljava/lang/String;
    .param p3, "wxAppId"    # Ljava/lang/String;
    .param p4, "isTestEnv"    # Z

    .prologue
    .line 53
    iput-boolean p4, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mIsTestEnv:Z

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mAppContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mQqAppId:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mWxAppId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public registerAppPush()V
    .locals 1

    .prologue
    .line 126
    const-string v0, "registerAppPush"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->registerXGDeviceWhenInit()V

    .line 128
    return-void
.end method

.method public registerAppUserPush(IILjava/lang/String;Z)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "platform"    # I
    .param p3, "openid"    # Ljava/lang/String;
    .param p4, "isTimerRefresh"    # Z

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAppUserPush openid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTimerRefresh:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 187
    if-eqz p1, :cond_0

    const/16 v0, 0x7d5

    if-ne p1, v0, :cond_1

    if-nez p4, :cond_1

    .line 188
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->bindXGUser(ILjava/lang/String;)V

    .line 190
    :cond_1
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "push setTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 322
    iget-boolean v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mIsInitXG:Z

    if-nez v0, :cond_0

    .line 323
    const-string v0, "push closed"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tencent/android/tpush/XGPush4Msdk;->setTag(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
