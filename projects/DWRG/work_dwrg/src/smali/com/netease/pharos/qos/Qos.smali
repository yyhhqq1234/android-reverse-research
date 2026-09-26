.class public Lcom/netease/pharos/qos/Qos;
.super Ljava/lang/Object;
.source "Qos.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Qos"


# instance fields
.field private hasQos:Z

.field private mDuration:J

.field private mFirstQosIpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mIsCycleQosOpen:Z

.field private mValidity:J

.field private qos_dealer:Lcom/netease/pharos/network2/NetworkDealer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/pharos/network2/NetworkDealer",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/pharos/qos/Qos;->mIsCycleQosOpen:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/qos/Qos;->mFirstQosIpList:Ljava/util/ArrayList;

    .line 49
    iput-object v1, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    .line 51
    iput-wide v2, p0, Lcom/netease/pharos/qos/Qos;->mDuration:J

    .line 53
    iput-wide v2, p0, Lcom/netease/pharos/qos/Qos;->mValidity:J

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/pharos/qos/Qos;->hasQos:Z

    .line 57
    iput-object v1, p0, Lcom/netease/pharos/qos/Qos;->mId:Ljava/lang/String;

    .line 430
    new-instance v0, Lcom/netease/pharos/qos/Qos$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/qos/Qos$1;-><init>(Lcom/netease/pharos/qos/Qos;)V

    iput-object v0, p0, Lcom/netease/pharos/qos/Qos;->qos_dealer:Lcom/netease/pharos/network2/NetworkDealer;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/netease/pharos/qos/Qos;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/netease/pharos/qos/Qos;->mId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/netease/pharos/qos/Qos;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netease/pharos/qos/Qos;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/netease/pharos/qos/Qos;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/netease/pharos/qos/Qos;I)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/netease/pharos/qos/Qos;->cycleQos2(I)V

    return-void
.end method

