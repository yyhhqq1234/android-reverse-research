.class public Lcom/subao/vpn/VPNJni;
.super Ljava/lang/Object;
.source "VPNJni.java"


# static fields
.field private static a:Lcom/subao/vpn/JniCallback;

.field private static b:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static native addAccelAddress(IILjava/lang/String;I)V
.end method

.method public static closeQosAccel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 679
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/subao/vpn/JniCallback;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method public static native closeQosAccelResult(II)V
.end method

.method public static createOrders(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 842
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/subao/vpn/JniCallback;->a(ILjava/lang/String;ILjava/lang/String;)V

    .line 843
    return-void
.end method

.method public static native defineConst(I[B[B)V
.end method

.method public static doStartVPN(I)Z
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/subao/vpn/VPNJni;->startVPN(II)Z

    move-result v0

    return v0
.end method

.method public static doStopVPN()V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/vpn/VPNJni;->stopVPN(I)V

    .line 447
    return-void
.end method

.method public static native getAccelRecommendation(I)I
.end method

.method public static native getAccelRecommendationData(II)Ljava/lang/String;
.end method

.method public static native getAccelerationStatus(I)I
.end method

.method public static native getBaseUrl(I)Ljava/lang/String;
.end method

.method public static getCallback()Lcom/subao/vpn/JniCallback;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    return-object v0
.end method

.method public static getISP(I)V
    .locals 1

    .prologue
    .line 714
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p0}, Lcom/subao/vpn/JniCallback;->b(I)V

    .line 715
    return-void
.end method

.method public static native getProxyIsStart(I)Z
.end method

.method public static native getSDKUDPIsProxy(I)Z
.end method

.method public static native getScriptBit(I)I
.end method

.method public static native getVIPValidTime(I)Ljava/lang/String;
.end method

.method public static native getWebUIUrl(II)Ljava/lang/String;
.end method

.method public static httpRequest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 863
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/subao/vpn/JniCallback;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method public static native httpResponse(IILjava/lang/String;)V
.end method

.method public static native init(III[B[B[B[B[B)Z
.end method

.method public static native injectPCode(I[B)V
.end method

.method public static native isNodeDetected(II)Z
.end method

.method public static linkAuth(IILjava/lang/String;)V
    .locals 2

    .prologue
    .line 579
    invoke-static {p1}, Lcom/subao/common/j/e;->b(I)I

    move-result v0

    invoke-static {v0}, Lcom/subao/common/j/e;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 580
    sget-object v1, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v1, p0, v0, p2}, Lcom/subao/vpn/JniCallback;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public static native linkAuthResult(IZI[B[BI)V
.end method

.method public static loadLibrary(Lcom/subao/vpn/JniCallback;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    sput-object p0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const-class v1, Lcom/subao/vpn/VPNJni;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-boolean v0, Lcom/subao/vpn/VPNJni;->b:Z

    if-eqz v0, :cond_1

    .line 72
    monitor-exit v1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/subao/vpn/VPNJni;->b:Z

    .line 75
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static modifyQosAccel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 693
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/subao/vpn/JniCallback;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 694
    return-void
.end method

.method public static native modifyQosAccelResult(III)V
.end method

.method public static native networkCheck(I)I
.end method

.method public static onAccelInfoUpload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 738
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    const-string v0, "SubaoProxy"

    const-string v1, "onAccelInfoUpload, userId is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :goto_0
    return-void

    .line 742
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    const-string v0, "SubaoProxy"

    const-string v1, "onAccelInfoUpload, content is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 746
    :cond_1
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/subao/vpn/JniCallback;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static native onAccelRecommendationResult(IIZ)V
.end method

.method public static onCacheData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 759
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p1, p2}, Lcom/subao/vpn/JniCallback;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    return-void
.end method

.method public static onCouponExchange(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 829
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/subao/vpn/JniCallback;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method public static onLinkMessage(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 641
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/subao/vpn/JniCallback;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 642
    return-void
.end method

.method public static onLoadData(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 771
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p0, p1}, Lcom/subao/vpn/JniCallback;->a(ILjava/lang/String;)V

    .line 772
    return-void
.end method

.method public static native onLoadDataResult(I[B)V
.end method

.method public static onLuaError(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 617
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p1}, Lcom/subao/vpn/JniCallback;->b(Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method public static onProxyActive(IZ)V
    .locals 1

    .prologue
    .line 543
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p1}, Lcom/subao/vpn/JniCallback;->a(Z)V

    .line 544
    return-void
.end method

.method public static onQPPVicePathFlow(IILjava/lang/String;III)V
    .locals 6

    .prologue
    .line 808
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/subao/vpn/JniCallback;->a(ILjava/lang/String;III)V

    .line 809
    return-void
.end method

.method public static onQosMessage(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 704
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p1}, Lcom/subao/vpn/JniCallback;->c(Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public static onReportEvent(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 725
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p1}, Lcom/subao/vpn/JniCallback;->a(Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method public static native onUDPDelay(II)V
.end method

.method public static openQosAccel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 10

    .prologue
    .line 665
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/subao/vpn/JniCallback;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    .line 666
    return-void
.end method

.method public static native openQosAccelResult(I[B[BI)V
.end method

.method public static native processEvent()V
.end method

.method public static protectFD(I)I
    .locals 1

    .prologue
    .line 794
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p0}, Lcom/subao/vpn/JniCallback;->c(I)I

    move-result v0

    return v0
.end method

.method public static native proxyLoop(IZ)V
.end method

.method public static qosPrepare(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 902
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/subao/vpn/JniCallback;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 903
    return-void
.end method

.method public static native qosPrepareResult(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native refreshUserState(II)V
.end method

.method public static requestBeaconCounter(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 783
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p0, p1}, Lcom/subao/vpn/JniCallback;->b(ILjava/lang/String;)V

    .line 784
    return-void
.end method

.method public static requestMobileFD(I)V
    .locals 1

    .prologue
    .line 628
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p0}, Lcom/subao/vpn/JniCallback;->a(I)V

    .line 629
    return-void
.end method

.method public static native requestMobileFDResult(IIIZ)V
.end method

.method public static setCallback(Lcom/subao/vpn/JniCallback;)Lcom/subao/vpn/JniCallback;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    .line 87
    sput-object p0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    .line 88
    return-object v0
.end method

.method public static native setInt(I[BI)V
.end method

.method public static native setRecommendationGameIP(I[BI)V
.end method

.method public static native setString(I[B[B)V
.end method

.method public static native setUDPEchoPort(II)V
.end method

.method public static native setUserToken(II[B[B[B)V
.end method

.method public static native startNodeDetect(II)V
.end method

.method public static native startProxy(I)Z
.end method

.method private static native startVPN(II)Z
.end method

.method public static native stopProxy(I)V
.end method

.method private static native stopVPN(I)V
.end method

.method public static updateState(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 816
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p0, p1}, Lcom/subao/vpn/JniCallback;->a(Ljava/lang/String;I)V

    .line 817
    return-void
.end method

.method public static userAuth(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 567
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/subao/vpn/JniCallback;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public static native userAuthResult(IZI[BI[BI[B[BIIII[B)V
.end method

.method public static userConfig(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 591
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p0, p1, p2}, Lcom/subao/vpn/JniCallback;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method public static native userConfigResult(IZI[B)V
.end method

.method public static userState(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 606
    sget-object v0, Lcom/subao/vpn/VPNJni;->a:Lcom/subao/vpn/JniCallback;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/subao/vpn/JniCallback;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method public static native userStateResult(IZII[B[B)V
.end method
