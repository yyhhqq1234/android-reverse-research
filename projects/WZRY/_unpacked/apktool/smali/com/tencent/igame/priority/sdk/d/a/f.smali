.class public Lcom/tencent/igame/priority/sdk/d/a/f;
.super Lcom/tencent/igame/priority/sdk/d/a/h;


# instance fields
.field private a:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/igame/priority/sdk/d/a/h;-><init>()V

    const-string v0, "239.1.2.3"

    const/16 v1, 0x1405

    invoke-virtual {p0, v0, v1}, Lcom/tencent/igame/priority/sdk/d/a/f;->a(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/MulticastSocket;

    const/16 v1, 0x1405

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/f;->a:Ljava/net/DatagramSocket;

    const-string v0, "239.1.2.3"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/f;->a:Ljava/net/InetAddress;

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/f;->a:Ljava/net/DatagramSocket;

    check-cast v0, Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/a/f;->a:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/a/f;->a:Ljava/net/DatagramSocket;

    iget v1, p0, Lcom/tencent/igame/priority/sdk/d/a/f;->a:I

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
