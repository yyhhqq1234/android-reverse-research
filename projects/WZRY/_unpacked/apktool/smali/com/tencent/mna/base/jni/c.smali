.class public Lcom/tencent/mna/base/jni/c;
.super Ljava/lang/Object;
.source "InoJniWrapper.java"


# direct methods
.method public static a(III)I
    .locals 1

    .prologue
    .line 105
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/InoJni;->getExportDelay(III)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 107
    :goto_0
    return v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static a(IIIII)I
    .locals 1

    .prologue
    .line 89
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/InoJni;->getForwardDelay(IIIII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 91
    :goto_0
    return v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static a(IIIIILjava/lang/String;)I
    .locals 1

    .prologue
    .line 97
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/InoJni;->getMatchForwardDelay(IIIIILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 99
    :goto_0
    return v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 1

    .prologue
    .line 8
    :try_start_0
    invoke-static/range {p0 .. p7}, Lcom/tencent/mna/base/jni/InoJni;->prepare(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 11
    :goto_0
    return v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    const v0, 0xfde8

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;IZ)I
    .locals 1

    .prologue
    .line 17
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/InoJni;->prepareExport(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 19
    :goto_0
    return v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const v0, 0x101d0

    goto :goto_0
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 25
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/InoJni;->getInoSendToPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 27
    :goto_0
    return-wide v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static b(III)I
    .locals 1

    .prologue
    .line 113
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/InoJni;->getV6ExportDelay(III)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 115
    :goto_0
    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 33
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/InoJni;->getInoRecvFromPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 35
    :goto_0
    return-wide v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static c()J
    .locals 2

    .prologue
    .line 41
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/InoJni;->getInoSendMsgPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 43
    :goto_0
    return-wide v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static d()J
    .locals 2

    .prologue
    .line 49
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/InoJni;->getInoRecvMsgPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 51
    :goto_0
    return-wide v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static e()J
    .locals 2

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/InoJni;->getInoConnectPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 59
    :goto_0
    return-wide v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static f()J
    .locals 2

    .prologue
    .line 65
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/InoJni;->getInoSendPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 67
    :goto_0
    return-wide v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static g()J
    .locals 2

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/InoJni;->getInoRecvPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 75
    :goto_0
    return-wide v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static h()I
    .locals 1

    .prologue
    .line 81
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/InoJni;->endInoSpeed()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 83
    :goto_0
    return v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method
