.class public Lcom/tencent/msdk/realnameauth/model/CloudParameters;
.super Ljava/lang/Object;
.source "CloudParameters.java"


# instance fields
.field public imageHorizontalKey:Ljava/lang/String;

.field public imageHorizontalUrl:Ljava/lang/String;

.field public imageVerticalKey:Ljava/lang/String;

.field public imageVerticalUrl:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public ret:I

.field public showType:I

.field public webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    return-void
.end method

.method private boolFromString(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "strValue"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 111
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 117
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .line 114
    .restart local p2    # "defaultValue":Z
    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    const/4 p2, 0x1

    goto :goto_0

    .line 117
    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public parseJson(Ljava/lang/String;)V
    .locals 16
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 66
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    .local v9, "json":Lorg/json/JSONObject;
    const-string v13, "ret"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->ret:I

    .line 68
    const-string v13, "msg"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->msg:Ljava/lang/String;

    .line 69
    const-string v13, "body"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "base64Body":Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v3, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-direct {v4, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 71
    .local v4, "body":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "decode base64 body:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 72
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    .local v5, "bodyJson":Lorg/json/JSONObject;
    const-string/jumbo v13, "type"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->showType:I

    .line 74
    const-string v13, "image_vertical_url"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageVerticalUrl:Ljava/lang/String;

    .line 75
    const-string v13, "image_vertical_md5"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageVerticalKey:Ljava/lang/String;

    .line 76
    const-string v13, "image_horizontal_url"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageHorizontalUrl:Ljava/lang/String;

    .line 77
    const-string v13, "image_horizontal_md5"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageHorizontalKey:Ljava/lang/String;

    .line 79
    const-string/jumbo v13, "webview_frame"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 80
    .local v12, "webviewJson":Lorg/json/JSONObject;
    if-nez v12, :cond_1

    .line 102
    .end local v3    # "base64Body":Ljava/lang/String;
    .end local v4    # "body":Ljava/lang/String;
    .end local v5    # "bodyJson":Lorg/json/JSONObject;
    .end local v9    # "json":Lorg/json/JSONObject;
    .end local v12    # "webviewJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 83
    .restart local v3    # "base64Body":Ljava/lang/String;
    .restart local v4    # "body":Ljava/lang/String;
    .restart local v5    # "bodyJson":Lorg/json/JSONObject;
    .restart local v9    # "json":Lorg/json/JSONObject;
    .restart local v12    # "webviewJson":Lorg/json/JSONObject;
    :cond_1
    new-instance v13, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    invoke-direct {v13}, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    .line 84
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    const-string/jumbo v14, "url"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->openurl:Ljava/lang/String;

    .line 85
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    const-string v14, "show_titlebar"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->boolFromString(Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v13, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->showTitleBar:Z

    .line 86
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    const-string v14, "show_title"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->boolFromString(Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v13, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->showTitle:Z

    .line 87
    const-string v13, "buttons"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 88
    .local v2, "array":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    iget-object v13, v13, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 89
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v8, v13, :cond_0

    .line 90
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 91
    .local v11, "obj":Lorg/json/JSONObject;
    if-eqz v11, :cond_2

    .line 92
    const-string v13, "buttonId"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 93
    .local v6, "buttonId":I
    const-string v13, "action"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 94
    .local v1, "action":I
    const-string v13, "name"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 95
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    iget-object v13, v13, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->buttons:Ljava/util/ArrayList;

    new-instance v14, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;

    invoke-direct {v14, v10, v1, v6}, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "action":I
    .end local v6    # "buttonId":I
    .end local v10    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 99
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v3    # "base64Body":Ljava/lang/String;
    .end local v4    # "body":Ljava/lang/String;
    .end local v5    # "bodyJson":Lorg/json/JSONObject;
    .end local v8    # "i":I
    .end local v9    # "json":Lorg/json/JSONObject;
    .end local v11    # "obj":Lorg/json/JSONObject;
    .end local v12    # "webviewJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 100
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public parseJsonOnlyBody(Ljava/lang/String;)V
    .locals 12
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 29
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v2, "bodyJson":Lorg/json/JSONObject;
    const-string/jumbo v9, "type"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->showType:I

    .line 31
    const-string v9, "image_vertical_url"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageVerticalUrl:Ljava/lang/String;

    .line 32
    const-string v9, "image_vertical_md5"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageVerticalKey:Ljava/lang/String;

    .line 33
    const-string v9, "image_horizontal_url"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageHorizontalUrl:Ljava/lang/String;

    .line 34
    const-string v9, "image_horizontal_md5"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->imageHorizontalKey:Ljava/lang/String;

    .line 36
    const-string/jumbo v9, "webview_frame"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 37
    .local v8, "webviewJson":Lorg/json/JSONObject;
    if-nez v8, :cond_1

    .line 62
    .end local v2    # "bodyJson":Lorg/json/JSONObject;
    .end local v8    # "webviewJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 40
    .restart local v2    # "bodyJson":Lorg/json/JSONObject;
    .restart local v8    # "webviewJson":Lorg/json/JSONObject;
    :cond_1
    new-instance v9, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    invoke-direct {v9}, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;-><init>()V

    iput-object v9, p0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    .line 41
    iget-object v9, p0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    const-string/jumbo v10, "url"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->openurl:Ljava/lang/String;

    .line 42
    iget-object v9, p0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    const-string v10, "show_titlebar"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->boolFromString(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v9, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->showTitleBar:Z

    .line 43
    iget-object v9, p0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    const-string v10, "show_title"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->boolFromString(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v9, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->showTitle:Z

    .line 44
    const-string v9, "buttons"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 45
    .local v1, "array":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 46
    iget-object v9, p0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    iget-object v9, v9, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 47
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_0

    .line 48
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 49
    .local v7, "obj":Lorg/json/JSONObject;
    if-eqz v7, :cond_2

    .line 50
    const-string v9, "buttonId"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 51
    .local v3, "buttonId":I
    const-string v9, "action"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 52
    .local v0, "action":I
    const-string v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/tencent/msdk/realnameauth/model/CloudParameters;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    iget-object v9, v9, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->buttons:Ljava/util/ArrayList;

    new-instance v10, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;

    invoke-direct {v10, v6, v0, v3}, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "action":I
    .end local v3    # "buttonId":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 59
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "bodyJson":Lorg/json/JSONObject;
    .end local v5    # "i":I
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v8    # "webviewJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 60
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method
