.class public Lcom/tencent/igame/priority/sdk/d/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private a:Ljava/io/DataInputStream;

.field private a:Ljava/io/DataOutputStream;

.field private a:Ljava/net/Socket;

.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataInputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_3
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iput-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataOutputStream;

    iput-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataInputStream;

    iput-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataOutputStream;

    iput-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataInputStream;

    iput-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataOutputStream;

    iput-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataInputStream;

    iput-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    throw v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Z

    return-void
.end method

.method public a([B)V
    .locals 7

    const/4 v6, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_2

    array-length v0, p1

    add-int/lit8 v2, v0, 0x4

    new-array v3, v2, [B

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_1

    const/4 v4, 0x2

    if-ge v0, v4, :cond_0

    rsub-int/lit8 v4, v0, 0x1

    mul-int/lit8 v4, v4, 0x8

    shr-int v4, v2, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v4, v0, 0x3

    mul-int/lit8 v4, v4, 0x8

    iget v5, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->b:I

    shr-int v4, v5, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    goto :goto_1

    :cond_1
    array-length v0, p1

    invoke-static {p1, v1, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/net/SocketAddress;)Z
    .locals 2

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    iget-boolean v1, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Z

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    iget v1, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    iget v1, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:I

    invoke-virtual {v0, p1, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {p0}, Lcom/tencent/igame/priority/sdk/d/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/tencent/igame/priority/sdk/d/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()[B
    .locals 11

    const/16 v1, 0x800

    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v4, 0x0

    new-array v6, v9, [B

    new-array v0, v4, [B

    new-array v2, v4, [B

    iget-object v3, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataInputStream;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataInputStream;

    invoke-virtual {v3, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    if-ne v3, v10, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    move v3, v4

    move v5, v4

    :goto_0
    if-ge v3, v9, :cond_1

    rsub-int/lit8 v7, v3, 0x1

    mul-int/lit8 v7, v7, 0x8

    aget-byte v8, v6, v3

    and-int/lit16 v8, v8, 0xff

    shl-int v7, v8, v7

    add-int/2addr v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v5, -0x2

    iget-object v5, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataInputStream;

    new-array v6, v9, [B

    invoke-virtual {v5, v6}, Ljava/io/DataInputStream;->read([B)I

    add-int/lit8 v5, v3, -0x2

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_4

    sub-int v0, v5, v3

    if-le v0, v1, :cond_2

    move v0, v1

    :goto_2
    new-array v6, v0, [B

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/d;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    if-ne v7, v10, :cond_3

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_2
    sub-int v0, v5, v3

    goto :goto_2

    :cond_3
    add-int/2addr v3, v7

    new-array v0, v3, [B

    array-length v8, v2

    invoke-static {v2, v4, v0, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    invoke-static {v6, v4, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v3, [B

    array-length v6, v0

    invoke-static {v0, v4, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_4
    return-object v0
.end method
