.class public final Lcom/tencent/beacon/cover/c;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static e:Z

.field private static f:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/cover/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lcom/tencent/beacon/cover/c;->e:Z

    .line 43
    sput v0, Lcom/tencent/beacon/cover/c;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/tencent/beacon/cover/c;->b:Ljava/util/List;

    .line 39
    iput-object v0, p0, Lcom/tencent/beacon/cover/c;->c:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/beacon/cover/c;->d:Z

    .line 46
    iput-object p1, p0, Lcom/tencent/beacon/cover/c;->a:Landroid/content/Context;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "beacon/comp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/cover/c;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/tencent/beacon/cover/a;)Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x7530

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 147
    iget-object v0, p1, Lcom/tencent/beacon/cover/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v0, ""

    iget-object v2, p1, Lcom/tencent/beacon/cover/a;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 150
    :try_start_0
    new-instance v7, Ljava/net/URL;

    iget-object v0, p1, Lcom/tencent/beacon/cover/a;->e:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 159
    :goto_0
    add-int/lit8 v6, v0, 0x1

    const/4 v2, 0x3

    if-ge v0, v2, :cond_c

    .line 1321
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1322
    const-string v2, "Accept-Encoding"

    const-string v4, "identity"

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1324
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1325
    const/16 v2, 0x4e20

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1326
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 167
    if-eqz v0, :cond_2

    .line 171
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_b

    .line 173
    iget v2, p1, Lcom/tencent/beacon/cover/a;->f:I

    if-lez v2, :cond_2

    iget v2, p1, Lcom/tencent/beacon/cover/a;->f:I

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result v4

    if-ne v2, v4, :cond_2

    .line 179
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 180
    if-eqz v4, :cond_7

    .line 181
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_3

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 188
    :goto_1
    const/16 v0, 0x1000

    :try_start_5
    new-array v0, v0, [B

    .line 190
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/tencent/beacon/cover/c;->c:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p1, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".ziptmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 191
    :goto_2
    const/4 v8, 0x0

    const/16 v9, 0x1000

    :try_start_6
    invoke-virtual {v2, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-lez v8, :cond_4

    .line 192
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 193
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    .line 199
    :catch_0
    move-exception v0

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    const-string v0, "E"

    const-string v8, "read InputStream error!"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 203
    if-eqz v2, :cond_0

    .line 204
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 206
    :cond_0
    if-eqz v4, :cond_1

    .line 207
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 209
    :cond_1
    if-eqz v5, :cond_2

    .line 210
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 222
    :cond_2
    :goto_4
    invoke-static {v12, v13}, Lcom/tencent/beacon/cover/f;->a(J)V

    move v0, v6

    goto/16 :goto_0

    .line 152
    :catch_1
    move-exception v0

    const-string v0, "W"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download url is error! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/tencent/beacon/cover/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 225
    :goto_5
    return v0

    .line 163
    :catch_2
    move-exception v0

    invoke-static {v12, v13}, Lcom/tencent/beacon/cover/f;->a(J)V

    move v0, v6

    .line 164
    goto/16 :goto_0

    :cond_3
    move-object v2, v4

    .line 185
    goto :goto_1

    .line 195
    :cond_4
    :try_start_9
    const-string v0, "D"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "down load file:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/tencent/beacon/cover/c;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".ziptmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 203
    if-eqz v2, :cond_5

    .line 204
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 206
    :cond_5
    if-eqz v4, :cond_6

    .line 207
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 210
    :cond_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 196
    :goto_6
    const/4 v0, 0x1

    goto :goto_5

    .line 206
    :cond_7
    if-eqz v4, :cond_2

    .line 207
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_4

    .line 214
    :catch_3
    move-exception v0

    goto :goto_4

    .line 202
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    .line 203
    :goto_7
    if-eqz v2, :cond_8

    .line 204
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 206
    :cond_8
    if-eqz v4, :cond_9

    .line 207
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 209
    :cond_9
    if-eqz v5, :cond_a

    .line 210
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 213
    :cond_a
    :goto_8
    :try_start_d
    throw v0

    :catch_4
    move-exception v0

    goto :goto_4

    .line 217
    :cond_b
    const-string v2, "E"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http response code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_4

    :cond_c
    move v0, v1

    .line 225
    goto :goto_5

    :catch_5
    move-exception v2

    goto :goto_8

    .line 202
    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object v5, v3

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v5, v3

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_7

    .line 214
    :catch_6
    move-exception v0

    goto/16 :goto_4

    .line 199
    :catch_7
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    goto/16 :goto_3

    :catch_8
    move-exception v0

    move-object v2, v3

    move-object v5, v3

    goto/16 :goto_3

    :catch_9
    move-exception v0

    move-object v5, v3

    goto/16 :goto_3

    :catch_a
    move-exception v0

    goto :goto_6
.end method

.method private declared-synchronized b()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/cover/c;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/beacon/cover/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    sput v0, Lcom/tencent/beacon/cover/c;->f:I

    .line 106
    iget-object v0, p0, Lcom/tencent/beacon/cover/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/cover/f;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    const-string v0, "W"

    const-string v1, "it\'s not on wifi stat, cancel!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    const/4 v0, 0x2

    sput v0, Lcom/tencent/beacon/cover/c;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 113
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/beacon/cover/f;->c()J

    move-result-wide v0

    const-wide/32 v4, 0xa00000

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 114
    const-string v0, "W"

    const-string v1, "Not enough storage, cancel!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/tencent/beacon/cover/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/cover/e;->a(Landroid/content/Context;)Lcom/tencent/beacon/cover/e;

    move-result-object v0

    const-string v1, "Not enough storage"

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/cover/e;->b(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/tencent/beacon/cover/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/cover/e;->a(Landroid/content/Context;)Lcom/tencent/beacon/cover/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/cover/e;->a(Z)V

    .line 117
    const/4 v0, 0x2

    sput v0, Lcom/tencent/beacon/cover/c;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 122
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/tencent/beacon/cover/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/cover/a;

    .line 123
    invoke-direct {p0, v0}, Lcom/tencent/beacon/cover/c;->a(Lcom/tencent/beacon/cover/a;)Z

    move-result v1

    .line 124
    if-nez v1, :cond_4

    .line 125
    const/4 v0, 0x2

    sput v0, Lcom/tencent/beacon/cover/c;->f:I

    goto :goto_0

    .line 1234
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/beacon/cover/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".ziptmp"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/beacon/cover/c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1236
    invoke-static {v1, v4}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1237
    if-nez v1, :cond_5

    .line 1238
    const-string v5, "E"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "unzip file failure: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1242
    :cond_5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1244
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v4, v6

    iput v4, v0, Lcom/tencent/beacon/cover/a;->f:I

    .line 1245
    iget-object v4, v0, Lcom/tencent/beacon/cover/a;->g:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/beacon/cover/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    .line 1251
    :cond_6
    const-string v4, "libBeacon.so"

    iget-object v5, v0, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "5.jar"

    iget-object v0, v0, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    .line 1252
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1253
    :cond_7
    iget-object v0, p0, Lcom/tencent/beacon/cover/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/cover/f;->a(Landroid/content/Context;)V

    .line 129
    :cond_8
    if-nez v1, :cond_3

    .line 130
    const/4 v0, 0x2

    sput v0, Lcom/tencent/beacon/cover/c;->f:I

    goto/16 :goto_0

    .line 136
    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/beacon/cover/c;->e:Z

    .line 137
    const/4 v0, 0x2

    sput v0, Lcom/tencent/beacon/cover/c;->f:I

    .line 138
    invoke-direct {p0}, Lcom/tencent/beacon/cover/c;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-object v0, p0, Lcom/tencent/beacon/cover/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/cover/a;

    .line 267
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/tencent/beacon/cover/c;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 271
    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/tencent/beacon/cover/c;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/tencent/beacon/cover/a;->d:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".tmp"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/tencent/beacon/cover/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/cover/g;->a(Landroid/content/Context;)Lcom/tencent/beacon/cover/g;

    move-result-object v0

    .line 277
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    if-eqz v0, :cond_2

    .line 279
    invoke-virtual {v0}, Lcom/tencent/beacon/cover/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 281
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 282
    iget-object v0, p0, Lcom/tencent/beacon/cover/c;->b:Ljava/util/List;

    .line 283
    iget-object v1, p0, Lcom/tencent/beacon/cover/c;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/tencent/beacon/cover/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 307
    :goto_1
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 308
    iget-object v2, p0, Lcom/tencent/beacon/cover/c;->a:Landroid/content/Context;

    const-string v4, "COMP_INFO"

    invoke-static {v2, v4, v1}, Lcom/tencent/beacon/cover/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 309
    const-string v2, "D"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "new config:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    :cond_3
    const-string v1, "I"

    const-string/jumbo v2, "update component success."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v1, p0, Lcom/tencent/beacon/cover/c;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/beacon/cover/b;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/beacon/cover/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/cover/b;->a()V

    .line 315
    return-void

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/tencent/beacon/cover/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/beacon/cover/a;

    .line 286
    if-eqz v0, :cond_5

    .line 290
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    move v4, v3

    .line 292
    :goto_3
    if-ge v4, v6, :cond_8

    .line 293
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/beacon/cover/a;

    .line 294
    if-eqz v1, :cond_6

    iget v1, v1, Lcom/tencent/beacon/cover/a;->a:I

    iget v7, v0, Lcom/tencent/beacon/cover/a;->a:I

    if-ne v1, v7, :cond_6

    .line 295
    invoke-interface {v2, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 296
    const/4 v1, 0x1

    .line 300
    :goto_4
    if-nez v1, :cond_5

    .line 301
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 292
    :cond_6
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    .line 304
    :cond_7
    invoke-static {v2}, Lcom/tencent/beacon/cover/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v2

    goto :goto_1

    :cond_8
    move v1, v3

    goto :goto_4
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tencent/beacon/cover/c;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/beacon/cover/c;->d:Z

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/cover/c;->d:Z

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/tencent/beacon/cover/c;->a:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/beacon/cover/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    iput-object p1, p0, Lcom/tencent/beacon/cover/c;->b:Ljava/util/List;

    .line 333
    sget v0, Lcom/tencent/beacon/cover/c;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-boolean v0, Lcom/tencent/beacon/cover/c;->e:Z

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 336
    :cond_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/cover/c;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 59
    if-nez v0, :cond_1

    .line 60
    const-string v0, "W"

    const-string v1, "CompUpdate onReceive ConnectivityManager is null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const/4 v1, 0x0

    .line 64
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 69
    :goto_1
    if-eqz v0, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/tencent/beacon/cover/c;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 72
    sget v0, Lcom/tencent/beacon/cover/c;->f:I

    if-eq v0, v4, :cond_0

    sget-boolean v0, Lcom/tencent/beacon/cover/c;->e:Z

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    const-string v0, "E"

    const-string v1, "onReceive has a exception"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/beacon/cover/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final run()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/tencent/beacon/cover/c;->b()V

    .line 96
    return-void
.end method
