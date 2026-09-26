.class public Lcom/netease/ntsharesdk/platform/WXEntry;
.super Landroid/app/Activity;
.source "WXEntry.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# instance fields
.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private readConfig()Ljava/lang/String;
    .locals 12

    .prologue
    .line 37
    const/4 v8, 0x0

    .line 39
    .local v8, "jsonStr":Ljava/lang/String;
    :try_start_0
    const-string v4, "ntshare_data"

    .line 40
    .local v4, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/WXEntry;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v4, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v6

    .line 41
    .local v6, "is":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 42
    .local v5, "index":I
    new-array v2, v5, [B

    .line 43
    .local v2, "data":[B
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    .line 45
    new-instance v9, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v9, v2, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    .end local v8    # "jsonStr":Ljava/lang/String;
    .local v9, "jsonStr":Ljava/lang/String;
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ntshare_data json:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 48
    new-instance v7, Lorg/json/JSONTokener;

    invoke-direct {v7, v9}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 49
    .local v7, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v7}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 51
    .local v1, "conf":Lorg/json/JSONObject;
    const-string v10, "Weixin"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "conf":Lorg/json/JSONObject;
    check-cast v1, Lorg/json/JSONObject;

    .line 52
    .restart local v1    # "conf":Lorg/json/JSONObject;
    const-string v10, "app_id"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "appId":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "read ntshare_data weixin appid :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v8, v9

    .line 60
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "conf":Lorg/json/JSONObject;
    .end local v2    # "data":[B
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "jsonParser":Lorg/json/JSONTokener;
    .end local v9    # "jsonStr":Ljava/lang/String;
    .restart local v8    # "jsonStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v3

    .line 56
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "read ntshare_data error :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    .line 60
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    const-string v0, ""

    goto :goto_0

    .line 57
    :catch_1
    move-exception v3

    .line 58
    .local v3, "e":Lorg/json/JSONException;
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "read ntshare_data error :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/netease/ntsharesdk/Platform;->dLog(Ljava/lang/String;)V

    goto :goto_2

    .line 57
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v8    # "jsonStr":Ljava/lang/String;
    .restart local v2    # "data":[B
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "index":I
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v9    # "jsonStr":Ljava/lang/String;
    :catch_2
    move-exception v3

    move-object v8, v9

    .end local v9    # "jsonStr":Ljava/lang/String;
    .restart local v8    # "jsonStr":Ljava/lang/String;
    goto :goto_3

    .line 55
    .end local v8    # "jsonStr":Ljava/lang/String;
    .restart local v9    # "jsonStr":Ljava/lang/String;
    :catch_3
    move-exception v3

    move-object v8, v9

    .end local v9    # "jsonStr":Ljava/lang/String;
    .restart local v8    # "jsonStr":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-direct {p0}, Lcom/netease/ntsharesdk/platform/WXEntry;->readConfig()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "app_id":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntsharesdk/platform/WXEntry;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 32
    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/WXEntry;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 33
    iget-object v1, p0, Lcom/netease/ntsharesdk/platform/WXEntry;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/WXEntry;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    .line 34
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    const-string v0, "ntsharesdk"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/netease/ntsharesdk/platform/WXEntry;->setIntent(Landroid/content/Intent;)V

    .line 68
    iget-object v0, p0, Lcom/netease/ntsharesdk/platform/WXEntry;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z

    .line 69
    return-void
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 3
    .param p1, "arg0"    # Lcom/tencent/mm/opensdk/modelbase/BaseReq;

    .prologue
    .line 73
    const-string v1, "ntsharesdk"

    const-string v2, "onReq"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v1

    const-string v2, "Weixin"

    invoke-virtual {v1, v2}, Lcom/netease/ntsharesdk/ShareMgr;->getPlatform(Ljava/lang/String;)Lcom/netease/ntsharesdk/Platform;

    move-result-object v0

    .line 75
    .local v0, "pf":Lcom/netease/ntsharesdk/Platform;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Lcom/netease/ntsharesdk/Platform;->handleRequest(Ljava/lang/Object;)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/WXEntry;->finish()V

    .line 79
    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 3
    .param p1, "resp"    # Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    .prologue
    .line 83
    const-string v1, "ntsharesdk"

    const-string v2, "onResp"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/netease/ntsharesdk/ShareMgr;->getInst()Lcom/netease/ntsharesdk/ShareMgr;

    move-result-object v1

    const-string v2, "Weixin"

    invoke-virtual {v1, v2}, Lcom/netease/ntsharesdk/ShareMgr;->getPlatform(Ljava/lang/String;)Lcom/netease/ntsharesdk/Platform;

    move-result-object v0

    .line 85
    .local v0, "pf":Lcom/netease/ntsharesdk/Platform;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Lcom/netease/ntsharesdk/Platform;->handleResponse(Ljava/lang/Object;)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntsharesdk/platform/WXEntry;->finish()V

    .line 89
    return-void
.end method
