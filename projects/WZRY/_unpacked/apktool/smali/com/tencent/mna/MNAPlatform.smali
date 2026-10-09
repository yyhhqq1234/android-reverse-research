.class public Lcom/tencent/mna/MNAPlatform;
.super Ljava/lang/Object;
.source "MNAPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/MNAPlatform$a;
    }
.end annotation


# static fields
.field private static final MNA_PLATFORM_IMPL:Ljava/lang/String; = "com.tencent.mna.MNAPlatformImpl"

.field private static sGhObserver:Lcom/tencent/mna/GHObserver;

.field private static sMnaObserver:Lcom/tencent/mna/MNAObserver;

.field private static sNetworkBindingListener:Lcom/tencent/mna/NetworkBindingListener;

.field private static sRouterObserver:Lcom/tencent/mna/RouterObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/tencent/mna/MNAPlatform;->sMnaObserver:Lcom/tencent/mna/MNAObserver;

    .line 17
    sput-object v0, Lcom/tencent/mna/MNAPlatform;->sGhObserver:Lcom/tencent/mna/GHObserver;

    .line 18
    sput-object v0, Lcom/tencent/mna/MNAPlatform;->sNetworkBindingListener:Lcom/tencent/mna/NetworkBindingListener;

    .line 19
    sput-object v0, Lcom/tencent/mna/MNAPlatform;->sRouterObserver:Lcom/tencent/mna/RouterObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MNAAddData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 291
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 293
    const-string v1, "MNAAddData"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 295
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 296
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/MNAPlatformImpl;->MNAAddData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAEndSpeed(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 211
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 213
    const-string v1, "MNAEndSpeed"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 215
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 216
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNAEndSpeed(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAEndSpeed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 195
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 197
    const-string v1, "MNAEndSpeed"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 199
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 200
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/MNAPlatformImpl;->MNAEndSpeed(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAEnterMapLoading()V
    .locals 3

    .prologue
    .line 164
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 166
    const-string v1, "MNAEnterMapLoading"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 167
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 168
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAEnterMapLoading()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAGetBatteryLevel()I
    .locals 3

    .prologue
    .line 522
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 524
    const-string v1, "MNAGetBatteryLevel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 525
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 526
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 533
    :goto_0
    return v0

    .line 528
    :cond_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGetBatteryLevel()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 533
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static MNAGetBatteryLevelAndCharging()[I
    .locals 4

    .prologue
    .line 537
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 539
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 541
    const-string v2, "MNAGetBatteryLevelAndCharging"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 542
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 543
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 550
    :goto_0
    return-object v0

    .line 545
    :cond_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGetBatteryLevelAndCharging()[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 550
    goto :goto_0

    .line 537
    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data
.end method

.method public static MNAGetQosSid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 373
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 375
    const-string v1, "MNAGetQosSid"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 376
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 377
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 384
    :goto_0
    return-object v0

    .line 379
    :cond_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGetQosSid()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 384
    const-string v0, "-1"

    goto :goto_0
.end method

.method public static MNAGetSOVersion()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 505
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 507
    const-string v2, "MNAGetSOVersion"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 508
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 509
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 516
    :goto_0
    return v0

    .line 511
    :cond_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGetSOVersion()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    move v0, v1

    .line 516
    goto :goto_0
.end method

.method public static MNAGetSpeedFlag()I
    .locals 3

    .prologue
    .line 244
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 246
    const-string v1, "MNAGetSpeedFlag"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 247
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 248
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 255
    :goto_0
    return v0

    .line 250
    :cond_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGetSpeedFlag()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 255
    const/16 v0, -0x64

    goto :goto_0
.end method

.method public static MNAGetSpeedInfo(Ljava/lang/String;I)Lcom/tencent/mna/b/a/c/g;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 227
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 229
    const-string v2, "MNAGetSpeedInfo"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 231
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 232
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mna/b/a/c/g;

    .line 239
    :goto_0
    return-object v0

    .line 234
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGetSpeedInfo(Ljava/lang/String;I)Lcom/tencent/mna/b/a/c/g;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 239
    goto :goto_0
.end method

.method public static MNAGoBack()V
    .locals 3

    .prologue
    .line 261
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 263
    const-string v1, "MNAGoBack"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 264
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 265
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGoBack()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAGoFront()V
    .locals 3

    .prologue
    .line 276
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 278
    const-string v1, "MNAGoFront"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 279
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 280
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAGoFront()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAInit(Landroid/content/Context;Ljava/lang/String;ZIZZLjava/lang/String;)V
    .locals 5

    .prologue
    .line 32
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->loadSdk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 35
    sget-object v0, Lcom/tencent/mna/MNAPlatform;->sMnaObserver:Lcom/tencent/mna/MNAObserver;

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/tencent/mna/MNAPlatform$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/tencent/mna/MNAPlatform$a;-><init>(Lcom/tencent/mna/MNAPlatform$1;)V

    .line 37
    sget-object v2, Lcom/tencent/mna/MNAPlatform;->sMnaObserver:Lcom/tencent/mna/MNAObserver;

    invoke-virtual {v0, v2}, Lcom/tencent/mna/MNAPlatform$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mna/MNAObserver;

    .line 38
    invoke-static {v0}, Lcom/tencent/mna/MNAPlatform;->MNASetObserver(Lcom/tencent/mna/MNAObserver;)V

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/MNAPlatform;->sMnaObserver:Lcom/tencent/mna/MNAObserver;

    .line 41
    :cond_0
    sget-object v0, Lcom/tencent/mna/MNAPlatform;->sGhObserver:Lcom/tencent/mna/GHObserver;

    if-eqz v0, :cond_1

    .line 42
    new-instance v0, Lcom/tencent/mna/MNAPlatform$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/tencent/mna/MNAPlatform$a;-><init>(Lcom/tencent/mna/MNAPlatform$1;)V

    .line 43
    sget-object v2, Lcom/tencent/mna/MNAPlatform;->sGhObserver:Lcom/tencent/mna/GHObserver;

    invoke-virtual {v0, v2}, Lcom/tencent/mna/MNAPlatform$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mna/GHObserver;

    .line 44
    invoke-static {v0}, Lcom/tencent/mna/MNAPlatform;->MNASetGHObserver(Lcom/tencent/mna/GHObserver;)V

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/MNAPlatform;->sGhObserver:Lcom/tencent/mna/GHObserver;

    .line 47
    :cond_1
    sget-object v0, Lcom/tencent/mna/MNAPlatform;->sNetworkBindingListener:Lcom/tencent/mna/NetworkBindingListener;

    if-eqz v0, :cond_2

    .line 48
    new-instance v0, Lcom/tencent/mna/MNAPlatform$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/tencent/mna/MNAPlatform$a;-><init>(Lcom/tencent/mna/MNAPlatform$1;)V

    .line 49
    sget-object v2, Lcom/tencent/mna/MNAPlatform;->sNetworkBindingListener:Lcom/tencent/mna/NetworkBindingListener;

    invoke-virtual {v0, v2}, Lcom/tencent/mna/MNAPlatform$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mna/NetworkBindingListener;

    .line 50
    invoke-static {v0}, Lcom/tencent/mna/MNAPlatform;->MNASetNetworkBindingListener(Lcom/tencent/mna/NetworkBindingListener;)V

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/MNAPlatform;->sNetworkBindingListener:Lcom/tencent/mna/NetworkBindingListener;

    .line 53
    :cond_2
    sget-object v0, Lcom/tencent/mna/MNAPlatform;->sRouterObserver:Lcom/tencent/mna/RouterObserver;

    if-eqz v0, :cond_3

    .line 54
    new-instance v0, Lcom/tencent/mna/MNAPlatform$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/tencent/mna/MNAPlatform$a;-><init>(Lcom/tencent/mna/MNAPlatform$1;)V

    .line 55
    sget-object v2, Lcom/tencent/mna/MNAPlatform;->sRouterObserver:Lcom/tencent/mna/RouterObserver;

    invoke-virtual {v0, v2}, Lcom/tencent/mna/MNAPlatform$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mna/RouterObserver;

    .line 56
    invoke-static {v0}, Lcom/tencent/mna/MNAPlatform;->MNASetRouterObserver(Lcom/tencent/mna/RouterObserver;)V

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/MNAPlatform;->sRouterObserver:Lcom/tencent/mna/RouterObserver;

    .line 60
    :cond_3
    const-string v0, "MNAInit"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 64
    const/4 v1, 0x0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object p6, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_4
    invoke-static/range {p0 .. p6}, Lcom/tencent/mna/MNAPlatformImpl;->MNAInit(Landroid/content/Context;Ljava/lang/String;ZIZZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAInit(Ljava/lang/String;ZIZZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-static/range {p0 .. p5}, Lcom/tencent/mna/MNAPlatformImpl;->MNAInit(Ljava/lang/String;ZIZZLjava/lang/String;)V

    .line 26
    return-void
.end method

.method public static MNAIsQOSWork()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 357
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 359
    const-string v2, "MNAIsQOSWork"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 360
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 361
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 368
    :goto_0
    return v0

    .line 363
    :cond_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAIsQOSWork()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    move v0, v1

    .line 368
    goto :goto_0
.end method

.method public static MNAPauseBattle()V
    .locals 3

    .prologue
    .line 456
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 458
    const-string v1, "MNAPauseBattle"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 459
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 460
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAPauseBattle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAQueryKartin(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 390
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 392
    const-string v1, "MNAQueryKartin"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 393
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 394
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNAQueryKartin(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAQueryNetwork(ZZZ)V
    .locals 5

    .prologue
    .line 591
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 593
    const-string v1, "MNAQueryNetwork"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 596
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 597
    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/MNAPlatformImpl;->MNAQueryNetwork(ZZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAQueryRouter(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 625
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 627
    const-string v1, "MNAQueryRouter"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 629
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 630
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    :goto_0
    return-void

    .line 632
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNAQueryRouter(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAResumeBattle()V
    .locals 3

    .prologue
    .line 471
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 473
    const-string v1, "MNAResumeBattle"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 474
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 475
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->MNAResumeBattle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetGHObserver(Lcom/tencent/mna/GHObserver;)V
    .locals 5

    .prologue
    .line 487
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 489
    const-string v1, "MNASetGHObserver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/tencent/mna/GHObserver;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 491
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 492
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetGHObserver(Lcom/tencent/mna/GHObserver;)V

    .line 495
    sput-object p0, Lcom/tencent/mna/MNAPlatform;->sGhObserver:Lcom/tencent/mna/GHObserver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetGameDelay(I)V
    .locals 5

    .prologue
    .line 641
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 643
    const-string v1, "MNASetGameDelay"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 645
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 646
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :goto_0
    return-void

    .line 648
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetGameDelay(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetGameIp(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 307
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 309
    const-string v1, "MNASetGameIp"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 310
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 311
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetGameIp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetGameMode(Z)V
    .locals 5

    .prologue
    .line 441
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 443
    const-string v1, "MNASetGameMode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 444
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 445
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetGameMode(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetNetworkBindingListener(Lcom/tencent/mna/NetworkBindingListener;)V
    .locals 5

    .prologue
    .line 323
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 325
    const-string v1, "MNASetNetworkBindingListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/tencent/mna/NetworkBindingListener;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 327
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 328
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetNetworkBindingListener(Lcom/tencent/mna/NetworkBindingListener;)V

    .line 331
    sput-object p0, Lcom/tencent/mna/MNAPlatform;->sNetworkBindingListener:Lcom/tencent/mna/NetworkBindingListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetNetworkObserver(Lcom/tencent/mna/NetworkObserver;)V
    .locals 5

    .prologue
    .line 574
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 576
    const-string v1, "MNASetNetworkObserver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/tencent/mna/NetworkObserver;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 578
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 579
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    :goto_0
    return-void

    .line 581
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetNetworkObserver(Lcom/tencent/mna/NetworkObserver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetObserver(JJ)V
    .locals 6

    .prologue
    .line 124
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 126
    const-string v1, "MNASetObserver"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 128
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 129
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetObserver(JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetObserver(Lcom/tencent/mna/MNAObserver;)V
    .locals 5

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 77
    const-string v1, "MNASetObserver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/tencent/mna/MNAObserver;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 79
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetObserver(Lcom/tencent/mna/MNAObserver;)V

    .line 82
    sput-object p0, Lcom/tencent/mna/MNAPlatform;->sMnaObserver:Lcom/tencent/mna/MNAObserver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetRouterObserver(Lcom/tencent/mna/RouterObserver;)V
    .locals 5

    .prologue
    .line 608
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 610
    const-string v1, "MNASetRouterObserver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/tencent/mna/RouterObserver;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 612
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 613
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :goto_0
    return-void

    .line 615
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetRouterObserver(Lcom/tencent/mna/RouterObserver;)V

    .line 616
    sput-object p0, Lcom/tencent/mna/MNAPlatform;->sRouterObserver:Lcom/tencent/mna/RouterObserver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetUserName(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 92
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 94
    const-string v1, "MNASetUserName"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 96
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 97
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetUserName(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNASetZoneId(I)V
    .locals 5

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 110
    const-string v1, "MNASetZoneId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 112
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNASetZoneId(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAStartSpeed(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)V
    .locals 5

    .prologue
    .line 143
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 145
    const-string v1, "MNAStartSpeed"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 149
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 150
    const/4 v1, 0x0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 151
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object p7, v2, v3

    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/tencent/mna/MNAPlatformImpl;->MNAStartSpeed(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAStartWifiActivity(Landroid/app/Activity;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 423
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 425
    const-string v1, "MNAStartWifiActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 427
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 428
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 435
    :goto_0
    return v0

    .line 430
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNAStartWifiActivity(Landroid/app/Activity;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 435
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static MNAStartWifiActivity(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 406
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 408
    const-string v1, "MNAStartWifiActivity"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 410
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 411
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 418
    :goto_0
    return v0

    .line 413
    :cond_0
    invoke-static {p0}, Lcom/tencent/mna/MNAPlatformImpl;->MNAStartWifiActivity(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 418
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static MNAStopMNA(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 179
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 181
    const-string v1, "MNAStopMNA"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 184
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNAStopMNA(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static MNAToggleNetworkBinding(IZ)V
    .locals 5

    .prologue
    .line 340
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 342
    const-string v1, "MNAToggleNetworkBinding"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 344
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 345
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/mna/MNAPlatformImpl;->MNAToggleNetworkBinding(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static SetBandwidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 557
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/MNAPlatformImpl;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    const-string v0, "com.tencent.mna.MNAPlatformImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 559
    const-string v1, "SetBandwidth"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 562
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 563
    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/MNAPlatformImpl;->SetBandwidth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    goto :goto_0
.end method
