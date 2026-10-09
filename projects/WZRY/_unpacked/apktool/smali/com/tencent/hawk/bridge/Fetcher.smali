.class public Lcom/tencent/hawk/bridge/Fetcher;
.super Ljava/lang/Object;
.source "Fetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private isFetchDone:Z

.field private mCtx:Landroid/content/Context;

.field private mProjIden:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "iden"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/tencent/hawk/bridge/Fetcher;->mCtx:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/tencent/hawk/bridge/Fetcher;->mProjIden:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/hawk/bridge/Fetcher;->isFetchDone:Z

    .line 24
    return-void
.end method

.method private doGet()Z
    .locals 22

    .prologue
    .line 27
    const/4 v10, 0x0

    .line 28
    .local v10, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 30
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    const/16 v16, 0x0

    .line 31
    .local v16, "url":Ljava/net/URL;
    const/4 v9, 0x0

    .line 32
    .local v9, "httpURLConnection":Ljava/net/HttpURLConnection;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v13, "strbuffer":Ljava/lang/StringBuilder;
    const-string v18, "https://cdn.wetest.qq.com/cube/com/apmcc/"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/Fetcher;->mProjIden:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Begin to fetch config: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 38
    .local v14, "starttime":J
    :try_start_0
    new-instance v17, Ljava/net/URL;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .end local v16    # "url":Ljava/net/URL;
    .local v17, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    if-nez v9, :cond_3

    .line 87
    if-eqz v10, :cond_0

    .line 89
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    :goto_0
    const/4 v10, 0x0

    .line 96
    :cond_0
    if-eqz v9, :cond_1

    .line 97
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 98
    const/4 v9, 0x0

    .line 101
    :cond_1
    if-eqz v2, :cond_2

    .line 103
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 107
    :goto_1
    const/4 v2, 0x0

    .line 40
    :cond_2
    const/16 v18, 0x0

    move-object/from16 v16, v17

    .line 85
    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    :goto_2
    return v18

    .line 90
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 91
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 105
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 41
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    const/16 v18, 0x2710

    :try_start_4
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 42
    const/16 v18, 0x2710

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 44
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 48
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 49
    .local v12, "respcode":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_4

    const/16 v18, 0x190

    move/from16 v0, v18

    if-lt v12, v0, :cond_8

    .line 50
    :cond_4
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 51
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "url resp code : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 87
    if-eqz v10, :cond_5

    .line 89
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 93
    :goto_3
    const/4 v10, 0x0

    .line 96
    :cond_5
    if-eqz v9, :cond_6

    .line 97
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 98
    const/4 v9, 0x0

    .line 101
    :cond_6
    if-eqz v2, :cond_7

    .line 103
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 107
    :goto_4
    const/4 v2, 0x0

    .line 52
    :cond_7
    const/16 v18, 0x0

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto :goto_2

    .line 90
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_2
    move-exception v5

    .line 91
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 104
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 105
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 58
    .end local v5    # "e":Ljava/io/IOException;
    :cond_8
    :try_start_7
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v10

    .line 59
    if-nez v10, :cond_c

    .line 87
    if-eqz v10, :cond_9

    .line 89
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 93
    :goto_5
    const/4 v10, 0x0

    .line 96
    :cond_9
    if-eqz v9, :cond_a

    .line 97
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 98
    const/4 v9, 0x0

    .line 101
    :cond_a
    if-eqz v2, :cond_b

    .line 103
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 107
    :goto_6
    const/4 v2, 0x0

    .line 60
    :cond_b
    const/16 v18, 0x0

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 90
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_4
    move-exception v5

    .line 91
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 104
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 105
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 62
    .end local v5    # "e":Ljava/io/IOException;
    :cond_c
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/Fetcher;->mCtx:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "apm_cc"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_12
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v8

    .line 63
    .local v8, "fos":Ljava/io/FileOutputStream;
    if-nez v8, :cond_10

    .line 87
    if-eqz v10, :cond_d

    .line 89
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 93
    :goto_7
    const/4 v10, 0x0

    .line 96
    :cond_d
    if-eqz v9, :cond_e

    .line 97
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 98
    const/4 v9, 0x0

    .line 101
    :cond_e
    if-eqz v2, :cond_f

    .line 103
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 107
    :goto_8
    const/4 v2, 0x0

    .line 63
    :cond_f
    const/16 v18, 0x0

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 90
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_6
    move-exception v5

    .line 91
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 104
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 105
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 64
    .end local v5    # "e":Ljava/io/IOException;
    :cond_10
    :try_start_d
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_12
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 65
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    if-nez v3, :cond_13

    .line 87
    if-eqz v10, :cond_11

    .line 89
    :try_start_e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 93
    :goto_9
    const/4 v10, 0x0

    .line 96
    :cond_11
    if-eqz v9, :cond_12

    .line 97
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 98
    const/4 v9, 0x0

    .line 101
    :cond_12
    if-eqz v3, :cond_1e

    .line 103
    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 107
    :goto_a
    const/4 v2, 0x0

    .line 65
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    :goto_b
    const/16 v18, 0x0

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 90
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_8
    move-exception v5

    .line 91
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 104
    .end local v5    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v5

    .line 105
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 67
    .end local v5    # "e":Ljava/io/IOException;
    :cond_13
    const/16 v18, 0x400

    :try_start_10
    move/from16 v0, v18

    new-array v4, v0, [B

    .line 68
    .local v4, "buffer":[B
    const/4 v11, 0x0

    .line 70
    .local v11, "readsize":I
    :goto_c
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_16

    .line 74
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 75
    const/4 v4, 0x0

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 79
    .local v6, "endtime":J
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "cc file fetch time is : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v20, v6, v14

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 80
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tencent/hawk/bridge/Fetcher;->isFetchDone:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 87
    if-eqz v10, :cond_14

    .line 89
    :try_start_11
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 93
    :goto_d
    const/4 v10, 0x0

    .line 96
    :cond_14
    if-eqz v9, :cond_15

    .line 97
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 98
    const/4 v9, 0x0

    .line 101
    :cond_15
    if-eqz v3, :cond_1d

    .line 103
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 107
    :goto_e
    const/4 v2, 0x0

    .line 81
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    :goto_f
    const/16 v18, 0x1

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 71
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "endtime":J
    .end local v16    # "url":Ljava/net/URL;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v17    # "url":Ljava/net/URL;
    :cond_16
    const/16 v18, 0x0

    :try_start_13
    move/from16 v0, v18

    invoke-virtual {v3, v4, v0, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_c

    .line 83
    .end local v4    # "buffer":[B
    .end local v11    # "readsize":I
    :catch_a
    move-exception v5

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    move-object v2, v3

    .line 84
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "respcode":I
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v5, "e":Ljava/lang/Exception;
    :goto_10
    :try_start_14
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Fetch cc file error: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 87
    if-eqz v10, :cond_17

    .line 89
    :try_start_15
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    .line 93
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_11
    const/4 v10, 0x0

    .line 96
    :cond_17
    if-eqz v9, :cond_18

    .line 97
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 98
    const/4 v9, 0x0

    .line 101
    :cond_18
    if-eqz v2, :cond_19

    .line 103
    :try_start_16
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    .line 107
    :goto_12
    const/4 v2, 0x0

    .line 85
    :cond_19
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 90
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "endtime":J
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "readsize":I
    .restart local v12    # "respcode":I
    .restart local v17    # "url":Ljava/net/URL;
    :catch_b
    move-exception v5

    .line 91
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 104
    .end local v5    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v5

    .line 105
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 90
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v6    # "endtime":J
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "readsize":I
    .end local v12    # "respcode":I
    .end local v17    # "url":Ljava/net/URL;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v16    # "url":Ljava/net/URL;
    :catch_d
    move-exception v5

    .line 91
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 104
    .end local v5    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v5

    .line 105
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 86
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 87
    :goto_13
    if-eqz v10, :cond_1a

    .line 89
    :try_start_17
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    .line 93
    :goto_14
    const/4 v10, 0x0

    .line 96
    :cond_1a
    if-eqz v9, :cond_1b

    .line 97
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 98
    const/4 v9, 0x0

    .line 101
    :cond_1b
    if-eqz v2, :cond_1c

    .line 103
    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    .line 107
    :goto_15
    const/4 v2, 0x0

    .line 109
    :cond_1c
    throw v18

    .line 90
    :catch_f
    move-exception v5

    .line 91
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 104
    .end local v5    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v5

    .line 105
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 86
    .end local v5    # "e":Ljava/io/IOException;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v18

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto :goto_13

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "respcode":I
    .restart local v17    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v18

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_13

    .line 83
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "respcode":I
    :catch_11
    move-exception v5

    goto :goto_10

    .end local v16    # "url":Ljava/net/URL;
    .restart local v17    # "url":Ljava/net/URL;
    :catch_12
    move-exception v5

    move-object/from16 v16, v17

    .end local v17    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto :goto_10

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "endtime":J
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "readsize":I
    .restart local v12    # "respcode":I
    .restart local v17    # "url":Ljava/net/URL;
    :cond_1d
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_f

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v6    # "endtime":J
    .end local v11    # "readsize":I
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    :cond_1e
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    goto/16 :goto_b
.end method


# virtual methods
.method public asynFetch()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 130
    .local v0, "temp":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "fetchTimes":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/hawk/bridge/Fetcher;->isFetchDone:Z

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    return-void

    .line 115
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 116
    invoke-direct {p0}, Lcom/tencent/hawk/bridge/Fetcher;->doGet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    goto :goto_0
.end method
