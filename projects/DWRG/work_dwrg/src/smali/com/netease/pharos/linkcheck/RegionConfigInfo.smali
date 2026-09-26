.class public Lcom/netease/pharos/linkcheck/RegionConfigInfo;
.super Ljava/lang/Object;
.source "RegionConfigInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegionConfigInfo"

.field private static sRegionConfigInfo:Lcom/netease/pharos/linkcheck/RegionConfigInfo;


# instance fields
.field private mInfo:Lorg/json/JSONObject;

.field private mResult:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->sRegionConfigInfo:Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mInfo:Lorg/json/JSONObject;

    .line 44
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->sRegionConfigInfo:Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    invoke-direct {v0}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;-><init>()V

    sput-object v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->sRegionConfigInfo:Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    .line 39
    :cond_0
    sget-object v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->sRegionConfigInfo:Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 902
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    return-void
.end method


# virtual methods
.method public getEnable()Z
    .locals 5

    .prologue
    .line 377
    const/4 v2, 0x0

    .line 379
    .local v2, "result":Z
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    :try_start_0
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 384
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v3, "enable"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    const-string v3, "enable"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 393
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v2

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getInterval()I
    .locals 5

    .prologue
    .line 397
    const/4 v2, 0x0

    .line 399
    .local v2, "result":I
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    :try_start_0
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 404
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v3, "interval"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    :try_start_1
    const-string v3, "interval"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 419
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v2

    .line 408
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 414
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 415
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getNapIcmp()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 424
    const/4 v2, 0x0

    .line 426
    .local v2, "result":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    :try_start_0
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 431
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v3, "nap_icmp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    :try_start_1
    const-string v3, "nap_icmp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 446
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 435
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 441
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 442
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRapIcmp()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 450
    const/4 v2, 0x0

    .line 452
    .local v2, "result":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    :try_start_0
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 457
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v3, "rap_icmp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 460
    :try_start_1
    const-string v3, "rap_icmp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 471
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 461
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 466
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 467
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRapMtr()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 527
    const/4 v2, 0x0

    .line 529
    .local v2, "result":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 532
    :try_start_0
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 534
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v3, "rap_mtr"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    :try_start_1
    const-string v3, "rap_mtr"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 549
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 538
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 544
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 545
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRapQos()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 632
    const/4 v2, 0x0

    .line 634
    .local v2, "result":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 637
    :try_start_0
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 639
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v3, "rap_qos"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 642
    :try_start_1
    const-string v3, "rap_qos"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 654
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 643
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 649
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 650
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRapTransfer()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 501
    const/4 v2, 0x0

    .line 503
    .local v2, "result":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    :try_start_0
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 508
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v3, "rap_transfer"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 511
    :try_start_1
    const-string v3, "rap_transfer"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 523
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 512
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 518
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 519
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRapUdp()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 475
    const/4 v2, 0x0

    .line 477
    .local v2, "result":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    :try_start_0
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 482
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v3, "rap_udp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    :try_start_1
    const-string v3, "rap_udp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 497
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 486
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 492
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 493
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getResolve()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 605
    const/4 v2, 0x0

    .line 607
    .local v2, "result":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 610
    :try_start_0
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 612
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v3, "resolve"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    :try_start_1
    const-string v3, "resolve"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 627
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 616
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 622
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 623
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSapTransfer()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 579
    const/4 v2, 0x0

    .line 581
    .local v2, "result":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 584
    :try_start_0
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 586
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v3, "sap_transfer"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    :try_start_1
    const-string v3, "sap_transfer"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 601
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 590
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 596
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 597
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSapUdp()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 553
    const/4 v2, 0x0

    .line 555
    .local v2, "result":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    :try_start_0
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    const-string v4, "measure"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 560
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v3, "sap_udp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    :try_start_1
    const-string v3, "sap_udp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 575
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 564
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 570
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 571
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getTestConfig()Lorg/json/JSONObject;
    .locals 31

    .prologue
    .line 747
    new-instance v25, Lorg/json/JSONObject;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONObject;-><init>()V

    .line 748
    .local v25, "result":Lorg/json/JSONObject;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 749
    .local v8, "measure":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 751
    .local v5, "defaultJson":Lorg/json/JSONObject;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 753
    .local v13, "nap_icmp":Lorg/json/JSONObject;
    :try_start_0
    const-string v28, "enable"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 754
    const-string v28, "cycle"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 755
    const-string v28, "count"

    const/16 v29, 0xa

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 758
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 759
    .local v20, "rap_icmp":Lorg/json/JSONObject;
    const-string v28, "dest"

    const-string v29, "106.2.42.128"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 760
    const-string v28, "enable"

    const/16 v29, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 761
    const-string v28, "cycle"

    const/16 v29, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 762
    const-string v28, "count"

    const/16 v29, 0x14

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 765
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 766
    .local v23, "rap_udp":Lorg/json/JSONObject;
    const-string v28, "dest"

    const-string v29, "106.2.42.128:8001"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 767
    const-string v28, "enable"

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 768
    const-string v28, "cycle"

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 769
    const-string v28, "count"

    const/16 v29, 0xa

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 770
    const-string v28, "package"

    const/16 v29, 0x2

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 771
    const-string v28, "gate"

    const/16 v29, 0x320

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 774
    new-instance v22, Lorg/json/JSONObject;

    invoke-direct/range {v22 .. v22}, Lorg/json/JSONObject;-><init>()V

    .line 775
    .local v22, "rap_transfer":Lorg/json/JSONObject;
    const-string v28, "dest"

    const-string v29, "106.2.42.128:8002"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 776
    const-string v28, "enable"

    const/16 v29, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 777
    const-string v28, "cycle"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 778
    const-string v28, "count"

    const/16 v29, 0xa

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 779
    const-string v28, "protocol"

    const-string v29, "tcp"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 780
    const-string v28, "package"

    const/16 v29, 0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 783
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    .line 784
    .local v21, "rap_mtr":Lorg/json/JSONObject;
    const-string v28, "enable"

    const/16 v29, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 785
    const-string v28, "cycle"

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 786
    const-string v28, "count"

    const/16 v29, 0xa

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 789
    new-instance v27, Lorg/json/JSONObject;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONObject;-><init>()V

    .line 790
    .local v27, "sap_udp":Lorg/json/JSONObject;
    const-string v28, "dest"

    const-string v29, "52.52.108.248:8001"

    invoke-virtual/range {v27 .. v29}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 791
    const-string v28, "enable"

    const/16 v29, 0x1

    invoke-virtual/range {v27 .. v29}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 792
    const-string v28, "cycle"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 793
    const-string v28, "count"

    const/16 v29, 0xa

    invoke-virtual/range {v27 .. v29}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 794
    const-string v28, "gate"

    const/16 v29, 0x320

    invoke-virtual/range {v27 .. v29}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 797
    new-instance v26, Lorg/json/JSONObject;

    invoke-direct/range {v26 .. v26}, Lorg/json/JSONObject;-><init>()V

    .line 798
    .local v26, "sap_transfer":Lorg/json/JSONObject;
    const-string v28, "dest"

    const-string v29, "52.52.108.248:8002"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 799
    const-string v28, "enable"

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 800
    const-string v28, "cycle"

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 801
    const-string v28, "count"

    const/16 v29, 0xa

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 802
    const-string v28, "protocol"

    const-string v29, "tcp"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 803
    const-string v28, "package"

    const/16 v29, 0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 806
    new-instance v24, Lorg/json/JSONObject;

    invoke-direct/range {v24 .. v24}, Lorg/json/JSONObject;-><init>()V

    .line 807
    .local v24, "resolve":Lorg/json/JSONObject;
    const-string v28, "dest"

    const-string v29, "impression.update.netease.com"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 808
    const-string v28, "enable"

    const/16 v29, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 809
    const-string v28, "cycle"

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 812
    const-string v28, "nap_icmp"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 813
    const-string v28, "rap_icmp"

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 814
    const-string v28, "rap_udp"

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 815
    const-string v28, "rap_transfer"

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 816
    const-string v28, "rap_mtr"

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 817
    const-string v28, "sap_udp"

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 818
    const-string v28, "sap_transfer"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 819
    const-string v28, "resolve"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 821
    const-string v28, "interval"

    const/16 v29, 0x14

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 822
    const-string v28, "enable"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 823
    const-string v28, "test"

    const-string v29, "test"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 825
    const-string v28, "measure"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 826
    const-string v28, "default"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 828
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 830
    .local v7, "itemsArray":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 831
    .local v3, "continentJson":Lorg/json/JSONObject;
    const-string v28, "asia"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 832
    const-string v28, "items"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 834
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 835
    .local v14, "nap_icmp_temp":Lorg/json/JSONObject;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 836
    .local v9, "measureJson1":Lorg/json/JSONObject;
    const-string v28, "enable"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 837
    const-string v28, "cycle"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 838
    const-string v28, "count"

    const/16 v29, 0x14

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 839
    const-string v28, "nap_icmp"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 841
    const-string v28, "interval"

    const/16 v29, 0x64

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 842
    const-string v28, "enable"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 843
    const-string v28, "test"

    const-string v29, "test1"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 845
    const-string v28, "measure"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 847
    const-string v28, "continent"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 849
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 850
    .local v4, "countrytJson":Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONArray;

    .end local v7    # "itemsArray":Lorg/json/JSONArray;
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 851
    .restart local v7    # "itemsArray":Lorg/json/JSONArray;
    const-string v28, "china"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 852
    const-string v28, "items"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 854
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 855
    .local v10, "measureJson2":Lorg/json/JSONObject;
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 856
    .local v15, "nap_icmp_temp2":Lorg/json/JSONObject;
    const-string v28, "enable"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 857
    const-string v28, "cycle"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 858
    const-string v28, "count"

    const/16 v29, 0x1e

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 859
    const-string v28, "nap_icmp"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 860
    const-string v28, "measure"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 861
    const-string v28, "country"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 863
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 864
    .local v19, "provinceJson":Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONArray;

    .end local v7    # "itemsArray":Lorg/json/JSONArray;
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 865
    .restart local v7    # "itemsArray":Lorg/json/JSONArray;
    const-string v28, "guangdong"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 866
    const-string v28, "items"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 868
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 869
    .local v11, "measureJson3":Lorg/json/JSONObject;
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 870
    .local v16, "nap_icmp_temp3":Lorg/json/JSONObject;
    const-string v28, "enable"

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 871
    const-string v28, "cycle"

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 872
    const-string v28, "count"

    const/16 v29, 0x28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 873
    const-string v28, "nap_icmp"

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 874
    const-string v28, "measure"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 875
    const-string v28, "province"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 877
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    .line 878
    .local v18, "projectJson":Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONArray;

    .end local v7    # "itemsArray":Lorg/json/JSONArray;
    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 879
    .restart local v7    # "itemsArray":Lorg/json/JSONArray;
    const-string v28, "111"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 880
    const-string v28, "items"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 882
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 883
    .local v12, "measureJson4":Lorg/json/JSONObject;
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 884
    .local v17, "nap_icmp_temp4":Lorg/json/JSONObject;
    const-string v28, "enable"

    const/16 v29, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 885
    const-string v28, "cycle"

    const/16 v29, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 886
    const-string v28, "count"

    const/16 v29, 0x32

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 887
    const-string v28, "nap_icmp"

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 888
    const-string v28, "measure"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 889
    const-string v28, "project"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    .end local v3    # "continentJson":Lorg/json/JSONObject;
    .end local v4    # "countrytJson":Lorg/json/JSONObject;
    .end local v7    # "itemsArray":Lorg/json/JSONArray;
    .end local v9    # "measureJson1":Lorg/json/JSONObject;
    .end local v10    # "measureJson2":Lorg/json/JSONObject;
    .end local v11    # "measureJson3":Lorg/json/JSONObject;
    .end local v12    # "measureJson4":Lorg/json/JSONObject;
    .end local v14    # "nap_icmp_temp":Lorg/json/JSONObject;
    .end local v15    # "nap_icmp_temp2":Lorg/json/JSONObject;
    .end local v16    # "nap_icmp_temp3":Lorg/json/JSONObject;
    .end local v17    # "nap_icmp_temp4":Lorg/json/JSONObject;
    .end local v18    # "projectJson":Lorg/json/JSONObject;
    .end local v19    # "provinceJson":Lorg/json/JSONObject;
    .end local v20    # "rap_icmp":Lorg/json/JSONObject;
    .end local v21    # "rap_mtr":Lorg/json/JSONObject;
    .end local v22    # "rap_transfer":Lorg/json/JSONObject;
    .end local v23    # "rap_udp":Lorg/json/JSONObject;
    .end local v24    # "resolve":Lorg/json/JSONObject;
    .end local v26    # "sap_transfer":Lorg/json/JSONObject;
    .end local v27    # "sap_udp":Lorg/json/JSONObject;
    :goto_0
    return-object v25

    .line 891
    :catch_0
    move-exception v6

    .line 892
    .local v6, "e":Ljava/lang/Exception;
    const-string v28, "RegionConfigInfo"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Exception="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getmResult()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 4
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string v1, "RegionConfigInfo"

    const-string v2, "init \u53c2\u6570\u4e3a\u7a7a"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mInfo:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "RegionConfigInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init JSONException = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parse()V
    .locals 29

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    .line 69
    const-string v26, "RegionConfigInfo"

    const-string v27, "dictionaryCfg \u53c2\u6570\u4e3a\u7a7a"

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "deviceInfo":Ljava/lang/String;
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "mInfo \u4fe1\u606f="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v9, 0x0

    .line 85
    .local v9, "info":Lorg/json/JSONObject;
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "info":Lorg/json/JSONObject;
    .local v10, "info":Lorg/json/JSONObject;
    move-object v9, v10

    .line 90
    .end local v10    # "info":Lorg/json/JSONObject;
    .restart local v9    # "info":Lorg/json/JSONObject;
    :goto_1
    const/4 v11, 0x0

    .line 91
    .local v11, "ipContenent":Ljava/lang/String;
    const/4 v12, 0x0

    .line 92
    .local v12, "ipCountry":Ljava/lang/String;
    const/4 v13, 0x0

    .line 95
    .local v13, "ipProvince":Ljava/lang/String;
    :try_start_1
    const-string v26, "ip_continent"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 96
    const-string v26, "ip_country"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 97
    const-string v26, "ip_province"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 103
    :goto_2
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "ipContenent="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", ipCountry="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", ipProvince="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :try_start_2
    new-instance v26, Lorg/json/JSONObject;

    invoke-direct/range {v26 .. v26}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "default"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "default"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    .line 112
    :cond_1
    const/16 v16, 0x0

    .line 114
    .local v16, "itemsArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "continent"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 115
    const-string v26, "RegionConfigInfo"

    const-string v27, "continent\u73af\u8282"

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "continent"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 117
    .local v3, "continentJson":Lorg/json/JSONObject;
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "continent\u73af\u8282---continentJson="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v26, "items"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 120
    const-string v26, "items"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 121
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "itemsArray="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_2
    const/4 v14, 0x0

    .line 126
    .local v14, "isMatch":Z
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v26

    if-lez v26, :cond_3

    .line 128
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-lt v8, v0, :cond_16

    .line 136
    .end local v8    # "i":I
    :cond_3
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "continent isMatch="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    if-eqz v14, :cond_6

    .line 139
    const-string v26, "RegionConfigInfo"

    const-string v27, "continent\u73af\u8282---\u5339\u914d"

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v26, "measure"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 142
    const-string v26, "measure"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 143
    .local v18, "measureJson":Lorg/json/JSONObject;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    .line 145
    .local v15, "it":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_18

    .line 173
    .end local v15    # "it":Ljava/util/Iterator;
    .end local v18    # "measureJson":Lorg/json/JSONObject;
    :cond_5
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "continent\u73af\u8282---\u5339\u914d---mResult="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v3    # "continentJson":Lorg/json/JSONObject;
    .end local v14    # "isMatch":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "country"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_b

    .line 178
    const-string v26, "RegionConfigInfo"

    const-string v27, "country\u73af\u8282"

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "country"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 181
    .local v4, "countryJson":Lorg/json/JSONObject;
    const-string v26, "items"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 182
    const-string v26, "items"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 183
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "itemsArray="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_7
    const/4 v14, 0x0

    .line 188
    .restart local v14    # "isMatch":Z
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v26

    if-lez v26, :cond_8

    .line 190
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-lt v8, v0, :cond_1d

    .line 198
    .end local v8    # "i":I
    :cond_8
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "country isMatch="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    if-eqz v14, :cond_b

    .line 201
    const-string v26, "RegionConfigInfo"

    const-string v27, "country\u73af\u8282--\u5339\u914d"

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v26, "measure"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 204
    const-string v26, "measure"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 205
    .restart local v18    # "measureJson":Lorg/json/JSONObject;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    .line 207
    .restart local v15    # "it":Ljava/util/Iterator;
    :cond_9
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_1f

    .line 236
    .end local v15    # "it":Ljava/util/Iterator;
    .end local v18    # "measureJson":Lorg/json/JSONObject;
    :cond_a
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "country\u73af\u8282--\u5339\u914d---mResult="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v4    # "countryJson":Lorg/json/JSONObject;
    .end local v14    # "isMatch":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "province"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_10

    .line 242
    const-string v26, "RegionConfigInfo"

    const-string v27, "province\u73af\u8282"

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "province"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 245
    .local v21, "provinceJson":Lorg/json/JSONObject;
    const-string v26, "items"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 246
    const-string v26, "items"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 247
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "itemsArray="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_c
    const/4 v14, 0x0

    .line 252
    .restart local v14    # "isMatch":Z
    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v26

    if-lez v26, :cond_d

    .line 254
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_7
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-lt v8, v0, :cond_24

    .line 262
    .end local v8    # "i":I
    :cond_d
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "province isMatch="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    if-eqz v14, :cond_10

    .line 265
    const-string v26, "RegionConfigInfo"

    const-string v27, "province\u73af\u8282--\u5339\u914d"

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v26, "measure"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 268
    const-string v26, "measure"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 269
    .restart local v18    # "measureJson":Lorg/json/JSONObject;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    .line 271
    .restart local v15    # "it":Ljava/util/Iterator;
    :cond_e
    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_26

    .line 299
    .end local v15    # "it":Ljava/util/Iterator;
    .end local v18    # "measureJson":Lorg/json/JSONObject;
    :cond_f
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "province\u73af\u8282--\u5339\u914d---mResult="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .end local v14    # "isMatch":Z
    .end local v21    # "provinceJson":Lorg/json/JSONObject;
    :cond_10
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getProject()Ljava/lang/String;

    move-result-object v19

    .line 305
    .local v19, "projectId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "project"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_15

    .line 306
    const-string v26, "RegionConfigInfo"

    const-string v27, "project\u73af\u8282"

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mInfo:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "project"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 309
    .local v20, "projectJson":Lorg/json/JSONObject;
    const-string v26, "items"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 310
    const-string v26, "items"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 311
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "itemsArray="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_11
    const/4 v14, 0x0

    .line 316
    .restart local v14    # "isMatch":Z
    if-eqz v16, :cond_12

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v26

    if-lez v26, :cond_12

    .line 318
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-lt v8, v0, :cond_2b

    .line 326
    .end local v8    # "i":I
    :cond_12
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "project isMatch="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    if-eqz v14, :cond_15

    .line 329
    const-string v26, "RegionConfigInfo"

    const-string v27, "project\u73af\u8282--\u5339\u914d"

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v26, "measure"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 332
    const-string v26, "measure"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 333
    .restart local v18    # "measureJson":Lorg/json/JSONObject;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    .line 335
    .restart local v15    # "it":Ljava/util/Iterator;
    :cond_13
    :goto_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_2d

    .line 363
    .end local v15    # "it":Ljava/util/Iterator;
    .end local v18    # "measureJson":Lorg/json/JSONObject;
    :cond_14
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "project\u73af\u8282--\u5339\u914d---mResult="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .end local v14    # "isMatch":Z
    .end local v20    # "projectJson":Lorg/json/JSONObject;
    :cond_15
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "\u914d\u7f6e\u6587\u4ef6\u89e3\u6790\u7ed3\u679c = "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 372
    .end local v16    # "itemsArray":Lorg/json/JSONArray;
    .end local v19    # "projectId":Ljava/lang/String;
    :goto_b
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/netease/pharos/qos/QosProxy;->clean()V

    goto/16 :goto_0

    .line 86
    .end local v11    # "ipContenent":Ljava/lang/String;
    .end local v12    # "ipCountry":Ljava/lang/String;
    .end local v13    # "ipProvince":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 87
    .local v6, "e":Ljava/lang/Exception;
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "parse Exception="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 99
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v11    # "ipContenent":Ljava/lang/String;
    .restart local v12    # "ipCountry":Ljava/lang/String;
    .restart local v13    # "ipProvince":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 100
    .local v7, "e1":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 130
    .end local v7    # "e1":Lorg/json/JSONException;
    .restart local v3    # "continentJson":Lorg/json/JSONObject;
    .restart local v8    # "i":I
    .restart local v14    # "isMatch":Z
    .restart local v16    # "itemsArray":Lorg/json/JSONArray;
    :cond_16
    :try_start_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 131
    const/4 v14, 0x1

    .line 128
    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 146
    .end local v8    # "i":I
    .restart local v15    # "it":Ljava/util/Iterator;
    .restart local v18    # "measureJson":Lorg/json/JSONObject;
    :cond_18
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 148
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 150
    const-string v26, "interval"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 151
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 152
    .local v24, "temp_int":I
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "continent\u73af\u8282 key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", temp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 368
    .end local v3    # "continentJson":Lorg/json/JSONObject;
    .end local v14    # "isMatch":Z
    .end local v15    # "it":Ljava/util/Iterator;
    .end local v16    # "itemsArray":Lorg/json/JSONArray;
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "measureJson":Lorg/json/JSONObject;
    .end local v24    # "temp_int":I
    :catch_2
    move-exception v6

    .line 369
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "dictionaryCfg Exception = "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 155
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "continentJson":Lorg/json/JSONObject;
    .restart local v14    # "isMatch":Z
    .restart local v15    # "it":Ljava/util/Iterator;
    .restart local v16    # "itemsArray":Lorg/json/JSONArray;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v18    # "measureJson":Lorg/json/JSONObject;
    :cond_19
    :try_start_4
    const-string v26, "enable"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 156
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    .line 157
    .local v23, "temp_boolean":Z
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "continent\u73af\u8282 key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", temp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 160
    .end local v23    # "temp_boolean":Z
    :cond_1a
    const-string v26, "test"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1b

    const-string v26, "desc"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1c

    .line 161
    :cond_1b
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 162
    .local v25, "temp_string":Ljava/lang/String;
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "continent\u73af\u8282 key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", temp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 166
    .end local v25    # "temp_string":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 167
    .local v22, "temp":Lorg/json/JSONObject;
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "continent\u73af\u8282 key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", temp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 192
    .end local v3    # "continentJson":Lorg/json/JSONObject;
    .end local v15    # "it":Ljava/util/Iterator;
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "measureJson":Lorg/json/JSONObject;
    .end local v22    # "temp":Lorg/json/JSONObject;
    .restart local v4    # "countryJson":Lorg/json/JSONObject;
    .restart local v8    # "i":I
    :cond_1d
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1e

    .line 193
    const/4 v14, 0x1

    .line 190
    :cond_1e
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 208
    .end local v8    # "i":I
    .restart local v15    # "it":Ljava/util/Iterator;
    .restart local v18    # "measureJson":Lorg/json/JSONObject;
    :cond_1f
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 210
    .restart local v17    # "key":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 212
    const-string v26, "interval"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_20

    .line 213
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 214
    .restart local v24    # "temp_int":I
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "country\u73af\u8282 key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", temp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_6

    .line 217
    .end local v24    # "temp_int":I
    :cond_20
    const-string v26, "enable"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_21

    .line 218
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    .line 219
    .restart local v23    # "temp_boolean":Z
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "country\u73af\u8282 key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", temp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_6

    .line 222
    .end local v23    # "temp_boolean":Z
    :cond_21
    const-string v26, "test"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_22

    const-string v26, "desc"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_23

    .line 223
    :cond_22
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 224
    .restart local v25    # "temp_string":Ljava/lang/String;
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "country\u73af\u8282 key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", temp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_6

    .line 228
    .end local v25    # "temp_string":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 229
    .restart local v22    # "temp":Lorg/json/JSONObject;
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "country\u73af\u8282 key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", temp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_6

    .line 256
    .end local v4    # "countryJson":Lorg/json/JSONObject;
    .end local v15    # "it":Ljava/util/Iterator;
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "measureJson":Lorg/json/JSONObject;
    .end local v22    # "temp":Lorg/json/JSONObject;
    .restart local v8    # "i":I
    .restart local v21    # "provinceJson":Lorg/json/JSONObject;
    :cond_24
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_25

    .line 257
    const/4 v14, 0x1

    .line 254
    :cond_25
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    .line 272
    .end local v8    # "i":I
    .restart local v15    # "it":Ljava/util/Iterator;
    .restart local v18    # "measureJson":Lorg/json/JSONObject;
    :cond_26
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 274
    .restart local v17    # "key":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 276
    const-string v26, "interval"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_27

    .line 277
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 278
    .restart local v24    # "temp_int":I
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "province\u73af\u8282 key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", temp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 281
    .end local v24    # "temp_int":I
    :cond_27
    const-string v26, "enable"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_28

    .line 282
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    .line 283
    .restart local v23    # "temp_boolean":Z
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "province\u73af\u8282 key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", temp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 286
    .end local v23    # "temp_boolean":Z
    :cond_28
    const-string v26, "test"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_29

    const-string v26, "desc"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2a

    .line 287
    :cond_29
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 288
    .restart local v25    # "temp_string":Ljava/lang/String;
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "province\u73af\u8282 key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", temp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 292
    .end local v25    # "temp_string":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 293
    .restart local v22    # "temp":Lorg/json/JSONObject;
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "province\u73af\u8282 key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", temp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_8

    .line 320
    .end local v15    # "it":Ljava/util/Iterator;
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "measureJson":Lorg/json/JSONObject;
    .end local v21    # "provinceJson":Lorg/json/JSONObject;
    .end local v22    # "temp":Lorg/json/JSONObject;
    .restart local v8    # "i":I
    .restart local v19    # "projectId":Ljava/lang/String;
    .restart local v20    # "projectJson":Lorg/json/JSONObject;
    :cond_2b
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2c

    .line 321
    const/4 v14, 0x1

    .line 318
    :cond_2c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9

    .line 336
    .end local v8    # "i":I
    .restart local v15    # "it":Ljava/util/Iterator;
    .restart local v18    # "measureJson":Lorg/json/JSONObject;
    :cond_2d
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 338
    .restart local v17    # "key":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 340
    const-string v26, "interval"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2e

    .line 341
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 342
    .restart local v24    # "temp_int":I
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "project\u73af\u8282 key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", temp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_a

    .line 345
    .end local v24    # "temp_int":I
    :cond_2e
    const-string v26, "enable"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2f

    .line 346
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    .line 347
    .restart local v23    # "temp_boolean":Z
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "project\u73af\u8282 key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", temp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_a

    .line 350
    .end local v23    # "temp_boolean":Z
    :cond_2f
    const-string v26, "test"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_30

    const-string v26, "desc"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_31

    .line 351
    :cond_30
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 352
    .restart local v25    # "temp_string":Ljava/lang/String;
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "project\u73af\u8282 key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", temp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_a

    .line 356
    .end local v25    # "temp_string":Ljava/lang/String;
    :cond_31
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 357
    .restart local v22    # "temp":Lorg/json/JSONObject;
    const-string v26, "RegionConfigInfo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "project\u73af\u8282 key="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", temp="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    move-object/from16 v26, v0

    const-string v27, "measure"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_a
