.class public abstract Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/qq/taf/jce/JceStruct;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "BaseHttpRequest"

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b:Lcom/qq/taf/jce/JceStruct;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->c:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b:Lcom/qq/taf/jce/JceStruct;

    .line 56
    return-void
.end method

.method protected abstract a(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V
.end method

.method protected abstract b()V
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->c:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a()V

    .line 67
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b:Lcom/qq/taf/jce/JceStruct;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b:Lcom/qq/taf/jce/JceStruct;

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->c(Lcom/qq/taf/jce/JceStruct;)Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a(Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Request;)[B

    move-result-object v1

    .line 84
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v0, "http://masdk.3g.qq.com/"

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/b/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 90
    const-string v4, "cmwap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "3gwap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "uniwap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 93
    :cond_2
    new-instance v0, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    sget-object v6, Lcom/tencent/tmapkupdatesdk/internal/b/a;->a:Ljava/lang/String;

    sget v7, Lcom/tencent/tmapkupdatesdk/internal/b/a;->b:I

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 94
    invoke-virtual {v3, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    .line 104
    :goto_1
    if-nez v4, :cond_3

    .line 105
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 108
    :cond_3
    const-string v0, "POST"

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 110
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 114
    const-string v0, "User-Agent"

    const-string v3, "AssistantDownloader"

    invoke-virtual {v4, v0, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-virtual {v4, v0, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/16 v0, 0x7530

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 120
    const/16 v0, 0x7530

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 123
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 124
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 125
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 126
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 128
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 130
    :try_start_3
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "url:http://masdk.3g.qq.com/"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 133
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a:Ljava/lang/String;

    const-string v2, "request is cancel"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 176
    if-eqz v1, :cond_4

    .line 178
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 186
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 188
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 196
    :cond_5
    :goto_3
    if-eqz v4, :cond_0

    .line 197
    :goto_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 96
    :cond_6
    :try_start_6
    const-string v4, "ctwap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 99
    new-instance v0, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    sget-object v6, Lcom/tencent/tmapkupdatesdk/internal/b/a;->c:Ljava/lang/String;

    sget v7, Lcom/tencent/tmapkupdatesdk/internal/b/a;->b:I

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 100
    invoke-virtual {v3, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v4, v0

    goto/16 :goto_1

    .line 137
    :cond_7
    :try_start_7
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url:http://masdk.3g.qq.com/; httpCode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_b

    .line 140
    if-eqz v1, :cond_b

    .line 142
    invoke-static {v1}, Lcom/tencent/tmassistantbase/util/BaseUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 144
    if-eqz v0, :cond_a

    array-length v2, v0

    const/4 v5, 0x4

    if-le v2, v5, :cond_a

    .line 146
    sget-object v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a:Ljava/lang/String;

    const-string v5, "onDataReceiveSuccess(data != null && data.length > 4)"

    invoke-static {v2, v5}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a([B)Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_b

    iget-object v2, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;->body:[B

    if-eqz v2, :cond_b

    .line 153
    iget-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b:Lcom/qq/taf/jce/JceStruct;

    iget-object v0, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/Response;->body:[B

    invoke-static {v2, v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/c;->a(Lcom/qq/taf/jce/JceStruct;[B)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_b

    .line 156
    iget-object v2, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b:Lcom/qq/taf/jce/JceStruct;

    invoke-virtual {p0, v2, v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 176
    if-eqz v1, :cond_8

    .line 178
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 186
    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    .line 188
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 196
    :cond_9
    :goto_6
    if-eqz v4, :cond_0

    goto/16 :goto_4

    .line 161
    :cond_a
    :try_start_a
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a:Ljava/lang/String;

    const-string v2, "onDataReceiveFailed()(data == null || data.length <= 4)"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b()V

    .line 167
    :cond_b
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a:Ljava/lang/String;

    const-string v2, "onDataReceiveFailed()"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 176
    if-eqz v1, :cond_c

    .line 178
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 186
    :cond_c
    :goto_7
    if-eqz v3, :cond_d

    .line 188
    :try_start_c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 196
    :cond_d
    :goto_8
    if-eqz v4, :cond_0

    goto/16 :goto_4

    .line 170
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    .line 172
    :goto_9
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    invoke-virtual {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->b()V

    .line 174
    sget-object v2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a:Ljava/lang/String;

    const-string v5, "exception:"

    invoke-static {v2, v5, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 176
    if-eqz v1, :cond_e

    .line 178
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 186
    :cond_e
    :goto_a
    if-eqz v3, :cond_f

    .line 188
    :try_start_f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 196
    :cond_f
    :goto_b
    if-eqz v4, :cond_0

    goto/16 :goto_4

    .line 176
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_c
    if-eqz v1, :cond_10

    .line 178
    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    .line 186
    :cond_10
    :goto_d
    if-eqz v3, :cond_11

    .line 188
    :try_start_11
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    .line 196
    :cond_11
    :goto_e
    if-eqz v4, :cond_12

    .line 197
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 176
    :cond_12
    throw v0

    .line 179
    :catch_1
    move-exception v1

    .line 180
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 189
    :catch_2
    move-exception v1

    .line 190
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    .line 179
    :catch_3
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 189
    :catch_4
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 179
    :catch_5
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 189
    :catch_6
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 179
    :catch_7
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 189
    :catch_8
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 179
    :catch_9
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 189
    :catch_a
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 176
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_c

    .line 170
    :catch_b
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_9

    :catch_c
    move-exception v0

    move-object v1, v2

    goto :goto_9

    :catch_d
    move-exception v0

    goto :goto_9

    :cond_13
    move-object v4, v2

    goto/16 :goto_1
.end method
