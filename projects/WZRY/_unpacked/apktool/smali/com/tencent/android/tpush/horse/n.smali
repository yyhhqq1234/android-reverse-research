.class public Lcom/tencent/android/tpush/horse/n;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static f:I


# instance fields
.field private a:Ljava/nio/channels/SocketChannel;

.field private b:Ljava/util/concurrent/ArrayBlockingQueue;

.field private c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

.field private d:J

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/horse/n;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/android/tpush/horse/n;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 50
    return-void
.end method

.method private b(Lcom/tencent/android/tpush/horse/data/StrategyItem;)Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->e()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 140
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/horse/o;

    .line 205
    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-interface {v0, v1}, Lcom/tencent/android/tpush/horse/o;->b(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/horse/n;->e:J

    .line 216
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "SocketClient"

    const-string v2, "notifyFail"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;)V
    .locals 6

    .prologue
    const/16 v2, 0xa

    .line 149
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceOutputStream;-><init>()V

    .line 150
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 151
    invoke-virtual {p1, v0}, Lcom/qq/taf/jce/JceStruct;->writeTo(Lcom/qq/taf/jce/JceOutputStream;)V

    .line 152
    new-instance v3, Lcom/tencent/android/tpush/service/channel/b/h;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Lcom/tencent/android/tpush/service/channel/b/h;-><init>(I)V

    .line 153
    invoke-virtual {v3, v2}, Lcom/tencent/android/tpush/service/channel/b/h;->b(S)V

    .line 154
    invoke-virtual {v3, v2}, Lcom/tencent/android/tpush/service/channel/b/h;->a(S)V

    .line 155
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/android/tpush/service/channel/b/h;->a([B)V

    .line 156
    const/4 v2, 0x0

    .line 158
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    :try_start_1
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    invoke-virtual {v3}, Lcom/tencent/android/tpush/service/channel/b/h;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    invoke-virtual {v3, v1}, Lcom/tencent/android/tpush/service/channel/b/h;->a(Ljava/io/OutputStream;)I
    :try_end_1
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    :goto_1
    :try_start_2
    const-string v2, "SocketClient"

    const-string v3, "SocketClient -> send "

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 184
    new-instance v2, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v2, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/tencent/android/tpush/common/e;->a(Ljava/io/Closeable;)Z

    throw v0

    .line 164
    :cond_0
    :try_start_3
    new-instance v0, Lcom/tencent/android/tpush/service/channel/b/b;

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v5}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v5}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/tencent/android/tpush/service/channel/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    const-string v2, "X-Online-Host"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v5}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v5}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/tencent/android/tpush/service/channel/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_1
    invoke-virtual {v0, v3}, Lcom/tencent/android/tpush/service/channel/b/b;->a(Lcom/tencent/android/tpush/service/channel/b/e;)V

    .line 175
    :goto_3
    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b/b;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 176
    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/channel/b/b;->a(Ljava/io/OutputStream;)I
    :try_end_3
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 185
    :catch_1
    move-exception v0

    .line 186
    :goto_4
    :try_start_4
    const-string v2, "SocketClient"

    const-string v3, "SocketClient -> send "

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 188
    new-instance v2, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v2, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 180
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_5
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 197
    invoke-static {v1}, Lcom/tencent/android/tpush/common/e;->a(Ljava/io/Closeable;)Z

    .line 199
    :goto_5
    return-void

    .line 189
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 190
    :goto_6
    :try_start_6
    const-string v2, "SocketClient"

    const-string v3, "SocketClient -> send "

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 192
    new-instance v2, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v2, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 193
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 194
    :goto_7
    const-string v2, "SocketClient"

    const-string v3, "SocketClient -> send "

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 197
    invoke-static {v1}, Lcom/tencent/android/tpush/common/e;->a(Ljava/io/Closeable;)Z

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    .line 193
    :catch_4
    move-exception v0

    goto :goto_7

    .line 189
    :catch_5
    move-exception v0

    goto :goto_6

    .line 185
    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 181
    :catch_7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1
.end method

