.class public Lcom/tencent/igame/priority/sdk/d/a/g;
.super Lcom/tencent/igame/priority/sdk/d/a/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/igame/priority/sdk/d/a/h;-><init>()V

    const-string v0, ""

    const/16 v1, 0x1404

    invoke-virtual {p0, v0, v1}, Lcom/tencent/igame/priority/sdk/d/a/g;->a(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    invoke-super {p0}, Lcom/tencent/igame/priority/sdk/d/a/h;->a()V

    :try_start_0
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/g;->a:Ljava/net/DatagramSocket;

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/g;->a:Ljava/net/DatagramSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/g;->a:Ljava/net/DatagramSocket;

    new-instance v1, Ljava/net/InetSocketAddress;

    const/16 v2, 0x1404

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/g;->a:Ljava/net/DatagramSocket;

    iget v1, p0, Lcom/tencent/igame/priority/sdk/d/a/g;->a:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/tencent/igame/priority/sdk/exception/UdpException;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/exception/UdpException;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/tencent/igame/priority/sdk/exception/UdpException;

    invoke-direct {v0}, Lcom/tencent/igame/priority/sdk/exception/UdpException;-><init>()V

    throw v0
.end method
