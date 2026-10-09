.class public final Lcom/tencent/hawk/bridge/QCCFetcher;
.super Ljava/lang/Object;
.source "QCCFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static isQccFileFetchInSession:Z

.field public static qccVersion:I


# instance fields
.field private isFetchDone:Z

.field private isQccFileReady:Z

.field private mCacheFileName:Ljava/lang/String;

.field private mCtx:Landroid/content/Context;

.field private mProjIden:Ljava/lang/String;

.field private mTargetName:Ljava/lang/String;

.field private maxTimeOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcom/tencent/hawk/bridge/QCCFetcher;->isQccFileFetchInSession:Z

    .line 25
    sput v0, Lcom/tencent/hawk/bridge/QCCFetcher;->qccVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "iden"    # Ljava/lang/String;
    .param p3, "cacheName"    # Ljava/lang/String;
    .param p4, "targetName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->isQccFileReady:Z

    .line 22
    iput-object v1, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->mCacheFileName:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->mTargetName:Ljava/lang/String;

    .line 26
    iput-boolean v0, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->isFetchDone:Z

    .line 27
    const/16 v0, 0x2710

    iput v0, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->maxTimeOut:I

    .line 30
    iput-object p1, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->mCtx:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->mProjIden:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->mCacheFileName:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->mTargetName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static cpAssetFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 189
    if-nez p0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 192
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    if-nez v0, :cond_2

    .line 193
    const-string v8, "find no assetManager"

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    const/4 v3, 0x0

    .line 197
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 199
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "QCC_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 201
    if-nez v3, :cond_4

    .line 202
    const-string v8, "find no default cache file"

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    if-eqz v3, :cond_3

    .line 219
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    :cond_3
    :goto_1
    if-eqz v5, :cond_0

    .line 227
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v2

    .line 229
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 220
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 221
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 205
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_3
    const-string v8, "apm_qcc_finally"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 206
    .local v4, "outFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .local v6, "outputStream":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 208
    .local v7, "read":I
    const/16 v8, 0x4000

    :try_start_4
    new-array v1, v8, [B

    .line 209
    .local v1, "bytes":[B
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    .line 211
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 212
    const-string v8, "cp file from asset done"

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->i(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    if-eqz v3, :cond_5

    .line 219
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 225
    :cond_5
    :goto_3
    if-eqz v6, :cond_0

    .line 227
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 228
    :catch_2
    move-exception v2

    .line 229
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 210
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    const/4 v8, 0x0

    :try_start_7
    invoke-virtual {v6, v1, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 213
    .end local v1    # "bytes":[B
    :catch_3
    move-exception v2

    move-object v5, v6

    .line 214
    .end local v4    # "outFile":Ljava/io/File;
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .end local v7    # "read":I
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cp asset file error :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 217
    if-eqz v3, :cond_7

    .line 219
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 225
    :cond_7
    :goto_5
    if-eqz v5, :cond_0

    .line 227
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 228
    :catch_4
    move-exception v2

    .line 229
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 220
    :catch_5
    move-exception v2

    .line 221
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 216
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 217
    :goto_6
    if-eqz v3, :cond_8

    .line 219
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 225
    :cond_8
    :goto_7
    if-eqz v5, :cond_9

    .line 227
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 232
    :cond_9
    :goto_8
    throw v8

    .line 220
    :catch_6
    move-exception v2

    .line 221
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 228
    .end local v2    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 229
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 220
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "bytes":[B
    .restart local v4    # "outFile":Ljava/io/File;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "read":I
    :catch_8
    move-exception v2

    .line 221
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 216
    .end local v1    # "bytes":[B
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 213
    .end local v4    # "outFile":Ljava/io/File;
    .end local v7    # "read":I
    :catch_9
    move-exception v2

    goto :goto_4
.end method

.method private doGet()Z
    .locals 24

    .prologue
    .line 38
    const-wide/16 v12, 0x0

    .line 39
    .local v12, "qccFetchCostTime":J
    const/4 v10, 0x0

    .line 40
    .local v10, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 41
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    const/16 v18, 0x0

    .line 42
    .local v18, "totalSize":I
    const/16 v19, 0x0

    .line 43
    .local v19, "url":Ljava/net/URL;
    const/4 v9, 0x0

    .line 44
    .local v9, "httpURLConnection":Ljava/net/HttpURLConnection;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v15, "strbuffer":Ljava/lang/StringBuilder;
    const-string v21, "https://cdn.wetest.qq.com/cube/com/apmcc/"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "QCC_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/QCCFetcher;->mProjIden:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    sget v21, Lcom/tencent/hawk/bridge/QCCFetcher;->qccVersion:I

    if-eqz v21, :cond_0

    .line 47
    const-string v21, "_"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/tencent/hawk/bridge/QCCFetcher;->qccVersion:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "begin to fetch qcc file:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tencent/hawk/bridge/HawkLogger;->i(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 52
    .local v16, "starttime":J
    :try_start_0
    new-instance v20, Ljava/net/URL;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    .end local v19    # "url":Ljava/net/URL;
    .local v20, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 54
    if-nez v9, :cond_4

    .line 122
    if-eqz v10, :cond_1

    .line 124
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    :goto_0
    const/4 v10, 0x0

    .line 131
    :cond_1
    if-eqz v9, :cond_2

    .line 132
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    const/4 v9, 0x0

    .line 136
    :cond_2
    if-eqz v2, :cond_3

    .line 138
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 142
    :goto_1
    const/4 v2, 0x0

    .line 55
    :cond_3
    const/16 v21, 0x0

    move-object/from16 v19, v20

    .line 145
    .end local v20    # "url":Ljava/net/URL;
    .restart local v19    # "url":Ljava/net/URL;
    :goto_2
    return v21

    .line 125
    .end local v19    # "url":Ljava/net/URL;
    .restart local v20    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 126
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 140
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 57
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/hawk/bridge/QCCFetcher;->maxTimeOut:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 58
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/hawk/bridge/QCCFetcher;->maxTimeOut:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 60
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 62
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v18

    .line 64
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "fetch qcc file, total size is "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tencent/hawk/bridge/HawkLogger;->i(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 67
    .local v14, "respcode":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v14, v0, :cond_5

    const/16 v21, 0x190

    move/from16 v0, v21

    if-lt v14, v0, :cond_9

    .line 68
    :cond_5
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 69
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Fetch qcc file : "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ,responseCode + "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 70
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 69
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 122
    if-eqz v10, :cond_6

    .line 124
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 128
    :goto_3
    const/4 v10, 0x0

    .line 131
    :cond_6
    if-eqz v9, :cond_7

    .line 132
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    const/4 v9, 0x0

    .line 136
    :cond_7
    if-eqz v2, :cond_8

    .line 138
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 142
    :goto_4
    const/4 v2, 0x0

    .line 72
    :cond_8
    const/16 v21, 0x0

    move-object/from16 v19, v20

    .end local v20    # "url":Ljava/net/URL;
    .restart local v19    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 125
    .end local v19    # "url":Ljava/net/URL;
    .restart local v20    # "url":Ljava/net/URL;
    :catch_2
    move-exception v5

    .line 126
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 139
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 140
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 74
    .end local v5    # "e":Ljava/io/IOException;
    :cond_9
    :try_start_7
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_10
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v10

    .line 75
    if-nez v10, :cond_d

    .line 122
    if-eqz v10, :cond_a

    .line 124
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 128
    :goto_5
    const/4 v10, 0x0

    .line 131
    :cond_a
    if-eqz v9, :cond_b

    .line 132
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    const/4 v9, 0x0

    .line 136
    :cond_b
    if-eqz v2, :cond_c

    .line 138
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 142
    :goto_6
    const/4 v2, 0x0

    .line 77
    :cond_c
    const/16 v21, 0x0

    move-object/from16 v19, v20

    .end local v20    # "url":Ljava/net/URL;
    .restart local v19    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 125
    .end local v19    # "url":Ljava/net/URL;
    .restart local v20    # "url":Ljava/net/URL;
    :catch_4
    move-exception v5

    .line 126
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 139
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 140
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 80
    .end local v5    # "e":Ljava/io/IOException;
    :cond_d
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/QCCFetcher;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/QCCFetcher;->mCacheFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v8

    .line 81
    .local v8, "fos":Ljava/io/FileOutputStream;
    if-nez v8, :cond_11

    .line 122
    if-eqz v10, :cond_e

    .line 124
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 128
    :goto_7
    const/4 v10, 0x0

    .line 131
    :cond_e
    if-eqz v9, :cond_f

    .line 132
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    const/4 v9, 0x0

    .line 136
    :cond_f
    if-eqz v2, :cond_10

    .line 138
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 142
    :goto_8
    const/4 v2, 0x0

    .line 84
    :cond_10
    const/16 v21, 0x0

    move-object/from16 v19, v20

    .end local v20    # "url":Ljava/net/URL;
    .restart local v19    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 125
    .end local v19    # "url":Ljava/net/URL;
    .restart local v20    # "url":Ljava/net/URL;
    :catch_6
    move-exception v5

    .line 126
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 139
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 140
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 86
    .end local v5    # "e":Ljava/io/IOException;
    :cond_11
    :try_start_d
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_10
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 88
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    const/16 v21, 0x1000

    :try_start_e
    move/from16 v0, v21

    new-array v4, v0, [B

    .line 89
    .local v4, "buffer":[B
    const/4 v11, 0x0

    .line 91
    .local v11, "readsize":I
    :goto_9
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_14

    .line 95
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 96
    const/4 v4, 0x0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 99
    .local v6, "endtime":J
    sub-long v12, v6, v16

    .line 100
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "finish fetch qcc file, cost time is "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tencent/hawk/bridge/HawkLogger;->i(Ljava/lang/String;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/QCCFetcher;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/QCCFetcher;->mCacheFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/QCCFetcher;->mTargetName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/tencent/hawk/bridge/FileUtil;->cpFileWithCtx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_18

    .line 104
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "copy file error: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/QCCFetcher;->mCacheFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/QCCFetcher;->mTargetName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 110
    :goto_a
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/hawk/bridge/QCCFetcher;->isQccFileReady:Z

    .line 111
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/hawk/bridge/QCCFetcher;->isFetchDone:Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 122
    if-eqz v10, :cond_12

    .line 124
    :try_start_f
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 128
    :goto_b
    const/4 v10, 0x0

    .line 131
    :cond_12
    if-eqz v9, :cond_13

    .line 132
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    const/4 v9, 0x0

    .line 136
    :cond_13
    if-eqz v3, :cond_1c

    .line 138
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 142
    :goto_c
    const/4 v2, 0x0

    .line 113
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    :goto_d
    const/16 v21, 0x1

    move-object/from16 v19, v20

    .end local v20    # "url":Ljava/net/URL;
    .restart local v19    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 92
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "endtime":J
    .end local v19    # "url":Ljava/net/URL;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v20    # "url":Ljava/net/URL;
    :cond_14
    const/16 v21, 0x0

    :try_start_11
    move/from16 v0, v21

    invoke-virtual {v3, v4, v0, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_9

    .line 114
    .end local v4    # "buffer":[B
    .end local v11    # "readsize":I
    :catch_8
    move-exception v5

    move-object/from16 v19, v20

    .end local v20    # "url":Ljava/net/URL;
    .restart local v19    # "url":Ljava/net/URL;
    move-object v2, v3

    .line 115
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "respcode":I
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_e
    :try_start_12
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/hawk/bridge/QCCFetcher;->maxTimeOut:I

    move/from16 v21, v0

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/hawk/bridge/QCCFetcher;->maxTimeOut:I

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/QCCFetcher;->mCtx:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/QCCFetcher;->mCacheFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 118
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "fetch qcc file failed"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 119
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/hawk/bridge/QCCFetcher;->isQccFileReady:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 122
    if-eqz v10, :cond_15

    .line 124
    :try_start_13
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    .line 128
    :goto_f
    const/4 v10, 0x0

    .line 131
    :cond_15
    if-eqz v9, :cond_16

    .line 132
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    const/4 v9, 0x0

    .line 136
    :cond_16
    if-eqz v2, :cond_17

    .line 138
    :try_start_14
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    .line 142
    :goto_10
    const/4 v2, 0x0

    .line 145
    :cond_17
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 107
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v19    # "url":Ljava/net/URL;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "endtime":J
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "readsize":I
    .restart local v14    # "respcode":I
    .restart local v20    # "url":Ljava/net/URL;
    :cond_18
    :try_start_15
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "copy file successed: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/QCCFetcher;->mCacheFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/QCCFetcher;->mTargetName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_a

    .line 121
    .end local v4    # "buffer":[B
    .end local v6    # "endtime":J
    .end local v11    # "readsize":I
    :catchall_0
    move-exception v21

    move-object/from16 v19, v20

    .end local v20    # "url":Ljava/net/URL;
    .restart local v19    # "url":Ljava/net/URL;
    move-object v2, v3

    .line 122
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "respcode":I
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    :goto_11
    if-eqz v10, :cond_19

    .line 124
    :try_start_16
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_d

    .line 128
    :goto_12
    const/4 v10, 0x0

    .line 131
    :cond_19
    if-eqz v9, :cond_1a

    .line 132
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 133
    const/4 v9, 0x0

    .line 136
    :cond_1a
    if-eqz v2, :cond_1b

    .line 138
    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    .line 142
    :goto_13
    const/4 v2, 0x0

    .line 144
    :cond_1b
    throw v21

    .line 125
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v19    # "url":Ljava/net/URL;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "endtime":J
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "readsize":I
    .restart local v14    # "respcode":I
    .restart local v20    # "url":Ljava/net/URL;
    :catch_9
    move-exception v5

    .line 126
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    .line 139
    .end local v5    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v5

    .line 140
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    .line 125
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v6    # "endtime":J
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "readsize":I
    .end local v14    # "respcode":I
    .end local v20    # "url":Ljava/net/URL;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v19    # "url":Ljava/net/URL;
    :catch_b
    move-exception v5

    .line 126
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 139
    :catch_c
    move-exception v5

    .line 140
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 125
    .end local v5    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v5

    .line 126
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 139
    .end local v5    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v5

    .line 140
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 121
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v21

    goto :goto_11

    .end local v19    # "url":Ljava/net/URL;
    .restart local v20    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v21

    move-object/from16 v19, v20

    .end local v20    # "url":Ljava/net/URL;
    .restart local v19    # "url":Ljava/net/URL;
    goto :goto_11

    .line 114
    :catch_f
    move-exception v5

    goto/16 :goto_e

    .end local v19    # "url":Ljava/net/URL;
    .restart local v20    # "url":Ljava/net/URL;
    :catch_10
    move-exception v5

    move-object/from16 v19, v20

    .end local v20    # "url":Ljava/net/URL;
    .restart local v19    # "url":Ljava/net/URL;
    goto/16 :goto_e

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v19    # "url":Ljava/net/URL;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "endtime":J
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "readsize":I
    .restart local v14    # "respcode":I
    .restart local v20    # "url":Ljava/net/URL;
    :cond_1c
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    goto/16 :goto_d
.end method


# virtual methods
.method public asynFetchQcc(I)V
    .locals 4
    .param p1, "version"    # I

    .prologue
    .line 161
    const-string v2, "begin to fetch qcc file async"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 162
    sget-boolean v2, Lcom/tencent/hawk/bridge/QCCFetcher;->isQccFileFetchInSession:Z

    if-eqz v2, :cond_0

    .line 173
    :goto_0
    return-void

    .line 163
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/tencent/hawk/bridge/QCCFetcher;->isQccFileFetchInSession:Z

    .line 164
    iget-object v2, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->mCtx:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->mTargetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 165
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete temp failed in asyncfetch "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->mTargetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 168
    :cond_1
    sput p1, Lcom/tencent/hawk/bridge/QCCFetcher;->qccVersion:I

    .line 169
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->isQccFileReady:Z

    .line 170
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 171
    .local v1, "temp":Ljava/lang/Thread;
    const-string v2, "QccFetcherThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public checkQccFileReady()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->isQccFileReady:Z

    return v0
.end method

.method public resetQccFileReady()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->isQccFileReady:Z

    .line 185
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "fetchTimes":I
    :cond_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->isFetchDone:Z

    if-eqz v1, :cond_2

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 153
    invoke-direct {p0}, Lcom/tencent/hawk/bridge/QCCFetcher;->doGet()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public setQccFileReady()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/hawk/bridge/QCCFetcher;->isQccFileReady:Z

    .line 181
    return-void
.end method
