.class Lcom/oppo/oms/sdk/OmsServiceHelper;
.super Ljava/lang/Object;
.source "OmsServiceHelper.java"


# static fields
.field private static final ACTION_OMS_SERVICE:Ljava/lang/String; = "action.com.oppo.oms.OMS_SERVICE"

.field private static final ERROR_NOT_EXIST:Ljava/lang/String; = "4001"

.field private static final PKG_NAME_OMS_SERVICE:Ljava/lang/String; = "com.oppo.oms"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mOmsService:Lcom/oppo/oms/IOmsService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mLock:Ljava/lang/Object;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/oppo/oms/sdk/OmsServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/oppo/oms/sdk/OmsServiceHelper$1;-><init>(Lcom/oppo/oms/sdk/OmsServiceHelper;)V

    iput-object v0, p0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/oppo/oms/sdk/OmsServiceHelper;Lcom/oppo/oms/IOmsService;)Lcom/oppo/oms/IOmsService;
    .locals 0
    .param p0, "x0"    # Lcom/oppo/oms/sdk/OmsServiceHelper;
    .param p1, "x1"    # Lcom/oppo/oms/IOmsService;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mOmsService:Lcom/oppo/oms/IOmsService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oppo/oms/sdk/OmsServiceHelper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/oms/sdk/OmsServiceHelper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private bindService()V
    .locals 4

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action.com.oppo.oms.OMS_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v1, "com.oppo.oms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 129
    return-void
.end method


