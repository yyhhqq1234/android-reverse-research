.class public Lcom/tencent/igame/priority/sdk/d/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private a:J

.field private a:Lcom/tencent/igame/priority/sdk/d/a/h;

.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Lcom/tencent/igame/priority/sdk/d/a/h;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:I

    iput-boolean p1, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Z

    if-eqz p1, :cond_0

    new-instance v0, Lcom/tencent/igame/priority/sdk/d/a/f;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/d/a/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Lcom/tencent/igame/priority/sdk/d/a/h;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/igame/priority/sdk/d/a/g;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/d/a/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Lcom/tencent/igame/priority/sdk/d/a/h;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/igame/priority/sdk/d/a/e;->a(J)V

    const-string v0, ">UDP\u8fde\u63a5\u670d\u52a1\u5668<"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Lcom/tencent/igame/priority/sdk/d/a/h;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/igame/priority/sdk/d/a/f;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/d/a/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Lcom/tencent/igame/priority/sdk/d/a/h;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Lcom/tencent/igame/priority/sdk/d/a/h;

    iget v1, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/d/a/h;->a(I)V

    return-void

    :cond_1
    new-instance v0, Lcom/tencent/igame/priority/sdk/d/a/g;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/d/a/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Lcom/tencent/igame/priority/sdk/d/a/h;

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:J

    return-void
.end method

.method public a([B)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Lcom/tencent/igame/priority/sdk/d/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Lcom/tencent/igame/priority/sdk/d/a/h;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/a/h;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Lcom/tencent/igame/priority/sdk/d/a/h;

    invoke-virtual {v0, p1}, Lcom/tencent/igame/priority/sdk/d/a/h;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, ">UDP\u8fde\u63a5\u5f02\u5e38<"

    invoke-static {v1, v0}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Lcom/tencent/igame/priority/sdk/d/a/h;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/a/h;->b()V

    new-instance v0, Lcom/tencent/igame/priority/sdk/exception/UdpException;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/exception/UdpException;-><init>()V

    throw v0
.end method

.method public a()[B
    .locals 2

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Lcom/tencent/igame/priority/sdk/d/a/h;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Lcom/tencent/igame/priority/sdk/d/a/h;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/a/h;->a()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const-string v1, ">UDP\u8fde\u63a5\u4e2d\u65ad<"

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, ">UDP\u8fde\u63a5\u5f02\u5e38<"

    invoke-static {v1, v0}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lcom/tencent/igame/priority/sdk/exception/SocketException;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/exception/SocketException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    const-string v1, ">UDP\u8fde\u63a5\u4e2d\u65ad<"

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/tencent/igame/priority/sdk/exception/SocketException;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/exception/SocketException;-><init>()V

    throw v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Lcom/tencent/igame/priority/sdk/d/a/h;

    if-eqz v0, :cond_0

    const-string v0, ">UDP\u65ad\u5f00\u8fde\u63a5<"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/e;->a:Lcom/tencent/igame/priority/sdk/d/a/h;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/a/h;->b()V

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/igame/priority/sdk/exception/SocketException;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/exception/SocketException;-><init>()V

    throw v0
.end method
