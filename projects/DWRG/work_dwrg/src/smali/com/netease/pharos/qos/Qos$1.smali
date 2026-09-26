.class Lcom/netease/pharos/qos/Qos$1;
.super Ljava/lang/Object;
.source "Qos.java"

# interfaces
.implements Lcom/netease/pharos/network2/NetworkDealer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/qos/Qos;
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
.field final synthetic this$0:Lcom/netease/pharos/qos/Qos;


# direct methods
.method constructor <init>(Lcom/netease/pharos/qos/Qos;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/pharos/qos/Qos$1;->this$0:Lcom/netease/pharos/qos/Qos;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processContent(Ljava/io/InputStream;ILjava/util/Map;)Ljava/lang/Integer;
    .locals 23
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
    .line 440
    .local p3, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v20, "Qos"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Qos [\u7f51\u7edc\u56de\u8c03\u5904\u7406] \u89e3\u6790\u5185\u5bb9 pCode="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", info="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const/16 v14, 0xb

    .line 447
    .local v14, "result":I
    if-eqz p3, :cond_0

    const-string v20, "extra_data"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 448
    :cond_0
    const-string v20, "Qos"

    const-string v21, "Qos [\u7f51\u7edc\u56de\u8c03\u5904\u7406] \u89e3\u6790\u5185\u5bb9 \u53c2\u6570\u9519\u8bef1"

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 571
    :goto_0
    return-object v20

    .line 452
    :cond_1
    const/4 v15, 0x0

    .line 453
    .local v15, "serverIp":Ljava/lang/String;
    const-string v20, "extra_data"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 455
    .local v9, "extra_data":Ljava/lang/String;
    const/4 v10, 0x0

    .line 456
    .local v10, "extra_data_json":Lorg/json/JSONObject;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 457
    new-instance v10, Lorg/json/JSONObject;

    .end local v10    # "extra_data_json":Lorg/json/JSONObject;
    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 460
    .restart local v10    # "extra_data_json":Lorg/json/JSONObject;
    :cond_2
    const/16 v16, 0x0

    .line 462
    .local v16, "style":Ljava/lang/String;
    if-eqz v10, :cond_3

    const-string v20, "style"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 463
    const-string v20, "style"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 466
    :cond_3
    const-string v20, "qos"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 468
    if-eqz v10, :cond_4

    const-string v20, "server"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 469
    const-string v20, "server"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 472
    :cond_4
    const-string v20, "Qos"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Qos [\u7f51\u7edc\u56de\u8c03\u5904\u7406] \u89e3\u6790\u5185\u5bb9 serverIp="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 475
    const-string v20, "Qos"

    const-string v21, "Qos [\u7f51\u7edc\u56de\u8c03\u5904\u7406] \u89e3\u6790\u5185\u5bb9 \u53c2\u6570\u9519\u8bef2"

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    goto :goto_0

    .line 479
    :cond_5
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/netease/pharos/qos/QosStatus;->setIp(Ljava/lang/String;)V

    .line 484
    :cond_6
    new-instance v11, Ljava/io/InputStreamReader;

    const-string v20, "utf-8"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 485
    .local v11, "in":Ljava/io/InputStreamReader;
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 486
    .local v7, "e":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .local v2, "cache":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, "line":Ljava/lang/String;
    if-nez v12, :cond_f

    .line 493
    const-string v20, "Qos"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Qos [\u7f51\u7edc\u56de\u8c03\u5904\u7406] \u89e3\u6790\u5185\u5bb9="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const/4 v13, -0x1

    .line 496
    .local v13, "resend_flag":I
    const/4 v3, 0x0

    .line 497
    .local v3, "code":Ljava/lang/String;
    const/16 v17, 0x0

    .line 500
    .local v17, "time":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 503
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 505
    .local v5, "data":Lorg/json/JSONObject;
    const-string v20, "resend_flag"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 506
    const-string v20, "resend_flag"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 509
    :cond_7
    const-string v20, "code"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 510
    const-string v20, "code"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 513
    :cond_8
    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 514
    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 516
    .local v6, "dataJson":Lorg/json/JSONObject;
    const-string v20, "Qos"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "dataJson="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    if-eqz v6, :cond_a

    .line 518
    const-string v20, "time"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 519
    const-string v20, "time"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 522
    :cond_9
    const-string v20, "id"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/qos/Qos$1;->this$0:Lcom/netease/pharos/qos/Qos;

    move-object/from16 v20, v0

    const-string v21, "id"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/qos/Qos;->access$0(Lcom/netease/pharos/qos/Qos;Ljava/lang/String;)V

    .line 529
    .end local v6    # "dataJson":Lorg/json/JSONObject;
    :cond_a
    const-string v20, "1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 530
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Lcom/netease/pharos/qos/QosStatus;->setStatus(Ljava/lang/String;I)V

    .line 531
    const/4 v14, 0x0

    .line 544
    :cond_b
    :goto_2
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 545
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/netease/pharos/qos/QosStatus;->setExpire(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/qos/Qos$1;->this$0:Lcom/netease/pharos/qos/Qos;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/netease/pharos/qos/Qos;->access$1(Lcom/netease/pharos/qos/Qos;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 549
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/qos/Qos$1;->this$0:Lcom/netease/pharos/qos/Qos;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/netease/pharos/qos/Qos;->access$1(Lcom/netease/pharos/qos/Qos;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Lcom/netease/pharos/qos/QosStatus;->setId(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_d
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/qos/Qos$1;->this$0:Lcom/netease/pharos/qos/Qos;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/netease/pharos/qos/Qos;->access$2(Lcom/netease/pharos/qos/Qos;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/netease/pharos/qos/QosStatus;->getValidity(Ljava/lang/String;)J

    move-result-wide v18

    .line 556
    .local v18, "validity":J
    const-string v20, "Qos"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Qos [\u7f51\u7edc\u56de\u8c03\u5904\u7406] \u89e3\u6790\u5185\u5bb9\uff0c\u7ed3\u679c="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/netease/pharos/qos/QosStatus;->getResult()Lorg/json/JSONObject;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    .end local v5    # "data":Lorg/json/JSONObject;
    .end local v18    # "validity":J
    :goto_3
    const-string v20, "Qos"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Qos [\u7f51\u7edc\u56de\u8c03\u5904\u7406] \u89e3\u6790\u5185\u5bb9 result="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v20, "qos"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 566
    const-string v20, "Qos"

    const-string v21, "Qos [\u7f51\u7edc\u56de\u8c03\u5904\u7406] \u89e3\u6790\u5185\u5bb9 \u6267\u884c\u5faa\u73afqos"

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/qos/Qos$1;->this$0:Lcom/netease/pharos/qos/Qos;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/netease/pharos/qos/Qos;->access$3(Lcom/netease/pharos/qos/Qos;I)V

    .line 571
    :cond_e
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    goto/16 :goto_0

    .line 490
    .end local v3    # "code":Ljava/lang/String;
    .end local v13    # "resend_flag":I
    .end local v17    # "time":Ljava/lang/String;
    :cond_f
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 533
    .restart local v3    # "code":Ljava/lang/String;
    .restart local v5    # "data":Lorg/json/JSONObject;
    .restart local v13    # "resend_flag":I
    .restart local v17    # "time":Ljava/lang/String;
    :cond_10
    :try_start_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v20

    if-nez v20, :cond_b

    .line 534
    const/16 v4, -0x9

    .line 536
    .local v4, "code_int":I
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    .line 541
    :goto_4
    :try_start_3
    invoke-static {}, Lcom/netease/pharos/qos/QosStatus;->getInstance()Lcom/netease/pharos/qos/QosStatus;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15, v4}, Lcom/netease/pharos/qos/QosStatus;->setStatus(Ljava/lang/String;I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 558
    .end local v4    # "code_int":I
    .end local v5    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 559
    .local v8, "e2":Lorg/json/JSONException;
    const-string v20, "Qos"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Qos [\u7f51\u7edc\u56de\u8c03\u5904\u7406] \u89e3\u6790\u5185\u5bb9  JSONException="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 537
    .end local v8    # "e2":Lorg/json/JSONException;
    .restart local v4    # "code_int":I
    .restart local v5    # "data":Lorg/json/JSONObject;
    :catch_1
    move-exception v20

    goto :goto_4
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/pharos/qos/Qos$1;->processContent(Ljava/io/InputStream;ILjava/util/Map;)Ljava/lang/Integer;

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
    .line 435
    .local p1, "pHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p3, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method
