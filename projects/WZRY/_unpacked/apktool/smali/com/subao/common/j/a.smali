.class public Lcom/subao/common/j/a;
.super Ljava/lang/Object;
.source "Http.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/j/a$c;,
        Lcom/subao/common/j/a$a;,
        Lcom/subao/common/j/a$b;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/subao/common/j/a;->a:I

    .line 41
    iput p2, p0, Lcom/subao/common/j/a;->b:I

    .line 42
    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)Lcom/subao/common/j/a$c;
    .locals 9
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 69
    :try_start_0
    invoke-static {p0}, Lcom/subao/common/j/a;->c(Ljava/net/HttpURLConnection;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 73
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 74
    :try_start_2
    invoke-static {v0}, Lcom/subao/common/e;->a(Ljava/io/InputStream;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 78
    :try_start_3
    invoke-static {v0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 80
    :goto_0
    if-nez v0, :cond_2

    .line 81
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 82
    if-eqz v1, :cond_2

    .line 84
    :try_start_4
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/InputStream;)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 86
    :try_start_5
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v1, v0

    .line 91
    :goto_1
    :try_start_6
    const-string v0, "SubaoNet"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v4, "SubaoNet"

    sget-object v5, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v6, "[%s] response: code=%d, data size=%d"

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v0, 0x1

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v8, 0x2

    if-nez v1, :cond_1

    move v0, v2

    .line 95
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    .line 92
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    .line 99
    :cond_0
    :goto_3
    :try_start_7
    new-instance v0, Lcom/subao/common/j/a$c;

    invoke-direct {v0, v3, v1}, Lcom/subao/common/j/a$c;-><init>(I[B)V

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 78
    :goto_4
    invoke-static {v0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 79
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    :goto_5
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 100
    :catch_1
    move-exception v0

    .line 101
    invoke-static {p0, v0}, Lcom/subao/common/j/a;->a(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    .line 102
    throw v0

    .line 86
    :catchall_1
    move-exception v0

    :try_start_8
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 103
    :catch_2
    move-exception v0

    .line 105
    invoke-static {p0, v0}, Lcom/subao/common/j/a;->a(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    .line 106
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_1
    :try_start_9
    array-length v0, v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 97
    :catch_3
    move-exception v0

    goto :goto_3

    .line 78
    :catchall_2
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_5

    .line 75
    :catch_4
    move-exception v4

    goto :goto_4

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Ljava/net/HttpURLConnection;[B)Lcom/subao/common/j/a$c;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/subao/common/j/a;->a(Ljava/net/HttpURLConnection;[BZ)Lcom/subao/common/j/a$c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;[BZ)Lcom/subao/common/j/a$c;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 157
    invoke-static {p0}, Lcom/subao/common/j/a;->d(Ljava/net/HttpURLConnection;)V

    .line 158
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 159
    if-eqz p2, :cond_1

    .line 160
    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 165
    const/4 v0, 0x0

    .line 167
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 168
    if-eqz p2, :cond_2

    .line 169
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 170
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 172
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 173
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :goto_1
    invoke-static {v0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 184
    :cond_0
    invoke-static {p0}, Lcom/subao/common/j/a;->a(Ljava/net/HttpURLConnection;)Lcom/subao/common/j/a$c;

    move-result-object v0

    return-object v0

    .line 162
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_0

    .line 175
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 176
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 178
    :catch_0
    move-exception v1

    .line 179
    :try_start_2
    new-instance v1, Lcom/subao/common/j/g;

    invoke-direct {v1}, Lcom/subao/common/j/g;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 46
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v0, Lcom/subao/common/j/g;

    invoke-direct {v0}, Lcom/subao/common/j/g;-><init>()V

    throw v0
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    .locals 2
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    const-string v0, "SubaoNet"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    const-string v1, "SubaoNet"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/subao/common/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    const-string v0, "SubaoNet"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/subao/common/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_1
    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method

.method public static b(Ljava/net/HttpURLConnection;)Lcom/subao/common/j/a$c;
    .locals 1
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    invoke-static {p0}, Lcom/subao/common/j/a;->d(Ljava/net/HttpURLConnection;)V

    .line 125
    :try_start_0
    invoke-static {p0}, Lcom/subao/common/j/a;->a(Ljava/net/HttpURLConnection;)Lcom/subao/common/j/a$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
.end method

.method public static b(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    const-string v0, "Accept"

    invoke-virtual {p0, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    return-void
.end method

.method public static c(Ljava/net/HttpURLConnection;)I
    .locals 2
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 225
    :goto_0
    if-gez v0, :cond_0

    .line 226
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No valid response code."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :catch_0
    move-exception v0

    .line 219
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 221
    :catch_1
    move-exception v0

    .line 223
    const/4 v0, -0x1

    goto :goto_0

    .line 228
    :cond_0
    return v0
.end method

.method private static d(Ljava/net/HttpURLConnection;)V
    .locals 5

    .prologue
    .line 132
    const-string v0, "SubaoNet"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "SubaoNet"

    const-string v1, "Try HTTP request (%s): %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/net/URL;Ljava/lang/String;)Lcom/subao/common/j/a$c;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 278
    :try_start_0
    sget-object v0, Lcom/subao/common/j/a$b;->a:Lcom/subao/common/j/a$b;

    invoke-virtual {p0, p1, v0, p2}, Lcom/subao/common/j/a;->a(Ljava/net/URL;Lcom/subao/common/j/a$b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 279
    invoke-static {v1}, Lcom/subao/common/j/a;->b(Ljava/net/HttpURLConnection;)Lcom/subao/common/j/a$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 281
    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v0

    .line 281
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0
.end method

.method public a(Ljava/net/URL;Lcom/subao/common/j/a$b;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/j/a$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 252
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 253
    if-eqz p2, :cond_0

    .line 254
    iget-object v1, p2, Lcom/subao/common/j/a$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 256
    :cond_0
    iget v1, p0, Lcom/subao/common/j/a;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 257
    iget v1, p0, Lcom/subao/common/j/a;->b:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 258
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 259
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 260
    invoke-static {v0, p3}, Lcom/subao/common/j/a;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 261
    const-string v1, "Connection"

    const-string v2, "Close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    return-object v0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "\u7f51\u7edc\u6743\u9650\u88ab\u7981\u7528"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