.method public a(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/horse/n;->d:J

    .line 56
    iput-object p1, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    .line 58
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v0

    iget v0, v0, Lcom/tencent/android/tpush/service/a/a;->D:I

    if-ne v0, v7, :cond_0

    sget v0, Lcom/tencent/android/tpush/horse/n;->f:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 60
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/b/b;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/b/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/tencent/android/tpush/service/b/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-static {}, Lcom/tencent/android/tpush/horse/DefaultServer;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->e()I

    move-result v4

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/android/tpush/horse/data/StrategyItem;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 66
    iput-object v0, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    .line 67
    const-string v0, "SocketClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use httpdns StrategyItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPush4Msdk;->getDebugServerInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 95
    array-length v0, v2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 96
    new-instance v0, Lcom/tencent/android/tpush/horse/data/StrategyItem;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->e()I

    move-result v4

    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/android/tpush/horse/data/StrategyItem;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 103
    iput-object v0, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    .line 104
    const-string v0, "SocketClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use test StrategyItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :cond_1
    :goto_1
    :try_start_2
    const-string v0, "SocketClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    .line 114
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 115
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-direct {p0, v0}, Lcom/tencent/android/tpush/horse/n;->b(Lcom/tencent/android/tpush/horse/data/StrategyItem;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/horse/e;->b()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 118
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/horse/e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 128
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v1, "SocketClient"

    const-string v2, "HttpDNS error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    sget v0, Lcom/tencent/android/tpush/horse/n;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/android/tpush/horse/n;->f:I

    goto/16 :goto_0

    .line 107
    :catch_1
    move-exception v0

    .line 109
    const-string v1, "SocketClient"

    const-string v2, " XGPush4Msdk.getDebugServerInfo"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 119
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 120
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v0

    iget v0, v0, Lcom/tencent/android/tpush/service/a/a;->D:I

    if-ne v0, v7, :cond_2

    .line 121
    sget v0, Lcom/tencent/android/tpush/horse/n;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/android/tpush/horse/n;->f:I

    .line 123
    :cond_2
    const-string v0, "SocketClient"

    const-string v2, "socket connect error"

    invoke-static {v0, v2, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 125
    new-instance v2, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    if-nez p1, :cond_3

    const-string v0, "null"

    :goto_2
    invoke-direct {v2, v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public a(Lcom/tencent/android/tpush/horse/o;)V
    .locals 3

    .prologue
    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    const-string v1, "SocketClient"

    const-string v2, "register"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 221
    .line 222
    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    if-nez v2, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 224
    new-instance v0, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    const-string v1, "Recv() fail,because mStrategyItem is null"

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v2

    if-nez v2, :cond_2

    .line 229
    new-instance v2, Lcom/tencent/android/tpush/service/channel/b/g;

    invoke-direct {v2}, Lcom/tencent/android/tpush/service/channel/b/g;-><init>()V

    .line 231
    :try_start_0
    iget-object v3, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 233
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 235
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 236
    :goto_0
    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/b/g;->b()Z

    move-result v6

    if-nez v6, :cond_1

    .line 237
    array-length v6, v4

    sub-int/2addr v6, v0

    invoke-virtual {v3, v4, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 239
    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/service/channel/b/g;->a(Ljava/io/InputStream;)I
    :try_end_0
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    const-string v1, "SocketClient"

    const-string v2, "SocketClient -> recv "

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 245
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 241
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/b/g;->k()[B
    :try_end_1
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 305
    :goto_1
    if-nez v0, :cond_5

    .line 306
    const-string v0, "XGService"

    const-string v1, ">> dataBuffer is null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 349
    :goto_2
    return-void

    .line 246
    :catch_1
    move-exception v0

    .line 247
    const-string v1, "SocketClient"

    const-string v2, "SocketClient -> recv "

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 249
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 250
    :catch_2
    move-exception v0

    .line 251
    const-string v1, "SocketClient"

    const-string v2, "SocketClient -> recv "

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 253
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 254
    :catch_3
    move-exception v0

    .line 255
    const-string v1, "SocketClient"

    const-string v2, "SocketClient -> recv "

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 257
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 258
    :catch_4
    move-exception v0

    .line 259
    const-string v2, "SocketClient"

    const-string v3, "SocketClient -> recv "

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    :goto_3
    move-object v0, v1

    goto :goto_1

    .line 263
    :cond_2
    new-instance v2, Lcom/tencent/android/tpush/service/channel/b/a;

    invoke-direct {v2}, Lcom/tencent/android/tpush/service/channel/b/a;-><init>()V

    .line 265
    :try_start_2
    iget-object v3, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 267
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 269
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 270
    :goto_4
    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/b/a;->b()Z

    move-result v6

    if-nez v6, :cond_3

    .line 271
    array-length v6, v4

    sub-int/2addr v6, v0

    invoke-virtual {v3, v4, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    add-int/2addr v0, v6

    .line 273
    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/service/channel/b/a;->a(Ljava/io/InputStream;)I
    :try_end_2
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    goto :goto_4

    .line 284
    :catch_5
    move-exception v0

    .line 285
    const-string v1, "XGService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 287
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 275
    :cond_3
    if-eqz v2, :cond_4

    :try_start_3
    iget-object v0, v2, Lcom/tencent/android/tpush/service/channel/b/a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/tencent/android/tpush/service/channel/b/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 277
    iget-object v0, v2, Lcom/tencent/android/tpush/service/channel/b/a;->i:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/service/channel/b/g;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b/g;->k()[B

    move-result-object v0

    goto/16 :goto_1

    .line 279
    :cond_4
    const-string v0, "XGService"

    const-string v2, ">> packet is null or packet.recvPackets is null"

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V
    :try_end_3
    .catch Lcom/tencent/android/tpush/service/channel/exception/UnexpectedDataException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/tencent/android/tpush/service/channel/exception/InnerException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    goto/16 :goto_2

    .line 288
    :catch_6
    move-exception v0

    .line 289
    const-string v1, "XGService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 291
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 292
    :catch_7
    move-exception v0

    .line 293
    const-string v1, "XGService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 295
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 296
    :catch_8
    move-exception v0

    .line 297
    const-string v1, "XGService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    .line 299
    new-instance v1, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;

    invoke-direct {v1, v0}, Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 300
    :catch_9
    move-exception v0

    .line 301
    const-string v2, "XGService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    invoke-direct {p0}, Lcom/tencent/android/tpush/horse/n;->d()V

    goto/16 :goto_3

    .line 310
    :cond_5
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 311
    const-string v0, "UTF-8"

    invoke-virtual {v2, v0}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 312
    new-instance v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;-><init>()V

    .line 313
    invoke-virtual {v3, v2}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 320
    :try_start_4
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/horse/o;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    move-object v7, v0

    .line 324
    :goto_5
    if-eqz v7, :cond_7

    .line 325
    iget-wide v0, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->ip:J

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/e/h;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 326
    iget v2, v3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRedirectRsp;->port:I

    .line 327
    new-instance v0, Lcom/tencent/android/tpush/horse/data/StrategyItem;

    iget-object v3, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v3}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v4}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->e()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v5}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-virtual {v6}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->f()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/android/tpush/horse/data/StrategyItem;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    .line 333
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v2, :cond_8

    .line 334
    :cond_6
    if-eqz v7, :cond_7

    .line 335
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-interface {v7, v0}, Lcom/tencent/android/tpush/horse/o;->a(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V

    .line 344
    :cond_7
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/horse/n;->e:J

    goto/16 :goto_2

    .line 321
    :catch_a
    move-exception v0

    .line 322
    const-string v2, "XGService"

    const-string v4, "callBacks.remove()"

    invoke-static {v2, v4, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v1

    goto :goto_5

    .line 338
    :cond_8
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a(I)V

    .line 339
    if-eqz v7, :cond_7

    .line 340
    iget-object v1, p0, Lcom/tencent/android/tpush/horse/n;->c:Lcom/tencent/android/tpush/horse/data/StrategyItem;

    invoke-interface {v7, v1, v0}, Lcom/tencent/android/tpush/horse/o;->a(Lcom/tencent/android/tpush/horse/data/StrategyItem;Lcom/tencent/android/tpush/horse/data/StrategyItem;)V

    goto :goto_6
.end method

.method public c()V
    .locals 3

    .prologue
    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 355
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/n;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    const-string v1, "SocketClient"

    const-string v2, "mSocketChannel.close()"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