# virtual methods
.method public requestFeature(Lcom/oppo/oms/sdk/entity/FeatureRequest;)Lcom/oppo/oms/sdk/entity/Result;
    .locals 18
    .param p1, "request"    # Lcom/oppo/oms/sdk/entity/FeatureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/oms/sdk/entity/FeatureRequest;",
            ")",
            "Lcom/oppo/oms/sdk/entity/Result",
            "<",
            "Lcom/oppo/oms/sdk/entity/ErrorEntity;",
            "Lcom/oppo/oms/sdk/entity/FeatureEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v9, Lcom/oppo/oms/sdk/entity/Result;

    invoke-direct {v9}, Lcom/oppo/oms/sdk/entity/Result;-><init>()V

    .line 59
    .local v9, "result":Lcom/oppo/oms/sdk/entity/Result;, "Lcom/oppo/oms/sdk/entity/Result<Lcom/oppo/oms/sdk/entity/ErrorEntity;Lcom/oppo/oms/sdk/entity/FeatureEntity;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mContext:Landroid/content/Context;

    const-string v14, "com.oppo.oms"

    invoke-static {v13, v14}, Lcom/oppo/oms/sdk/Util/Utils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 60
    new-instance v3, Lcom/oppo/oms/sdk/entity/ErrorEntity;

    invoke-direct {v3}, Lcom/oppo/oms/sdk/entity/ErrorEntity;-><init>()V

    .line 61
    .local v3, "errorEntity":Lcom/oppo/oms/sdk/entity/ErrorEntity;
    const-string v13, "4001"

    iput-object v13, v3, Lcom/oppo/oms/sdk/entity/ErrorEntity;->code:Ljava/lang/String;

    .line 62
    const-string v13, "OmsService does not exist"

    iput-object v13, v3, Lcom/oppo/oms/sdk/entity/ErrorEntity;->msg:Ljava/lang/String;

    .line 63
    invoke-virtual {v9, v3}, Lcom/oppo/oms/sdk/entity/Result;->setError(Ljava/lang/Object;)V

    .line 121
    :goto_0
    return-object v9

    .line 66
    .end local v3    # "errorEntity":Lcom/oppo/oms/sdk/entity/ErrorEntity;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mOmsService:Lcom/oppo/oms/IOmsService;

    if-nez v13, :cond_1

    .line 67
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 69
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/oppo/oms/sdk/OmsServiceHelper;->bindService()V

    .line 70
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mLock:Ljava/lang/Object;

    const-wide/16 v16, 0xbb8

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_1
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :cond_1
    new-instance v3, Lcom/oppo/oms/sdk/entity/ErrorEntity;

    invoke-direct {v3}, Lcom/oppo/oms/sdk/entity/ErrorEntity;-><init>()V

    .line 77
    .restart local v3    # "errorEntity":Lcom/oppo/oms/sdk/entity/ErrorEntity;
    new-instance v5, Lcom/oppo/oms/sdk/entity/FeatureEntity;

    invoke-direct {v5}, Lcom/oppo/oms/sdk/entity/FeatureEntity;-><init>()V

    .line 78
    .local v5, "featureEntity":Lcom/oppo/oms/sdk/entity/FeatureEntity;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mOmsService:Lcom/oppo/oms/IOmsService;

    if-nez v13, :cond_2

    .line 79
    const-string v13, "-1"

    iput-object v13, v3, Lcom/oppo/oms/sdk/entity/ErrorEntity;->code:Ljava/lang/String;

    .line 80
    const-string v13, "Service is busy,please try again later"

    iput-object v13, v3, Lcom/oppo/oms/sdk/entity/ErrorEntity;->msg:Ljava/lang/String;

    .line 81
    invoke-virtual {v9, v3}, Lcom/oppo/oms/sdk/entity/Result;->setError(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    .end local v3    # "errorEntity":Lcom/oppo/oms/sdk/entity/ErrorEntity;
    .end local v5    # "featureEntity":Lcom/oppo/oms/sdk/entity/FeatureEntity;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 74
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .line 83
    .restart local v3    # "errorEntity":Lcom/oppo/oms/sdk/entity/ErrorEntity;
    .restart local v5    # "featureEntity":Lcom/oppo/oms/sdk/entity/FeatureEntity;
    :cond_2
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .local v8, "jsonObject":Lorg/json/JSONObject;
    const-class v13, Lcom/oppo/oms/sdk/entity/FeatureRequest;

    invoke-virtual {v13}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 85
    .local v7, "fields":[Ljava/lang/reflect/Field;
    array-length v14, v7

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_3

    aget-object v6, v7, v13

    .line 87
    .local v6, "field":Ljava/lang/reflect/Field;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 85
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 88
    :catch_1
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 93
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "field":Ljava/lang/reflect/Field;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mOmsService:Lcom/oppo/oms/IOmsService;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/oppo/oms/IOmsService;->requestCapacityAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 94
    .local v11, "resultParam":Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .local v10, "resultJson":Lorg/json/JSONObject;
    const-string/jumbo v13, "success"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v9, v13}, Lcom/oppo/oms/sdk/entity/Result;->setSuccess(Z)V

    .line 96
    invoke-virtual {v9}, Lcom/oppo/oms/sdk/entity/Result;->isSuccess()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 97
    const-string v13, "data"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 98
    .local v12, "successInfo":Lorg/json/JSONObject;
    const-string v13, "appPackage"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/oppo/oms/sdk/entity/FeatureEntity;->appPackage:Ljava/lang/String;

    .line 99
    const-string v13, "certVersion"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/oppo/oms/sdk/entity/FeatureEntity;->certVersion:Ljava/lang/String;

    .line 100
    const-string v13, "authorityStatusWord"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/oppo/oms/sdk/entity/FeatureEntity;->statusWord:Ljava/lang/String;

    .line 101
    invoke-virtual {v9, v5}, Lcom/oppo/oms/sdk/entity/Result;->setData(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    .end local v12    # "successInfo":Lorg/json/JSONObject;
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v13, v14}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 116
    :catch_2
    move-exception v2

    .line 117
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 103
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_6
    const-string v13, "error"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 104
    .local v4, "errorInfo":Lorg/json/JSONObject;
    const-string v13, "code"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/oppo/oms/sdk/entity/ErrorEntity;->code:Ljava/lang/String;

    .line 105
    const-string v13, "msg"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/oppo/oms/sdk/entity/ErrorEntity;->msg:Ljava/lang/String;

    .line 106
    invoke-virtual {v9, v3}, Lcom/oppo/oms/sdk/entity/Result;->setError(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 108
    .end local v4    # "errorInfo":Lorg/json/JSONObject;
    .end local v10    # "resultJson":Lorg/json/JSONObject;
    .end local v11    # "resultParam":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 109
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const-string v13, "-1"

    iput-object v13, v3, Lcom/oppo/oms/sdk/entity/ErrorEntity;->code:Ljava/lang/String;

    .line 111
    const-string v13, "Service is busy,please try again later"

    iput-object v13, v3, Lcom/oppo/oms/sdk/entity/ErrorEntity;->msg:Ljava/lang/String;

    .line 112
    invoke-virtual {v9, v3}, Lcom/oppo/oms/sdk/entity/Result;->setError(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 115
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v13, v14}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 116
    :catch_4
    move-exception v2

    .line 117
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 114
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v13

    .line 115
    :try_start_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/oms/sdk/OmsServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v14, v15}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 118
    :goto_5
    throw v13

    .line 116
    :catch_5
    move-exception v2

    .line 117
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method