.end method

.method public setTestResult()V
    .locals 14

    .prologue
    .line 658
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 659
    .local v8, "result":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 661
    .local v1, "measure":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 664
    .local v2, "nap_icmp":Lorg/json/JSONObject;
    :try_start_0
    const-string v11, "enable"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 665
    const-string v11, "cycle"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 666
    const-string v11, "count"

    const/16 v12, 0xa

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 669
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 670
    .local v3, "rap_icmp":Lorg/json/JSONObject;
    const-string v11, "dest"

    const-string v12, "106.2.42.128"

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    const-string v11, "enable"

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 672
    const-string v11, "cycle"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 673
    const-string v11, "count"

    const/16 v12, 0x14

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 676
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 677
    .local v6, "rap_udp":Lorg/json/JSONObject;
    const-string v11, "dest"

    const-string v12, "106.2.42.128:8001"

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 678
    const-string v11, "enable"

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 679
    const-string v11, "cycle"

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 680
    const-string v11, "count"

    const/16 v12, 0xa

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 681
    const-string v11, "package"

    const/4 v12, 0x2

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 682
    const-string v11, "gate"

    const/16 v12, 0x320

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 685
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 686
    .local v5, "rap_transfer":Lorg/json/JSONObject;
    const-string v11, "dest"

    const-string v12, "106.2.42.128:8001"

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 687
    const-string v11, "enable"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 688
    const-string v11, "cycle"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 689
    const-string v11, "count"

    const/16 v12, 0xa

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 690
    const-string v11, "protocol"

    const-string v12, "kcp"

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 691
    const-string v11, "package"

    const/4 v12, 0x2

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 694
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 695
    .local v4, "rap_mtr":Lorg/json/JSONObject;
    const-string v11, "enable"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 696
    const-string v11, "cycle"

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 697
    const-string v11, "count"

    const/16 v12, 0xa

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 700
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 701
    .local v10, "sap_udp":Lorg/json/JSONObject;
    const-string v11, "dest"

    const-string v12, "106.2.42.128:8001"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 702
    const-string v11, "enable"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 703
    const-string v11, "cycle"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 704
    const-string v11, "count"

    const/16 v12, 0xa

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 705
    const-string v11, "gate"

    const/16 v12, 0x320

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 708
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 709
    .local v9, "sap_transfer":Lorg/json/JSONObject;
    const-string v11, "dest"

    const-string v12, "106.2.42.128:8001"

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 710
    const-string v11, "enable"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 711
    const-string v11, "cycle"

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 712
    const-string v11, "count"

    const/16 v12, 0xa

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 713
    const-string v11, "protocol"

    const-string v12, "tcp"

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 714
    const-string v11, "package"

    const/4 v12, 0x2

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 717
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 718
    .local v7, "resolve":Lorg/json/JSONObject;
    const-string v11, "dest"

    const-string v12, "impression.update.netease.com"

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 719
    const-string v11, "enable"

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 720
    const-string v11, "cycle"

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 723
    const-string v11, "nap_icmp"

    invoke-virtual {v1, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    const-string v11, "rap_icmp"

    invoke-virtual {v1, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 725
    const-string v11, "rap_udp"

    invoke-virtual {v1, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    const-string v11, "rap_transfer"

    invoke-virtual {v1, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    const-string v11, "rap_mtr"

    invoke-virtual {v1, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    const-string v11, "sap_udp"

    invoke-virtual {v1, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
    const-string v11, "sap_transfer"

    invoke-virtual {v1, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    const-string v11, "resolve"

    invoke-virtual {v1, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 732
    const-string v11, "interval"

    const/16 v12, 0x14

    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 733
    const-string v11, "enable"

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 734
    const-string v11, "test"

    const-string v12, "test"

    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 736
    const-string v11, "measure"

    invoke-virtual {v8, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    .end local v3    # "rap_icmp":Lorg/json/JSONObject;
    .end local v4    # "rap_mtr":Lorg/json/JSONObject;
    .end local v5    # "rap_transfer":Lorg/json/JSONObject;
    .end local v6    # "rap_udp":Lorg/json/JSONObject;
    .end local v7    # "resolve":Lorg/json/JSONObject;
    .end local v9    # "sap_transfer":Lorg/json/JSONObject;
    .end local v10    # "sap_udp":Lorg/json/JSONObject;
    :goto_0
    iput-object v8, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    .line 743
    return-void

    .line 737
    :catch_0
    move-exception v0

    .line 739
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "RegionConfigInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Exception="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setmResult(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "mResult"    # Lorg/json/JSONObject;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->mResult:Lorg/json/JSONObject;

    .line 52
    return-void
.end method
