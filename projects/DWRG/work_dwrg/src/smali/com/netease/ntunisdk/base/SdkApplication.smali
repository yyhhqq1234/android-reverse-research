.class public abstract Lcom/netease/ntunisdk/base/SdkApplication;
.super Ljava/lang/Object;
.source "SdkApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniSDK SdkApplication"


# instance fields
.field protected myCtx:Landroid/content/Context;

.field private propDict:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/netease/ntunisdk/base/SdkApplication;->propDict:Ljava/util/Hashtable;

    .line 38
    const-string v1, "UniSDK SdkApplication"

    const-string v2, "SdkApplication construct"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkApplication;->myCtx:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "deviceId":Ljava/lang/String;
    const-string v1, "DEVICE_ID"

    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "UDID"

    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->readCommonConfig(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->readConfig(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 131
    return-void
.end method

.method private doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "validate"    # Z

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, "val":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/base/SdkApplication;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 144
    const-string v2, "UniSDK SdkApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doConfigVal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-eqz p3, :cond_2

    .line 146
    invoke-static {v1}, Lcom/netease/ntunisdk/base/utils/StrUtil;->validate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/netease/ntunisdk/base/SdkApplication;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "UniSDK SdkApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getAppChannelFromApk(Landroid/content/Context;)Ljava/lang/String;
    .locals 19
    .param p1, "myCtx"    # Landroid/content/Context;

    .prologue
    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 385
    .local v3, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v11, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 387
    .local v11, "sourceDir":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "META-INF"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "appchannel"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 388
    .local v10, "key":Ljava/lang/String;
    const/4 v14, 0x0

    .line 389
    .local v14, "zipfile":Ljava/util/zip/ZipFile;
    const/4 v4, 0x0

    .line 390
    .local v4, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 392
    .local v2, "appChannel":Ljava/lang/String;
    :try_start_0
    new-instance v15, Ljava/util/zip/ZipFile;

    invoke-direct {v15, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    .end local v14    # "zipfile":Ljava/util/zip/ZipFile;
    .local v15, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .line 394
    .local v7, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 395
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 396
    .local v8, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 397
    .local v9, "entryName":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 398
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    .line 399
    .local v12, "size":J
    const-string v16, "UniSDK SdkApplication"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " size:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-lez v16, :cond_1

    .line 401
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/InputStreamReader;

    invoke-virtual {v15, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v17

    const-string v18, "UTF-8"

    invoke-direct/range {v16 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 402
    .end local v4    # "br":Ljava/io/BufferedReader;
    .local v5, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    move-object v4, v5

    .line 410
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "entryName":Ljava/lang/String;
    .end local v12    # "size":J
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v4, :cond_2

    .line 412
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 417
    :cond_2
    :goto_0
    if-eqz v15, :cond_8

    .line 419
    :try_start_4
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v14, v15

    .line 425
    .end local v7    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v15    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v14    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_3
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 426
    const-string v16, "UniSDK SdkApplication"

    const-string v17, "META-INF appchannel is null"

    invoke-static/range {v16 .. v17}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :goto_2
    return-object v2

    .line 413
    .end local v14    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v15    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v6

    .line 414
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 420
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 421
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v14, v15

    .line 422
    .end local v15    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v14    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 407
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :catch_2
    move-exception v6

    .line 408
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 410
    if-eqz v4, :cond_4

    .line 412
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 417
    :cond_4
    :goto_4
    if-eqz v14, :cond_3

    .line 419
    :try_start_7
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 420
    :catch_3
    move-exception v6

    .line 421
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 413
    :catch_4
    move-exception v6

    .line 414
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 410
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    :goto_5
    if-eqz v4, :cond_5

    .line 412
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 417
    :cond_5
    :goto_6
    if-eqz v14, :cond_6

    .line 419
    :try_start_9
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 422
    :cond_6
    :goto_7
    throw v16

    .line 413
    :catch_5
    move-exception v6

    .line 414
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 420
    .end local v6    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 421
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 428
    .end local v6    # "e":Ljava/io/IOException;
    :cond_7
    const-string v16, "UniSDK SdkApplication"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "META-INF appchannel is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v16, "APP_CHANNEL"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 410
    .end local v14    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v15    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v16

    move-object v14, v15

    .end local v15    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v14    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_5

    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v14    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v8    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "entryName":Ljava/lang/String;
    .restart local v12    # "size":J
    .restart local v15    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v16

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    move-object v14, v15

    .end local v15    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v14    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_5

    .line 407
    .end local v7    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "entryName":Ljava/lang/String;
    .end local v12    # "size":J
    .end local v14    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v15    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v6

    move-object v14, v15

    .end local v15    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v14    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_3

    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v14    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v8    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "entryName":Ljava/lang/String;
    .restart local v12    # "size":J
    .restart local v15    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_8
    move-exception v6

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    move-object v14, v15

    .end local v15    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v14    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_3

    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "entryName":Ljava/lang/String;
    .end local v12    # "size":J
    .end local v14    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v15    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_8
    move-object v14, v15

    .end local v15    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v14    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1
.end method

.method private readCommonConfig(Landroid/content/Context;)V
    .locals 14
    .param p1, "myCtx"    # Landroid/content/Context;

    .prologue
    .line 162
    const/4 v9, 0x0

    .line 163
    .local v9, "jsonStr":Ljava/lang/String;
    const-string v5, "ntunisdk_common_data"

    .line 165
    .local v5, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v5, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7

    .line 166
    .local v7, "is":Ljava/io/InputStream;
    if-nez v7, :cond_1

    .line 167
    const-string v11, "UniSDK SdkApplication"

    const-string v12, "ntunisdk_common_data null"

    invoke-static {v11, v12}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .end local v7    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 170
    .restart local v7    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 171
    .local v6, "index":I
    if-eqz v6, :cond_0

    .line 174
    new-array v3, v6, [B

    .line 175
    .local v3, "data":[B
    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    .line 177
    new-instance v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v10, v3, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "jsonStr":Ljava/lang/String;
    .local v10, "jsonStr":Ljava/lang/String;
    move-object v9, v10

    .line 183
    .end local v3    # "data":[B
    .end local v6    # "index":I
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v10    # "jsonStr":Ljava/lang/String;
    .restart local v9    # "jsonStr":Ljava/lang/String;
    :goto_1
    if-nez v9, :cond_2

    .line 184
    const-string v11, "UniSDK SdkApplication"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is null"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :catch_0
    move-exception v4

    .line 180
    .local v4, "e":Ljava/io/IOException;
    const-string v11, "UniSDK SdkApplication"

    const-string v12, "ntunisdk_common_data config not found"

    invoke-static {v11, v12}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 187
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    const-string v11, "UniSDK SdkApplication"

    invoke-static {v11, v9}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v11, "\uff1a"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "\u201c"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "\u201d"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 192
    :cond_3
    const-string v11, "UniSDK SdkApplication"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\u5305\u542b\u4e2d\u6587\u7279\u6b8a\u5b57\u7b26"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_4
    new-instance v8, Lorg/json/JSONTokener;

    invoke-direct {v8, v9}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 196
    .local v8, "jsonParser":Lorg/json/JSONTokener;
    const/4 v2, 0x0

    .line 198
    .local v2, "conf":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v8}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    .line 199
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkApplication;->getAppChannel()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 200
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->getAppChannelFromApk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "appchannel":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 202
    const-string v11, "APP_CHANNEL"

    const/4 v12, 0x0

    invoke-direct {p0, v2, v11, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 205
    .end local v1    # "appchannel":Ljava/lang/String;
    :cond_5
    const-string v11, "JF_GAMEID"

    invoke-direct {p0, v2, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 206
    :catch_1
    move-exception v4

    .line 207
    .local v4, "e":Lorg/json/JSONException;
    const-string v11, "UniSDK SdkApplication"

    const-string v12, "ntunisdk_common_data config parse to json error"

    invoke-static {v11, v12}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected doSepcialConfigVal(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 158
    return-void
.end method

.method public getAppChannel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    const-string v0, "UniSDK SdkApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP_CHANNEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "APP_CHANNEL"

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/base/SdkApplication;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "APP_CHANNEL"

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/base/SdkApplication;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getChannel()Ljava/lang/String;
.end method

.method public getPropInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "defaultVal"    # I

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "val":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 117
    .end local p2    # "defaultVal":I
    :goto_0
    return p2

    .line 115
    .restart local p2    # "defaultVal":I
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getPropStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prop"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkApplication;->propDict:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkApplication;->propDict:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleOnApplicationAttachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 54
    return-void
.end method

.method public handleOnApplicationAttachBaseContext(Landroid/content/Context;Landroid/app/Application;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "application"    # Landroid/app/Application;

    .prologue
    .line 69
    return-void
.end method

.method public handleOnApplicationOnCreate(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 61
    return-void
.end method

.method public handleOnApplicationOnCreate(Landroid/content/Context;Landroid/app/Application;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "application"    # Landroid/app/Application;

    .prologue
    .line 77
    return-void
.end method

.method protected readConfig(Landroid/content/Context;)V
    .locals 14
    .param p1, "myCtx"    # Landroid/content/Context;

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "_jsonStr":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkApplication;->getChannel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v6, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v8

    .line 217
    .local v8, "is":Ljava/io/InputStream;
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v7

    .line 218
    .local v7, "index":I
    if-nez v7, :cond_0

    .line 219
    const-string v11, "UniSDK SdkApplication"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is empty"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .end local v7    # "index":I
    .end local v8    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 222
    .restart local v7    # "index":I
    .restart local v8    # "is":Ljava/io/InputStream;
    :cond_0
    new-array v4, v7, [B

    .line 223
    .local v4, "data":[B
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    .line 224
    new-instance v1, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v1, v4, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "_jsonStr":Ljava/lang/String;
    .local v1, "_jsonStr":Ljava/lang/String;
    move-object v0, v1

    .line 228
    .end local v1    # "_jsonStr":Ljava/lang/String;
    .end local v4    # "data":[B
    .end local v7    # "index":I
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v0    # "_jsonStr":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 229
    const-string v11, "UniSDK SdkApplication"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is empty"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :catch_0
    move-exception v5

    .line 226
    .local v5, "e":Ljava/io/IOException;
    const-string v11, "UniSDK SdkApplication"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " read exception"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 233
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    move-object v10, v0

    .line 235
    .local v10, "jsonStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/StrUtil;->isBase64(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 236
    new-instance v10, Ljava/lang/String;

    .end local v10    # "jsonStr":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v0, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    .restart local v10    # "jsonStr":Ljava/lang/String;
    :cond_2
    :goto_2
    if-nez v10, :cond_3

    .line 244
    const-string v11, "UniSDK SdkApplication"

    const-string v12, " null jsonStr"

    invoke-static {v11, v12}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    .end local v10    # "jsonStr":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 239
    .local v5, "e":Ljava/lang/Exception;
    move-object v10, v0

    .line 240
    .restart local v10    # "jsonStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 249
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v11, "\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "\u201c"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "\u201d"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 250
    :cond_4
    const-string v11, "UniSDK SdkApplication"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\u5305\u542b\u4e2d\u6587\u7279\u6b8a\u5b57\u7b26"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_5
    new-instance v9, Lorg/json/JSONTokener;

    invoke-direct {v9, v10}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 256
    .local v9, "jsonParser":Lorg/json/JSONTokener;
    :try_start_2
    invoke-virtual {v9}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 257
    .local v3, "conf":Lorg/json/JSONObject;
    const-string v11, "UNISDK_SERVER_KEY"

    const/4 v12, 0x0

    invoke-direct {p0, v3, v11, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 258
    const-string v11, "UNISDK_SERVER_KEY"

    invoke-virtual {p0, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/netease/ntunisdk/base/utils/StrUtil;->setKey(Ljava/lang/String;)V

    .line 259
    const-string v11, "GAMEID"

    const/4 v12, 0x0

    invoke-direct {p0, v3, v11, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 260
    const-string v11, "APP_KEY"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 261
    const-string v11, "APP_SECRET"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 262
    const-string v11, "APPID"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 263
    const-string v11, "APP_NAME"

    const/4 v12, 0x0

    invoke-direct {p0, v3, v11, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 264
    const-string v11, "APP_LOCATION"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 265
    const-string v11, "APP_VERSION"

    const/4 v12, 0x0

    invoke-direct {p0, v3, v11, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 266
    const-string v11, "SCR_ORIENTATION"

    const/4 v12, 0x0

    invoke-direct {p0, v3, v11, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 267
    const-string v11, "CPID"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 268
    const-string v11, "CP_KEY"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 269
    const-string v11, "SERVER_ID"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 270
    const-string v11, "PAY_CB_URL"

    const/4 v12, 0x0

    invoke-direct {p0, v3, v11, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 271
    const-string v11, "RSA_PRIVATE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 272
    const-string v11, "RSA_PUBLIC"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 273
    const-string v11, "SDK_UPDATE_CHECK_STRICT"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 274
    const-string v11, "BUOY_PRIVATEKEY"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 275
    const-string v11, "USER_ID"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 276
    const-string v11, "PACKET_ID"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 277
    const-string v11, "EXCHANGE_RATE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 278
    const-string v11, "EXCHANGE_UNIT"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 279
    const-string v11, "CHANNEL_ID"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 280
    const-string v11, "SPLASH"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 281
    const-string v11, "SPLASH_TIME"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 282
    const-string v11, "SPLASH_COLOR"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 283
    const-string v11, "SPLASH_SECOND"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 284
    const-string v11, "DEBUG_MODE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkApplication;->getAppChannel()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 286
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;->getAppChannelFromApk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "appchannel":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 288
    const-string v11, "APP_CHANNEL"

    const/4 v12, 0x0

    invoke-direct {p0, v3, v11, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 291
    .end local v2    # "appchannel":Ljava/lang/String;
    :cond_6
    const-string v11, "LAUNCHER_NAME"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 292
    const-string v11, "APPSFLYER_DEV_KEY"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 293
    const-string v11, "ADVERTISER_APPID"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 294
    const-string v11, "TIMELINE_KEY"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 295
    const-string v11, "PLATFORM_KEY"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 296
    const-string v11, "GAME_REGION"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 297
    const-string v11, "CN"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 298
    const-string v11, "AS"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 299
    const-string v11, "US"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 300
    const-string v11, "SA"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 301
    const-string v11, "GAME_ENGINE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 302
    const-string v11, "CC_SHOW_FPS_SETTING"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 303
    const-string v11, "CC_DEFAULT_FPS"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 304
    const-string v11, "PAYTYPE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 305
    const-string v11, "PAYCODE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 306
    const-string v11, "MONTHTYPE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 307
    const-string v11, "LIANYUN"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 308
    const-string v11, "SINGLE_CB"

    const/4 v12, 0x0

    invoke-direct {p0, v3, v11, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 309
    const-string v11, "DK_APPID"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 310
    const-string v11, "DK_APP_KEY"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 311
    const-string v11, "SHARE_QQ_API"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 312
    const-string v11, "SHARE_WEIBO_API"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 313
    const-string v11, "SHARE_WEIXIN_API"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 314
    const-string v11, "SHARE_YIXIN_API"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 315
    const-string v11, "ENABLE_EXLOGIN_GUEST"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 316
    const-string v11, "ENABLE_EXLOGIN_WEIBO"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 317
    const-string v11, "ENABLE_EXLOGIN_MOBILE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 318
    const-string v11, "ENABLE_EXLOGIN_GOOGLEPLUS"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 319
    const-string v11, "DATA_REPORT_MODE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 320
    const-string v11, "GAME_NAME"

    const/4 v12, 0x0

    invoke-direct {p0, v3, v11, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 321
    const-string v11, "RETRIEVE_USER"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 322
    const-string v11, "DOMAIN"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 323
    const-string v11, "QQ_APPID"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 324
    const-string v11, "QQ_APP_KEY"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 325
    const-string v11, "WX_APPID"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 326
    const-string v11, "WX_APP_KEY"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 327
    const-string v11, "WEIBO_SSO_APP_KEY"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 328
    const-string v11, "WEIBO_SSO_URL"

    const/4 v12, 0x0

    invoke-direct {p0, v3, v11, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 329
    const-string v11, "OFFER_ID"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 330
    const-string v11, "VERIFY_MODE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 331
    const-string v11, "REQUEST_UNISDK_SERVER"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 332
    const-string v11, "UNISDK_CREATEORDER_URL"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 333
    const-string v11, "UNISDK_QUERYORDER_URL"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 334
    const-string v11, "UNISDK_CONSUMEORDER_URL"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 335
    const-string v11, "LANGUAGE_CODE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 336
    const-string v11, "COUNTRY_CODE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 337
    const-string v11, "PURCHASE_REG_SERVER"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 338
    const-string v11, "SPLASH_TYPE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 339
    const-string v11, "REQUEST_CMCC_PAYTYPE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 340
    const-string v11, "DEFAULT_CMCC_PAYTYPE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 341
    const-string v11, "GAME_VERSION"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 342
    const-string v11, "DERIVE_CHANNEL"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 343
    const-string v11, "CMCC_PAYTYPE_URL"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 344
    const-string v11, "JF_LOG_KEY"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 345
    const-string v11, "JF_OPEN_LOG_URL"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 346
    const-string v11, "JF_PAY_LOG_URL"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 347
    const-string v11, "JF_GAMEID"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 348
    const-string v11, "HAS_PAY_CB"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 349
    const-string v11, "NEED_PLAY_GAME_SERVICE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 350
    const-string v11, "UNISDK_SERVER_URL"

    const/4 v12, 0x0

    invoke-direct {p0, v3, v11, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 351
    const-string v11, "ENABLE_UNISDK_GUEST_DISCONNECT"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 352
    const-string v11, "ENABLE_UNISDK_GUEST_UI"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 353
    const-string v11, "FLOATBTN_CLOSED"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 354
    const-string v11, "FLOAT_BTN_POS"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 355
    const-string v11, "UPDATE_CHECK_URL"

    const/4 v12, 0x0

    invoke-direct {p0, v3, v11, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 356
    const-string v11, "UPDATE_DOWNLOAD_URL"

    const/4 v12, 0x0

    invoke-direct {p0, v3, v11, v12}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 357
    const-string v11, "UNISDK_SERVER_MODE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 358
    const-string v11, "UNISDK_SERVER_EXTPARAM"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 359
    const-string v11, "UNISDK_EXT_INFO"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 360
    const-string v11, "CODE_SCANNER_PAY_URL"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 361
    const-string v11, "ENABLE_TV"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 362
    const-string v11, "EXTERNAL_OP_LIST"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 363
    const-string v11, "UNISDK_JF_GAS3"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 364
    const-string v11, "UNISDK_JF_GAS3_WEB"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 365
    const-string v11, "UNISDK_JF_GAS3_URL"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 366
    const-string v11, "SKIN_TYPE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 367
    const-string v11, "FLOW_CODE"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 368
    const-string v11, "FLOW_KEY"

    invoke-direct {p0, v3, v11}, Lcom/netease/ntunisdk/base/SdkApplication;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/base/SdkApplication;->doSepcialConfigVal(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 372
    .end local v3    # "conf":Lorg/json/JSONObject;
    :catch_2
    move-exception v5

    .line 373
    .local v5, "e":Lorg/json/JSONException;
    const-string v11, "UniSDK SdkApplication"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkApplication;->getChannel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_data config parse to json error"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string v0, "UniSDK SdkApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "val:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkApplication;->propDict:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method
