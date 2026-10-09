.class public Lcom/tencent/mna/base/jni/d;
.super Ljava/lang/Object;
.source "McJniWrapper.java"


# direct methods
.method public static a(III)I
    .locals 1

    .prologue
    .line 119
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/McJni;->getExportDelay(III)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 121
    :goto_0
    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static a(IIIII)I
    .locals 1

    .prologue
    .line 103
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/McJni;->getForwardDelay(IIIII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 105
    :goto_0
    return v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static a(IIIIILjava/lang/String;)I
    .locals 1

    .prologue
    .line 111
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/McJni;->getMatchForwardDelay(IIIIILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 113
    :goto_0
    return v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIIIZ)I
    .locals 1

    .prologue
    .line 11
    :try_start_0
    invoke-static/range {p0 .. p12}, Lcom/tencent/mna/base/jni/McJni;->prepare(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IIIIIZ)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 17
    :goto_0
    return v0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    const v0, 0x13a14

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;IZ)I
    .locals 1

    .prologue
    .line 23
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/McJni;->prepareExport(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 25
    :goto_0
    return v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const v0, 0x10364

    goto :goto_0
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 39
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->getMcSendToPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 41
    :goto_0
    return-wide v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 31
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/McJni;->setIsShouldMobile(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(III)I
    .locals 1

    .prologue
    .line 127
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/McJni;->getV6ExportDelay(III)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 129
    :goto_0
    return v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 47
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->getMcRecvFromPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 49
    :goto_0
    return-wide v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static c()J
    .locals 2

    .prologue
    .line 55
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->getMcSendMsgPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 57
    :goto_0
    return-wide v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static d()J
    .locals 2

    .prologue
    .line 63
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->getMcRecvMsgPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 65
    :goto_0
    return-wide v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static e()J
    .locals 2

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->getMcConnectPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 73
    :goto_0
    return-wide v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static f()J
    .locals 2

    .prologue
    .line 79
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->getMcSendPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 81
    :goto_0
    return-wide v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static g()J
    .locals 2

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->getMcRecvPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 89
    :goto_0
    return-wide v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static h()I
    .locals 1

    .prologue
    .line 95
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/McJni;->endMcSpeed()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 97
    :goto_0
    return v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const/4 v0, 0x0

    goto :goto_0
.end method
