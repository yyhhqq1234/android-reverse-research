.class public Lcom/netease/pharos/qos/QosStatus;
.super Ljava/lang/Object;
.source "QosStatus.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QosStatus"

.field private static sQosStatus:Lcom/netease/pharos/qos/QosStatus;


# instance fields
.field private mResult:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/qos/QosStatus;->sQosStatus:Lcom/netease/pharos/qos/QosStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/qos/QosStatus;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/netease/pharos/qos/QosStatus;->sQosStatus:Lcom/netease/pharos/qos/QosStatus;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/netease/pharos/qos/QosStatus;

    invoke-direct {v0}, Lcom/netease/pharos/qos/QosStatus;-><init>()V

    sput-object v0, Lcom/netease/pharos/qos/QosStatus;->sQosStatus:Lcom/netease/pharos/qos/QosStatus;

    .line 37
    :cond_0
    sget-object v0, Lcom/netease/pharos/qos/QosStatus;->sQosStatus:Lcom/netease/pharos/qos/QosStatus;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 354
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 308
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    .line 309
    return-void
.end method

.method public cleanIp(Ljava/lang/String;)V
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "QosStatus"

    const-string v1, "QosStatus [cleanIp] param error"

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    const-string v0, "QosStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QosStatus [setId] mResult \u4e0d\u5305\u542b "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getExpire(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v2, 0x0

    .line 208
    .local v2, "expire":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    const-string v4, "QosStatus"

    const-string v5, "QosStatus [getExpire] param error"

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 229
    .end local v2    # "expire":Ljava/lang/String;
    .local v3, "expire":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 213
    .end local v3    # "expire":Ljava/lang/String;
    .restart local v2    # "expire":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 214
    const-string v4, "QosStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QosStatus [getExpire] mResult \u4e0d\u5305\u542b "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 215
    .end local v2    # "expire":Ljava/lang/String;
    .restart local v3    # "expire":Ljava/lang/String;
    goto :goto_0

    .line 219
    .end local v3    # "expire":Ljava/lang/String;
    .restart local v2    # "expire":Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 221
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    const-string v4, "expire"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    const-string v4, "expire"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "data":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    move-object v3, v2

    .line 229
    .end local v2    # "expire":Ljava/lang/String;
    .restart local v3    # "expire":Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v3    # "expire":Ljava/lang/String;
    .restart local v2    # "expire":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "QosStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QosStatus [getExpire] JSONException="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 257
    const/4 v2, 0x0

    .line 259
    .local v2, "id":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    const-string v4, "QosStatus"

    const-string v5, "QosStatus [getId] param error"

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 280
    .end local v2    # "id":Ljava/lang/String;
    .local v3, "id":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 264
    .end local v3    # "id":Ljava/lang/String;
    .restart local v2    # "id":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 265
    const-string v4, "QosStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QosStatus [getId] mResult \u4e0d\u5305\u542b "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 266
    .end local v2    # "id":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    goto :goto_0

    .line 270
    .end local v3    # "id":Ljava/lang/String;
    .restart local v2    # "id":Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 272
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "data":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    move-object v3, v2

    .line 280
    .end local v2    # "id":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    goto :goto_0

    .line 276
    .end local v3    # "id":Ljava/lang/String;
    .restart local v2    # "id":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "QosStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QosStatus [getExpire] JSONException="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getResult()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getResult(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 47
    .local v1, "result":Lorg/json/JSONObject;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 57
    .end local v1    # "result":Lorg/json/JSONObject;
    .local v2, "result":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 52
    .end local v2    # "result":Lorg/json/JSONObject;
    .restart local v1    # "result":Lorg/json/JSONObject;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 57
    .end local v1    # "result":Lorg/json/JSONObject;
    .restart local v2    # "result":Lorg/json/JSONObject;
    goto :goto_0

    .line 53
    .end local v2    # "result":Lorg/json/JSONObject;
    .restart local v1    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public getStatus(Ljava/lang/String;)I
    .locals 7
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 154
    const/16 v2, -0x64

    .line 156
    .local v2, "status":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    const-string v4, "QosStatus"

    const-string v5, "QosStatus [getStatus] param error"

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 177
    .end local v2    # "status":I
    .local v3, "status":I
    :goto_0
    return v3

    .line 161
    .end local v3    # "status":I
    .restart local v2    # "status":I
    :cond_0
    iget-object v4, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 162
    const-string v4, "QosStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QosStatus [getStatus] mResult \u4e0d\u5305\u542b "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 163
    .end local v2    # "status":I
    .restart local v3    # "status":I
    goto :goto_0

    .line 167
    .end local v3    # "status":I
    .restart local v2    # "status":I
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 169
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    const-string v4, "status"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    const-string v4, "status"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v0    # "data":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    move v3, v2

    .line 177
    .end local v2    # "status":I
    .restart local v3    # "status":I
    goto :goto_0

    .line 173
    .end local v3    # "status":I
    .restart local v2    # "status":I
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "QosStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QosStatus [getStatus] JSONException="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getValidity(Ljava/lang/String;)J
    .locals 9
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 103
    const-wide/16 v2, -0x1

    .line 105
    .local v2, "validity":J
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    const-string v6, "QosStatus"

    const-string v7, "QosStatus [getValidity] param error"

    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    .line 126
    .end local v2    # "validity":J
    .local v4, "validity":J
    :goto_0
    return-wide v4

    .line 110
    .end local v4    # "validity":J
    .restart local v2    # "validity":J
    :cond_0
    iget-object v6, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v6, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 111
    const-string v6, "QosStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "QosStatus [getValidity] mResult \u4e0d\u5305\u542b "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    .line 112
    .end local v2    # "validity":J
    .restart local v4    # "validity":J
    goto :goto_0

    .line 116
    .end local v4    # "validity":J
    .restart local v2    # "validity":J
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v6, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 118
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    const-string v6, "validity"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 119
    const-string v6, "validity"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .end local v0    # "data":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    move-wide v4, v2

    .line 126
    .end local v2    # "validity":J
    .restart local v4    # "validity":J
    goto :goto_0

    .line 122
    .end local v4    # "validity":J
    .restart local v2    # "validity":J
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "QosStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "QosStatus [getValidity] JSONException="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public has(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "QosStatus"

    const-string v3, "QosStatus [has] param error"

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 72
    .end local v0    # "result":Z
    .local v1, "result":I
    :goto_0
    return v1

    .line 68
    .end local v1    # "result":I
    .restart local v0    # "result":Z
    :cond_0
    iget-object v2, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    const/4 v0, 0x1

    :cond_1
    move v1, v0

    .line 72
    .restart local v1    # "result":I
    goto :goto_0
.end method

.method public setExpire(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "expire"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    const-string v2, "QosStatus"

    const-string v3, "QosStatus [setExpire] param error"

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 240
    const-string v2, "QosStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QosStatus [setExpire] mResult \u4e0d\u5305\u542b "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 247
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 248
    const-string v2, "expire"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "QosStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QosStatus [setExpire] JSONException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    const-string v2, "QosStatus"

    const-string v3, "QosStatus [setId] param error"

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 291
    const-string v2, "QosStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QosStatus [setId] mResult \u4e0d\u5305\u542b "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 298
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 299
    const-string v2, "id"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "QosStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QosStatus [setId] JSONException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const-string v2, "QosStatus"

    const-string v3, "QosStatus [setIp] param error"

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const-string v2, "QosStatus"

    const-string v3, "QosStatus [setIp] \u5df2\u5305\u542b\u8be5\u5143\u7d20"

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v1, "ipJson":Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v2, ""

    invoke-virtual {p0, p1, v2}, Lcom/netease/pharos/qos/QosStatus;->setId(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "0"

    invoke-virtual {p0, p1, v2}, Lcom/netease/pharos/qos/QosStatus;->setExpire(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/16 v2, -0xb

    invoke-virtual {p0, p1, v2}, Lcom/netease/pharos/qos/QosStatus;->setStatus(Ljava/lang/String;I)V

    .line 94
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/netease/pharos/qos/QosStatus;->setValidity(Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/String;I)V
    .locals 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    const-string v2, "QosStatus"

    const-string v3, "QosStatus [setStatus] param error"

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 188
    const-string v2, "QosStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QosStatus [setStatus] mResult \u4e0d\u5305\u542b "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 195
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 196
    const-string v2, "status"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "QosStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QosStatus [setStatus] JSONException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTestData()V
    .locals 6

    .prologue
    .line 329
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 330
    .local v0, "data1":Lorg/json/JSONObject;
    const-string v3, "id"

    const-string v4, "1111"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v3, "expire"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 332
    const-string v3, "status"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    const-string v3, "validity"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 335
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 336
    .local v1, "data2":Lorg/json/JSONObject;
    const-string v3, "id"

    const-string v4, "222"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string v3, "expire"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 338
    const-string v3, "status"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 339
    const-string v3, "validity"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 342
    iget-object v3, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    const-string v4, "8.8.8.8"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    iget-object v3, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    const-string v4, "4.4.4.4"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v0    # "data1":Lorg/json/JSONObject;
    .end local v1    # "data2":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v2

    .line 345
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setValidity(Ljava/lang/String;J)V
    .locals 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "validity"    # J

    .prologue
    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    const-string v2, "QosStatus"

    const-string v3, "QosStatus [setValidity] param error"

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 137
    const-string v2, "QosStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QosStatus [setValidity] mResult \u4e0d\u5305\u542b "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/netease/pharos/qos/QosStatus;->mResult:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 144
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 145
    const-string v2, "validity"

    invoke-virtual {v0, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "QosStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QosStatus [setValidity] JSONException="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
