.class public Lcom/netease/pharos/qos/Qos4GProxy;
.super Ljava/lang/Object;
.source "Qos4GProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Qos4GProxy"

.field private static sQos4GProxy:Lcom/netease/pharos/qos/Qos4GProxy;


# instance fields
.field private mQosMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/pharos/qos/Qos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/qos/Qos4GProxy;->sQos4GProxy:Lcom/netease/pharos/qos/Qos4GProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/qos/Qos4GProxy;->mQosMap:Ljava/util/Map;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/netease/pharos/qos/Qos4GProxy;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netease/pharos/qos/Qos4GProxy;->mQosMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getInstance()Lcom/netease/pharos/qos/Qos4GProxy;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/netease/pharos/qos/Qos4GProxy;->sQos4GProxy:Lcom/netease/pharos/qos/Qos4GProxy;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/netease/pharos/qos/Qos4GProxy;

    invoke-direct {v0}, Lcom/netease/pharos/qos/Qos4GProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/qos/Qos4GProxy;->sQos4GProxy:Lcom/netease/pharos/qos/Qos4GProxy;

    .line 44
    :cond_0
    sget-object v0, Lcom/netease/pharos/qos/Qos4GProxy;->sQos4GProxy:Lcom/netease/pharos/qos/Qos4GProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "Qos4GProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Qos4GProxy [cancel] ip="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 84
    :cond_0
    const-string v0, "Qos4GProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Qos4GProxy [cancel] \u53d6\u6d88\u524d mQosMap="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/pharos/qos/Qos4GProxy;->mQosMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/netease/pharos/qos/Qos4GProxy;->mQosMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/pharos/qos/Qos4GProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/netease/pharos/qos/Qos4GProxy$2;-><init>(Lcom/netease/pharos/qos/Qos4GProxy;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 108
    :cond_1
    const-string v0, "Qos4GProxy"

    const-string v1, "Qos4GProxy [cancel] \u8be5ip\u4e4b\u524d\u672a\u52a0\u901f\uff0c\u65e0\u9700\u53d6\u6d88"

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getResult(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v5, "Qos4GProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos4GProxy [getResult] ip="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 119
    .local v3, "result":Lorg/json/JSONObject;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v3

    .line 182
    .end local v3    # "result":Lorg/json/JSONObject;
    .local v4, "result":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 123
    .end local v4    # "result":Ljava/lang/Object;
    .restart local v3    # "result":Lorg/json/JSONObject;
    :cond_0
    const-string v5, "Qos4GProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos4GProxy [getResult] \u603b\u7ed3\u679c="

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

    .line 125
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/netease/pharos/qos/QosStatus;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 127
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/qos/QosProxy;->getQosResult()Lorg/json/JSONObject;

    move-result-object v2

    .line 129
    .local v2, "qosResult":Lorg/json/JSONObject;
    const-string v5, "Qos4GProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos4GProxy [getResult] qosResult="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    if-eqz v2, :cond_1

    const-string v5, "qos"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    :try_start_0
    const-string v5, "qos"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 166
    :cond_1
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 169
    .local v1, "ipJson":Lorg/json/JSONObject;
    :try_start_1
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/netease/pharos/qos/QosStatus;->getResult(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v5, "qos_status"

    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    .end local v1    # "ipJson":Lorg/json/JSONObject;
    .end local v2    # "qosResult":Lorg/json/JSONObject;
    :goto_2
    const-string v5, "Qos4GProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos4GProxy [getResult] \u8fc7\u6ee4ip\uff0c\u83b7\u53d6\u7684\u7ed3\u679c="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 182
    .restart local v4    # "result":Ljava/lang/Object;
    goto/16 :goto_0

    .line 134
    .end local v4    # "result":Ljava/lang/Object;
    .restart local v2    # "qosResult":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "Qos4GProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos4GProxy [getResult] JSONException1="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 171
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "ipJson":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 172
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "Qos4GProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos4GProxy [getResult] JSONException2="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 176
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "ipJson":Lorg/json/JSONObject;
    .end local v2    # "qosResult":Lorg/json/JSONObject;
    :cond_2
    const-string v5, "Qos4GProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos4GProxy [getResult] \u603b\u7ed3\u679c\u4e2d\u4e0d\u5305\u542b\u8be5ip\uff0cip="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public pharosqosexec(Ljava/lang/String;J)V
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    .line 49
    const-string v0, "Qos4GProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Qos4GProxy [pharosqosexec] ip="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/netease/pharos/qos/Qos4GProxy;->mQosMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 57
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/pharos/qos/Qos4GProxy$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netease/pharos/qos/Qos4GProxy$1;-><init>(Lcom/netease/pharos/qos/Qos4GProxy;Ljava/lang/String;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 72
    :cond_2
    const-string v0, "Qos4GProxy"

    const-string v1, "Qos4GProxy [pharosqosexec] \u8be5ip\u5df2\u5728\u52a0\u901f\u4e2d"

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
