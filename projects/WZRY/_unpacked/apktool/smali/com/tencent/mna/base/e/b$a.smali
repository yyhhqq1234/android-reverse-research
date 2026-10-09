.class Lcom/tencent/mna/base/e/b$a;
.super Ljava/lang/Object;
.source "UpnpDeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/base/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/net/InetAddress;

.field b:Ljava/net/MulticastSocket;

.field c:Landroid/net/wifi/WifiManager$MulticastLock;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/tencent/mna/base/e/b$a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 82
    if-nez p0, :cond_0

    move-object v0, v1

    .line 101
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v2, Lcom/tencent/mna/base/e/b$a;

    invoke-direct {v2}, Lcom/tencent/mna/base/e/b$a;-><init>()V

    .line 87
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 88
    if-nez v0, :cond_1

    move-object v0, v1

    .line 89
    goto :goto_0

    .line 91
    :cond_1
    new-instance v3, Ljava/net/MulticastSocket;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/net/MulticastSocket;-><init>(I)V

    iput-object v3, v2, Lcom/tencent/mna/base/e/b$a;->b:Ljava/net/MulticastSocket;

    .line 92
    const-string v3, "239.255.255.250"

    invoke-static {v3}, Lcom/tencent/mna/base/f/f;->h(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mna/base/e/b$a;->a:Ljava/net/InetAddress;

    .line 93
    iget-object v3, v2, Lcom/tencent/mna/base/e/b$a;->b:Ljava/net/MulticastSocket;

    iget-object v4, v2, Lcom/tencent/mna/base/e/b$a;->a:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 94
    iget-object v3, v2, Lcom/tencent/mna/base/e/b$a;->b:Ljava/net/MulticastSocket;

    const/16 v4, 0x5dc

    invoke-virtual {v3, v4}, Ljava/net/MulticastSocket;->setSoTimeout(I)V

    .line 95
    invoke-direct {v2, v0}, Lcom/tencent/mna/base/e/b$a;->a(Landroid/net/wifi/WifiManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mna/base/e/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": get uPnPSocket failed, exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2}, Lcom/tencent/mna/base/e/b$a;->b()V

    move-object v0, v1

    .line 101
    goto :goto_0
.end method

.method private a(Landroid/net/wifi/WifiManager;)V
    .locals 1

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    const-string v0, "UpnpDeviceScanner"

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/base/e/b$a;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 108
    iget-object v0, p0, Lcom/tencent/mna/base/e/b$a;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 110
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-string v1, "M-SEARCH * HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "Host:239.255.255.250:1900"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "Man:\"ssdp:discover\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "MX:1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()Ljava/net/DatagramPacket;
    .locals 3

    .prologue
    .line 134
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 135
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 136
    iget-object v0, p0, Lcom/tencent/mna/base/e/b$a;->b:Ljava/net/MulticastSocket;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 137
    return-object v1
.end method

.method a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 125
    invoke-static {p1}, Lcom/tencent/mna/base/e/b$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/net/DatagramPacket;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Lcom/tencent/mna/base/e/b$a;->a:Ljava/net/InetAddress;

    const/16 v4, 0x76c

    invoke-direct {v1, v2, v0, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 129
    iget-object v0, p0, Lcom/tencent/mna/base/e/b$a;->b:Ljava/net/MulticastSocket;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 130
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/base/e/b$a;->b:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/tencent/mna/base/e/b$a;->b:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/base/e/b$a;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/tencent/mna/base/e/b$a;->c:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method
