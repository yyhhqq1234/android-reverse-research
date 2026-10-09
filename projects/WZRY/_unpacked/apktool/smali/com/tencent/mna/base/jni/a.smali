.class public Lcom/tencent/mna/base/jni/a;
.super Ljava/lang/Object;
.source "CdnJniWrapper.java"


# direct methods
.method public static a(III)I
    .locals 1

    .prologue
    .line 107
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/CdnJni;->getExportDelay(III)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 109
    :goto_0
    return v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static a(IIIII)I
    .locals 1

    .prologue
    .line 91
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/CdnJni;->getForwardDelay(IIIII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 93
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static a(IIIIILjava/lang/String;)I
    .locals 1

    .prologue
    .line 99
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/CdnJni;->getMatchForwardDelay(IIIIILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 101
    :goto_0
    return v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 27
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/CdnJni;->getCdnSendToPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 29
    :goto_0
    return-wide v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;
    .locals 1

    .prologue
    .line 11
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/CdnJni;->reqMaster(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)Lcom/tencent/mna/base/jni/entity/CdnMasterRet;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 13
    :goto_0
    return-object v0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/CdnNegRet;
    .locals 1

    .prologue
    .line 19
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/CdnJni;->reqNeg(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/jni/entity/CdnNegRet;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 21
    :goto_0
    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(III)I
    .locals 1

    .prologue
    .line 115
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/CdnJni;->getV6ExportDelay(III)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 117
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const/16 v0, 0x1f5

    goto :goto_0
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 35
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/CdnJni;->getCdnRecvFromPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 37
    :goto_0
    return-wide v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static c()J
    .locals 2

    .prologue
    .line 43
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/CdnJni;->getCdnSendMsgPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 45
    :goto_0
    return-wide v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static d()J
    .locals 2

    .prologue
    .line 51
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/CdnJni;->getCdnRecvMsgPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 53
    :goto_0
    return-wide v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static e()J
    .locals 2

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/CdnJni;->getCdnConnectPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 61
    :goto_0
    return-wide v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static f()J
    .locals 2

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/CdnJni;->getCdnSendPtr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 69
    :goto_0
    return-wide v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static g()J
    .locals 2

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/CdnJni;->getCdnRecvPtr()J
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

.method public static h()I
    .locals 1

    .prologue
    .line 83
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/CdnJni;->endCdnSpeed()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 85
    :goto_0
    return v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const/4 v0, 0x0

    goto :goto_0
.end method
