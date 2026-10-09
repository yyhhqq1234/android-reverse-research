.class public Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy;
.super Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;
.source "UpdateProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy",
        "<",
        "Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateProxy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;-><init>()V

    return-void
.end method


# virtual methods
.method protected convertParamToPbReqBuf(Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;)[B
    .locals 6
    .param p1, "param"    # Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;

    .prologue
    .line 36
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 37
    .local v3, "j":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 38
    .local v0, "array":Lorg/json/JSONArray;
    const-string v4, "chat_cd"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 39
    const-string/jumbo v4, "tv_switch"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 40
    const-string/jumbo v4, "update_cfg"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 42
    const-string/jumbo v4, "tv_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 43
    const-string v4, "match_guess_url"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 45
    const-string/jumbo v4, "tab_show_list"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 46
    const-string/jumbo v4, "tab_name_list"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 47
    const-string v4, "next_sync_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 48
    const-string/jumbo v4, "sync_num"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 49
    const-string v4, "open_tab"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 50
    const-string v4, "pop_bk"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 51
    const-string v4, "network_lib_switch"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 52
    const-string v4, "popup_cd"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 53
    const-string/jumbo v4, "tabid_5_url"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 54
    const-string/jumbo v4, "tabid_6_url"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 55
    const-string/jumbo v4, "wsq_vod_switch"

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 57
    :try_start_0
    const-string v4, "config_key"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v4, "account_type"

    iget v5, p1, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->accountType:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    const-string v4, "appid"

    iget-object v5, p1, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->appid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v4, "area_id"

    iget-object v5, p1, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->areaId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v4, "client_type"

    iget v5, p1, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->clientType:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string v4, "game_id"

    iget-object v5, p1, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->gameId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v4, "game_ver"

    iget-object v5, p1, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->game_ver:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v4, "machine_code"

    const-string/jumbo v5, "unknown"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v4, "model"

    iget-object v5, p1, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->model:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v4, "os_ver"

    iget-object v5, p1, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->os_ver:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v4, "plugin_md5"

    iget-object v5, p1, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->pluginMd5:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v4, "plugin_ver"

    iget-object v5, p1, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->pluginVer:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string/jumbo v4, "uid"

    iget-object v5, p1, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v4, "openid"

    iget-object v5, p1, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->openid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string/jumbo v4, "unity_ver"

    iget-object v5, p1, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->unity_ver:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string/jumbo v4, "user_level"

    iget v5, p1, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->user_level:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "data":Ljava/lang/String;
    const-string v4, "UpdateProxy"

    invoke-static {v4, v1}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :try_start_1
    const-string/jumbo v4, "utf-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 84
    :goto_1
    return-object v4

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v4, 0x0

    goto :goto_1

    .line 73
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method protected bridge synthetic convertParamToPbReqBuf(Ljava/lang/Object;)[B
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;

    invoke-virtual {p0, p1}, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy;->convertParamToPbReqBuf(Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;)[B

    move-result-object v0

    return-object v0
.end method

.method protected getCmd()I
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x3f6

    return v0
.end method

.method protected getSubcmd()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method protected parsePbRspBuf([BLcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;)I
    .locals 8
    .param p1, "data"    # [B
    .param p2, "param"    # Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;

    .prologue
    const/4 v7, 0x0

    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "UpdateProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "json: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    iput-object p1, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->configInfo:[B

    .line 98
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string v5, "chat_cd"

    const-string v6, "-1"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->chat_cd:I

    .line 99
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string v5, "result"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->result:I

    .line 100
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string/jumbo v5, "tv_switch"

    const-string v6, "0"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->tv_switch:I

    .line 101
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string v5, "popup_window_entry"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->popup_window_entry:I

    .line 102
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string v5, "p2p_switch"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->p2p_switch:I

    .line 103
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string v5, "prevent_offline_switch"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->prevent_offline_switch:I

    .line 104
    const-string/jumbo v4, "update_cfg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 105
    .local v3, "updateCfg":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 106
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string v5, "plugin_md5"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->plugin_md5:Ljava/lang/String;

    .line 107
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string v5, "plugin_url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->plugin_url:Ljava/lang/String;

    .line 108
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string v5, "plugin_ver"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->plugin_ver:Ljava/lang/String;

    .line 109
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string/jumbo v5, "update_available"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->update_available:I

    .line 111
    :cond_0
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string/jumbo v5, "tv_name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->tv_name:Ljava/lang/String;

    .line 113
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string v5, "match_guess_url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->match_guess_url:Ljava/lang/String;

    .line 114
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string/jumbo v5, "tab_show_list"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->tab_show_list:Ljava/lang/String;

    .line 115
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string/jumbo v5, "tab_name_list"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->tab_name_list:Ljava/lang/String;

    .line 117
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string v5, "next_sync_time"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->next_sync_time:I

    .line 119
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string v5, "pop_bk"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->pop_bk:Ljava/lang/String;

    .line 121
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string v5, "network_lib_switch"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->network_lib_switch:I

    .line 122
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string/jumbo v5, "wsq_vod_switch"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->wsq_void_switch:I

    .line 124
    iget-object v4, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    const-string v5, "popup_cd"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->popup_cd:I

    .line 125
    const-string v4, "UpdateProxy"

    iget-object v5, p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->configRsp:Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;

    invoke-virtual {v5}, Lcom/tencent/tga/livesdk/update/bean/ConfigRsp;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 131
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "updateCfg":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return v7

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    const-string v4, "UpdateProxy"

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

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method protected bridge synthetic parsePbRspBuf([BLjava/lang/Object;)I
    .locals 1

    .prologue
    .line 17
    check-cast p2, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy;->parsePbRspBuf([BLcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;)I

    move-result v0

    return v0
.end method
