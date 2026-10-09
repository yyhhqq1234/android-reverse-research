.class public Lcom/tencent/mna/base/jni/f;
.super Ljava/lang/Object;
.source "TCallJniWrapper.java"


# direct methods
.method public static a(IIIII)I
    .locals 1

    .prologue
    .line 35
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/TCallJni;->getForwardDelay(IIIII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 37
    :goto_0
    return v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static a(IIIIILjava/lang/String;)I
    .locals 1

    .prologue
    .line 43
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/TCallJni;->getMatchForwardDelay(IIIIILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 45
    :goto_0
    return v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 51
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/TCallJni;->getExportDelay(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 53
    :goto_0
    return v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 27
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/TCallJni;->connectNegotiate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 29
    :goto_0
    return v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const v0, 0x11172

    goto :goto_0
.end method

.method public static a(Z)I
    .locals 1

    .prologue
    .line 10
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/TCallJni;->tcallInit(Z)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 12
    :goto_0
    return v0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    const v0, 0x11170

    goto :goto_0
.end method

.method public static a()Lcom/tencent/mna/base/jni/entity/TCallExportInfo;
    .locals 1

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getExportInfo()Lcom/tencent/mna/base/jni/entity/TCallExportInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;
    .locals 1

    .prologue
    .line 18
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/base/jni/TCallJni;->createTunnel(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/TCallTunnelRet;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 20
    :goto_0
    return-object v0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getExportIp()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string v0, "0.0.0.0"

    goto :goto_0
.end method

.method public static c()J
    .locals 2

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getTCallSendToPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 77
    :goto_0
    return-wide v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static d()J
    .locals 2

    .prologue
    .line 83
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getTCallRecvFromPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 85
    :goto_0
    return-wide v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static e()J
    .locals 2

    .prologue
    .line 91
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getTCallSendMsgPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 93
    :goto_0
    return-wide v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static f()J
    .locals 2

    .prologue
    .line 99
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getTCallRecvMsgPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 101
    :goto_0
    return-wide v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static g()J
    .locals 2

    .prologue
    .line 107
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getTCallConnectPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 109
    :goto_0
    return-wide v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static h()J
    .locals 2

    .prologue
    .line 115
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getTCallSendPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 117
    :goto_0
    return-wide v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static i()J
    .locals 2

    .prologue
    .line 123
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getTCallRecvPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 125
    :goto_0
    return-wide v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static j()J
    .locals 2

    .prologue
    .line 131
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/TCallJni;->getTCallClosePtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 133
    :goto_0
    return-wide v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
