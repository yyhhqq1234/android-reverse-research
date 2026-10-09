.class public Lcom/tencent/midas/download/APMidasPluginDownloadUtils;
.super Ljava/lang/Object;
.source "APMidasPluginDownloadUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PDUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/tencent/midas/download/APMidasPluginDownloadUtils;->writeMidasSignFile(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method static checkIniFileExist(Ljava/io/File;)Z
    .locals 3
    .param p0, "targetDir"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 178
    if-nez p0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 182
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    new-instance v0, Ljava/io/File;

    const-string v1, "MidasSign.ini"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    .local v0, "signFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method private static getPureH5UpdateJsAlertData(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 6
    .param p0, "alertMessage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0xb

    .line 115
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "midassdk://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_0

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "json":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "action"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "update"

    const-string v5, "action"

    .line 124
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "data"

    .line 125
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "data"

    .line 126
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 136
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v3

    .line 129
    .restart local v1    # "json":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static handlePureH5UpdateJsAlertLogic(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alertMessage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 270
    const/4 v2, 0x0

    .line 272
    .local v2, "result":Z
    if-nez p0, :cond_0

    .line 273
    const-string v5, "PDUtils"

    const-string v6, "Cannot handle h5 update logic! Null context!"

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 329
    .end local v2    # "result":Z
    .local v3, "result":Z
    :goto_0
    return v4

    .line 277
    .end local v3    # "result":Z
    .restart local v2    # "result":Z
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 278
    const-string v5, "PDUtils"

    const-string v6, "Cannot handle h5 update logic! Empty alert message!"

    invoke-static {v5, v6}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 279
    .end local v2    # "result":Z
    .restart local v3    # "result":Z
    goto :goto_0

    .line 282
    .end local v3    # "result":Z
    .restart local v2    # "result":Z
    :cond_1
    invoke-static {p1}, Lcom/tencent/midas/download/APMidasPluginDownloadUtils;->isPureH5UpdateJsAlert(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    const/4 v2, 0x1

    .line 286
    :cond_2
    invoke-static {p1}, Lcom/tencent/midas/download/APMidasPluginDownloadUtils;->getPureH5UpdateJsAlertData(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 288
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-nez v1, :cond_3

    .line 289
    const-string v4, "PDUtils"

    const-string v5, "Cannot handle h5 update logic! Not relevant message!"

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .end local v2    # "result":Z
    .restart local v3    # "result":Z
    move v4, v2

    .line 290
    goto :goto_0

    .line 293
    .end local v3    # "result":Z
    .restart local v2    # "result":Z
    :cond_3
    const-string v4, "PDUtils"

    const-string v5, "Got h5 update alert message!"

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {v1}, Lcom/tencent/midas/download/APMidasPluginDownloadUtils;->parseDownJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 297
    .local v0, "downInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/midas/download/APMidasPluginDownInfo;>;"
    if-nez v0, :cond_4

    .line 298
    const-string v4, "PDUtils"

    const-string v5, "Got h5 update alert message! Cannot parse json to list!"

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .end local v2    # "result":Z
    .restart local v3    # "result":Z
    move v4, v2

    .line 299
    goto :goto_0

    .line 302
    .end local v3    # "result":Z
    .restart local v2    # "result":Z
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_5

    .line 303
    const-string v4, "PDUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got h5 update alert message! Cannot parse json to list! Size error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 304
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 303
    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .end local v2    # "result":Z
    .restart local v3    # "result":Z
    move v4, v2

    .line 305
    goto :goto_0

    .line 308
    .end local v3    # "result":Z
    .restart local v2    # "result":Z
    :cond_5
    const-string v4, "PDUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got h5 update alert message! Start down lists = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 309
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 308
    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v4, Lcom/tencent/midas/download/APMidasPluginDownloadUtils$1;

    invoke-direct {v4, p0, v0}, Lcom/tencent/midas/download/APMidasPluginDownloadUtils$1;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p0, v0, v4}, Lcom/tencent/midas/download/APMidasPluginDownloadManager;->startDownload(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tencent/midas/download/IAPMidasPluginDownListener;)V

    move v3, v2

    .end local v2    # "result":Z
    .restart local v3    # "result":Z
    move v4, v2

    .line 329
    goto/16 :goto_0
.end method

.method private static isPureH5UpdateJsAlert(Ljava/lang/String;)Z
    .locals 7
    .param p0, "alertMessage"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xb

    const/4 v3, 0x0

    .line 149
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "midassdk://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_0

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "json":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "action"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "update"

    const-string v5, "action"

    .line 158
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    const-string v4, "PDUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPureH5UpdateJsAlert msg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v4, "PDUtils"

    const-string v5, "isPureH5UpdateJsAlert == true!"

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const/4 v3, 0x1

    .line 170
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v3

    .line 163
    .restart local v1    # "json":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseDownJson(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/midas/download/APMidasPluginDownInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 36
    if-nez p0, :cond_1

    .line 37
    const-string v10, "PDUtils"

    const-string v11, "Cannot parse down json! jsonArray is null!"

    invoke-static {v10, v11}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    .line 101
    :cond_0
    :goto_0
    return-object v5

    .line 42
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 43
    .local v0, "count":I
    if-nez v0, :cond_2

    .line 44
    const-string v10, "PDUtils"

    const-string v11, "Cannot parse down json! jsonArray length is 0!"

    invoke-static {v10, v11}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    .line 45
    goto :goto_0

    .line 48
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/midas/download/APMidasPluginDownInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 51
    new-instance v1, Lcom/tencent/midas/download/APMidasPluginDownInfo;

    invoke-direct {v1}, Lcom/tencent/midas/download/APMidasPluginDownInfo;-><init>()V

    .line 52
    .local v1, "downInfo":Lcom/tencent/midas/download/APMidasPluginDownInfo;
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 55
    .local v4, "item":Lorg/json/JSONObject;
    const-string v10, "file_name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/tencent/midas/download/APMidasPluginDownInfo;->name:Ljava/lang/String;

    .line 56
    iget-object v10, v1, Lcom/tencent/midas/download/APMidasPluginDownInfo;->name:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 57
    const-string v10, "PDUtils"

    const-string v11, "Cannot parse down json! item\'s name is empty!"

    invoke-static {v10, v11}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    .line 58
    goto :goto_0

    .line 62
    :cond_3
    const-string/jumbo v10, "update_md5"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/tencent/midas/download/APMidasPluginDownInfo;->new_md5_encode:Ljava/lang/String;

    .line 63
    iget-object v10, v1, Lcom/tencent/midas/download/APMidasPluginDownInfo;->new_md5_encode:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 64
    const-string v10, "PDUtils"

    const-string v11, "Cannot parse down json! item\'s new encode md5 is empty!"

    invoke-static {v10, v11}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v9

    .line 65
    goto :goto_0

    .line 71
    :cond_4
    :try_start_1
    iget-object v6, v1, Lcom/tencent/midas/download/APMidasPluginDownInfo;->new_md5_encode:Ljava/lang/String;

    .line 72
    .local v6, "rasMD5":Ljava/lang/String;
    new-instance v8, Lcom/tencent/midas/comm/APMidasRSATools;

    invoke-direct {v8}, Lcom/tencent/midas/comm/APMidasRSATools;-><init>()V

    .line 73
    .local v8, "rsaTools":Lcom/tencent/midas/comm/APMidasRSATools;
    invoke-virtual {v8, v6}, Lcom/tencent/midas/comm/APMidasRSATools;->deCodeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "rsaStr":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x20

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/tencent/midas/download/APMidasPluginDownInfo;->new_md5_decode:Ljava/lang/String;

    .line 75
    const-string v10, "PDUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parse down json! name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/tencent/midas/download/APMidasPluginDownInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " decode md5 success!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    .end local v6    # "rasMD5":Ljava/lang/String;
    .end local v7    # "rsaStr":Ljava/lang/String;
    .end local v8    # "rsaTools":Lcom/tencent/midas/comm/APMidasRSATools;
    :goto_2
    :try_start_2
    iget-object v10, v1, Lcom/tencent/midas/download/APMidasPluginDownInfo;->new_md5_decode:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 84
    const-string v10, "PDUtils"

    const-string v11, "Cannot parse down json! item\'s new decode md5 is empty!"

    invoke-static {v10, v11}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    .line 85
    goto/16 :goto_0

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    const-string v10, "PDUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot parse down json, decode md5 got exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 98
    .end local v0    # "count":I
    .end local v1    # "downInfo":Lcom/tencent/midas/download/APMidasPluginDownInfo;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v4    # "item":Lorg/json/JSONObject;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/midas/download/APMidasPluginDownInfo;>;"
    :catch_1
    move-exception v2

    .line 99
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    const-string v10, "PDUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot parse down json! exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    .line 101
    goto/16 :goto_0

    .line 88
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":I
    .restart local v1    # "downInfo":Lcom/tencent/midas/download/APMidasPluginDownInfo;
    .restart local v3    # "i":I
    .restart local v4    # "item":Lorg/json/JSONObject;
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/midas/download/APMidasPluginDownInfo;>;"
    :cond_5
    :try_start_3
    const-string v10, "full_download_url"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/tencent/midas/download/APMidasPluginDownInfo;->full_url:Ljava/lang/String;

    .line 89
    iget-object v10, v1, Lcom/tencent/midas/download/APMidasPluginDownInfo;->full_url:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 90
    const-string v10, "PDUtils"

    const-string v11, "Cannot parse down json! item\'s full url is empty!"

    invoke-static {v10, v11}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    .line 91
    goto/16 :goto_0

    .line 94
    :cond_6
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method private static writeMidasSignFile(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/midas/download/APMidasPluginDownInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/midas/download/APMidasPluginDownInfo;>;"
    if-nez p0, :cond_0

    .line 196
    const-string v13, "PDUtils"

    const-string v14, "Cannot write MidasSign.ini! null context!"

    invoke-static {v13, v14}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 200
    :cond_0
    if-nez p1, :cond_1

    .line 201
    const-string v13, "PDUtils"

    const-string v14, "Cannot write MidasSign.ini! null list!"

    invoke-static {v13, v14}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gtz v13, :cond_2

    .line 206
    const-string v13, "PDUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot write MidasSign.ini! list size error = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    const-string v12, ""

    .line 211
    .local v12, "stringSign":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "midaspluginsTemp"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 213
    .local v5, "file":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    const-string v13, "MidasSign.ini"

    invoke-direct {v11, v5, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 216
    .local v11, "signFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_3

    .line 217
    const-string v13, "PDUtils"

    const-string v14, "Cannot delete old MidasSign.ini file!"

    invoke-static {v13, v14}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 223
    .local v3, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v3, :cond_7

    .line 224
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tencent/midas/download/APMidasPluginDownInfo;

    iget-object v9, v13, Lcom/tencent/midas/download/APMidasPluginDownInfo;->name:Ljava/lang/String;

    .line 225
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 226
    const-string v13, "PDUtils"

    const-string v14, "Cannot write MidasSign.ini! item name empty!"

    invoke-static {v13, v14}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_4
    const-string v13, ".apk"

    invoke-virtual {v9, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 231
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".apk"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 234
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/tencent/midas/download/APMidasPluginDownInfo;

    iget-object v8, v13, Lcom/tencent/midas/download/APMidasPluginDownInfo;->new_md5_encode:Ljava/lang/String;

    .line 235
    .local v8, "mode":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 236
    const-string v13, "PDUtils"

    const-string v14, "Cannot write MidasSign.ini! item md5 empty!"

    invoke-static {v13, v14}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 240
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 241
    .local v10, "sign":Ljava/lang/String;
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v13, "\r\n"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 244
    .end local v8    # "mode":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "sign":Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 247
    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 248
    .local v6, "fw":Ljava/io/FileWriter;
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 249
    .local v2, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v2, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 251
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "fw":Ljava/io/FileWriter;
    :goto_2
    const-string v13, "PDUtils"

    const-string v14, "Write MidasSign.ini success!"

    invoke-static {v13, v14}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :catch_0
    move-exception v4

    .line 253
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    const-string v13, "PDUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Write MidasSign.ini got exception = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
