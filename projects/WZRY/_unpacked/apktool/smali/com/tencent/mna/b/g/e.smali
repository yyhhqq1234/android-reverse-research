.class public Lcom/tencent/mna/b/g/e;
.super Ljava/lang/Object;
.source "UdpHelper.java"


# direct methods
.method public static a(Ljava/lang/String;I[B)Ljava/net/DatagramPacket;
    .locals 1

    .prologue
    .line 19
    array-length v0, p2

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/mna/b/g/e;->a(Ljava/lang/String;I[BI)Ljava/net/DatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I[BI)Ljava/net/DatagramPacket;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-object v0

    .line 27
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->h(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    invoke-static {v1, p1, p2, p3}, Lcom/tencent/mna/b/g/e;->a(Ljava/net/InetAddress;I[BI)Ljava/net/DatagramPacket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/net/InetAddress;I[BI)Ljava/net/DatagramPacket;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p2, p3, p0, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v0
.end method

.method public static a(I)Ljava/net/DatagramSocket;
    .locals 3

    .prologue
    .line 48
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 49
    invoke-virtual {v0, p0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSocket exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    goto :goto_0
.end method
