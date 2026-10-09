.class public abstract Lcom/tencent/igame/priority/sdk/d/a/h;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected a:Ljava/lang/String;

.field protected a:Ljava/net/DatagramSocket;

.field protected b:I

.field private c:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->c:I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->a:I

    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->b:I

    return-void
.end method

.method protected a([B)V
    .locals 7

    const/4 v6, 0x4

    const/4 v1, 0x0

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

    iget v5, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->c:I

    shr-int v4, v5, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    goto :goto_1

    :cond_1
    array-length v0, p1

    invoke-static {p1, v1, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v3

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/igame/priority/sdk/env/Env;->getUdpIp()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget v5, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->b:I

    invoke-direct {v4, v0, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v3, v2, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method protected a()[B
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/16 v0, 0x800

    new-array v0, v0, [B

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->a:Ljava/net/DatagramSocket;

    if-nez v2, :cond_0

    new-instance v0, Lcom/tencent/igame/priority/sdk/exception/SocketException;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/exception/SocketException;-><init>()V

    throw v0

    :cond_0
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v0

    invoke-direct {v2, v0, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v7, :cond_1

    rsub-int/lit8 v4, v0, 0x1

    mul-int/lit8 v4, v4, 0x8

    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xff

    shl-int v4, v5, v4

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ge v2, v8, :cond_2

    new-instance v0, Lcom/tencent/igame/priority/sdk/exception/SocketException;

    const-string v1, "Response total length error"

    invoke-direct {v0, v1}, Lcom/tencent/igame/priority/sdk/exception/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v4, v2, -0x2

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v7, :cond_3

    rsub-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int v5, v6, v5

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v4, -0x2

    new-array v2, v0, [B

    invoke-static {v3, v8, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method protected b()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->a:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->disconnect()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->a:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->a:Ljava/net/DatagramSocket;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->a:Ljava/net/DatagramSocket;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/h;->a:Ljava/net/DatagramSocket;

    throw v0
.end method
