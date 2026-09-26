.class public Lcom/netease/download/network/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetUtil"


# instance fields
.field private mLogData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/network/NetUtil;->mLogData:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method public static doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/download/network/NetworkDealer;)Ljava/lang/Object;
    .locals 29
    .param p0, "pUrl"    # Ljava/lang/String;
    .param p2, "pMethod"    # Ljava/lang/String;
    .param p4, "pDealer"    # Lcom/netease/download/network/NetworkDealer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/download/network/NetworkDealer;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "pParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "pHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v25, "NetUtil"

    const-string v26, "NetUtil\u4e0b\u8f7d\u901a\u7528\u7c7b"

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    move-object/from16 v16, p0

    .line 75
    .local v16, "reqUrl":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v15, "paramBuilder":Ljava/lang/StringBuilder;
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 78
    .local v18, "result":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 79
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "params="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_d

    .line 90
    const-string v25, "GET"

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_0

    .line 91
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "?"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 95
    :cond_0
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 97
    .local v23, "url":Ljava/net/URL;
    const-string v25, "https"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 99
    const-string v25, "NetUtil"

    const-string v26, "doHttpReq \u81ea\u5b9a\u4e49ssl"

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :try_start_0
    const-string v25, "TLS"

    invoke-static/range {v25 .. v25}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v20

    .line 104
    .local v20, "scc":Ljavax/net/ssl/SSLContext;
    const/16 v25, 0x0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Lcom/netease/download/network/MyTrustManager;

    invoke-direct/range {v28 .. v28}, Lcom/netease/download/network/MyTrustManager;-><init>()V

    aput-object v28, v26, v27

    new-instance v27, Ljava/security/SecureRandom;

    invoke-direct/range {v27 .. v27}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 105
    invoke-virtual/range {v20 .. v20}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 107
    new-instance v25, Lcom/netease/download/network/MyX509HostnameVerifier;

    invoke-direct/range {v25 .. v25}, Lcom/netease/download/network/MyX509HostnameVerifier;-><init>()V

    invoke-static/range {v25 .. v25}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v20    # "scc":Ljavax/net/ssl/SSLContext;
    :cond_1
    :goto_1
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 119
    .local v4, "conn":Ljava/net/HttpURLConnection;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 120
    const/16 v25, 0x1388

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 121
    const/16 v25, 0x1388

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 122
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 123
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 124
    const-string v25, "Accept-Encoding"

    const-string v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v25, "POST"

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 127
    const-string v25, "NetUtil"

    const-string v26, "patch post"

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v25, "POST"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 129
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 132
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 133
    .local v13, "os":Ljava/io/OutputStream;
    new-instance v24, Ljava/io/BufferedWriter;

    .line 134
    new-instance v25, Ljava/io/OutputStreamWriter;

    const-string v26, "UTF-8"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v13, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 133
    invoke-direct/range {v24 .. v25}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 135
    .local v24, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedWriter;->flush()V

    .line 137
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedWriter;->close()V

    .line 138
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 144
    .end local v13    # "os":Ljava/io/OutputStream;
    .end local v24    # "writer":Ljava/io/BufferedWriter;
    :goto_2
    if-eqz p3, :cond_10

    const-string v25, "START"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    const/4 v10, 0x1

    .line 146
    .local v10, "hasRange":Z
    :goto_3
    if-eqz v10, :cond_3

    .line 147
    const-string v25, "START"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .local v21, "start":Ljava/lang/String;
    const-string v25, "END"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 148
    .local v6, "end":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v19, "sb":Ljava/lang/StringBuilder;
    const-string v25, "bytes="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    if-eqz v21, :cond_11

    move-object/from16 v25, v21

    :goto_4
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 150
    const-string v26, "-"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    if-eqz v6, :cond_2

    .line 153
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_2
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "\u4e0b\u8f7d\u65f6\u5019\uff0c\u65b0\u7684\u5934\u90e8\u4f4d\u7f6e="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", \u5c3e\u90e8\u4f4d\u7f6e="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", Range="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", url="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v25, "Range"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v6    # "end":Ljava/lang/String;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .end local v21    # "start":Ljava/lang/String;
    :cond_3
    if-eqz p3, :cond_12

    const-string v25, "Host"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 161
    invoke-static/range {v16 .. v16}, Lcom/netease/download/util/StrUtil;->isIpAddrDomain(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 160
    const/4 v9, 0x1

    .line 163
    .local v9, "hasHost":Z
    :goto_5
    const/4 v11, 0x0

    .line 165
    .local v11, "host":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 166
    const-string v25, "Host"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "host":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 167
    .restart local v11    # "host":Ljava/lang/String;
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v14

    .line 169
    .local v14, "oversea":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_4

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_4

    const-string v25, "2"

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 171
    const-string v25, "netease.com"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 172
    const-string v25, "netease.com"

    const-string v26, "easebar.com"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 179
    :cond_4
    :goto_6
    const-string v25, "sun.net.http.allowRestrictedHeaders"

    const-string v26, "true"

    invoke-static/range {v25 .. v26}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "\u8bbe\u7f6ehost ="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v25, "Host"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v14    # "oversea":Ljava/lang/String;
    :cond_5
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "StrUtil.isIpAddrDomain(reqUrl) ="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/netease/download/util/StrUtil;->isIpAddrDomain(Ljava/lang/String;)Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/16 v17, 0x0

    .line 207
    .local v17, "responseCode":I
    :try_start_1
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "reqUrl="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    if-eqz p3, :cond_6

    .line 210
    const-string v26, "NetUtil"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v25, "host="

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "Host"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_6
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 214
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v17

    .line 231
    :goto_7
    if-eqz v17, :cond_7

    const/16 v25, 0xc8

    move/from16 v0, v25

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    const/16 v25, 0xce

    move/from16 v0, v25

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    .line 232
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/netease/download/network/NetUtil;->getErrorLog(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 233
    .local v8, "errorLog":Ljava/lang/String;
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v25, v0

    sget-object v26, Lcom/netease/download/reporter/KeyConst;->KEY_ERROR_LOG:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v8    # "errorLog":Ljava/lang/String;
    :cond_7
    if-eqz p4, :cond_8

    .line 237
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v25

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    move/from16 v2, v17

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/download/network/NetworkDealer;->processHeader(Ljava/util/Map;ILjava/lang/String;)V

    .line 240
    :cond_8
    const/4 v12, 0x0

    .line 243
    .local v12, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v12

    .line 252
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "responseCode="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", hasRange="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", url="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/16 v25, 0xc8

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    if-eqz v10, :cond_14

    .line 254
    :cond_9
    const/16 v25, 0xce

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    if-nez v10, :cond_14

    .line 253
    :cond_a
    const/16 v22, 0x0

    .line 255
    .local v22, "suc":Z
    :goto_8
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "suc="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", url="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    if-eqz v22, :cond_b

    if-eqz p4, :cond_b

    .line 260
    :try_start_3
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lcom/netease/download/network/NetworkDealer;->processContent(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Boolean;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    .line 261
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "processContent result="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", url="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 278
    :cond_b
    :goto_9
    if-nez v22, :cond_c

    .line 279
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 282
    :cond_c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 283
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 284
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "doHttpReq result="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", url="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, v18

    .line 285
    .end local v22    # "suc":Z
    :goto_a
    return-object v25

    .line 81
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "hasHost":Z
    .end local v10    # "hasRange":Z
    .end local v11    # "host":Ljava/lang/String;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v17    # "responseCode":I
    .end local v23    # "url":Ljava/net/URL;
    :cond_d
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 83
    .local v7, "entry":Ljava/util/Map$Entry;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    if-lez v26, :cond_e

    .line 84
    const-string v26, "&"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_e
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 109
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .restart local v23    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 110
    .local v5, "e":Ljava/lang/Exception;
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "doHttpReq Exception="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 141
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    :cond_f
    const-string v25, "GET"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 144
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 149
    .restart local v6    # "end":Ljava/lang/String;
    .restart local v10    # "hasRange":Z
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    .restart local v21    # "start":Ljava/lang/String;
    :cond_11
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    goto/16 :goto_4

    .line 160
    .end local v6    # "end":Ljava/lang/String;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .end local v21    # "start":Ljava/lang/String;
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 174
    .restart local v9    # "hasHost":Z
    .restart local v11    # "host":Ljava/lang/String;
    .restart local v14    # "oversea":Ljava/lang/String;
    :cond_13
    const-string v25, "163.com"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 175
    const-string v25, "163.com"

    const-string v26, "easebar.com"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_6

    .line 216
    .end local v14    # "oversea":Ljava/lang/String;
    .restart local v17    # "responseCode":I
    :catch_1
    move-exception v5

    .line 217
    .local v5, "e":Ljava/net/UnknownHostException;
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "UnknownHostException \u5f02\u5e38 = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", url="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/16 v17, 0x1f7

    goto/16 :goto_7

    .line 220
    .end local v5    # "e":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v5

    .line 221
    .local v5, "e":Ljava/io/IOException;
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "IOException \u5f02\u5e38 = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", url="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 223
    const/16 v17, 0x198

    goto/16 :goto_7

    .line 225
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 226
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    const/16 v17, 0x190

    .line 228
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception \u5f02\u5e38 = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", url="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 245
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v12    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v5

    .line 247
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 249
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    goto/16 :goto_a

    .line 253
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_14
    const/16 v22, 0x1

    goto/16 :goto_8

    .line 263
    .restart local v22    # "suc":Z
    :catch_5
    move-exception v5

    .line 264
    .local v5, "e":Ljava/net/SocketException;
    const/16 v25, 0xd

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 265
    invoke-virtual {v5}, Ljava/net/SocketException;->printStackTrace()V

    goto/16 :goto_9

    .line 267
    .end local v5    # "e":Ljava/net/SocketException;
    :catch_6
    move-exception v5

    .line 268
    .local v5, "e":Ljava/io/FileNotFoundException;
    const/16 v25, 0x4

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 269
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_9

    .line 271
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v5

    .line 272
    .local v5, "e":Ljava/lang/Exception;
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", url="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/16 v25, 0xb

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 274
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9
.end method

.method public static doSimpleHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/download/network/NetworkDealer;)Ljava/lang/Object;
    .locals 29
    .param p0, "pUrl"    # Ljava/lang/String;
    .param p2, "pMethod"    # Ljava/lang/String;
    .param p4, "pDealer"    # Lcom/netease/download/network/NetworkDealer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/download/network/NetworkDealer;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "pParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "pHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v16, p0

    .line 305
    .local v16, "reqUrl":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v15, "paramBuilder":Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    .line 308
    .local v18, "result":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 309
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "doSimpleHttpReq params="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_8

    .line 318
    const-string v25, "GET"

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    if-lez v25, :cond_0

    .line 319
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "?"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 323
    :cond_0
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 325
    .local v23, "url":Ljava/net/URL;
    const-string v25, "https"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 327
    const-string v25, "NetUtil"

    const-string v26, "doSimpleHttpReq \u81ea\u5b9a\u4e49ssl"

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :try_start_0
    const-string v25, "TLS"

    invoke-static/range {v25 .. v25}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v20

    .line 331
    .local v20, "scc":Ljavax/net/ssl/SSLContext;
    const/16 v25, 0x0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Lcom/netease/download/network/MyTrustManager;

    invoke-direct/range {v28 .. v28}, Lcom/netease/download/network/MyTrustManager;-><init>()V

    aput-object v28, v26, v27

    new-instance v27, Ljava/security/SecureRandom;

    invoke-direct/range {v27 .. v27}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 332
    invoke-virtual/range {v20 .. v20}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 333
    new-instance v25, Lcom/netease/download/network/MyX509HostnameVerifier;

    invoke-direct/range {v25 .. v25}, Lcom/netease/download/network/MyX509HostnameVerifier;-><init>()V

    invoke-static/range {v25 .. v25}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v20    # "scc":Ljavax/net/ssl/SSLContext;
    :goto_1
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "reqUrl="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "---start with https"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_1
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 343
    .local v4, "conn":Ljava/net/HttpURLConnection;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 344
    const/16 v25, 0x1388

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 345
    const/16 v25, 0x1388

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 346
    const-string v25, "Accept-Encoding"

    const-string v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 348
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 350
    const-string v25, "POST"

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 351
    const-string v25, "NetUtil"

    const-string v26, "post"

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v25, "POST"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 353
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 356
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 357
    .local v13, "os":Ljava/io/OutputStream;
    new-instance v24, Ljava/io/BufferedWriter;

    .line 358
    new-instance v25, Ljava/io/OutputStreamWriter;

    const-string v26, "UTF-8"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v13, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 357
    invoke-direct/range {v24 .. v25}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 359
    .local v24, "writer":Ljava/io/BufferedWriter;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedWriter;->flush()V

    .line 361
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedWriter;->close()V

    .line 362
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 369
    .end local v13    # "os":Ljava/io/OutputStream;
    .end local v24    # "writer":Ljava/io/BufferedWriter;
    :goto_2
    if-eqz p3, :cond_a

    const-string v25, "START"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    const/4 v9, 0x1

    .line 371
    .local v9, "hasRange":Z
    :goto_3
    if-eqz v9, :cond_3

    .line 372
    const-string v25, "NetUtil"

    const-string v26, "hasRange"

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v25, "START"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .local v21, "start":Ljava/lang/String;
    const-string v25, "END"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 374
    .local v6, "end":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .local v19, "sb":Ljava/lang/StringBuilder;
    const-string v25, "bytes="

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-eqz v21, :cond_b

    .end local v21    # "start":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 376
    const-string v26, "-"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    if-eqz v6, :cond_2

    .line 379
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_2
    const-string v25, "Range"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .end local v6    # "end":Ljava/lang/String;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    if-eqz p3, :cond_c

    const-string v25, "Host"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 386
    invoke-static/range {v16 .. v16}, Lcom/netease/download/util/StrUtil;->isIpAddrDomain(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 385
    const/4 v8, 0x1

    .line 388
    .local v8, "hasHost":Z
    :goto_5
    const/4 v10, 0x0

    .line 389
    .local v10, "host":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 390
    const-string v25, "NetUtil"

    const-string v26, "hasHost"

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v25, "Host"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "host":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 392
    .restart local v10    # "host":Ljava/lang/String;
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v14

    .line 394
    .local v14, "oversea":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_4

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_4

    const-string v25, "2"

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 396
    const-string v25, "netease.com"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 397
    const-string v25, "netease.com"

    const-string v26, "easebar.com"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 404
    :cond_4
    :goto_6
    const-string v25, "sun.net.http.allowRestrictedHeaders"

    const-string v26, "true"

    invoke-static/range {v25 .. v26}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    const-string v25, "Host"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .end local v14    # "oversea":Ljava/lang/String;
    :cond_5
    const/16 v17, 0xb

    .line 431
    .local v17, "responseCode":I
    :try_start_1
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "url="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    if-eqz p3, :cond_6

    .line 433
    const-string v26, "NetUtil"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v25, "host="

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, "Host"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_6
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 436
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 437
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "responseCode="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 443
    :goto_7
    const/16 v25, 0x12e

    move/from16 v0, v25

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    const/16 v25, 0x12d

    move/from16 v0, v25

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 444
    :cond_7
    :try_start_2
    const-string v25, "NetUtil"

    const-string v26, "handle 302"

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v25, "Location"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 446
    .local v12, "location":Ljava/lang/String;
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "pre url="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", new url="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v12, v0, v1, v2, v3}, Lcom/netease/download/network/NetUtil;->doSimpleHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/download/network/NetworkDealer;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v25

    .line 490
    .end local v12    # "location":Ljava/lang/String;
    .end local v18    # "result":Ljava/lang/Object;
    :goto_8
    return-object v25

    .line 311
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "hasHost":Z
    .end local v9    # "hasRange":Z
    .end local v10    # "host":Ljava/lang/String;
    .end local v17    # "responseCode":I
    .end local v23    # "url":Ljava/net/URL;
    .restart local v18    # "result":Ljava/lang/Object;
    :cond_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 313
    .local v7, "entry":Ljava/util/Map$Entry;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    .line 315
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 335
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .restart local v23    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 336
    .local v5, "e":Ljava/lang/Exception;
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "doHttpReq Exception="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 365
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    :cond_9
    const-string v25, "NetUtil"

    const-string v26, "get"

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v25, "GET"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 369
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 375
    .restart local v6    # "end":Ljava/lang/String;
    .restart local v9    # "hasRange":Z
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    .restart local v21    # "start":Ljava/lang/String;
    :cond_b
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto/16 :goto_4

    .line 385
    .end local v6    # "end":Ljava/lang/String;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .end local v21    # "start":Ljava/lang/String;
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 399
    .restart local v8    # "hasHost":Z
    .restart local v10    # "host":Ljava/lang/String;
    .restart local v14    # "oversea":Ljava/lang/String;
    :cond_d
    const-string v25, "163.com"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 400
    const-string v25, "163.com"

    const-string v26, "easebar.com"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6

    .line 438
    .end local v14    # "oversea":Ljava/lang/String;
    .restart local v17    # "responseCode":I
    :catch_1
    move-exception v5

    .line 439
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    const/16 v17, 0x1f8

    goto/16 :goto_7

    .line 450
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_e
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "reqUrl="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", responseCode="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    if-eqz p4, :cond_f

    .line 453
    const-string v25, "NetUtil"

    const-string v26, "processHeader"

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v25

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    move/from16 v2, v17

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/download/network/NetworkDealer;->processHeader(Ljava/util/Map;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 457
    :cond_f
    const/4 v11, 0x0

    .line 458
    .local v11, "is":Ljava/io/InputStream;
    const/16 v25, 0xc8

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    if-eqz v9, :cond_13

    .line 459
    :cond_10
    const/16 v25, 0xce

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    if-nez v9, :cond_13

    .line 458
    :cond_11
    const/16 v22, 0x0

    .line 461
    .local v22, "suc":Z
    :goto_9
    if-eqz v22, :cond_14

    if-eqz p4, :cond_14

    .line 464
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 465
    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lcom/netease/download/network/NetworkDealer;->processContent(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v18

    .line 466
    const-string v25, "NetUtil"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "processContent result="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v25, v18

    .line 479
    .end local v18    # "result":Ljava/lang/Object;
    :goto_a
    if-eqz v11, :cond_12

    .line 480
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 483
    :cond_12
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 484
    const-string v26, "NetUtil"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "doSimpleHttpReq final result="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_8

    .line 488
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v22    # "suc":Z
    :catch_2
    move-exception v5

    .line 489
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 490
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 458
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v18    # "result":Ljava/lang/Object;
    :cond_13
    const/16 v22, 0x1

    goto :goto_9

    .line 468
    .end local v18    # "result":Ljava/lang/Object;
    .restart local v22    # "suc":Z
    :catch_3
    move-exception v5

    .line 469
    .local v5, "e":Ljava/net/SocketException;
    :try_start_6
    invoke-virtual {v5}, Ljava/net/SocketException;->printStackTrace()V

    move-object/from16 v25, v18

    goto :goto_a

    .line 471
    .end local v5    # "e":Ljava/net/SocketException;
    :catch_4
    move-exception v5

    .line 472
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object/from16 v25, v18

    goto :goto_a

    .line 474
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v5

    .line 475
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v25, v18

    goto :goto_a

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v18    # "result":Ljava/lang/Object;
    :cond_14
    move-object/from16 v25, v18

    goto :goto_a
.end method

.method public static getErrorLog(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p0, "pInputStream"    # Ljava/io/InputStream;

    .prologue
    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v2, "errorLog":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 541
    .local v3, "in":Ljava/io/BufferedInputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 544
    .local v0, "buffer":[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 548
    .local v4, "info":Ljava/lang/StringBuffer;
    :goto_0
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .local v5, "len":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 557
    .end local v5    # "len":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 549
    .restart local v5    # "len":I
    :cond_0
    :try_start_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 552
    .end local v5    # "len":I
    :catch_0
    move-exception v1

    .line 553
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 554
    const-string v6, "NetUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u83b7\u53d6\u9519\u8bef\u4fe1\u606f \u5f02\u5e38="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 502
    :try_start_0
    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 505
    .local v9, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 506
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 507
    .local v8, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v7

    .line 508
    .local v7, "ipAddress":I
    invoke-static {v7}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v6

    .line 532
    .end local v7    # "ipAddress":I
    .end local v8    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v9    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v6

    .line 513
    .restart local v9    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-nez v10, :cond_2

    .line 532
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v9    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_1
    const-string v6, "127.0.0.1"

    goto :goto_0

    .line 514
    .restart local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v9    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 516
    .local v5, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 517
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 519
    .local v4, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v10

    if-nez v10, :cond_3

    .line 520
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_0

    .line 526
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    .end local v5    # "intf":Ljava/net/NetworkInterface;
    .end local v9    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v3

    .line 527
    .local v3, "ex":Ljava/net/SocketException;
    invoke-virtual {v3}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_1

    .line 529
    .end local v3    # "ex":Ljava/net/SocketException;
    :catch_1
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 564
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    return-void
.end method
