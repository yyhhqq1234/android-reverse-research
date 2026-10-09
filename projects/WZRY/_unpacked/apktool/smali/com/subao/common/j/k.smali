.class public Lcom/subao/common/j/k;
.super Ljava/lang/Object;
.source "NetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/j/k$b;,
        Lcom/subao/common/j/k$a;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 169
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 170
    if-nez v0, :cond_0

    move-object v0, v1

    .line 195
    :goto_0
    return-object v0

    .line 174
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 175
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    :cond_1
    move-object v0, v1

    .line 176
    goto :goto_0

    .line 178
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 179
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 181
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 182
    if-nez v0, :cond_3

    move-object v0, v1

    .line 183
    goto :goto_0

    .line 185
    :cond_3
    instance-of v4, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v4, :cond_4

    move-object v0, v1

    .line 186
    goto :goto_0

    .line 188
    :cond_4
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 189
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    .line 190
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 192
    const-string v6, "MCC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "MNC:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "LAC:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 195
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/subao/common/j/j;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    invoke-interface {p1}, Lcom/subao/common/j/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 152
    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    .line 160
    :cond_0
    invoke-interface {p1}, Lcom/subao/common/j/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-static {p0}, Lcom/subao/common/j/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 163
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/net/NetworkInterface;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    .line 108
    if-nez v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 112
    const-string v2, "rmnet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ccmni"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/subao/common/j/k$a;)[B
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/subao/common/j/k$b;

    invoke-direct {v0}, Lcom/subao/common/j/k$b;-><init>()V

    invoke-static {v0, p0}, Lcom/subao/common/j/k;->a(Lcom/subao/common/j/k$b;Lcom/subao/common/j/k$a;)[B

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/subao/common/j/k$a;Lcom/subao/common/j/k$b;)[B
    .locals 3
    .param p0    # Lcom/subao/common/j/k$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/subao/common/j/k$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p1}, Lcom/subao/common/j/k$b;->a()Ljava/util/Enumeration;

    move-result-object v1

    .line 70
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 72
    invoke-static {v0}, Lcom/subao/common/j/k;->a(Ljava/net/NetworkInterface;)Z

    move-result v2

    .line 73
    if-eqz v2, :cond_0

    .line 76
    invoke-static {p0, v0}, Lcom/subao/common/j/k;->a(Lcom/subao/common/j/k$a;Ljava/net/NetworkInterface;)[B
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/subao/common/j/k$a;Ljava/net/NetworkInterface;)[B
    .locals 3
    .param p0    # Lcom/subao/common/j/k$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/net/NetworkInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 90
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 92
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 97
    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lcom/subao/common/j/k$a;->a([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    :cond_1
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/subao/common/j/k$b;Lcom/subao/common/j/k$a;)[B
    .locals 1

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/subao/common/j/k$b;->a()Ljava/util/Enumeration;

    move-result-object v0

    .line 39
    invoke-static {v0, p1}, Lcom/subao/common/j/k;->a(Ljava/util/Enumeration;Lcom/subao/common/j/k$a;)[B
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/Enumeration;Lcom/subao/common/j/k$a;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;",
            "Lcom/subao/common/j/k$a;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 46
    :cond_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 49
    invoke-static {p1, v0}, Lcom/subao/common/j/k;->a(Lcom/subao/common/j/k$a;Ljava/net/NetworkInterface;)[B

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/subao/common/j/k$a;)[B
    .locals 1
    .param p0    # Lcom/subao/common/j/k$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    new-instance v0, Lcom/subao/common/j/k$b;

    invoke-direct {v0}, Lcom/subao/common/j/k$b;-><init>()V

    .line 64
    invoke-static {p0, v0}, Lcom/subao/common/j/k;->a(Lcom/subao/common/j/k$a;Lcom/subao/common/j/k$b;)[B

    move-result-object v0

    return-object v0
.end method
