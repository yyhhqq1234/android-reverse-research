.class public Lcom/netease/download/reporter/ReportNet;
.super Ljava/lang/Object;
.source "ReportNet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/reporter/ReportNet$ReportCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportNet"

.field private static sReportNet:Lcom/netease/download/reporter/ReportNet;


# instance fields
.field private mDealer:Lcom/netease/download/network/NetworkDealer2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/download/network/NetworkDealer2",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mReportCallBack:Lcom/netease/download/reporter/ReportNet$ReportCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/reporter/ReportNet;->sReportNet:Lcom/netease/download/reporter/ReportNet;

    .line 63
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/download/reporter/ReportNet;->mReportCallBack:Lcom/netease/download/reporter/ReportNet$ReportCallBack;

    .line 91
    new-instance v0, Lcom/netease/download/reporter/ReportNet$1;

    invoke-direct {v0, p0}, Lcom/netease/download/reporter/ReportNet$1;-><init>(Lcom/netease/download/reporter/ReportNet;)V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportNet;->mDealer:Lcom/netease/download/network/NetworkDealer2;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/netease/download/reporter/ReportNet;)Lcom/netease/download/reporter/ReportNet$ReportCallBack;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netease/download/reporter/ReportNet;->mReportCallBack:Lcom/netease/download/reporter/ReportNet$ReportCallBack;

    return-object v0
.end method

