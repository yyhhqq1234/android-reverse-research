.class public Lcom/tencent/mna/base/jni/b;
.super Ljava/lang/Object;
.source "DsJniWrapper.java"


# direct methods
.method public static a(III)I
    .locals 1

    .prologue
    .line 125
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/DsJni;->getExportDelay(III)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 127
    :goto_0
    return v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static a(IIIII)I
    .locals 1

    .prologue
    .line 109
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/DsJni;->getForwardDelay(IIIII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 111
    :goto_0
    return v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static a(IIIIILjava/lang/String;)I
    .locals 1

    .prologue
    .line 117
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/DsJni;->getMatchForwardDelay(IIIIILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 119
    :goto_0
    return v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;IIIIIZ)I
    .locals 1

    .prologue
    .line 10
    :try_start_0
    invoke-static/range {p0 .. p8}, Lcom/tencent/mna/base/jni/DsJni;->prepare(Ljava/lang/String;ILjava/lang/String;IIIIIZ)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 15
    :goto_0
    return v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const v0, 0x13a14

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;IZ)I
    .locals 1

    .prologue
    .line 21
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/DsJni;->prepareExport(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 23
    :goto_0
    return v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const v0, 0x10364

    goto :goto_0
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/DsJni;->getDsSendToPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 47
    :goto_0
    return-wide v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 53
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/DsJni;->getDsRecvFromPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 55
    :goto_0
    return-wide v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static c()J
    .locals 2

    .prologue
    .line 61
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/DsJni;->getDsSendMsgPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 63
    :goto_0
    return-wide v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static d()J
    .locals 2

    .prologue
    .line 69
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/DsJni;->getDsRecvMsgPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 71
    :goto_0
    return-wide v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static e()J
    .locals 2

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/DsJni;->getDsConnectPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 79
    :goto_0
    return-wide v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static f()J
    .locals 2

    .prologue
    .line 85
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/DsJni;->getDsSendPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 87
    :goto_0
    return-wide v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static g()J
    .locals 2

    .prologue
    .line 93
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/DsJni;->getDsRecvPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 95
    :goto_0
    return-wide v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static h()I
    .locals 1

    .prologue
    .line 101
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/DsJni;->endDsSpeed()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 103
    :goto_0
    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method
