.class public final Lcom/tencent/mna/base/f/l;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 61
    .line 62
    if-nez p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 67
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 71
    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    .line 85
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 74
    const/4 v0, 0x4

    goto :goto_1

    .line 75
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_4

    .line 76
    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_5

    .line 78
    const/4 v0, 0x5

    goto :goto_1

    :cond_5
    move v0, v1

    .line 80
    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkState exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 159
    packed-switch p1, :pswitch_data_0

    .line 167
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 161
    :pswitch_0
    invoke-static {p0}, Lcom/tencent/mna/base/f/r;->a(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 165
    :pswitch_1
    invoke-static {}, Lcom/tencent/mna/base/f/i;->a()I

    move-result v0

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Landroid/net/NetworkInfo;)I
    .locals 3

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 89
    if-nez p0, :cond_0

    .line 118
    :goto_0
    :pswitch_0
    return v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 93
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 118
    goto :goto_0

    .line 102
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 113
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 116
    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 184
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 186
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 188
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    .line 189
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    .line 193
    :catch_0
    move-exception v0

    .line 196
    :cond_2
    const-string v0, "0.0.0.0"

    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "unknown"

    .line 36
    packed-switch p0, :pswitch_data_0

    .line 57
    :goto_0
    return-object v0

    .line 38
    :pswitch_0
    const-string/jumbo v0, "unknown\u6216\u65e0\u7f51\u7edc"

    goto :goto_0

    .line 41
    :pswitch_1
    const-string v0, "2G"

    goto :goto_0

    .line 44
    :pswitch_2
    const-string v0, "3G"

    goto :goto_0

    .line 47
    :pswitch_3
    const-string v0, "4G"

    goto :goto_0

    .line 50
    :pswitch_4
    const-string/jumbo v0, "wifi"

    goto :goto_0

    .line 53
    :pswitch_5
    const-string v0, "ethernet"

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 171
    packed-switch p1, :pswitch_data_0

    .line 179
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 173
    :pswitch_0
    invoke-static {p0}, Lcom/tencent/mna/base/f/r;->f(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 177
    :pswitch_1
    invoke-static {}, Lcom/tencent/mna/base/f/i;->b()I

    move-result v0

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 123
    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 128
    invoke-static {p0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v0

    .line 129
    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->b(I)Z

    move-result v0

    return v0
.end method

.method public static c(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 133
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 147
    invoke-static {p0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->d(I)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 201
    if-eqz p0, :cond_0

    .line 202
    invoke-static {p0}, Lcom/tencent/mna/base/f/i;->a(Landroid/content/Context;)V

    .line 204
    :cond_0
    return-void
.end method

.method public static d(I)Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(I)Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
