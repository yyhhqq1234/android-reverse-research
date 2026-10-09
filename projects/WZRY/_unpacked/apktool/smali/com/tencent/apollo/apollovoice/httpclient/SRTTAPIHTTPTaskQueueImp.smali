.class public Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;
.super Ljava/lang/Object;
.source "SRTTAPIHTTPTaskQueueImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RequestTask;
    }
.end annotation


# static fields
.field private static LOGTAG:Ljava/lang/String;

.field private static apiAddr:Ljava/lang/String;

.field private static apiKey:Ljava/lang/String;


# instance fields
.field private taskQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;",
            ">;"
        }
    .end annotation
.end field

.field private timestampArg:Ljava/lang/String;

.field private workThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "GCloudVoiceTag"

    sput-object v0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->LOGTAG:Ljava/lang/String;

    .line 34
    const-string v0, "http://api.pr.weixin.qq.com/cgi-bin/wxvoicereco"

    sput-object v0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->apiAddr:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "wxk158ztg8lli234j"

    sput-object v0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->apiKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->taskQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->dealStartTask(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;
    .param p1, "x1"    # Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->dealVoiceTask(Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;
    .param p1, "x1"    # Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->dealStopTask(Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method public static native callback(I[BI)V
.end method

.method private dealStartTask(I)V
    .locals 11
    .param p1, "session"    # I

    .prologue
    .line 65
    const/4 v8, 0x0

    .line 67
    .local v8, "status":I
    :try_start_0
    new-instance v7, Ljava/net/URL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->apiAddr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?cmd=1&appid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->apiKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    .local v7, "reqURL":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 82
    .local v6, "reqConn":Ljava/net/HttpURLConnection;
    :try_start_2
    const-string v9, "POST"

    invoke-virtual {v6, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3

    .line 88
    :goto_0
    const-string v9, "Content-Type"

    const-string/jumbo v10, "text/html"

    invoke-virtual {v6, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :try_start_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v8

    .line 99
    :goto_1
    :try_start_4
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 111
    .local v4, "inStrm":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    .local v1, "byteArrayOut":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 115
    .local v0, "buf":[B
    :goto_2
    :try_start_5
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_0

    .line 116
    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 118
    .end local v5    # "len":I
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 121
    const/16 v8, 0x1f7

    .line 135
    .end local v0    # "buf":[B
    .end local v1    # "byteArrayOut":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "inStrm":Ljava/io/InputStream;
    .end local v6    # "reqConn":Ljava/net/HttpURLConnection;
    .end local v7    # "reqURL":Ljava/net/URL;
    :goto_3
    return-void

    .line 68
    :catch_1
    move-exception v2

    .line 70
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_3

    .line 75
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v7    # "reqURL":Ljava/net/URL;
    :catch_2
    move-exception v2

    .line 77
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 83
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "reqConn":Ljava/net/HttpURLConnection;
    :catch_3
    move-exception v2

    .line 85
    .local v2, "e":Ljava/net/ProtocolException;
    invoke-virtual {v2}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v2    # "e":Ljava/net/ProtocolException;
    :catch_4
    move-exception v3

    .line 94
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v3    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 101
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 102
    const/16 v8, 0x194

    .line 103
    goto :goto_3

    .line 104
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v3

    .line 106
    .restart local v3    # "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 107
    const/16 v8, 0x1f7

    .line 108
    goto :goto_3

    .line 125
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v1    # "byteArrayOut":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "inStrm":Ljava/io/InputStream;
    .restart local v5    # "len":I
    :cond_0
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 126
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 127
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 134
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v8, v9, p1}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->callback(I[BI)V

    goto :goto_3

    .line 128
    :catch_7
    move-exception v2

    .line 129
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    const/16 v8, 0x1f7

    .line 131
    goto :goto_3
.end method

.method private dealStopTask(Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;)V
    .locals 13
    .param p1, "task"    # Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;

    .prologue
    .line 138
    sget-object v11, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->LOGTAG:Ljava/lang/String;

    const-string v12, "dealStopTask"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v10, 0x0

    .line 142
    .local v10, "status":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    .local v1, "byteArrayOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->apiAddr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?platform=android&cmd=6&appid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->apiKey:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&voice_id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->key:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    .local v9, "reqURL":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 160
    .local v8, "reqConn":Ljava/net/HttpURLConnection;
    :try_start_2
    const-string v11, "POST"

    invoke-virtual {v8, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3

    .line 165
    :goto_0
    const-string v11, "Content-Type"

    const-string v12, "application/octet-stream"

    invoke-virtual {v8, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v11, "Connection"

    const-string v12, "keep-alive"

    invoke-virtual {v8, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v11, "Accept-Language"

    const-string/jumbo v12, "zh-CN"

    invoke-virtual {v8, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :try_start_3
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 182
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_4
    iget-object v11, p1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->body:[B

    invoke-virtual {v7, v11}, Ljava/io/OutputStream;->write([B)V

    .line 183
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 184
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 195
    :goto_1
    :try_start_5
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-result v10

    .line 205
    :goto_2
    :try_start_6
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 220
    .local v5, "inStrm":Ljava/io/InputStream;
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 223
    .local v0, "buf":[B
    :goto_3
    :try_start_7
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v11, -0x1

    if-eq v6, v11, :cond_0

    .line 224
    const/4 v11, 0x0

    invoke-virtual {v1, v0, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    .line 226
    .end local v6    # "len":I
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 229
    const/16 v10, 0x1f7

    .line 230
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iget v12, p1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->session:I

    invoke-static {v10, v11, v12}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->callback(I[BI)V

    .line 246
    .end local v0    # "buf":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "inStrm":Ljava/io/InputStream;
    .end local v7    # "out":Ljava/io/OutputStream;
    .end local v8    # "reqConn":Ljava/net/HttpURLConnection;
    .end local v9    # "reqURL":Ljava/net/URL;
    :goto_4
    return-void

    .line 146
    :catch_1
    move-exception v2

    .line 148
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_4

    .line 153
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v9    # "reqURL":Ljava/net/URL;
    :catch_2
    move-exception v2

    .line 155
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 161
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v8    # "reqConn":Ljava/net/HttpURLConnection;
    :catch_3
    move-exception v2

    .line 163
    .local v2, "e":Ljava/net/ProtocolException;
    invoke-virtual {v2}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v2    # "e":Ljava/net/ProtocolException;
    :catch_4
    move-exception v4

    .line 175
    .local v4, "e2":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 176
    const/16 v10, 0x190

    .line 177
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iget v12, p1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->session:I

    invoke-static {v10, v11, v12}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->callback(I[BI)V

    goto :goto_4

    .line 185
    .end local v4    # "e2":Ljava/io/IOException;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_5
    move-exception v4

    .line 187
    .restart local v4    # "e2":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    const/16 v10, 0x190

    .line 189
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iget v12, p1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->session:I

    invoke-static {v10, v11, v12}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->callback(I[BI)V

    goto :goto_1

    .line 196
    .end local v4    # "e2":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 198
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 199
    const/16 v10, 0x190

    .line 200
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iget v12, p1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->session:I

    invoke-static {v10, v11, v12}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->callback(I[BI)V

    goto :goto_2

    .line 206
    .end local v3    # "e1":Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 207
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 208
    const/16 v10, 0x190

    .line 209
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iget v12, p1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->session:I

    invoke-static {v10, v11, v12}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->callback(I[BI)V

    goto :goto_4

    .line 211
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v3

    .line 213
    .restart local v3    # "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 214
    const/16 v10, 0x1f7

    .line 215
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iget v12, p1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->session:I

    invoke-static {v10, v11, v12}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->callback(I[BI)V

    goto :goto_4

    .line 234
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v5    # "inStrm":Ljava/io/InputStream;
    .restart local v6    # "len":I
    :cond_0
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 235
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 236
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 244
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iget v12, p1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->session:I

    invoke-static {v10, v11, v12}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->callback(I[BI)V

    goto :goto_4

    .line 237
    :catch_9
    move-exception v2

    .line 238
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 239
    const/16 v10, 0x1f7

    .line 240
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iget v12, p1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->session:I

    invoke-static {v10, v11, v12}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->callback(I[BI)V

    goto/16 :goto_4
.end method

.method private dealVoiceTask(Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;)V
    .locals 13
    .param p1, "task"    # Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;

    .prologue
    .line 251
    const/4 v10, 0x0

    .line 253
    .local v10, "status":I
    :try_start_0
    new-instance v9, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->apiAddr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?platform=android&cmd=6&appid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->apiKey:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&voice_id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->key:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 260
    .local v9, "reqURL":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 268
    .local v8, "reqConn":Ljava/net/HttpURLConnection;
    :try_start_2
    const-string v11, "POST"

    invoke-virtual {v8, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3

    .line 273
    :goto_0
    const-string v11, "Content-Type"

    const-string v12, "application/octet-stream"

    invoke-virtual {v8, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v11, "Connection"

    const-string v12, "keep-alive"

    invoke-virtual {v8, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v11, "Accept-Language"

    const-string/jumbo v12, "zh-CN"

    invoke-virtual {v8, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :try_start_3
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 288
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_4
    iget-object v11, p1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->body:[B

    invoke-virtual {v7, v11}, Ljava/io/OutputStream;->write([B)V

    .line 289
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 290
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 300
    :goto_1
    :try_start_5
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-result v10

    .line 309
    :goto_2
    :try_start_6
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 321
    .local v5, "inStrm":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 322
    .local v1, "byteArrayOut":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 325
    .local v0, "buf":[B
    :goto_3
    :try_start_7
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v11, -0x1

    if-eq v6, v11, :cond_0

    .line 326
    const/4 v11, 0x0

    invoke-virtual {v1, v0, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    .line 328
    .end local v6    # "len":I
    :catch_0
    move-exception v2

    .line 330
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 331
    const/16 v10, 0x1f7

    .line 346
    .end local v0    # "buf":[B
    .end local v1    # "byteArrayOut":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "inStrm":Ljava/io/InputStream;
    .end local v7    # "out":Ljava/io/OutputStream;
    .end local v8    # "reqConn":Ljava/net/HttpURLConnection;
    .end local v9    # "reqURL":Ljava/net/URL;
    :goto_4
    return-void

    .line 254
    :catch_1
    move-exception v2

    .line 256
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_4

    .line 261
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v9    # "reqURL":Ljava/net/URL;
    :catch_2
    move-exception v2

    .line 263
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 269
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v8    # "reqConn":Ljava/net/HttpURLConnection;
    :catch_3
    move-exception v2

    .line 271
    .local v2, "e":Ljava/net/ProtocolException;
    invoke-virtual {v2}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_0

    .line 281
    .end local v2    # "e":Ljava/net/ProtocolException;
    :catch_4
    move-exception v4

    .line 283
    .local v4, "e2":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 291
    .end local v4    # "e2":Ljava/io/IOException;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_5
    move-exception v4

    .line 293
    .restart local v4    # "e2":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 294
    const/16 v10, 0x190

    goto :goto_1

    .line 301
    .end local v4    # "e2":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 303
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 304
    const/16 v10, 0x190

    goto :goto_2

    .line 310
    .end local v3    # "e1":Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 311
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 312
    const/16 v10, 0x194

    .line 313
    goto :goto_4

    .line 314
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v3

    .line 316
    .restart local v3    # "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 317
    const/16 v10, 0x1f7

    .line 318
    goto :goto_4

    .line 335
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v1    # "byteArrayOut":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "inStrm":Ljava/io/InputStream;
    .restart local v6    # "len":I
    :cond_0
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 336
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 337
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 344
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iget v12, p1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->session:I

    invoke-static {v10, v11, v12}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->callback(I[BI)V

    goto :goto_4

    .line 338
    :catch_9
    move-exception v2

    .line 339
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 340
    const/16 v10, 0x1f7

    .line 341
    goto :goto_4
.end method


# virtual methods
.method public declared-synchronized addTask(IILjava/lang/String;[BI)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "method"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "body"    # [B
    .param p5, "session"    # I

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;

    invoke-direct {v0}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;-><init>()V

    .line 54
    .local v0, "task":Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;
    iput p1, v0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->type:I

    .line 55
    iput-object p4, v0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->body:[B

    .line 56
    iput-object p3, v0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->key:Ljava/lang/String;

    .line 57
    iput p2, v0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->method:I

    .line 58
    iput p5, v0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;->session:I

    .line 59
    iget-object v1, p0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->taskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 53
    .end local v0    # "task":Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTask;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public init()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->taskQueue:Ljava/util/LinkedList;

    .line 43
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RequestTask;

    invoke-direct {v1, p0}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp$RequestTask;-><init>(Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->workThread:Ljava/lang/Thread;

    .line 44
    iget-object v0, p0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->workThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    return-void
.end method

.method public setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;

    .prologue
    .line 48
    sput-object p1, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->apiKey:Ljava/lang/String;

    .line 49
    sput-object p2, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->apiAddr:Ljava/lang/String;

    .line 50
    return-void
.end method
