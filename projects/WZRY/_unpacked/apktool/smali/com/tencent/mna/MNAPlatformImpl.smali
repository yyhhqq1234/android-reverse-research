.class public Lcom/tencent/mna/MNAPlatformImpl;
.super Ljava/lang/Object;
.source "MNAPlatformImpl.java"


# static fields
.field private static volatile sIsLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mna/MNAPlatformImpl;->sIsLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MNAAddData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 304
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MNAAddData called fps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",move:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",click:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/tencent/mna/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "MNAAddData succeed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void

    .line 311
    :cond_0
    const-string v0, "MNAAddData fail"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAEndSpeed(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 241
    :try_start_0
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/tencent/mna/MNAPlatformImpl;->MNAEndSpeed(Ljava/lang/String;ILjava/lang/String;)V
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

.method public static MNAEndSpeed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 224
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MNAEndSpeed called domain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",vport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",extrainfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/b/a/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 232
    :cond_0
    const-string v0, "MNAEndSpeed fail"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAEnterMapLoading()V
    .locals 1

    .prologue
    .line 193
    :try_start_0
    const-string v0, "MNAEnterMapLoading called"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {}, Lcom/tencent/mna/b/a/b;->b()V

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string v0, "MNAEnterMapLoading fail"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAGetBatteryLevel()I
    .locals 2

    .prologue
    .line 501
    const/4 v0, -0x1

    .line 503
    :try_start_0
    const-string v1, "MNAGetBatteryLevel called"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 505
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/n;->a(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 509
    :goto_0
    return v0

    .line 506
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static MNAGetBatteryLevelAndCharging()[I
    .locals 2

    .prologue
    .line 513
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 515
    :try_start_0
    const-string v1, "MNAGetBatteryLevelAndCharging called"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/n;->b(Landroid/content/Context;)[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 521
    :goto_0
    return-object v0

    .line 518
    :catch_0
    move-exception v1

    goto :goto_0

    .line 513
    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data
.end method

.method public static MNAGetQosSid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 371
    :try_start_0
    const-string v0, "MNAGetQosSid called"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 373
    sget-object v0, Lcom/tencent/mna/b/f/a;->e:Ljava/lang/String;

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MNAGetQosSid return:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    return-object v0

    .line 376
    :catch_0
    move-exception v0

    .line 379
    const-string v0, "-1"

    goto :goto_0
.end method

.method public static MNAGetSOVersion()I
    .locals 1

    .prologue
    .line 491
    :try_start_0
    const-string v0, "MNAGetSOVersion called"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lcom/tencent/mna/base/jni/e;->a()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 496
    :goto_0
    return v0

    .line 493
    :catch_0
    move-exception v0

    .line 496
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static MNAGetSpeedFlag()I
    .locals 3

    .prologue
    .line 264
    const/16 v0, -0x64

    .line 266
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-static {}, Lcom/tencent/mna/b/a/b;->c()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 272
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MNAGetSpeedInfo return:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 273
    return v0

    .line 269
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static MNAGetSpeedInfo(Ljava/lang/String;I)Lcom/tencent/mna/b/a/c/g;
    .locals 3

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 250
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MNAGetSpeedInfo called vip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",vport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-static {p0, p1}, Lcom/tencent/mna/b/a/b;->b(Ljava/lang/String;I)Lcom/tencent/mna/b/a/c/g;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 259
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MNAGetSpeedInfo return:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 260
    return-object v0

    .line 256
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static MNAGoBack()V
    .locals 1

    .prologue
    .line 278
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-static {}, Lcom/tencent/mna/b/a/b;->e()V

    .line 280
    const-string v0, "MNAGoBack succeed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 287
    :goto_0
    return-void

    .line 282
    :cond_0
    const-string v0, "MNAGoBack fail"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAGoFront()V
    .locals 1

    .prologue
    .line 291
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {}, Lcom/tencent/mna/b/a/b;->f()V

    .line 293
    const-string v0, "MNAGoFront succeed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void

    .line 295
    :cond_0
    const-string v0, "MNAGoFront fail"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAInit(Landroid/content/Context;Ljava/lang/String;ZIZZLjava/lang/String;)V
    .locals 7

    .prologue
    .line 89
    :try_start_0
    const-string v0, "Client"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: 5.5.0 | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/tencent/mna/b;->a(Landroid/content/Context;Ljava/lang/String;ZIZZLjava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "MNAInit succeed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v0, "MNAInit fail"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MNAInit fail, exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static MNAInit(Ljava/lang/String;ZIZZLjava/lang/String;)V
    .locals 8

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MNAInit called qqappid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",debug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",zoneid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",env:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",useBattery:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",tcloudkey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "MNAInit succeed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/tencent/mna/base/f/d;->b()Landroid/app/Activity;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    new-instance v0, Lcom/tencent/mna/MNAPlatformImpl$1;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mna/MNAPlatformImpl$1;-><init>(Landroid/app/Activity;Ljava/lang/String;ZIZZLjava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0

    .line 77
    :cond_1
    const-string v0, "MNAInit fail"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static MNAIsQOSWork()I
    .locals 3

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 357
    :try_start_0
    const-string v1, "MNAIsQOSWork called"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    sget v0, Lcom/tencent/mna/b/f/a;->a:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MNAIsQOSWork return:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 366
    return v0

    .line 362
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static MNAPauseBattle()V
    .locals 1

    .prologue
    .line 450
    :try_start_0
    const-string v0, "MNAPauseBattle called"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-static {}, Lcom/tencent/mna/b/a/b;->g()V

    .line 454
    const-string v0, "MNAPauseBattle succeed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 461
    :goto_0
    return-void

    .line 456
    :cond_0
    const-string v0, "MNAPauseBattle fail"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAQueryKartin(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 385
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MNAQueryKartin called tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-static {p0}, Lcom/tencent/mna/b/d/b;->a(Ljava/lang/String;)V

    .line 396
    :goto_0
    return-void

    .line 391
    :cond_0
    const-string v0, "MNAQueryKartin fail"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAQueryNetwork(ZZZ)V
    .locals 7

    .prologue
    .line 577
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MNAQueryNetwork called isGetNetcardInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isGetRouterDelay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 580
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v1

    .line 582
    invoke-static {}, Lcom/tencent/mna/b;->d()Lcom/tencent/mna/NetworkObserver;

    move-result-object v5

    .line 583
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/mna/MNAPlatformImpl$3;

    move v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/MNAPlatformImpl$3;-><init>(Landroid/content/Context;ZZZLcom/tencent/mna/NetworkObserver;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 607
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 614
    :goto_0
    return-void

    .line 609
    :cond_0
    const-string v0, "MNAQueryNetwork failed, not init"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAQueryRouter(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 631
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MNAQueryRouter called tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 633
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    .line 635
    invoke-static {}, Lcom/tencent/mna/b;->e()Lcom/tencent/mna/RouterObserver;

    move-result-object v1

    .line 636
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/tencent/mna/MNAPlatformImpl$4;

    invoke-direct {v3, v0, p0, v1}, Lcom/tencent/mna/MNAPlatformImpl$4;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mna/RouterObserver;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 654
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 661
    :goto_0
    return-void

    .line 656
    :cond_0
    const-string v0, "MNAQueryNetwork failed, not init"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 658
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAResumeBattle()V
    .locals 1

    .prologue
    .line 465
    :try_start_0
    const-string v0, "MNAResumeBattle called"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-static {}, Lcom/tencent/mna/b/a/b;->h()V

    .line 469
    const-string v0, "MNAResumeBattle succeed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 476
    :goto_0
    return-void

    .line 471
    :cond_0
    const-string v0, "MNAResumeBattle fail"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetGHObserver(Lcom/tencent/mna/GHObserver;)V
    .locals 1

    .prologue
    .line 481
    :try_start_0
    const-string v0, "MNASetGHObserver called"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 482
    invoke-static {p0}, Lcom/tencent/mna/b;->a(Lcom/tencent/mna/GHObserver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 483
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetGameDelay(I)V
    .locals 1

    .prologue
    .line 667
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    new-instance v0, Lcom/tencent/mna/MNAPlatformImpl$5;

    invoke-direct {v0, p0}, Lcom/tencent/mna/MNAPlatformImpl$5;-><init>(I)V

    invoke-static {v0}, Lcom/tencent/mna/a;->e(Ljava/lang/Runnable;)V

    .line 685
    :goto_0
    return-void

    .line 679
    :cond_0
    const-string v0, "SetGameDelay fail"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 682
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetGameIp(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 320
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MNASetGameIp called gameIp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-static {p0}, Lcom/tencent/mna/b/a/b;->a(Ljava/lang/String;)V

    .line 331
    :goto_0
    return-void

    .line 326
    :cond_0
    const-string v0, "MNASetGameIp fail"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetGameMode(Z)V
    .locals 2

    .prologue
    .line 439
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MNASetGameMode called isMatch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 442
    invoke-static {p0}, Lcom/tencent/mna/b/a/b;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetNetworkBindingListener(Lcom/tencent/mna/NetworkBindingListener;)V
    .locals 1

    .prologue
    .line 336
    :try_start_0
    const-string v0, "MNASetNetworkBindingListener called"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 337
    invoke-static {p0}, Lcom/tencent/mna/b;->a(Lcom/tencent/mna/NetworkBindingListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetNetworkObserver(Lcom/tencent/mna/NetworkObserver;)V
    .locals 1

    .prologue
    .line 563
    if-nez p0, :cond_0

    .line 564
    :try_start_0
    const-string v0, "MNASetNetworkObserver called: null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 568
    :goto_0
    invoke-static {p0}, Lcom/tencent/mna/b;->a(Lcom/tencent/mna/NetworkObserver;)V

    .line 572
    :goto_1
    return-void

    .line 566
    :cond_0
    const-string v0, "MNASetNetworkObserver called"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 569
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static MNASetObserver(JJ)V
    .locals 2

    .prologue
    .line 154
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MNASetObserver called startSpeedPtr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",kartinPtr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 158
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/b;->a(JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetObserver(Lcom/tencent/mna/MNAObserver;)V
    .locals 1

    .prologue
    .line 111
    if-nez p0, :cond_0

    .line 112
    :try_start_0
    const-string v0, "MNASetObserver called: null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 116
    :goto_0
    invoke-static {p0}, Lcom/tencent/mna/b;->a(Lcom/tencent/mna/MNAObserver;)V

    .line 120
    :goto_1
    return-void

    .line 114
    :cond_0
    const-string v0, "MNASetObserver called"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static MNASetRouterObserver(Lcom/tencent/mna/RouterObserver;)V
    .locals 1

    .prologue
    .line 618
    if-nez p0, :cond_0

    .line 619
    :try_start_0
    const-string v0, "MNASetRouterObserver called: null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 623
    :goto_0
    invoke-static {p0}, Lcom/tencent/mna/b;->a(Lcom/tencent/mna/RouterObserver;)V

    .line 627
    :goto_1
    return-void

    .line 621
    :cond_0
    const-string v0, "MNASetRouterObserver called"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static MNASetUserName(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    :try_start_0
    const-string p1, "null"

    .line 128
    :cond_0
    const-string v0, "Client"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 129
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sput-object p1, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    .line 133
    sput p0, Lcom/tencent/mna/a/b;->g:I

    .line 134
    invoke-static {p1}, Lcom/tencent/mna/b/f/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetZoneId(I)V
    .locals 2

    .prologue
    .line 142
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MNASetZoneId called zoneid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 145
    sput p0, Lcom/tencent/mna/a/b;->h:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAStartSpeed(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)V
    .locals 2

    .prologue
    .line 168
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MNAStartSpeed called domain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",vport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",htype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",hookModules:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",zoneid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",stopMNA:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",start_timeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pvpid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    sput-object p7, Lcom/tencent/mna/a/b;->a:Ljava/lang/String;

    .line 180
    sput p4, Lcom/tencent/mna/a/b;->h:I

    .line 181
    invoke-static/range {p0 .. p7}, Lcom/tencent/mna/b/a/b;->a(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v0, "MNAStartSpeed fail, not init"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAStartWifiActivity(Landroid/app/Activity;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 418
    const/4 v0, -0x2

    .line 420
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MNAStartWifiActivity called activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    invoke-static {p0}, Lcom/tencent/mna/base/f/p;->a(Landroid/app/Activity;)I

    move-result v0

    .line 429
    :goto_0
    invoke-static {p1, v0}, Lcom/tencent/mna/MNAPlatformImpl;->reportWifiEvent(Ljava/lang/String;I)V

    .line 433
    :goto_1
    return v0

    .line 427
    :cond_0
    const-string v1, "MNAStartWifiActivity(Activity;String) fail, not init"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static MNAStartWifiActivity(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 400
    const/4 v0, -0x2

    .line 402
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MNAStartWifiActivity called tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-static {}, Lcom/tencent/mna/base/f/p;->a()I

    move-result v0

    .line 410
    :goto_0
    invoke-static {p0, v0}, Lcom/tencent/mna/MNAPlatformImpl;->reportWifiEvent(Ljava/lang/String;I)V

    .line 414
    :goto_1
    return v0

    .line 408
    :cond_0
    const-string v1, "MNAStartWifiActivity fail, not init"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static MNAStopMNA(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 207
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MNAStopMNA called domain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",vport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {p0, p1}, Lcom/tencent/mna/b/a/b;->a(Ljava/lang/String;I)V

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    const-string v0, "MNAStopMNA fail"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAToggleNetworkBinding(IZ)V
    .locals 2

    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MNAToggleNetworkBinding called bufferScore:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",playerSetting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {p0, p1}, Lcom/tencent/mna/b/a/b;->a(IZ)V

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    const-string v0, "MNAToggleNetworkBinding fail"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static SetBandwidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 528
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetBandwidth called bandwidthValuesStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",totalSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",elapseTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxBandValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 533
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/mna/MNAPlatformImpl$2;

    invoke-direct {v1, p1, p2, p3, p0}, Lcom/tencent/mna/MNAPlatformImpl$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 555
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    return-void

    .line 556
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isLoaded()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/tencent/mna/MNAPlatformImpl;->sIsLoaded:Z

    return v0
.end method

.method public static loadSdk(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 36
    sget-boolean v1, Lcom/tencent/mna/MNAPlatformImpl;->sIsLoaded:Z

    if-eqz v1, :cond_0

    .line 43
    :goto_0
    return v0

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/base/b/a;->a(Landroid/content/Context;)Z

    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    sput-boolean v0, Lcom/tencent/mna/MNAPlatformImpl;->sIsLoaded:Z

    :cond_1
    move v0, v1

    .line 43
    goto :goto_0
.end method

.method private static reportWifiEvent(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 688
    new-instance v0, Lcom/tencent/mna/MNAPlatformImpl$6;

    invoke-direct {v0, p1, p0}, Lcom/tencent/mna/MNAPlatformImpl$6;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mna/a;->a(Ljava/lang/Runnable;)V

    .line 698
    return-void
.end method
