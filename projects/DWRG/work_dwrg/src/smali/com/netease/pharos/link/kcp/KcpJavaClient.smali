.class public Lcom/netease/pharos/link/kcp/KcpJavaClient;
.super Lcom/netease/pharos/link/kcp/KcpJava;
.source "KcpJavaClient.java"


# instance fields
.field public mDatagramSocket:Ljava/net/DatagramSocket;

.field private mInetAddress:Ljava/net/InetAddress;

.field private mPort:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 1
    .param p1, "conv_"    # J
    .param p3, "addr"    # Ljava/lang/String;
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/netease/pharos/link/kcp/KcpJava;-><init>(J)V

    .line 25
    iput-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJavaClient;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 27
    iput-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJavaClient;->mInetAddress:Ljava/net/InetAddress;

    .line 34
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJavaClient;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 35
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/link/kcp/KcpJavaClient;->mInetAddress:Ljava/net/InetAddress;

    .line 36
    iput p4, p0, Lcom/netease/pharos/link/kcp/KcpJavaClient;->mPort:I

    .line 37
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public output([BI)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "size"    # I

    .prologue
    .line 41
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v2, p0, Lcom/netease/pharos/link/kcp/KcpJavaClient;->mInetAddress:Ljava/net/InetAddress;

    iget v3, p0, Lcom/netease/pharos/link/kcp/KcpJavaClient;->mPort:I

    invoke-direct {v0, p1, p2, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 43
    .local v0, "datagramPacket":Ljava/net/DatagramPacket;
    :try_start_0
    iget-object v2, p0, Lcom/netease/pharos/link/kcp/KcpJavaClient;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
