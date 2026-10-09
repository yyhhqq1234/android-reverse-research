.class Lcom/tencent/liteav/network/f$2;
.super Ljava/lang/Thread;
.source "TXRTMPAccUrlFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/network/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/liteav/network/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/tencent/liteav/network/f$a;

.field final synthetic g:Lcom/tencent/liteav/network/f;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/network/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/liteav/network/f$a;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/tencent/liteav/network/f$2;->g:Lcom/tencent/liteav/network/f;

    iput-object p3, p0, Lcom/tencent/liteav/network/f$2;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/liteav/network/f$2;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/liteav/network/f$2;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/liteav/network/f$2;->d:Ljava/lang/String;

    iput p7, p0, Lcom/tencent/liteav/network/f$2;->e:I

    iput-object p8, p0, Lcom/tencent/liteav/network/f$2;->f:Lcom/tencent/liteav/network/f$a;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 139
    const/4 v2, -0x1

    .line 140
    const-string v4, ""

    .line 142
    const/4 v0, 0x5

    move v5, v0

    :goto_0
    if-lt v5, v6, :cond_e

    .line 145
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 146
    const-string v1, "bizid"

    iget-object v3, p0, Lcom/tencent/liteav/network/f$2;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v1, "stream_id"

    iget-object v3, p0, Lcom/tencent/liteav/network/f$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v1, "txSecret"

    iget-object v3, p0, Lcom/tencent/liteav/network/f$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v1, "txTime"

    iget-object v3, p0, Lcom/tencent/liteav/network/f$2;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string/jumbo v1, "type"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 151
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    new-instance v0, Ljava/net/URL;

    const-string v3, "https://livepull.myqcloud.com/getpulladdr"

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 156
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 157
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 158
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 159
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 160
    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 161
    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 162
    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 163
    const-string v3, "Charsert"

    const-string v8, "UTF-8"

    invoke-virtual {v0, v3, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v3, "Content-Type"

    const-string/jumbo v8, "text/plain;"

    invoke-virtual {v0, v3, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v3, "Content-Length"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v3, "TXRTMPAccUrlFetcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAccelerateStreamPlayUrl: sendHttpRequest[ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] retryIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 174
    const-string v1, ""

    .line 175
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 176
    const-string v0, ""

    move-object v0, v1

    .line 177
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 181
    :cond_0
    const-string v1, "TXRTMPAccUrlFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAccelerateStreamPlayUrl: receive response, strResponse = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 187
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 191
    :cond_1
    if-eqz v2, :cond_3

    .line 192
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 195
    :cond_2
    const-string v1, "TXRTMPAccUrlFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAccelerateStreamPlayUrl: errorCode = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " errorMessage = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    move-object v1, v4

    .line 198
    :try_start_1
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 199
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 201
    const-string v3, "pull_addr"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 202
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 203
    :cond_4
    const-string v0, "TXRTMPAccUrlFetcher"

    const-string v3, "getAccelerateStreamPlayUrl: no pull_addr"

    invoke-static {v0, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_5
    iget v0, p0, Lcom/tencent/liteav/network/f$2;->e:I

    if-ne v0, v6, :cond_a

    .line 228
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 229
    iget-object v0, p0, Lcom/tencent/liteav/network/f$2;->g:Lcom/tencent/liteav/network/f;

    invoke-static {v0}, Lcom/tencent/liteav/network/f;->a(Lcom/tencent/liteav/network/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/tencent/liteav/network/f$2$1;

    invoke-direct {v3, p0, v8}, Lcom/tencent/liteav/network/f$2$1;-><init>(Lcom/tencent/liteav/network/f$2;Ljava/util/Vector;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    :goto_2
    return-void

    :cond_6
    move v3, v7

    .line 206
    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 207
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 208
    if-eqz v0, :cond_7

    .line 209
    const-string v10, "rtmp_url"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 210
    const-string v11, "proto"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 211
    if-ne v0, v6, :cond_8

    move v0, v6

    .line 213
    :goto_4
    const-string v11, "TXRTMPAccUrlFetcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAccelerateStreamPlayUrl: streamUrl = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Q channel = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v11, p0, Lcom/tencent/liteav/network/f$2;->g:Lcom/tencent/liteav/network/f;

    invoke-static {v11, v10}, Lcom/tencent/liteav/network/f;->d(Lcom/tencent/liteav/network/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 216
    if-eqz v11, :cond_7

    iget-object v12, p0, Lcom/tencent/liteav/network/f$2;->b:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 217
    if-eqz v0, :cond_9

    .line 218
    new-instance v11, Lcom/tencent/liteav/network/d;

    invoke-direct {v11, v10, v0}, Lcom/tencent/liteav/network/d;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_7
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_8
    move v0, v7

    .line 211
    goto :goto_4

    .line 220
    :cond_9
    new-instance v11, Lcom/tencent/liteav/network/d;

    invoke-direct {v11, v10, v0}, Lcom/tencent/liteav/network/d;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v8, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 273
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 274
    :goto_6
    const-string v1, "TXRTMPAccUrlFetcher"

    const-string v4, "getAccelerateStreamPlayUrl exception"

    invoke-static {v1, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    :goto_7
    add-int/lit8 v1, v5, -0x1

    move v5, v1

    move-object v4, v0

    goto/16 :goto_0

    .line 240
    :cond_a
    :try_start_2
    iget v0, p0, Lcom/tencent/liteav/network/f$2;->e:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    .line 241
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 242
    iget-object v0, p0, Lcom/tencent/liteav/network/f$2;->g:Lcom/tencent/liteav/network/f;

    invoke-static {v0}, Lcom/tencent/liteav/network/f;->a(Lcom/tencent/liteav/network/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/tencent/liteav/network/f$2$2;

    invoke-direct {v3, p0, v4}, Lcom/tencent/liteav/network/f$2$2;-><init>(Lcom/tencent/liteav/network/f$2;Ljava/util/Vector;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 255
    :cond_b
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/network/d;

    .line 256
    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 258
    :cond_c
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 259
    iget-object v0, p0, Lcom/tencent/liteav/network/f$2;->g:Lcom/tencent/liteav/network/f;

    invoke-static {v0}, Lcom/tencent/liteav/network/f;->a(Lcom/tencent/liteav/network/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/tencent/liteav/network/f$2$3;

    invoke-direct {v3, p0, v4}, Lcom/tencent/liteav/network/f$2$3;-><init>(Lcom/tencent/liteav/network/f$2;Ljava/util/Vector;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 271
    :cond_d
    const-wide/16 v8, 0x3e8

    const/4 v0, 0x0

    invoke-static {v8, v9, v0}, Lcom/tencent/liteav/network/f$2;->sleep(JI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 276
    goto :goto_7

    .line 282
    :cond_e
    iget-object v0, p0, Lcom/tencent/liteav/network/f$2;->g:Lcom/tencent/liteav/network/f;

    invoke-static {v0}, Lcom/tencent/liteav/network/f;->a(Lcom/tencent/liteav/network/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/liteav/network/f$2$4;

    invoke-direct {v1, p0, v2, v4}, Lcom/tencent/liteav/network/f$2$4;-><init>(Lcom/tencent/liteav/network/f$2;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 273
    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v0, v4

    goto :goto_6
.end method
