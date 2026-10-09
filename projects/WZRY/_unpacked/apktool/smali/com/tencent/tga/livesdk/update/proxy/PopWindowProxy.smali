.class public Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy;
.super Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;
.source "PopWindowProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy",
        "<",
        "Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopWindowProxy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;-><init>()V

    return-void
.end method


# virtual methods
.method protected convertParamToPbReqBuf(Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;)[B
    .locals 5
    .param p1, "param"    # Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    .prologue
    .line 29
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 32
    .local v2, "j":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "account_type"

    iget v4, p1, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->accountType:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    const-string v3, "appid"

    iget-object v4, p1, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->appid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v3, "area_id"

    iget-object v4, p1, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->areaId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v3, "client_type"

    iget v4, p1, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->clientType:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    const-string v3, "game_id"

    iget-object v4, p1, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->gameId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v3, "game_ver"

    iget-object v4, p1, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->game_ver:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v3, "machine_code"

    const-string v4, "machine_code"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v3, "model"

    iget-object v4, p1, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->model:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v3, "os_ver"

    iget-object v4, p1, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->os_ver:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v3, "plugin_md5"

    iget-object v4, p1, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->pluginMd5:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v3, "plugin_ver"

    iget-object v4, p1, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->pluginVer:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string/jumbo v3, "uid"

    iget-object v4, p1, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v3, "game_openid"

    iget-object v4, p1, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->openid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "data":Ljava/lang/String;
    const-string v3, "PopWindowProxy"

    invoke-static {v3, v0}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :try_start_1
    const-string/jumbo v3, "utf-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 54
    :goto_1
    return-object v3

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v3, 0x0

    goto :goto_1

    .line 45
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method protected bridge synthetic convertParamToPbReqBuf(Ljava/lang/Object;)[B
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    invoke-virtual {p0, p1}, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy;->convertParamToPbReqBuf(Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;)[B

    move-result-object v0

    return-object v0
.end method

.method protected getCmd()I
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x3f6

    return v0
.end method

.method protected getSubcmd()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x3

    return v0
.end method

.method protected parsePbRspBuf([BLcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;)I
    .locals 8
    .param p1, "data"    # [B
    .param p2, "param"    # Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    .prologue
    const/4 v7, 0x0

    .line 63
    const/4 v2, 0x0

    .line 65
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 66
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "PopWindowProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "json: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->result:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :try_start_2
    const-string/jumbo v4, "switch_list"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 71
    .local v1, "js_switch_list":Lorg/json/JSONObject;
    const-string/jumbo v4, "value"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->banner_switch:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 76
    .end local v1    # "js_switch_list":Lorg/json/JSONObject;
    :goto_0
    :try_start_3
    iget v4, p2, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->result:I

    if-nez v4, :cond_0

    .line 77
    const-string v4, "popup_window_entry"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->popup_window_entry:I

    .line 78
    iget v4, p2, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->popup_window_entry:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 79
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->resultstr:Ljava/lang/String;

    :cond_0
    move-object v2, v3

    .line 88
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    return v7

    .line 72
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PopWindowProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "js_switch_list \u89e3\u6790\u5931\u8d25 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 84
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    const-string v4, "PopWindowProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "json :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method protected bridge synthetic parsePbRspBuf([BLjava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p2, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy;->parsePbRspBuf([BLcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;)I

    move-result v0

    return v0
.end method