.method static synthetic access$1(Lcom/netease/download/reporter/ReportNet;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/netease/download/reporter/ReportNet;->reportControl(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getInstances()Lcom/netease/download/reporter/ReportNet;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/netease/download/reporter/ReportNet;->sReportNet:Lcom/netease/download/reporter/ReportNet;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/netease/download/reporter/ReportNet;

    invoke-direct {v0}, Lcom/netease/download/reporter/ReportNet;-><init>()V

    sput-object v0, Lcom/netease/download/reporter/ReportNet;->sReportNet:Lcom/netease/download/reporter/ReportNet;

    .line 60
    :cond_0
    sget-object v0, Lcom/netease/download/reporter/ReportNet;->sReportNet:Lcom/netease/download/reporter/ReportNet;

    return-object v0
.end method

.method private post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/download/network/NetworkDealer2;)I
    .locals 13
    .param p1, "pDomain"    # Ljava/lang/String;
    .param p2, "pUrl"    # Ljava/lang/String;
    .param p3, "pInfo"    # Ljava/lang/String;
    .param p4, "pDealer"    # Lcom/netease/download/network/NetworkDealer2;

    .prologue
    .line 186
    const-string v10, "ReportNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7, \u6700\u7ec8\u4e0a\u4f20\u5185\u5bb9="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v5, 0x0

    .line 188
    .local v5, "out":Ljava/io/PrintWriter;
    const/4 v4, 0x0

    .line 189
    .local v4, "is":Ljava/io/InputStream;
    const/16 v8, 0xb

    .line 192
    .local v8, "resultCode":I
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 194
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 196
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v10, "accept"

    const-string v11, "*/*"

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v10, "connection"

    const-string v11, "Keep-Alive"

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/16 v10, 0x1388

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 199
    const/16 v10, 0x1388

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 200
    const-string v10, "Accept-Encoding"

    const-string v11, ""

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 203
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 206
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, "oversea":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "2"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 210
    const-string v10, "netease.com"

    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 211
    const-string v10, "netease.com"

    const-string v11, "easebar.com"

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 218
    :cond_0
    :goto_0
    const-string v10, "sun.net.http.allowRestrictedHeaders"

    const-string v11, "true"

    invoke-static {v10, v11}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    const-string v10, "ReportNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u8bbe\u7f6ehost ="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v10, "Host"

    invoke-virtual {v1, v10, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v7    # "oversea":Ljava/lang/String;
    :cond_1
    const-string v10, "https"

    invoke-virtual {p2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 227
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v10, v0

    new-instance v11, Lcom/netease/download/reporter/ReportNet$3;

    invoke-direct {v11, p0}, Lcom/netease/download/reporter/ReportNet$3;-><init>(Lcom/netease/download/reporter/ReportNet;)V

    invoke-virtual {v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 253
    :cond_2
    new-instance v6, Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v5    # "out":Ljava/io/PrintWriter;
    .local v6, "out":Ljava/io/PrintWriter;
    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 259
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 260
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v8, p2}, Lcom/netease/download/network/NetworkDealer2;->processHeader(Ljava/util/Map;ILjava/lang/String;)I

    .line 262
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 263
    move-object/from16 v0, p4

    invoke-interface {v0, v1, v8, p2}, Lcom/netease/download/network/NetworkDealer2;->processContent(Ljava/net/HttpURLConnection;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 278
    if-eqz v6, :cond_3

    .line 279
    :try_start_2
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 281
    :cond_3
    if-eqz v4, :cond_b

    .line 282
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v5, v6

    .line 290
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "out":Ljava/io/PrintWriter;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    :cond_4
    :goto_1
    const/16 v10, 0xc8

    if-ne v10, v8, :cond_5

    .line 291
    const/4 v8, 0x0

    .line 293
    :cond_5
    return v8

    .line 213
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "oversea":Ljava/lang/String;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_6
    :try_start_3
    const-string v10, "163.com"

    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 214
    const-string v10, "163.com"

    const-string v11, "easebar.com"

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p1

    goto/16 :goto_0

    .line 265
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "oversea":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Ljava/net/SocketException;
    :goto_2
    const/16 v8, 0xd

    .line 267
    :try_start_4
    const-string v10, "ReportNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7  SocketException="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 278
    if-eqz v5, :cond_7

    .line 279
    :try_start_5
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 281
    :cond_7
    if-eqz v4, :cond_4

    .line 282
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 285
    :catch_1
    move-exception v3

    .line 286
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 270
    .end local v2    # "e":Ljava/net/SocketException;
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 271
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v10, "ReportNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7  Exception="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 278
    if-eqz v5, :cond_8

    .line 279
    :try_start_7
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 281
    :cond_8
    if-eqz v4, :cond_4

    .line 282
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 285
    :catch_3
    move-exception v3

    .line 286
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 276
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 278
    :goto_4
    if-eqz v5, :cond_9

    .line 279
    :try_start_8
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 281
    :cond_9
    if-eqz v4, :cond_a

    .line 282
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 288
    :cond_a
    :goto_5
    throw v10

    .line 285
    :catch_4
    move-exception v3

    .line 286
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 285
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v5    # "out":Ljava/io/PrintWriter;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v6    # "out":Ljava/io/PrintWriter;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_5
    move-exception v3

    .line 286
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "ex":Ljava/io/IOException;
    :cond_b
    move-object v5, v6

    .end local v6    # "out":Ljava/io/PrintWriter;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    goto :goto_1

    .line 276
    .end local v5    # "out":Ljava/io/PrintWriter;
    .restart local v6    # "out":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "out":Ljava/io/PrintWriter;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    goto :goto_4

    .line 270
    .end local v5    # "out":Ljava/io/PrintWriter;
    .restart local v6    # "out":Ljava/io/PrintWriter;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6    # "out":Ljava/io/PrintWriter;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    goto :goto_3

    .line 265
    .end local v5    # "out":Ljava/io/PrintWriter;
    .restart local v6    # "out":Ljava/io/PrintWriter;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "out":Ljava/io/PrintWriter;
    .restart local v5    # "out":Ljava/io/PrintWriter;
    goto :goto_2
.end method

.method private reportControl(Ljava/lang/String;)I
    .locals 8
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v5, "ReportNet"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7\uff0cUrls\u4fe1\u606f\u603b\u89c8="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/reporter/ReportUrlController;->getInstance()Lcom/netease/download/reporter/ReportUrlController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/reporter/ReportUrlController;->geturls()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/16 v1, 0xb

    .line 154
    .local v1, "result":I
    const/4 v2, 0x3

    .line 155
    .local v2, "retry":I
    const/4 v4, 0x0

    .line 156
    .local v4, "url":Ljava/lang/String;
    const/4 v0, 0x0

    .line 158
    .local v0, "domain":Ljava/lang/String;
    invoke-static {}, Lcom/netease/download/reporter/ReportUrlController;->getInstance()Lcom/netease/download/reporter/ReportUrlController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/reporter/ReportUrlController;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    invoke-static {}, Lcom/netease/download/reporter/ReportUrlController;->getInstance()Lcom/netease/download/reporter/ReportUrlController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/reporter/ReportUrlController;->next()Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;

    move-result-object v3

    .line 160
    .local v3, "unit":Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;
    iget-object v0, v3, Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;->mDomain:Ljava/lang/String;

    .line 161
    iget-object v4, v3, Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;->mUrl:Ljava/lang/String;

    .line 164
    .end local v3    # "unit":Lcom/netease/download/reporter/ReportUrlController$ReportUrlControllerUnit;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 170
    :cond_1
    if-eqz v1, :cond_2

    .line 172
    invoke-static {}, Lcom/netease/download/reporter/ReportUrlController;->getInstance()Lcom/netease/download/reporter/ReportUrlController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/reporter/ReportUrlController;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 173
    invoke-direct {p0, p1}, Lcom/netease/download/reporter/ReportNet;->reportControl(Ljava/lang/String;)I

    move-result v1

    .line 177
    :cond_2
    return v1

    .line 165
    :cond_3
    const-string v5, "ReportNet"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7\uff0c\u5177\u4f53\u4f7f\u7528\u7684domain="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v5, p0, Lcom/netease/download/reporter/ReportNet;->mDealer:Lcom/netease/download/network/NetworkDealer2;

    invoke-direct {p0, v0, v4, p1, v5}, Lcom/netease/download/reporter/ReportNet;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/download/network/NetworkDealer2;)I

    move-result v1

    .line 167
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 304
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method


# virtual methods
.method public init(Lcom/netease/download/reporter/ReportNet$ReportCallBack;)V
    .locals 1
    .param p1, "reportCallBack"    # Lcom/netease/download/reporter/ReportNet$ReportCallBack;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netease/download/reporter/ReportNet;->mReportCallBack:Lcom/netease/download/reporter/ReportNet$ReportCallBack;

    if-nez v0, :cond_0

    .line 70
    iput-object p1, p0, Lcom/netease/download/reporter/ReportNet;->mReportCallBack:Lcom/netease/download/reporter/ReportNet$ReportCallBack;

    .line 72
    :cond_0
    return-void
.end method

.method public report(Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/config2/ConfigParams2;->isReport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const-string v0, "ReportNet"

    const-string v1, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7,\u53c2\u6570\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/reporter/ReportNet$2;

    invoke-direct {v1, p0, p1}, Lcom/netease/download/reporter/ReportNet$2;-><init>(Lcom/netease/download/reporter/ReportNet;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
