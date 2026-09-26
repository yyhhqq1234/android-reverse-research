.class final Lcom/netease/environment/http/DownloadUtils$1;
.super Ljava/lang/Object;
.source "DownloadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/environment/http/DownloadUtils;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/environment/listener/OnDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

.field final synthetic val$rootPath:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/environment/listener/OnDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    iput-object p2, p0, Lcom/netease/environment/http/DownloadUtils$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/environment/http/DownloadUtils$1;->val$rootPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/environment/http/DownloadUtils$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/netease/environment/listener/OnDownloadListener;->onStart()V

    .line 41
    :cond_0
    const/16 v25, 0x0

    .line 42
    .local v25, "tempFile":Ljava/io/File;
    const/4 v14, 0x0

    .line 43
    .local v14, "getUrl":Ljava/net/URL;
    const/16 v16, 0x0

    .line 44
    .local v16, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v17, 0x0

    .line 45
    .local v17, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 46
    .local v4, "bis":Ljava/io/BufferedInputStream;
    const/4 v12, 0x0

    .line 47
    .local v12, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 50
    .local v6, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/http/DownloadUtils$1;->val$url:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v14    # "getUrl":Ljava/net/URL;
    .local v15, "getUrl":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v16, v0

    .line 52
    new-instance v18, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_24
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_17
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    .end local v17    # "is":Ljava/io/InputStream;
    .local v18, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 54
    .local v20, "length":J
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v23

    .line 55
    .local v23, "responseCode":I
    const/16 v27, 0xc8

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 56
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/http/DownloadUtils$1;->val$rootPath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v24, "rootFile":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_1

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->isDirectory()Z

    move-result v27

    if-nez v27, :cond_1

    .line 58
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdirs()Z

    .line 60
    :cond_1
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/http/DownloadUtils$1;->val$name:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_25
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_18
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 62
    .end local v25    # "tempFile":Ljava/io/File;
    .local v26, "tempFile":Ljava/io/File;
    :try_start_3
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 63
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 65
    :cond_2
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->createNewFile()Z

    .line 68
    new-instance v5, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_26
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_19
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 70
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .local v5, "bis":Ljava/io/BufferedInputStream;
    :try_start_4
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v26

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_27
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1a
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 72
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_28
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1b
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 75
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .local v7, "bos":Ljava/io/BufferedOutputStream;
    const-wide/16 v10, 0x0

    .line 76
    .local v10, "count":J
    const/16 v19, 0x0

    .line 77
    .local v19, "percent":I
    const/16 v27, 0x400

    :try_start_6
    move/from16 v0, v27

    new-array v8, v0, [B

    .line 78
    .local v8, "buffer":[B
    :cond_3
    :goto_0
    invoke-virtual {v5, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v22

    .local v22, "read":I
    const/16 v27, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_b

    .line 79
    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v7, v8, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 80
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v10, v10, v28

    .line 81
    long-to-double v0, v10

    move-wide/from16 v28, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    const-wide/high16 v30, 0x4059000000000000L    # 100.0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v19, v0

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/netease/environment/listener/OnDownloadListener;->onProgress(I)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_22
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1c
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_0

    .line 93
    .end local v8    # "buffer":[B
    .end local v22    # "read":I
    :catch_0
    move-exception v9

    move-object v6, v7

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    move-object/from16 v25, v26

    .line 94
    .end local v10    # "count":J
    .end local v19    # "percent":I
    .end local v20    # "length":J
    .end local v23    # "responseCode":I
    .end local v24    # "rootFile":Ljava/io/File;
    .end local v26    # "tempFile":Ljava/io/File;
    .local v9, "e":Ljava/net/MalformedURLException;
    .restart local v25    # "tempFile":Ljava/io/File;
    :goto_1
    if-eqz v25, :cond_4

    :try_start_7
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 95
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 97
    :cond_4
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object v27

    const-string v28, "download failed : MalformedURLException"

    invoke-static/range {v27 .. v28}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {v9}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Lcom/netease/environment/listener/OnDownloadListener;->onFinish(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 115
    :cond_5
    if-eqz v6, :cond_6

    .line 117
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 122
    .end local v9    # "e":Ljava/net/MalformedURLException;
    :cond_6
    :goto_2
    if-eqz v12, :cond_7

    .line 124
    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 129
    :cond_7
    :goto_3
    if-eqz v4, :cond_8

    .line 131
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 136
    :cond_8
    :goto_4
    if-eqz v17, :cond_9

    .line 138
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 144
    :cond_9
    :goto_5
    if-eqz v16, :cond_a

    .line 145
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 148
    :cond_a
    :goto_6
    return-void

    .line 84
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v25    # "tempFile":Ljava/io/File;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v8    # "buffer":[B
    .restart local v10    # "count":J
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v19    # "percent":I
    .restart local v20    # "length":J
    .restart local v22    # "read":I
    .restart local v23    # "responseCode":I
    .restart local v24    # "rootFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    :cond_b
    :try_start_c
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 85
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    .line 86
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 87
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 88
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 89
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_22
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object v6, v7

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v25, v26

    .line 91
    .end local v8    # "buffer":[B
    .end local v10    # "count":J
    .end local v19    # "percent":I
    .end local v22    # "read":I
    .end local v24    # "rootFile":Ljava/io/File;
    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v25    # "tempFile":Ljava/io/File;
    :cond_c
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Lcom/netease/environment/listener/OnDownloadListener;->onFinish(Z)V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_25
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_18
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 115
    :cond_d
    if-eqz v6, :cond_e

    .line 117
    :try_start_e
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    .line 122
    :cond_e
    :goto_7
    if-eqz v12, :cond_f

    .line 124
    :try_start_f
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 129
    :cond_f
    :goto_8
    if-eqz v4, :cond_10

    .line 131
    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    .line 136
    :cond_10
    :goto_9
    if-eqz v18, :cond_11

    .line 138
    :try_start_11
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    .line 144
    :cond_11
    :goto_a
    if-eqz v16, :cond_23

    .line 145
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    goto :goto_6

    .line 118
    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v9

    .line 119
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 125
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 126
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 132
    .end local v9    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 133
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 139
    .end local v9    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 140
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 118
    .end local v15    # "getUrl":Ljava/net/URL;
    .end local v18    # "is":Ljava/io/InputStream;
    .end local v20    # "length":J
    .end local v23    # "responseCode":I
    .local v9, "e":Ljava/net/MalformedURLException;
    .restart local v14    # "getUrl":Ljava/net/URL;
    .restart local v17    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v9

    .line 119
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 125
    .end local v9    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v9

    .line 126
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 132
    .end local v9    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v9

    .line 133
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 139
    .end local v9    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v9

    .line 140
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 100
    .end local v9    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v9

    .line 101
    .restart local v9    # "e":Ljava/io/IOException;
    :goto_b
    if-eqz v25, :cond_12

    :try_start_12
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_12

    .line 102
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 104
    :cond_12
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object v27

    const-string v28, "download failed : IOException"

    invoke-static/range {v27 .. v28}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v9}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Lcom/netease/environment/listener/OnDownloadListener;->onFinish(Z)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 115
    :cond_13
    if-eqz v6, :cond_14

    .line 117
    :try_start_13
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    .line 122
    :cond_14
    :goto_c
    if-eqz v12, :cond_15

    .line 124
    :try_start_14
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    .line 129
    :cond_15
    :goto_d
    if-eqz v4, :cond_16

    .line 131
    :try_start_15
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    .line 136
    :cond_16
    :goto_e
    if-eqz v17, :cond_17

    .line 138
    :try_start_16
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_d

    .line 144
    :cond_17
    :goto_f
    if-eqz v16, :cond_a

    .line 145
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 118
    :catch_a
    move-exception v9

    .line 119
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 125
    :catch_b
    move-exception v9

    .line 126
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 132
    :catch_c
    move-exception v9

    .line 133
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 139
    :catch_d
    move-exception v9

    .line 140
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 107
    .end local v9    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v9

    .line 108
    .local v9, "e":Ljava/lang/Exception;
    :goto_10
    if-eqz v25, :cond_18

    :try_start_17
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_18

    .line 109
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 111
    :cond_18
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object v27

    const-string v28, "download failed : Exception"

    invoke-static/range {v27 .. v28}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {v9}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/environment/http/DownloadUtils$1;->val$onDownloadListener:Lcom/netease/environment/listener/OnDownloadListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Lcom/netease/environment/listener/OnDownloadListener;->onFinish(Z)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 115
    :cond_19
    if-eqz v6, :cond_1a

    .line 117
    :try_start_18
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f

    .line 122
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1a
    :goto_11
    if-eqz v12, :cond_1b

    .line 124
    :try_start_19
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_10

    .line 129
    :cond_1b
    :goto_12
    if-eqz v4, :cond_1c

    .line 131
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_11

    .line 136
    :cond_1c
    :goto_13
    if-eqz v17, :cond_1d

    .line 138
    :try_start_1b
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12

    .line 144
    :cond_1d
    :goto_14
    if-eqz v16, :cond_a

    .line 145
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 118
    .restart local v9    # "e":Ljava/lang/Exception;
    :catch_f
    move-exception v9

    .line 119
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 125
    .end local v9    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v9

    .line 126
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 132
    .end local v9    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v9

    .line 133
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 139
    .end local v9    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v9

    .line 140
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 115
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v27

    :goto_15
    if-eqz v6, :cond_1e

    .line 117
    :try_start_1c
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_13

    .line 122
    :cond_1e
    :goto_16
    if-eqz v12, :cond_1f

    .line 124
    :try_start_1d
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_14

    .line 129
    :cond_1f
    :goto_17
    if-eqz v4, :cond_20

    .line 131
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_15

    .line 136
    :cond_20
    :goto_18
    if-eqz v17, :cond_21

    .line 138
    :try_start_1f
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_16

    .line 144
    :cond_21
    :goto_19
    if-eqz v16, :cond_22

    .line 145
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_22
    throw v27

    .line 118
    :catch_13
    move-exception v9

    .line 119
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    .line 125
    .end local v9    # "e":Ljava/io/IOException;
    :catch_14
    move-exception v9

    .line 126
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    .line 132
    .end local v9    # "e":Ljava/io/IOException;
    :catch_15
    move-exception v9

    .line 133
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 139
    .end local v9    # "e":Ljava/io/IOException;
    :catch_16
    move-exception v9

    .line 140
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 115
    .end local v9    # "e":Ljava/io/IOException;
    .end local v14    # "getUrl":Ljava/net/URL;
    .restart local v15    # "getUrl":Ljava/net/URL;
    :catchall_1
    move-exception v27

    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    goto :goto_15

    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v27

    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    goto :goto_15

    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v25    # "tempFile":Ljava/io/File;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v20    # "length":J
    .restart local v23    # "responseCode":I
    .restart local v24    # "rootFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    :catchall_3
    move-exception v27

    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    move-object/from16 v25, v26

    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v25    # "tempFile":Ljava/io/File;
    goto :goto_15

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v25    # "tempFile":Ljava/io/File;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v26    # "tempFile":Ljava/io/File;
    :catchall_4
    move-exception v27

    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    move-object/from16 v25, v26

    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v25    # "tempFile":Ljava/io/File;
    goto :goto_15

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v25    # "tempFile":Ljava/io/File;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v26    # "tempFile":Ljava/io/File;
    :catchall_5
    move-exception v27

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    move-object/from16 v25, v26

    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v25    # "tempFile":Ljava/io/File;
    goto :goto_15

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v25    # "tempFile":Ljava/io/File;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v10    # "count":J
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v19    # "percent":I
    .restart local v26    # "tempFile":Ljava/io/File;
    :catchall_6
    move-exception v27

    move-object v6, v7

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    move-object/from16 v25, v26

    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v25    # "tempFile":Ljava/io/File;
    goto :goto_15

    .line 107
    .end local v10    # "count":J
    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v19    # "percent":I
    .end local v20    # "length":J
    .end local v23    # "responseCode":I
    .end local v24    # "rootFile":Ljava/io/File;
    .restart local v15    # "getUrl":Ljava/net/URL;
    :catch_17
    move-exception v9

    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    goto/16 :goto_10

    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    :catch_18
    move-exception v9

    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    goto/16 :goto_10

    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v25    # "tempFile":Ljava/io/File;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v20    # "length":J
    .restart local v23    # "responseCode":I
    .restart local v24    # "rootFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    :catch_19
    move-exception v9

    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    move-object/from16 v25, v26

    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v25    # "tempFile":Ljava/io/File;
    goto/16 :goto_10

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v25    # "tempFile":Ljava/io/File;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v26    # "tempFile":Ljava/io/File;
    :catch_1a
    move-exception v9

    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    move-object/from16 v25, v26

    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v25    # "tempFile":Ljava/io/File;
    goto/16 :goto_10

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v25    # "tempFile":Ljava/io/File;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v26    # "tempFile":Ljava/io/File;
    :catch_1b
    move-exception v9

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    move-object/from16 v25, v26

    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v25    # "tempFile":Ljava/io/File;
    goto/16 :goto_10

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v25    # "tempFile":Ljava/io/File;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v10    # "count":J
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v19    # "percent":I
    .restart local v26    # "tempFile":Ljava/io/File;
    :catch_1c
    move-exception v9

    move-object v6, v7

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    move-object/from16 v25, v26

    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v25    # "tempFile":Ljava/io/File;
    goto/16 :goto_10

    .line 100
    .end local v10    # "count":J
    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v19    # "percent":I
    .end local v20    # "length":J
    .end local v23    # "responseCode":I
    .end local v24    # "rootFile":Ljava/io/File;
    .restart local v15    # "getUrl":Ljava/net/URL;
    :catch_1d
    move-exception v9

    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    goto/16 :goto_b

    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    :catch_1e
    move-exception v9

    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    goto/16 :goto_b

    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v25    # "tempFile":Ljava/io/File;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v20    # "length":J
    .restart local v23    # "responseCode":I
    .restart local v24    # "rootFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    :catch_1f
    move-exception v9

    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    move-object/from16 v25, v26

    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v25    # "tempFile":Ljava/io/File;
    goto/16 :goto_b

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v25    # "tempFile":Ljava/io/File;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v26    # "tempFile":Ljava/io/File;
    :catch_20
    move-exception v9

    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    move-object/from16 v25, v26

    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v25    # "tempFile":Ljava/io/File;
    goto/16 :goto_b

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v25    # "tempFile":Ljava/io/File;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v26    # "tempFile":Ljava/io/File;
    :catch_21
    move-exception v9

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    move-object/from16 v25, v26

    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v25    # "tempFile":Ljava/io/File;
    goto/16 :goto_b

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v25    # "tempFile":Ljava/io/File;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v10    # "count":J
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v19    # "percent":I
    .restart local v26    # "tempFile":Ljava/io/File;
    :catch_22
    move-exception v9

    move-object v6, v7

    .end local v7    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    move-object/from16 v25, v26

    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v25    # "tempFile":Ljava/io/File;
    goto/16 :goto_b

    .line 93
    .end local v10    # "count":J
    .end local v19    # "percent":I
    .end local v20    # "length":J
    .end local v23    # "responseCode":I
    .end local v24    # "rootFile":Ljava/io/File;
    :catch_23
    move-exception v9

    goto/16 :goto_1

    .end local v14    # "getUrl":Ljava/net/URL;
    .restart local v15    # "getUrl":Ljava/net/URL;
    :catch_24
    move-exception v9

    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    goto/16 :goto_1

    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    :catch_25
    move-exception v9

    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    goto/16 :goto_1

    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v25    # "tempFile":Ljava/io/File;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v20    # "length":J
    .restart local v23    # "responseCode":I
    .restart local v24    # "rootFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    :catch_26
    move-exception v9

    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    move-object/from16 v25, v26

    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v25    # "tempFile":Ljava/io/File;
    goto/16 :goto_1

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v25    # "tempFile":Ljava/io/File;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v26    # "tempFile":Ljava/io/File;
    :catch_27
    move-exception v9

    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    move-object/from16 v25, v26

    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v25    # "tempFile":Ljava/io/File;
    goto/16 :goto_1

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v25    # "tempFile":Ljava/io/File;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    .restart local v26    # "tempFile":Ljava/io/File;
    :catch_28
    move-exception v9

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    move-object/from16 v25, v26

    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v25    # "tempFile":Ljava/io/File;
    goto/16 :goto_1

    .end local v14    # "getUrl":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v24    # "rootFile":Ljava/io/File;
    .restart local v15    # "getUrl":Ljava/net/URL;
    .restart local v18    # "is":Ljava/io/InputStream;
    :cond_23
    move-object/from16 v17, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    move-object v14, v15

    .end local v15    # "getUrl":Ljava/net/URL;
    .restart local v14    # "getUrl":Ljava/net/URL;
    goto/16 :goto_6
.end method
