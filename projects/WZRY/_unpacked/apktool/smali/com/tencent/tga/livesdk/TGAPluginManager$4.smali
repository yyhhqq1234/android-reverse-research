.class final Lcom/tencent/tga/livesdk/TGAPluginManager$4;
.super Ljava/lang/Object;
.source "TGAPluginManager.java"

# interfaces
.implements Lcom/ryg/DLCallBackManager$SDK2Plugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tga/livesdk/TGAPluginManager;->setCallBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/util/Map;)Ljava/lang/Object;
    .locals 9
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x0

    .line 389
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 390
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$400()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v5

    const-string/jumbo v4, "type"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/tencent/tga/livesdk/TGAPluginManager;->callUnity(I)V

    .line 391
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 466
    :goto_0
    return-object v4

    .line 392
    :cond_0
    if-ne p1, v6, :cond_1

    .line 393
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$400()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$500(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/util/Map;)V

    .line 394
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 395
    :cond_1
    if-ne p1, v5, :cond_2

    .line 396
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$400()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$600(Lcom/tencent/tga/livesdk/TGAPluginManager;)Landroid/graphics/Typeface;

    move-result-object v4

    goto :goto_0

    .line 397
    :cond_2
    if-ne p1, v8, :cond_3

    .line 398
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->initNet()V

    .line 399
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 400
    :cond_3
    const/16 v4, 0xb

    if-ne p1, v4, :cond_4

    .line 401
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->setFriendShip()V

    .line 402
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 403
    :cond_4
    const/16 v4, 0xa

    if-ne p1, v4, :cond_5

    .line 404
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 405
    :cond_5
    const/4 v4, 0x5

    if-ne p1, v4, :cond_7

    .line 406
    if-eqz p2, :cond_6

    .line 408
    :try_start_0
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$400()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "HeroMatch"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$702(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$400()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "BannerInfo"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$802(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    const-string v4, "TGAPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BannerInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$400()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$800(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v4, "TGAPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHeroMatch : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$400()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$700(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_6
    :goto_1
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$400()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v4

    sget v5, Lcom/loopj/android/tgahttp/Configs/Configs;->POP_TO_TV:I

    invoke-static {v4, v5}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$900(Lcom/tencent/tga/livesdk/TGAPluginManager;I)V

    .line 417
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "TGAPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DLCallBackManager.setCallBack error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 418
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v4, 0x6

    if-ne p1, v4, :cond_9

    .line 419
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$400()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1000(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/util/Map;)V

    .line 466
    :cond_8
    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    .line 420
    :cond_9
    const/4 v4, 0x7

    if-ne p1, v4, :cond_b

    .line 421
    if-eqz p2, :cond_a

    .line 422
    const-string v4, "InviteResult"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 423
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_a

    .line 425
    const-string v4, "TGAPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invite obj : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 428
    .local v1, "json_open_tv":Lorg/json/JSONObject;
    const-string/jumbo v4, "type"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 429
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$400()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1100(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$400()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1200(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 435
    .end local v1    # "json_open_tv":Lorg/json/JSONObject;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_a
    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    .line 430
    .restart local v3    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 431
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "TGAPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALL_INVITE_RESULT error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_b
    const/16 v4, 0x8

    if-ne p1, v4, :cond_d

    .line 437
    if-eqz p2, :cond_c

    .line 438
    const-string v4, "UnitySendInviteReq"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 439
    .restart local v3    # "obj":Ljava/lang/Object;
    if-eqz v3, :cond_c

    .line 441
    const-string v4, "TGAPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALL_UNITY_SEND_INVITE_REQ obj : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 444
    .local v2, "json_send_invite":Lorg/json/JSONObject;
    const-string/jumbo v4, "type"

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 445
    const-string v4, "data"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    const-string v4, "TGAPluginManager"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$400()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1100(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$400()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1200(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 455
    .end local v2    # "json_send_invite":Lorg/json/JSONObject;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_c
    :goto_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    .line 449
    .restart local v3    # "obj":Ljava/lang/Object;
    :catch_2
    move-exception v0

    .line 450
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "TGAPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALL_UNITY_SEND_INVITE_REQ error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 456
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_d
    const/16 v4, 0x9

    if-ne p1, v4, :cond_8

    .line 457
    const-string v4, "TGAPluginManager"

    const-string v5, "CALL_UNITY_REFRESH_INVITE_LIST call"

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 460
    .restart local v2    # "json_send_invite":Lorg/json/JSONObject;
    const-string/jumbo v4, "type"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 461
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$400()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1100(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$400()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$1200(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 462
    .end local v2    # "json_send_invite":Lorg/json/JSONObject;
    :catch_3
    move-exception v0

    .line 463
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "TGAPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALL_UNITY_REFRESH_INVITE_LIST error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
