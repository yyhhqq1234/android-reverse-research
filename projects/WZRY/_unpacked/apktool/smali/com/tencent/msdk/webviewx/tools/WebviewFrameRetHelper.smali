.class public Lcom/tencent/msdk/webviewx/tools/WebviewFrameRetHelper;
.super Ljava/lang/Object;
.source "WebviewFrameRetHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static boolFromString(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "strValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 52
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 58
    .end local p1    # "defaultValue":Z
    :cond_0
    :goto_0
    return p1

    .line 55
    .restart local p1    # "defaultValue":Z
    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    const/4 p1, 0x1

    goto :goto_0

    .line 58
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static json2WebveiwFrameRet(Ljava/lang/String;)Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;
    .locals 12
    .param p0, "webJsonStr"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 18
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .local v8, "webviewJson":Lorg/json/JSONObject;
    if-nez v8, :cond_1

    move-object v7, v9

    .line 42
    .end local v8    # "webviewJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v7

    .line 22
    .restart local v8    # "webviewJson":Lorg/json/JSONObject;
    :cond_1
    new-instance v7, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    invoke-direct {v7}, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;-><init>()V

    .line 23
    .local v7, "webveiwFrameRet":Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;
    const-string/jumbo v10, "url"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->openurl:Ljava/lang/String;

    .line 24
    const-string v10, "show_titlebar"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/tencent/msdk/webviewx/tools/WebviewFrameRetHelper;->boolFromString(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v7, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->showTitleBar:Z

    .line 25
    const-string v10, "show_title"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/tencent/msdk/webviewx/tools/WebviewFrameRetHelper;->boolFromString(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v7, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->showTitle:Z

    .line 26
    const-string v10, "buttons"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 27
    .local v1, "array":Lorg/json/JSONArray;
    iget-object v10, v7, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 28
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 29
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 30
    .local v6, "obj":Lorg/json/JSONObject;
    if-eqz v6, :cond_2

    .line 31
    const-string v10, "buttonId"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 32
    .local v2, "buttonId":I
    const-string v10, "action"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 33
    .local v0, "action":I
    const-string v10, "name"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, "name":Ljava/lang/String;
    iget-object v10, v7, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->buttons:Ljava/util/ArrayList;

    new-instance v11, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;

    invoke-direct {v11, v5, v0, v2}, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v0    # "action":I
    .end local v2    # "buttonId":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 39
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v7    # "webveiwFrameRet":Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;
    .end local v8    # "webviewJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 40
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    move-object v7, v9

    .line 42
    goto :goto_0
.end method
