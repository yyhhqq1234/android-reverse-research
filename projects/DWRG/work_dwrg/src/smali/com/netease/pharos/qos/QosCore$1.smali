.class Lcom/netease/pharos/qos/QosCore$1;
.super Ljava/lang/Object;
.source "QosCore.java"

# interfaces
.implements Lcom/netease/pharos/network2/NetworkDealer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/qos/QosCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/pharos/network2/NetworkDealer",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/qos/QosCore;


# direct methods
.method constructor <init>(Lcom/netease/pharos/qos/QosCore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/qos/QosCore$1;->this$0:Lcom/netease/pharos/qos/QosCore;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processContent(Ljava/io/InputStream;ILjava/util/Map;)Ljava/lang/Integer;
    .locals 14
    .param p1, "pInputStream"    # Ljava/io/InputStream;
    .param p2, "pCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 348
    .local p3, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "\u53d1\u8d77 QOS \u52a0\u901f---\u89e3\u6790\u5185\u5bb9"

    invoke-static {v11}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 349
    const/16 v9, 0xb

    .line 350
    .local v9, "result":I
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v11, "utf-8"

    invoke-direct {v6, p1, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 351
    .local v6, "in":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 352
    .local v4, "e":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v0, "cache":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-nez v7, :cond_6

    .line 359
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u53d1\u8d77 QOS \u52a0\u901f---\u89e3\u6790\u5185\u5bb9="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 361
    const/4 v8, -0x1

    .line 362
    .local v8, "resend_flag":I
    const/4 v1, 0x0

    .line 363
    .local v1, "code":Ljava/lang/String;
    const/4 v10, 0x0

    .line 365
    .local v10, "time":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 368
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 370
    .local v2, "data":Lorg/json/JSONObject;
    const-string v11, "resend_flag"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 371
    const-string v11, "resend_flag"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 374
    :cond_0
    const-string v11, "code"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 375
    const-string v11, "code"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    :cond_1
    const-string v11, "data"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 379
    const-string v11, "data"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 381
    .local v3, "dataJson":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    const-string v11, "time"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 382
    const-string v11, "time"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 386
    .end local v3    # "dataJson":Lorg/json/JSONObject;
    :cond_2
    const/4 v11, 0x1

    if-ne v8, v11, :cond_7

    .line 387
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore$1;->this$0:Lcom/netease/pharos/qos/QosCore;

    invoke-static {v11}, Lcom/netease/pharos/qos/QosCore;->access$0(Lcom/netease/pharos/qos/QosCore;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "rap_qos_status"

    const-string v13, "11"

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    :cond_3
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 394
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore$1;->this$0:Lcom/netease/pharos/qos/QosCore;

    invoke-static {v11}, Lcom/netease/pharos/qos/QosCore;->access$0(Lcom/netease/pharos/qos/QosCore;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "rap_qos_expire"

    invoke-virtual {v11, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    :cond_4
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore$1;->this$0:Lcom/netease/pharos/qos/QosCore;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/netease/pharos/qos/QosCore;->access$1(Lcom/netease/pharos/qos/QosCore;I)V

    .line 405
    const-string v11, "QosCore"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u53d1\u8d77 QOS \u52a0\u901f---\u6700\u7ec8\u8f93\u51fa\u7ed3\u679c  mResult="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/netease/pharos/qos/QosCore$1;->this$0:Lcom/netease/pharos/qos/QosCore;

    invoke-static {v13}, Lcom/netease/pharos/qos/QosCore;->access$0(Lcom/netease/pharos/qos/QosCore;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    const/4 v9, 0x0

    .line 428
    .end local v2    # "data":Lorg/json/JSONObject;
    :cond_5
    :goto_2
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore$1;->this$0:Lcom/netease/pharos/qos/QosCore;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/netease/pharos/qos/QosCore;->access$1(Lcom/netease/pharos/qos/QosCore;I)V

    .line 429
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    return-object v11

    .line 356
    .end local v1    # "code":Ljava/lang/String;
    .end local v8    # "resend_flag":I
    .end local v10    # "time":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 389
    .restart local v1    # "code":Ljava/lang/String;
    .restart local v2    # "data":Lorg/json/JSONObject;
    .restart local v8    # "resend_flag":I
    .restart local v10    # "time":Ljava/lang/String;
    :cond_7
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 390
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore$1;->this$0:Lcom/netease/pharos/qos/QosCore;

    invoke-static {v11}, Lcom/netease/pharos/qos/QosCore;->access$0(Lcom/netease/pharos/qos/QosCore;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "rap_qos_status"

    invoke-virtual {v11, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 408
    .end local v2    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 409
    .local v5, "e2":Lorg/json/JSONException;
    const-string v11, "QosCore"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u53d1\u8d77 QOS \u52a0\u901f---\u89e3\u6790\u5185\u5bb9  JSONException="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public bridge synthetic processContent(Ljava/io/InputStream;ILjava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/pharos/qos/QosCore$1;->processContent(Ljava/io/InputStream;ILjava/util/Map;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public processHeader(Ljava/util/Map;ILjava/util/Map;)V
    .locals 0
    .param p2, "pCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p1, "pHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p3, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method