.method private cycleQos2(I)V
    .locals 14
    .param p1, "result"    # I

    .prologue
    const-wide/16 v12, 0x3e8

    .line 149
    const-string v8, "Qos"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Qos [cycleQos2] result="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v8

    iget-object v9, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/netease/pharos/qos/QosStatus;->getExpire(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "rap_qos_expire":Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v8

    iget-object v9, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/netease/pharos/qos/QosStatus;->getValidity(Ljava/lang/String;)J

    move-result-wide v6

    .line 154
    .local v6, "validity":J
    const-string v8, "Qos"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Qos [cycleQos2] rap_qos_expire="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez p1, :cond_0

    .line 156
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 159
    .local v1, "expire":J
    mul-long v8, v1, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 160
    .local v4, "sleepTime":J
    const-wide/32 v4, 0xea60

    .line 161
    const-string v8, "Qos"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Qos [cycleQos2] \u53d1\u8d77\u52a0\u901f\u540e\uff0cexpire * 1000="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-long v10, v1, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", \u5f53\u524d\u65f6\u95f4="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", sleepTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 165
    const-string v8, "Qos"

    const-string v9, "Qos [cycleQos2] \u7761\u7720\u65f6\u95f4\u7ed3\u675f\uff0c\u81ea\u52a8\u8fdb\u5165\u5468\u671f"

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/netease/pharos/qos/Qos;->cycleQos()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1    # "expire":J
    .end local v4    # "sleepTime":J
    :goto_0
    return-void

    .line 168
    .restart local v1    # "expire":J
    .restart local v4    # "sleepTime":J
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v8, "Qos"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Qos [cycleQos2] InterruptedException1="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "expire":J
    .end local v4    # "sleepTime":J
    :cond_0
    :try_start_1
    const-string v8, "Qos"

    const-string v9, "Qos [cycleQos2] \u4f11\u77201\u5206\u949f"

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-wide/32 v8, 0xea60

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 181
    const-string v8, "Qos"

    const-string v9, "Qos [cycleQos2] \u7761\u7720\u65f6\u95f4\u7ed3\u675f\uff0c\u81ea\u52a8\u8fdb\u5165\u5468\u671f"

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/netease/pharos/qos/Qos;->cycleQos()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    .line 184
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v8, "Qos"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Qos [cycleQos2] InterruptedException2="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 602
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    return-void
.end method


# virtual methods
.method public cancelQos()I
    .locals 8

    .prologue
    .line 335
    const-string v5, "Qos"

    const-string v6, "Qos [cancelQos] \u53d6\u6d88\u52a0\u901f"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/16 v3, 0xb

    .line 339
    .local v3, "result":I
    const-string v5, "Qos"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos [cancelQos] mId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/pharos/qos/Qos;->mId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v5, p0, Lcom/netease/pharos/qos/Qos;->mId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 342
    const-string v5, "Qos"

    const-string v6, "Qos [cancelQos] id is null"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 369
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_0
    return v4

    .line 346
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_0
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/qos/QosProxy;->getDest()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "dest":Ljava/lang/String;
    const-string v5, "Qos"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos [cancelQos] param dest="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 352
    const-string v5, "Qos"

    const-string v6, "Qos [cancelQos] param dest error"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 353
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0

    .line 356
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 359
    .local v2, "mQosResult":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "id"

    iget-object v6, p0, Lcom/netease/pharos/qos/Qos;->mId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_1
    const-string v5, "Qos"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos [cancelQos] param id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/pharos/qos/Qos;->mId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cancel_qos"

    invoke-virtual {p0, v5, v0, v6}, Lcom/netease/pharos/qos/Qos;->qos_post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v4, v3

    .line 369
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0

    .line 361
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "Qos"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos [cancelQos] JSONException ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public clean()I
    .locals 4

    .prologue
    .line 578
    const/16 v0, 0xb

    .line 580
    .local v0, "result":I
    const-string v1, "Qos"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Qos [clean] \u53d6\u6d88\u52a0\u901f ip="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Lcom/netease/pharos/qos/Qos;->cancelQos()I

    move-result v0

    .line 583
    if-nez v0, :cond_0

    .line 585
    const-string v1, "Qos"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Qos [clean] \u53d6\u6d88\u52a0\u901f \u6e05\u7406\u6570\u636e ip="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netease/pharos/qos/Qos;->mIsCycleQosOpen:Z

    .line 588
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/pharos/qos/QosStatus;->cleanIp(Ljava/lang/String;)V

    .line 591
    :cond_0
    return v0
.end method

.method public cycleQos()V
    .locals 9

    .prologue
    .line 74
    const-string v5, "Qos"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos [cycleQos] mIsCycleQosOpen="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/netease/pharos/qos/Qos;->mIsCycleQosOpen:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-boolean v5, p0, Lcom/netease/pharos/qos/Qos;->mIsCycleQosOpen:Z

    if-eqz v5, :cond_4

    .line 78
    const-string v5, "Qos"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos [cycleQos] QosStatus result="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/qos/QosStatus;->getResult()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mIp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/netease/pharos/qos/QosStatus;->getValidity(Ljava/lang/String;)J

    move-result-wide v3

    .line 82
    .local v3, "validity":J
    const-string v5, "Qos"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos [cycleQos] validity="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \u5f53\u524d\u65f6\u95f4="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hasQos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/netease/pharos/qos/Qos;->hasQos:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 85
    const-string v5, "Qos"

    const-string v6, "Qos [cycleQos] \u52a0\u901f\u65f6\u95f4\u5df2\u8fc7, \u52a0\u901f\u7ed3\u675f"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/netease/pharos/qos/Qos4GProxy;->getInstance()Lcom/netease/pharos/qos/Qos4GProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/netease/pharos/qos/Qos4GProxy;->cancel(Ljava/lang/String;)V

    .line 145
    .end local v3    # "validity":J
    :goto_0
    return-void

    .line 96
    .restart local v3    # "validity":J
    :cond_0
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/qos/QosProxy;->getQosResult()Lorg/json/JSONObject;

    move-result-object v0

    .line 98
    .local v0, "data":Lorg/json/JSONObject;
    const-string v5, "Qos"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos [cycleQos] QosStatus result="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/qos/QosStatus;->getResult()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v2, 0x0

    .line 102
    .local v2, "qos_effective":Z
    if-eqz v0, :cond_1

    const-string v5, "qos_effective"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    :try_start_0
    const-string v5, "qos_effective"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 111
    :cond_1
    :goto_1
    const-string v5, "Qos"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos [cycleQos] qos_effective="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-eqz v2, :cond_2

    .line 115
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/netease/pharos/qos/Qos;->hasQos:Z

    .line 117
    invoke-virtual {p0}, Lcom/netease/pharos/qos/Qos;->qos()I

    goto :goto_0

    .line 125
    :cond_2
    :try_start_1
    const-string v5, "Qos"

    const-string v6, "Qos [cycleQos] \u4f11\u77201\u5206\u949f"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-wide/32 v5, 0xea60

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_3

    .line 130
    const-string v5, "Qos"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos [cycleQos] validity="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \u5f53\u524d\u65f6\u95f4="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \u5df2\u8d85\u8fc7\u52a0\u901f\u65f6\u95f4, \u7ed3\u675fqos"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v5, "Qos"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos [cycleQos] InterruptedException2="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_2
    const-string v5, "Qos"

    const-string v6, "Qos [cycleQos] \u7761\u7720\u65f6\u95f4\u7ed3\u675f\uff0c\u81ea\u52a8\u8fdb\u5165\u5468\u671f"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/netease/pharos/qos/Qos;->cycleQos()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 143
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "qos_effective":Z
    .end local v3    # "validity":J
    :cond_4
    const-string v5, "Qos"

    const-string v6, "Qos [cycleQos] mIsCycleQosOpen = false"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v2    # "qos_effective":Z
    .restart local v3    # "validity":J
    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method

.method public ismIsCycleQosOpen()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/netease/pharos/qos/Qos;->mIsCycleQosOpen:Z

    return v0
.end method

.method public pharosqosexec(Ljava/lang/String;J)I
    .locals 9
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    .line 192
    const/16 v2, 0xb

    .line 199
    .local v2, "result":I
    const-string v5, "Qos"

    const-string v6, "Qos [pharosqosexec] start"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v5, "Qos"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos [pharosqosexec] ip="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", duration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-gtz v5, :cond_1

    .line 203
    :cond_0
    const-string v5, "Qos"

    const-string v6, "Qos [pharosqosexec] param error"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/16 v2, 0xe

    .line 248
    .end local v2    # "result":I
    :goto_0
    return v2

    .line 207
    .restart local v2    # "result":I
    :cond_1
    iput-object p1, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    .line 208
    iput-wide p2, p0, Lcom/netease/pharos/qos/Qos;->mDuration:J

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/netease/pharos/qos/Qos;->mDuration:J

    add-long v0, v5, v7

    .line 212
    .local v0, "pValidity":J
    const-string v5, "Qos"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos [pharosqosexec] QosStatus result="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/qos/QosStatus;->getResult()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/netease/pharos/qos/QosStatus;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 216
    iget-object v5, p0, Lcom/netease/pharos/qos/Qos;->mFirstQosIpList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 217
    const-string v5, "Qos"

    const-string v6, "Qos [pharosqosexec] \u9996\u6b21\u8fdb\u5165\u52a0\u901f"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v5, p0, Lcom/netease/pharos/qos/Qos;->mFirstQosIpList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/netease/pharos/qos/QosStatus;->setIp(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6, v0, v1}, Lcom/netease/pharos/qos/QosStatus;->setValidity(Ljava/lang/String;J)V

    .line 224
    invoke-virtual {p0}, Lcom/netease/pharos/qos/Qos;->cycleQos()V

    goto :goto_0

    .line 227
    :cond_2
    const-string v5, "Qos"

    const-string v6, "Qos [pharosqosexec] \u9996\u6b21\u52a0\u901f\u8fdb\u884c\u4e2d"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_3
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/netease/pharos/qos/QosStatus;->getValidity(Ljava/lang/String;)J

    move-result-wide v3

    .line 233
    .local v3, "validity":J
    const-string v5, "Qos"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos [pharosqosexec] validity="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , \u5f53\u524d\u65f6\u95f4="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-lez v5, :cond_4

    .line 235
    const-string v5, "Qos"

    const-string v6, "Qos [pharosqosexec] \u5904\u4e8e\u52a0\u901f\u5468\u671f\u5185, \u76f4\u63a5\u7ed3\u675f"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_4
    const-string v5, "Qos"

    const-string v6, "Qos [pharosqosexec] \u53d1\u8d77\u4e00\u6b21\u65b0\u7684\u52a0\u901f"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/netease/pharos/qos/QosStatus;->cleanIp(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/netease/pharos/qos/Qos;->cycleQos()V

    goto/16 :goto_0
.end method

.method public qos()I
    .locals 14

    .prologue
    .line 260
    const-string v11, "Qos"

    const-string v12, "Qos [qos] \u52a0\u901f\u6838\u5fc3"

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v11, "Qos"

    const-string v12, "Qos [qos] \u53d1\u8d77qos\u52a0\u901f"

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/16 v9, 0xb

    .line 267
    .local v9, "result":I
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/qos/QosProxy;->getQosResult()Lorg/json/JSONObject;

    move-result-object v6

    .line 269
    .local v6, "pResult":Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    const-string v11, "qos"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 270
    :cond_0
    const-string v11, "Qos"

    const-string v12, "Qos [qos] param error"

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v9

    .line 331
    .end local v9    # "result":I
    .local v10, "result":I
    :goto_0
    return v10

    .line 274
    .end local v10    # "result":I
    .restart local v9    # "result":I
    :cond_1
    const-string v11, "Qos"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Qos [qos] pResult="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/qos/QosProxy;->getDest()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "dest":Ljava/lang/String;
    const-string v11, "Qos"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Qos [qos] param dest="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 281
    const-string v11, "Qos"

    const-string v12, "Qos [qos] param dest error"

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v9

    .line 282
    .end local v9    # "result":I
    .restart local v10    # "result":I
    goto :goto_0

    .line 287
    .end local v10    # "result":I
    .restart local v9    # "result":I
    :cond_2
    const/4 v2, 0x0

    .line 288
    .local v2, "id":Ljava/lang/String;
    const/4 v3, 0x0

    .line 289
    .local v3, "ip":Ljava/lang/String;
    const/4 v4, 0x0

    .line 290
    .local v4, "ip_public":Ljava/lang/String;
    const/4 v7, 0x0

    .line 293
    .local v7, "phone":Ljava/lang/String;
    :try_start_0
    const-string v11, "qos"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 294
    .local v8, "qosJson":Lorg/json/JSONObject;
    if-eqz v8, :cond_3

    .line 295
    const-string v11, "id"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    const-string v11, "ip"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    const-string v11, "ip_public"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    const-string v11, "phone"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 304
    .end local v8    # "qosJson":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    const-string v11, "Qos"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Qos [qos] mQosResult="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 314
    .local v5, "mQosResult":Lorg/json/JSONObject;
    :try_start_1
    const-string v11, "id"

    invoke-virtual {v5, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v11, "ip"

    invoke-virtual {v5, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v11, "ip_public"

    invoke-virtual {v5, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 319
    const-string v11, "phone"

    invoke-virtual {v5, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    :cond_4
    const-string v11, "server"

    iget-object v12, p0, Lcom/netease/pharos/qos/Qos;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 327
    :goto_2
    const-string v11, "Qos"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Qos [qos] param id="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ip="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ip_public="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", phone="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "qos"

    invoke-virtual {p0, v11, v0, v12}, Lcom/netease/pharos/qos/Qos;->qos_post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move v10, v9

    .line 331
    .end local v9    # "result":I
    .restart local v10    # "result":I
    goto/16 :goto_0

    .line 300
    .end local v5    # "mQosResult":Lorg/json/JSONObject;
    .end local v10    # "result":I
    .restart local v9    # "result":I
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Lorg/json/JSONException;
    const-string v11, "Qos"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Qos [qos] JSONException ="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 323
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v5    # "mQosResult":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 324
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string v11, "Qos"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Qos [qos] \u53d1\u8d77qos\u52a0\u901f JSONException ="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public qos_post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 373
    const-string v8, "Qos [qos_post] start"

    invoke-static {v8}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 374
    const/16 v5, 0xb

    .line 376
    .local v5, "result":I
    const-string v8, "Qos"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Qos [qos_post]---\u53c2\u6570 info="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 379
    :cond_0
    const-string v8, "Qos"

    const-string v9, "Qos [qos_post]---\u53c2\u6570\u9519\u8bef"

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/16 v5, 0xe

    move v6, v5

    .line 427
    .end local v5    # "result":I
    .local v6, "result":I
    :goto_0
    return v6

    .line 384
    .end local v6    # "result":I
    .restart local v5    # "result":I
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "https://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 386
    const-string v8, "Qos"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Qos [qos_post]---\u5904\u7406\u540e\u7684url="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 389
    .local v2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "Content-Type"

    const-string v9, "application/json"

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 397
    .local v4, "pParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "post_content"

    invoke-interface {v4, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 402
    .local v3, "infoJson":Lorg/json/JSONObject;
    const-string v8, "style"

    invoke-virtual {v3, v8, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    const-string v8, "extra_data"

    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Qos [qos_post] pParams="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v3    # "infoJson":Lorg/json/JSONObject;
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 413
    :try_start_1
    const-string v7, "POST"

    .line 414
    .local v7, "style":Ljava/lang/String;
    const-string v8, "cancel_qos"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 415
    const-string v7, "DELETE"

    .line 418
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Qos [qos_post] style="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 419
    iget-object v8, p0, Lcom/netease/pharos/qos/Qos;->qos_dealer:Lcom/netease/pharos/network2/NetworkDealer;

    invoke-static {p2, v4, v7, v2, v8}, Lcom/netease/pharos/network2/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network2/NetworkDealer;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 426
    .end local v7    # "style":Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v8, "Qos"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Qos [qos_post] \u7ed3\u679c="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    .line 427
    .end local v5    # "result":I
    .restart local v6    # "result":I
    goto/16 :goto_0

    .line 406
    .end local v6    # "result":I
    .restart local v5    # "result":I
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e1":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 421
    .end local v1    # "e1":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 422
    .local v0, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Qos [qos_post] IOException="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setmIsCycleQosOpen(Z)V
    .locals 0
    .param p1, "mIsCycleQosOpen"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/netease/pharos/qos/Qos;->mIsCycleQosOpen:Z

    .line 257
    return-void
.end method
