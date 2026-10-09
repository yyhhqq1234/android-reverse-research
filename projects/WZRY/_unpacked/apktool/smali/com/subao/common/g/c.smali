.class public Lcom/subao/common/g/c;
.super Ljava/lang/Object;
.source "JniWrapper.java"

# interfaces
.implements Lcom/subao/common/a;
.implements Lcom/subao/common/f;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/subao/common/g/c;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/subao/common/g/c;->b:Ljava/util/List;

    .line 58
    new-instance v0, Lcom/subao/common/g/b;

    invoke-direct {v0}, Lcom/subao/common/g/b;-><init>()V

    invoke-static {v0, p1}, Lcom/subao/vpn/VPNJni;->loadLibrary(Lcom/subao/vpn/JniCallback;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 105
    if-nez p0, :cond_1

    .line 106
    const-string v0, "null"

    .line 112
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_0

    .line 110
    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "\"%s\" ... (%d chars)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x3c

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 68
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    sget-object v0, Lcom/subao/common/g/c;->a:[B

    .line 71
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;Lcom/subao/common/j/l;I)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/subao/common/j/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x3a

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 499
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 500
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 501
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/subao/common/j/l;->d:Ljava/lang/String;

    .line 502
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 503
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 504
    const/4 v1, 0x0

    const-string v2, "key_add_game"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 505
    return-void
.end method


# virtual methods
.method public a(Lcom/subao/vpn/JniCallback;)Lcom/subao/vpn/JniCallback;
    .locals 1

    .prologue
    .line 96
    invoke-static {p1}, Lcom/subao/vpn/VPNJni;->setCallback(Lcom/subao/vpn/JniCallback;)Lcom/subao/vpn/JniCallback;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/subao/common/g/b;

    invoke-direct {v0}, Lcom/subao/common/g/b;-><init>()V

    invoke-static {v0}, Lcom/subao/vpn/VPNJni;->setCallback(Lcom/subao/vpn/JniCallback;)Lcom/subao/vpn/JniCallback;

    .line 93
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/subao/vpn/VPNJni;->setUDPEchoPort(II)V

    .line 301
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 406
    invoke-static {p1, p2}, Lcom/subao/vpn/VPNJni;->closeQosAccelResult(II)V

    .line 407
    return-void
.end method

.method public a(III)V
    .locals 0

    .prologue
    .line 410
    invoke-static {p1, p2, p3}, Lcom/subao/vpn/VPNJni;->modifyQosAccelResult(III)V

    .line 411
    return-void
.end method

.method public a(IIIZ)V
    .locals 0

    .prologue
    .line 344
    invoke-static {p1, p2, p3, p4}, Lcom/subao/vpn/VPNJni;->requestMobileFDResult(IIIZ)V

    .line 345
    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 137
    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/subao/vpn/VPNJni;->httpResponse(IILjava/lang/String;)V

    .line 138
    return-void
.end method

.method public a(ILjava/lang/String;I)V
    .locals 6

    .prologue
    .line 293
    const-string v0, "SubaoData"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "SubaoData"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "setInt(%d, \"%s\", %d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/subao/vpn/VPNJni;->setInt(I[BI)V

    .line 297
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    invoke-static {p1, p2, p3}, Lcom/subao/vpn/VPNJni;->qosPrepareResult(ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 402
    invoke-static {p2}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p3}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1, v0, v1, p4}, Lcom/subao/vpn/VPNJni;->openQosAccelResult(I[B[BI)V

    .line 403
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/subao/common/j/l;I)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/subao/common/j/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 517
    invoke-direct/range {p0 .. p5}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;Lcom/subao/common/j/l;I)V

    .line 518
    iget-object v0, p0, Lcom/subao/common/g/c;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/subao/common/g/c;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-static {p2}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p4}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/subao/vpn/VPNJni;->setUserToken(II[B[B[B)V

    .line 305
    return-void
.end method

.method public a(ILjava/lang/String;[B)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 277
    const-string v0, "SubaoData"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    if-nez p3, :cond_2

    move v0, v1

    .line 279
    :goto_0
    const-string v2, "SubaoData"

    sget-object v3, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v4, "setString(%d, \"%s\", %d bytes)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    aput-object p2, v5, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    if-nez p3, :cond_1

    sget-object p3, Lcom/subao/common/g/c;->a:[B

    :cond_1
    invoke-static {p1, v0, p3}, Lcom/subao/vpn/VPNJni;->setString(I[B[B)V

    .line 282
    return-void

    .line 278
    :cond_2
    array-length v0, p3

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/subao/vpn/VPNJni;->onAccelRecommendationResult(IIZ)V

    .line 473
    return-void
.end method

.method public a(IZIILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 328
    invoke-static {p5}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {p6}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v5

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v5}, Lcom/subao/vpn/VPNJni;->userStateResult(IZII[B[B)V

    .line 329
    return-void
.end method

.method public a(IZILjava/lang/String;)V
    .locals 1

    .prologue
    .line 332
    invoke-static {p4}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/subao/vpn/VPNJni;->userConfigResult(IZI[B)V

    .line 333
    return-void
.end method

.method public a(IZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IJIILjava/lang/String;)V
    .locals 17

    .prologue
    .line 309
    .line 310
    invoke-static/range {p4 .. p4}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v5

    .line 312
    invoke-static/range {p6 .. p6}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v7

    .line 314
    invoke-static/range {p8 .. p8}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v9

    .line 315
    invoke-static/range {p9 .. p9}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v10

    move-wide/from16 v0, p11

    long-to-int v12, v0

    .line 320
    invoke-static/range {p15 .. p15}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v15

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p5

    move/from16 v8, p7

    move/from16 v11, p10

    move/from16 v13, p13

    move/from16 v14, p14

    .line 309
    invoke-static/range {v2 .. v15}, Lcom/subao/vpn/VPNJni;->userAuthResult(IZI[BI[BI[B[BIIII[B)V

    .line 321
    return-void
.end method

.method public a(IZILjava/lang/String;[BI)V
    .locals 6

    .prologue
    .line 324
    invoke-static {p4}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v3

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/subao/vpn/VPNJni;->linkAuthResult(IZI[B[BI)V

    .line 325
    return-void
.end method

.method public a(I[B)V
    .locals 0

    .prologue
    .line 452
    invoke-static {p1, p2}, Lcom/subao/vpn/VPNJni;->onLoadDataResult(I[B)V

    .line 453
    return-void
.end method

.method public a(Lcom/subao/common/i/r;Lcom/subao/common/i/m;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 431
    const-string v0, "key_version"

    iget-object v1, p1, Lcom/subao/common/i/r;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v0, "key_channel"

    iget-object v1, p1, Lcom/subao/common/i/r;->b:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v0, "key_os_version"

    iget-object v1, p1, Lcom/subao/common/i/r;->c:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v0, "key_android_version"

    iget-object v1, p1, Lcom/subao/common/i/r;->d:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v0, "key_phone_model"

    invoke-virtual {p2}, Lcom/subao/common/i/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v0, "key_rom"

    invoke-virtual {p2}, Lcom/subao/common/i/m;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v0, "key_cpu_speed"

    invoke-virtual {p2}, Lcom/subao/common/i/m;->b()I

    move-result v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/subao/common/g/c;->a(ILjava/lang/String;I)V

    .line 439
    const-string v0, "key_cpu_core"

    invoke-virtual {p2}, Lcom/subao/common/i/m;->c()I

    move-result v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/subao/common/g/c;->a(ILjava/lang/String;I)V

    .line 440
    const-string v0, "key_memory"

    invoke-virtual {p2}, Lcom/subao/common/i/m;->d()I

    move-result v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/subao/common/g/c;->a(ILjava/lang/String;I)V

    .line 441
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/subao/vpn/VPNJni;->setRecommendationGameIP(I[BI)V

    .line 362
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p2}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/subao/vpn/VPNJni;->defineConst(I[B[B)V

    .line 415
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 365
    const/4 v1, 0x0

    const-string/jumbo v0, "tcp"

    .line 366
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 365
    :goto_0
    invoke-static {v1, v0, p2, p3}, Lcom/subao/vpn/VPNJni;->addAccelAddress(IILjava/lang/String;I)V

    .line 368
    return-void

    .line 366
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a([B)V
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/subao/vpn/VPNJni;->injectPCode(I[B)V

    .line 422
    return-void
.end method

.method public a(ILcom/subao/common/g/a;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 171
    const-string v0, "SubaoData"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "SubaoData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init with PCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Lcom/subao/common/n/h;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v0, "SubaoData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NodeList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Lcom/subao/common/g/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v0, "SubaoData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CIP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Lcom/subao/common/g/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v0, "SubaoData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GIP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p7}, Lcom/subao/common/g/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    const/4 v0, 0x0

    iget v2, p2, Lcom/subao/common/g/a;->e:I

    .line 179
    invoke-static {p3}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_3

    :cond_1
    sget-object v4, Lcom/subao/common/g/c;->a:[B

    .line 181
    :goto_0
    invoke-static {p5}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v5

    .line 182
    invoke-static {p6}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v6

    .line 183
    invoke-static {p7}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v7

    move v1, p1

    .line 177
    invoke-static/range {v0 .. v7}, Lcom/subao/vpn/VPNJni;->init(III[B[B[B[B[B)Z

    move-result v0

    .line 185
    if-eqz v0, :cond_2

    .line 186
    const-string v1, "SubaoProxy"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {p0}, Lcom/subao/common/g/c;->c()V

    .line 190
    :cond_2
    return v0

    :cond_3
    move-object v4, p4

    .line 179
    goto :goto_0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/vpn/VPNJni;->getScriptBit(I)I

    move-result v0

    .line 122
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x40

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/subao/vpn/VPNJni;->onUDPDelay(II)V

    .line 354
    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 262
    const-string v0, "SubaoData"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    if-nez p3, :cond_1

    .line 265
    const-string v0, "null"

    .line 271
    :goto_0
    const-string v1, "SubaoData"

    sget-object v2, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v3, "setString(%d, \"%s\", %s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    aput-object v0, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p3}, Lcom/subao/common/g/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/subao/vpn/VPNJni;->setString(I[B[B)V

    .line 274
    return-void

    .line 266
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_2

    .line 267
    sget-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v1, "\"%s ...\" (%d chars)"

    new-array v2, v8, [Ljava/lang/Object;

    const/16 v3, 0x3c

    invoke-virtual {p3, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 269
    :cond_2
    const-string v0, "\"%s\""

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p3, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 211
    const/4 v0, 0x0

    const-string v1, "key_inject"

    invoke-virtual {p0, v0, v1, p1}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/subao/vpn/VPNJni;->getWebUIUrl(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 197
    const-string v0, "log_test = function(str) log_info(str) end"

    invoke-virtual {p0, v0}, Lcom/subao/common/g/c;->b(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/subao/vpn/VPNJni;->getAccelRecommendationData(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/vpn/VPNJni;->getProxyIsStart(I)Z

    move-result v0

    return v0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/subao/vpn/VPNJni;->startNodeDetect(II)V

    .line 482
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/vpn/VPNJni;->startProxy(I)Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/vpn/VPNJni;->stopProxy(I)V

    .line 244
    return-void
.end method

.method public f(I)Z
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/subao/vpn/VPNJni;->isNodeDetected(II)Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 250
    invoke-static {}, Lcom/subao/vpn/VPNJni;->processEvent()V

    .line 251
    return-void
.end method

.method public g(I)Z
    .locals 1

    .prologue
    .line 541
    invoke-static {p1}, Lcom/subao/vpn/VPNJni;->doStartVPN(I)Z

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/vpn/VPNJni;->getAccelRecommendation(I)I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/subao/vpn/VPNJni;->getWebUIUrl(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/vpn/VPNJni;->getBaseUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/vpn/VPNJni;->getAccelerationStatus(I)I

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/vpn/VPNJni;->getSDKUDPIsProxy(I)Z

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/vpn/VPNJni;->getVIPValidTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()V
    .locals 0

    .prologue
    .line 548
    invoke-static {}, Lcom/subao/vpn/VPNJni;->doStopVPN()V

    .line 549
    return-void
.end method
