.class public Lcom/tencent/mna/base/jni/e;
.super Ljava/lang/Object;
.source "MnaJniWrapper.java"


# direct methods
.method public static a()I
    .locals 1

    .prologue
    .line 17
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/MnaJni;->getSoVersion()I
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
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 49
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->getFd(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 51
    :goto_0
    return v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(IIIILjava/lang/String;I)I
    .locals 1

    .prologue
    .line 121
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/MnaJni;->uploadPingValue(IIIILjava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 123
    :goto_0
    return v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public static a(I[BIILjava/lang/String;I)I
    .locals 1

    .prologue
    .line 97
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/MnaJni;->getV6DirectDelay(I[BIILjava/lang/String;I)I
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
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)I
    .locals 1

    .prologue
    .line 177
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/MnaJni;->hookClose(Ljava/lang/String;J)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 179
    :goto_0
    return v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;JJ)I
    .locals 1

    .prologue
    .line 137
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/MnaJni;->hookUdpSendTo(Ljava/lang/String;JJ)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 139
    :goto_0
    return v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;JJJ)I
    .locals 1

    .prologue
    .line 153
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/tencent/mna/base/jni/MnaJni;->hookUdpSend(Ljava/lang/String;JJJ)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 155
    :goto_0
    return v0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(ZILjava/lang/String;ILjava/lang/String;I)Lcom/tencent/mna/base/jni/entity/CloudRet;
    .locals 1

    .prologue
    .line 41
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/MnaJni;->requestCloud(ZILjava/lang/String;ILjava/lang/String;I)Lcom/tencent/mna/base/jni/entity/CloudRet;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->getInfo(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(II)V
    .locals 1

    .prologue
    .line 281
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/base/jni/MnaJni;->startUdpRecvLoop(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(IIII)V
    .locals 1

    .prologue
    .line 241
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/base/jni/MnaJni;->turnDoubleSend(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(IZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 9
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/base/jni/MnaJni;->init(IZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :goto_0
    return-void

    .line 10
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(I[BIIIII)V
    .locals 1

    .prologue
    .line 273
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/tencent/mna/base/jni/MnaJni;->startV6UdpSendLoop(I[BIIIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(JIILjava/lang/String;)V
    .locals 2

    .prologue
    .line 369
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/MnaJni;->notify(JIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(JLjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V
    .locals 2

    .prologue
    .line 383
    :try_start_0
    invoke-static/range {p0 .. p25}, Lcom/tencent/mna/base/jni/MnaJni;->kartinNotify(JLjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/base/jni/MnaJni;->setPkg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 129
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->nHook(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(ZI)V
    .locals 1

    .prologue
    .line 233
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/base/jni/MnaJni;->turnFilter(ZI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 289
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->setHookIps([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(I[BILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 257
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/base/jni/MnaJni;->startV6DoubleNeg(I[BILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 259
    :goto_0
    return v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 57
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->getV6Fd(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 59
    :goto_0
    return v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(II)I
    .locals 1

    .prologue
    .line 432
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/mna/base/jni/MnaJni;->setFdTos(II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 436
    :goto_0
    return v0

    .line 433
    :catch_0
    move-exception v0

    .line 436
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public static b(I[BIILjava/lang/String;I)I
    .locals 1

    .prologue
    .line 113
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/base/jni/MnaJni;->getV6MatchDirectDelay(I[BIILjava/lang/String;I)I
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
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 185
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->unhookUdpSendTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 187
    :goto_0
    return v0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;JJ)I
    .locals 1

    .prologue
    .line 145
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/base/jni/MnaJni;->hookUdpSendMsg(Ljava/lang/String;JJ)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 147
    :goto_0
    return v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;JJJ)I
    .locals 1

    .prologue
    .line 161
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/tencent/mna/base/jni/MnaJni;->hookUdpConnectSendTo(Ljava/lang/String;JJJ)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 163
    :goto_0
    return v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 337
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/MnaJni;->switchNetworkBindingIdle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 1

    .prologue
    .line 321
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->setIsLoadMap(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(I)I
    .locals 1

    .prologue
    .line 65
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->getTcpFd(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 67
    :goto_0
    return v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 193
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->unhookUdpSendMsg(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 195
    :goto_0
    return v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;JJJ)I
    .locals 1

    .prologue
    .line 169
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/tencent/mna/base/jni/MnaJni;->hookUdpConnectSendMsg(Ljava/lang/String;JJJ)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 171
    :goto_0
    return v0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 345
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/MnaJni;->switchNetworkBindingToMobile()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Z)V
    .locals 1

    .prologue
    .line 329
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->setIsShouldSpeed(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 201
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->unhookUdpSend(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 203
    :goto_0
    return v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 353
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/MnaJni;->switchNetworkBindingToWifi()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d(I)V
    .locals 1

    .prologue
    .line 81
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->closeFd(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 209
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->unhookUdpConnectSendTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 211
    :goto_0
    return v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()V
    .locals 1

    .prologue
    .line 361
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/MnaJni;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static e(I)V
    .locals 1

    .prologue
    .line 297
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->setHookPort(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 397
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/jni/MnaJni;->detectLocalIpStack()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 401
    :goto_0
    return v0

    .line 398
    :catch_0
    move-exception v0

    .line 401
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 217
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->unhookUdpConnectSendMsg(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 219
    :goto_0
    return v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(I)V
    .locals 1

    .prologue
    .line 313
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->setLoadMapSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 225
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->unhookClose(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 227
    :goto_0
    return v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(I)V
    .locals 1

    .prologue
    .line 424
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->turnHookedFdTos(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 305
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->setMobileVip(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 415
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/jni/MnaJni;->sendToUnity(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 419
    :goto_0
    return v0

    .line 416
    :catch_0
    move-exception v0

    .line 419
    const/4 v0, -0x4

    goto :goto_0
.end method
