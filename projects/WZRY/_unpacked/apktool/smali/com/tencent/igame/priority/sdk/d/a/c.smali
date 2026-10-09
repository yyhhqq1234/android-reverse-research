.class public Lcom/tencent/igame/priority/sdk/d/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private a:J

.field private a:Lcom/tencent/igame/priority/sdk/d/a/d;

.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:I

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Z

    new-instance v0, Lcom/tencent/igame/priority/sdk/d/a/d;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/d/a/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Z

    if-eqz v0, :cond_0

    const-string v0, ">TCP\u957f\u8fde\u63a5\u8fde\u63a5\u4e2d\u65ad<"

    :goto_0
    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/a/d;->a()V

    return-void

    :cond_0
    const-string v0, ">TCP\u65ad\u5f00\u8fde\u63a5<"

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/igame/priority/sdk/exception/SocketException;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/exception/SocketException;-><init>()V

    throw v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:J

    return-void
.end method

.method public a(Ljava/net/SocketAddress;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/igame/priority/sdk/d/a/c;->a(J)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/d/a/d;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/tencent/igame/priority/sdk/d/a/d;

    invoke-direct {v1}, Lcom/tencent/igame/priority/sdk/d/a/d;-><init>()V

    iput-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    :cond_1
    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    iget v2, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->b:I

    invoke-virtual {v1, v2}, Lcom/tencent/igame/priority/sdk/d/a/d;->a(I)V

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    iget-boolean v2, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Z

    invoke-virtual {v1, v2}, Lcom/tencent/igame/priority/sdk/d/a/d;->a(Z)V

    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Z

    if-eqz v1, :cond_3

    const-string v1, ">TCP\u957f\u8fde\u63a5\u8fde\u63a5\u670d\u52a1\u5668<"

    :goto_1
    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TCP\u8fde\u63a5\u5730\u5740\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/igame/priority/sdk/env/Env;->getHostAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    invoke-virtual {v1, p1}, Lcom/tencent/igame/priority/sdk/d/a/d;->a(Ljava/net/SocketAddress;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Z

    if-eqz v0, :cond_4

    const-string v0, ">TCP\u957f\u8fde\u63a5\u8fde\u63a5\u670d\u52a1\u5668\u6210\u529f<"

    :goto_2
    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/tencent/igame/priority/sdk/exception/NetErrorException;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/exception/NetErrorException;-><init>()V

    throw v0

    :cond_3
    :try_start_1
    const-string v1, ">TCP\u8fde\u63a5\u670d\u52a1\u5668<"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, v0

    :try_start_2
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">TCP\u8fde\u63a5\u670d\u52a1\u5668\u5931\u8d25, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\u79d2\u540e\u91cd\u65b0\u8fde\u63a5<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/d/a/d;->a()V

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    const-string v0, ">TCP\u8fde\u63a5\u670d\u52a1\u5668\u6210\u529f<"

    goto :goto_2

    :cond_5
    return-void
.end method

.method public a([B)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    invoke-virtual {v0, p1}, Lcom/tencent/igame/priority/sdk/d/a/d;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-boolean v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Z

    if-eqz v0, :cond_1

    const-string v0, ">TCP\u957f\u8fde\u63a5\u8fde\u63a5\u5f02\u5e38<"

    :goto_0
    invoke-static {v0, v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/a/d;->a()V

    new-instance v0, Lcom/tencent/igame/priority/sdk/exception/SocketException;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/exception/SocketException;-><init>()V

    throw v0

    :cond_1
    const-string v0, ">TCP\u8fde\u63a5\u5f02\u5e38<"

    goto :goto_0
.end method

.method public a()[B
    .locals 2

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/a/d;->a()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    iget-boolean v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Z

    if-eqz v0, :cond_0

    const-string v0, ">TCP\u957f\u8fde\u63a5\u8fde\u63a5\u4e2d\u65ad<"

    :goto_0
    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/a/d;->a()V

    return-object v1

    :cond_0
    const-string v0, ">TCP\u8fde\u63a5\u4e2d\u65ad<"

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-boolean v1, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Z

    if-eqz v1, :cond_1

    const-string v1, ">TCP\u957f\u8fde\u63a5\u8fde\u63a5\u5f02\u5e38<"

    :goto_1
    invoke-static {v1, v0}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lcom/tencent/igame/priority/sdk/exception/SocketException;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/exception/SocketException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-boolean v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Z

    if-eqz v0, :cond_2

    const-string v0, ">TCP\u957f\u8fde\u63a5\u8fde\u63a5\u4e2d\u65ad<"

    :goto_2
    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/c;->a:Lcom/tencent/igame/priority/sdk/d/a/d;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/a/d;->a()V

    throw v1

    :cond_1
    :try_start_2
    const-string v1, ">TCP\u8fde\u63a5\u5f02\u5e38<"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    const-string v0, ">TCP\u8fde\u63a5\u4e2d\u65ad<"

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/tencent/igame/priority/sdk/exception/SocketException;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/exception/SocketException;-><init>()V

    throw v0
.end method
