.class public Lcom/tencent/hawk/bridge/VmpHelper;
.super Ljava/lang/Object;
.source "VmpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;,
        Lcom/tencent/hawk/bridge/VmpHelper$Reflection;,
        Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;
    }
.end annotation


# static fields
.field public static final APM_KEY:I = 0x9

.field public static final DynamicSetting:I = 0x6

.field public static final FpsDirty:I = 0x1

.field public static final GPU_FAMILY:I = 0xa

.field public static final HighFrameMode:I = 0x4

.field public static final MapID:I = 0x0

.field public static final MatchState:I = 0x5

.field public static final MobileType:I = 0x8

.field public static final PicQuality:I = 0x2

.field public static final Resolution:I = 0x3

.field private static final TGPACALLBACK:Ljava/lang/String; = "com.tencent.vmp.GCallback"

.field private static final TGPAKeyRequestResource:I = 0x4

.field private static final TGPAMAINENTRY:Ljava/lang/String; = "com.tencent.kgvmp.PerformanceAdjuster"

.field public static final UserCount:I = 0x7

.field private static final VMP_DEVICE_IDEN:I = 0xc

.field private static final VMP_SDK_TYPE:I = 0xd

.field private static final VMP_STATUS_CALLBACK:I = 0xb

.field private static final VMP_STATUS_GUARANTEE_STEP:I = 0x7

.field private static conditionObject:Ljava/lang/Object; = null

.field private static isDeviceIdenSet:Z = false

.field private static isSDKTypeSet:Z = false

.field private static isTGPAEnabled:Z = false

.field private static sCheckDeviceIsRealMethod:Ljava/lang/reflect/Method; = null

.field private static sGetIdenMethod:Ljava/lang/reflect/Method; = null

.field private static sGetNativeSDKNameMethod:Ljava/lang/reflect/Method; = null

.field private static sTGPAClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sTGPAGpuInfo:Ljava/lang/String; = null

.field private static sTGPAInstance:Ljava/lang/Object; = null

.field private static sUpdateGameInfoIS:Ljava/lang/reflect/Method; = null

.field private static sUpdateGameInfoSS:Ljava/lang/reflect/Method; = null

.field private static final tgpaFPSKey:Ljava/lang/String; = "FPS"

.field private static volatile threadNeedSleep:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAInstance:Ljava/lang/Object;

    .line 21
    sput-object v0, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAClass:Ljava/lang/Class;

    .line 22
    sput-object v0, Lcom/tencent/hawk/bridge/VmpHelper;->sGetIdenMethod:Ljava/lang/reflect/Method;

    .line 23
    sput-object v0, Lcom/tencent/hawk/bridge/VmpHelper;->sCheckDeviceIsRealMethod:Ljava/lang/reflect/Method;

    .line 24
    sput-object v0, Lcom/tencent/hawk/bridge/VmpHelper;->sGetNativeSDKNameMethod:Ljava/lang/reflect/Method;

    .line 25
    sput-object v0, Lcom/tencent/hawk/bridge/VmpHelper;->sUpdateGameInfoSS:Ljava/lang/reflect/Method;

    .line 26
    sput-object v0, Lcom/tencent/hawk/bridge/VmpHelper;->sUpdateGameInfoIS:Ljava/lang/reflect/Method;

    .line 33
    sput-boolean v1, Lcom/tencent/hawk/bridge/VmpHelper;->isDeviceIdenSet:Z

    .line 34
    sput-boolean v1, Lcom/tencent/hawk/bridge/VmpHelper;->isSDKTypeSet:Z

    .line 36
    sput-boolean v1, Lcom/tencent/hawk/bridge/VmpHelper;->isTGPAEnabled:Z

    .line 43
    const-string v0, "NA"

    sput-object v0, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAGpuInfo:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/hawk/bridge/VmpHelper;->conditionObject:Ljava/lang/Object;

    .line 142
    sput v1, Lcom/tencent/hawk/bridge/VmpHelper;->threadNeedSleep:I

    .line 487
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/tencent/hawk/bridge/VmpHelper;->isTGPAEnabled:Z

    return v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 142
    sget v0, Lcom/tencent/hawk/bridge/VmpHelper;->threadNeedSleep:I

    return v0
.end method

.method static synthetic access$2()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/tencent/hawk/bridge/VmpHelper;->conditionObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3(IIIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/hawk/bridge/VmpHelper;->postVmpStatusLocked(IIIILjava/lang/String;)V

    return-void
.end method

.method public static checkDeviceIsReal()Ljava/lang/String;
    .locals 5

    .prologue
    .line 631
    const-string v2, "CheckDeviceIsReal"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/VmpHelper;->checkTGPAEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 632
    const-string/jumbo v2, "{\"result\":-1}"

    .line 657
    :goto_0
    return-object v2

    .line 634
    :cond_0
    sget-object v2, Lcom/tencent/hawk/bridge/VmpHelper;->sCheckDeviceIsRealMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 636
    :try_start_0
    sget-object v2, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAClass:Ljava/lang/Class;

    const-string v3, "checkDeviceIsReal"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/tencent/hawk/bridge/VmpHelper;->sCheckDeviceIsRealMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :cond_1
    sget-object v2, Lcom/tencent/hawk/bridge/VmpHelper;->sCheckDeviceIsRealMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    .line 645
    const-string/jumbo v2, "{\"result\":-3}"

    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 639
    const-string v2, "cannot reflect CheckDeviceIsRealMethod"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 640
    const-string/jumbo v2, "{\"result\":-3}"

    goto :goto_0

    .line 649
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/tencent/hawk/bridge/VmpHelper;->sCheckDeviceIsRealMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 650
    .local v1, "ret":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 651
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    goto :goto_0

    .line 653
    :cond_3
    const-string/jumbo v2, "{\"result\":-4}"

    goto :goto_0

    .line 654
    :catch_1
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 656
    const-string v2, "cannot invoke CheckDeviceIsReal"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 657
    const-string/jumbo v2, "{\"result\":-5}"

    goto :goto_0

    .line 654
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private static checkTGPAEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 268
    sget-object v0, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAInstance:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tencent/hawk/bridge/VmpHelper;->isTGPAEnabled:Z

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TGPA is not inited: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enableTGPALog()V
    .locals 7

    .prologue
    .line 773
    const-string v2, "enableTGPALog"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/VmpHelper;->checkTGPAEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 795
    .local v1, "enbaleTGPAMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 776
    .end local v1    # "enbaleTGPAMethod":Ljava/lang/reflect/Method;
    :cond_1
    const/4 v1, 0x0

    .line 778
    .restart local v1    # "enbaleTGPAMethod":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v2, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAClass:Ljava/lang/Class;

    const-string v3, "setLogAble"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 784
    if-eqz v1, :cond_0

    .line 789
    :try_start_1
    sget-object v2, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAInstance:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 792
    const-string v2, "Cannot invoke setLogAble"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 779
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "Cannot reflect enableTGPALog"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 790
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method protected static getCurrentThreadTid()I
    .locals 8

    .prologue
    const/4 v4, -0x1

    .line 799
    const-string v5, "getCurrentThreadTid"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/VmpHelper;->checkTGPAEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 832
    .local v1, "getTidMethod":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 803
    .end local v1    # "getTidMethod":Ljava/lang/reflect/Method;
    :cond_0
    const/4 v1, 0x0

    .line 805
    .restart local v1    # "getTidMethod":Ljava/lang/reflect/Method;
    :try_start_0
    sget-object v5, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAClass:Ljava/lang/Class;

    const-string v6, "getCurrentThreadTid"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 811
    if-nez v1, :cond_1

    move v3, v4

    .line 812
    goto :goto_0

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "Cannot reflect getCurrentThreadTid"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    move v3, v4

    .line 808
    goto :goto_0

    .line 816
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAInstance:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    .line 817
    .local v2, "ret":Ljava/lang/Object;
    const/4 v3, -0x1

    .line 818
    .local v3, "tid":I
    if-eqz v2, :cond_2

    .line 820
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v3

    goto :goto_0

    .line 821
    :catch_1
    move-exception v0

    .line 822
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Tid Parse Error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 827
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ret":Ljava/lang/Object;
    .end local v3    # "tid":I
    :catch_2
    move-exception v0

    .line 828
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v5, "Cannot invoke getCurrentThreadTid"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    move v3, v4

    .line 829
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ret":Ljava/lang/Object;
    .restart local v3    # "tid":I
    :cond_2
    move v3, v4

    .line 832
    goto :goto_0

    .line 827
    .end local v2    # "ret":Ljava/lang/Object;
    .end local v3    # "tid":I
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static getTGPADeviceIden()Ljava/lang/String;
    .locals 5

    .prologue
    .line 593
    const-string v2, "GetTGPADeviceIden"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/VmpHelper;->checkTGPAEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 594
    const-string v2, "NA"

    .line 619
    :goto_0
    return-object v2

    .line 596
    :cond_0
    sget-object v2, Lcom/tencent/hawk/bridge/VmpHelper;->sGetIdenMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 598
    :try_start_0
    sget-object v2, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAClass:Ljava/lang/Class;

    const-string v3, "getVmpNumber"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/tencent/hawk/bridge/VmpHelper;->sGetIdenMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :cond_1
    sget-object v2, Lcom/tencent/hawk/bridge/VmpHelper;->sGetIdenMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    .line 607
    const-string v2, "NA"

    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 601
    const-string v2, "cannot reflect getVmpNumber"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 602
    const-string v2, "NA"

    goto :goto_0

    .line 611
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/tencent/hawk/bridge/VmpHelper;->sGetIdenMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAInstance:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 612
    .local v1, "ret":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 613
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    goto :goto_0

    .line 615
    :cond_3
    const-string v2, "NA"

    goto :goto_0

    .line 616
    :catch_1
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 618
    const-string v2, "cannot invoke GetIdenMethod"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 619
    const-string v2, "NA"

    goto :goto_0

    .line 616
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static getVmpSDKName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 669
    const-string v3, "GetVmpSDKName"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/VmpHelper;->checkTGPAEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 670
    const-string v2, "NA"

    .line 698
    :goto_0
    return-object v2

    .line 672
    :cond_0
    sget-object v3, Lcom/tencent/hawk/bridge/VmpHelper;->sGetNativeSDKNameMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 674
    :try_start_0
    sget-object v3, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAClass:Ljava/lang/Class;

    const-string v4, "getSdkType"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/tencent/hawk/bridge/VmpHelper;->sGetNativeSDKNameMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :cond_1
    sget-object v3, Lcom/tencent/hawk/bridge/VmpHelper;->sGetNativeSDKNameMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2

    .line 683
    const-string v2, "NA"

    goto :goto_0

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 677
    const-string v3, "Cannot reflect getSdkType"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 678
    const-string v2, "NA"

    goto :goto_0

    .line 687
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2
    :try_start_1
    sget-object v3, Lcom/tencent/hawk/bridge/VmpHelper;->sGetNativeSDKNameMethod:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAInstance:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 689
    .local v1, "ret":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 690
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, "sdkType":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VMP SDK Type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 695
    .end local v2    # "sdkType":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 697
    const-string v3, "cannot invoke getSdkType"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 698
    const-string v2, "NA"

    goto :goto_0

    .line 694
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v2, "NA"

    goto :goto_0

    .line 695
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static initTGPA(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 282
    if-nez p0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    sget-object v7, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAInstance:Ljava/lang/Object;

    if-eqz v7, :cond_2

    .line 287
    const-string v7, "pfaInstance is already initialized"

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_2
    :try_start_0
    const-string v7, "com.tencent.kgvmp.PerformanceAdjuster"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_1
    sget-object v7, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAClass:Ljava/lang/Class;

    if-nez v7, :cond_3

    .line 298
    const-string v7, "cannot find: com.tencent.kgvmp.PerformanceAdjuster"

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :catch_0
    move-exception v2

    .line 294
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Cannot reflect PerformanceAdjuster: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 302
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_3
    const-string v7, "com.tencent.kgvmp.PerformanceAdjuster"

    new-array v8, v9, [Ljava/lang/Object;

    new-array v9, v9, [Ljava/lang/Class;

    invoke-static {v7, v8, v9}, Lcom/tencent/hawk/bridge/VmpHelper$Reflection;->access$0(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    sput-object v7, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAInstance:Ljava/lang/Object;

    .line 304
    sget-object v7, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAInstance:Ljava/lang/Object;

    if-nez v7, :cond_4

    .line 305
    const-string v7, "TGPAInstance is NULL"

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_4
    const/4 v3, 0x0

    .line 312
    .local v3, "initTGPAMethod":Ljava/lang/reflect/Method;
    :try_start_1
    sget-object v7, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAClass:Ljava/lang/Class;

    const-string v8, "init"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 318
    if-eqz v3, :cond_0

    .line 323
    :try_start_2
    sget-object v7, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAInstance:Ljava/lang/Object;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    const-string v10, "apm"

    aput-object v10, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_8

    .line 330
    sput-boolean v12, Lcom/tencent/hawk/bridge/VmpHelper;->isTGPAEnabled:Z

    .line 332
    const-string v7, "GPU"

    sget-object v8, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAGpuInfo:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/tencent/hawk/bridge/VmpHelper;->updateGameInfoToTGPASS(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/4 v1, 0x0

    .line 335
    .local v1, "checkSDKCanWork":Ljava/lang/reflect/Method;
    :try_start_3
    sget-object v7, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAClass:Ljava/lang/Class;

    const-string v8, "checkSdkCanWork"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v1

    .line 341
    if-eqz v1, :cond_0

    .line 346
    :try_start_4
    sget-object v7, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAInstance:Ljava/lang/Object;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 348
    .local v4, "ret":Ljava/lang/Object;
    if-eqz v4, :cond_6

    .line 349
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 350
    .local v0, "canWork":Z
    if-eqz v0, :cond_5

    .line 351
    new-instance v6, Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;

    sget-object v7, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAClass:Ljava/lang/Class;

    sget-object v8, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAInstance:Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 352
    .local v6, "vr":Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 353
    .local v5, "temp":Ljava/lang/Thread;
    const-string v7, "VmpFpsThread"

    invoke-virtual {v5, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 355
    const-string v7, "Start TGPA Thread"

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_0

    .line 363
    .end local v0    # "canWork":Z
    .end local v4    # "ret":Ljava/lang/Object;
    .end local v5    # "temp":Ljava/lang/Thread;
    .end local v6    # "vr":Lcom/tencent/hawk/bridge/VmpHelper$TGPAFpsReporter;
    :catch_1
    move-exception v2

    .line 364
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const-string v7, "cannot invoke checkSdkCanWork"

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    .end local v1    # "checkSDKCanWork":Ljava/lang/reflect/Method;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 314
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v7, "Cannot reflect TGPAinit"

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 324
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    const-string v7, "Cannot invoke TGPA init"

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "checkSDKCanWork":Ljava/lang/reflect/Method;
    :catch_4
    move-exception v2

    .line 337
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v7, "Cannot reflect checkSdkCanWork"

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 357
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "canWork":Z
    .restart local v4    # "ret":Ljava/lang/Object;
    :cond_5
    :try_start_5
    const-string v7, "TGPA not work"

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    .end local v0    # "canWork":Z
    .end local v4    # "ret":Ljava/lang/Object;
    :catch_5
    move-exception v2

    goto :goto_2

    .line 360
    .restart local v4    # "ret":Ljava/lang/Object;
    :cond_6
    const-string v7, "No TGPA Thread"

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_0

    .line 363
    .end local v4    # "ret":Ljava/lang/Object;
    :catch_6
    move-exception v2

    goto :goto_2

    .line 324
    .end local v1    # "checkSDKCanWork":Ljava/lang/reflect/Method;
    :catch_7
    move-exception v2

    goto :goto_3

    :catch_8
    move-exception v2

    goto :goto_3
.end method

.method public static notifyThreadAwake()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 145
    sget-boolean v0, Lcom/tencent/hawk/bridge/VmpHelper;->isTGPAEnabled:Z

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v0, "begin to notify awake"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 152
    sget v0, Lcom/tencent/hawk/bridge/VmpHelper;->threadNeedSleep:I

    if-ne v0, v2, :cond_2

    .line 153
    sget-object v1, Lcom/tencent/hawk/bridge/VmpHelper;->conditionObject:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    sget v0, Lcom/tencent/hawk/bridge/VmpHelper;->threadNeedSleep:I

    if-ne v0, v2, :cond_1

    .line 155
    const/4 v0, 0x0

    sput v0, Lcom/tencent/hawk/bridge/VmpHelper;->threadNeedSleep:I

    .line 156
    sget-object v0, Lcom/tencent/hawk/bridge/VmpHelper;->conditionObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 153
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 160
    :cond_2
    const-string v0, "current thread is awake"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static notifyThreadSleep()V
    .locals 2

    .prologue
    .line 166
    sget-boolean v0, Lcom/tencent/hawk/bridge/VmpHelper;->isTGPAEnabled:Z

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    const-string v0, "begin to notify sleep"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 169
    sget-object v1, Lcom/tencent/hawk/bridge/VmpHelper;->conditionObject:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    const/4 v0, 0x1

    :try_start_0
    sput v0, Lcom/tencent/hawk/bridge/VmpHelper;->threadNeedSleep:I

    .line 169
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static postVmpStatusLocked(IIIILjava/lang/String;)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "val1"    # I
    .param p2, "val2"    # I
    .param p3, "val3"    # I
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->isVmpStatusPostEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/hawk/bridge/HawkNative;->postVmpStatus(IIIILjava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method

.method public static registerTGPACallback(Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;Lcom/tencent/hawk/bridge/VmpGCallbackWrapper;)Z
    .locals 13
    .param p0, "engine"    # Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;
    .param p1, "vmpcallback"    # Lcom/tencent/hawk/bridge/VmpGCallbackWrapper;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 371
    const-string v9, "registerTGPACallback"

    invoke-static {v9}, Lcom/tencent/hawk/bridge/VmpHelper;->checkTGPAEnabled(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v7

    .line 374
    :cond_1
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->registerFBCallBack()I

    move-result v9

    if-eq v9, v8, :cond_2

    .line 375
    const-string v8, "fb register callback is error, return"

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_2
    const-class v9, Lcom/tencent/hawk/bridge/VmpHelper;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 380
    .local v4, "loader":Ljava/lang/ClassLoader;
    if-eqz v4, :cond_0

    .line 382
    const/4 v3, 0x0

    .line 383
    .local v3, "interfazz":Ljava/lang/Class;
    const/4 v0, 0x0

    .line 385
    .local v0, "clazzInstance":Ljava/lang/Object;
    :try_start_0
    const-string v9, "com.tencent.vmp.GCallback"

    invoke-virtual {v4, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 386
    if-eqz v3, :cond_0

    .line 389
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    new-instance v10, Lcom/tencent/hawk/bridge/VmpHelper$1;

    invoke-direct {v10, p0, p1}, Lcom/tencent/hawk/bridge/VmpHelper$1;-><init>(Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;Lcom/tencent/hawk/bridge/VmpGCallbackWrapper;)V

    invoke-static {v4, v9, v10}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 439
    .end local v0    # "clazzInstance":Ljava/lang/Object;
    :goto_1
    :try_start_1
    sget-object v9, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAClass:Ljava/lang/Class;

    const-string v10, "registerCallback"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 440
    .local v6, "registerCallBackMethod":Ljava/lang/reflect/Method;
    if-nez v6, :cond_3

    .line 441
    const-string v8, "cannot find registerCallBack method"

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 470
    .end local v6    # "registerCallBackMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 471
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "registerCallBack2 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 434
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "clazzInstance":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 435
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 436
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "RegisterTGPACallBack "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 445
    .end local v0    # "clazzInstance":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v6    # "registerCallBackMethod":Ljava/lang/reflect/Method;
    :cond_3
    :try_start_2
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 446
    .local v5, "modelName":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 447
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 452
    :goto_3
    const-string/jumbo v9, "tencent"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "NA"

    const-string v10, "NA"

    invoke-static {v9, v10}, Lcom/tencent/hawk/bridge/HawkNative;->checkEmulator(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-gt v9, v8, :cond_7

    move v2, v7

    .line 453
    .local v2, "emulator":Z
    :goto_4
    if-eqz v2, :cond_4

    .line 454
    const/16 v9, 0x8

    const-string/jumbo v10, "true"

    invoke-static {v9, v10}, Lcom/tencent/hawk/bridge/VmpHelper;->tgpaUpdateGameInfo(ILjava/lang/String;)V

    .line 456
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "TGPA Emulator :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 458
    sget-object v9, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAInstance:Ljava/lang/Object;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-static {}, Lcom/tencent/hawk/bridge/VmpHelper;->setVmpStatus()V

    .line 461
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->getQuality()I

    move-result v9

    if-eqz v9, :cond_5

    .line 462
    const/16 v9, 0x9

    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->getQuality()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/hawk/bridge/VmpHelper;->tgpaUpdateGameInfo(ILjava/lang/String;)V

    :cond_5
    move v7, v8

    .line 468
    goto/16 :goto_0

    .line 449
    .end local v2    # "emulator":Z
    :cond_6
    const-string v5, "NA"
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :cond_7
    move v2, v8

    .line 452
    goto :goto_4

    .line 470
    .end local v5    # "modelName":Ljava/lang/String;
    .end local v6    # "registerCallBackMethod":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v1

    goto/16 :goto_2

    :catch_3
    move-exception v1

    goto/16 :goto_2

    :catch_4
    move-exception v1

    goto/16 :goto_2
.end method

.method public static requestResourceGuarantee(I)V
    .locals 3
    .param p0, "conditionId"    # I

    .prologue
    const/4 v2, 0x0

    .line 574
    const-string v0, "RequestResourceGuarantee"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/VmpHelper;->checkTGPAEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-static {}, Lcom/tencent/hawk/bridge/VmpHelper;->setVmpStatus()V

    .line 578
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, p0, v2, v2, v1}, Lcom/tencent/hawk/bridge/VmpHelper;->postVmpStatusLocked(IIIILjava/lang/String;)V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "try to requestResourceGuarantee "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 581
    const/4 v0, 0x4

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/hawk/bridge/VmpHelper;->updateGameInfoToTGPAIS(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static setVmpStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 555
    sget-boolean v0, Lcom/tencent/hawk/bridge/VmpHelper;->isTGPAEnabled:Z

    if-nez v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    sget-boolean v0, Lcom/tencent/hawk/bridge/VmpHelper;->isDeviceIdenSet:Z

    if-nez v0, :cond_2

    .line 559
    const/16 v0, 0xc

    invoke-static {}, Lcom/tencent/hawk/bridge/VmpHelper;->getTGPADeviceIden()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v2, v2, v1}, Lcom/tencent/hawk/bridge/VmpHelper;->postVmpStatusLocked(IIIILjava/lang/String;)V

    .line 560
    sput-boolean v3, Lcom/tencent/hawk/bridge/VmpHelper;->isDeviceIdenSet:Z

    .line 563
    :cond_2
    sget-boolean v0, Lcom/tencent/hawk/bridge/VmpHelper;->isSDKTypeSet:Z

    if-nez v0, :cond_0

    .line 564
    const/16 v0, 0xd

    invoke-static {}, Lcom/tencent/hawk/bridge/VmpHelper;->getVmpSDKName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v2, v2, v1}, Lcom/tencent/hawk/bridge/VmpHelper;->postVmpStatusLocked(IIIILjava/lang/String;)V

    .line 565
    sput-boolean v3, Lcom/tencent/hawk/bridge/VmpHelper;->isSDKTypeSet:Z

    goto :goto_0
.end method

.method public static tgpaUpdateGameInfo(ILjava/lang/String;)V
    .locals 3
    .param p0, "ikey"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 491
    const/16 v1, 0xa

    if-ne p0, v1, :cond_0

    .line 492
    sput-object p1, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAGpuInfo:Ljava/lang/String;

    .line 495
    :cond_0
    const-string/jumbo v1, "tgpaUpdateGameInfo"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/VmpHelper;->checkTGPAEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 552
    :goto_0
    return-void

    .line 498
    :cond_1
    if-nez p1, :cond_2

    .line 499
    const-string p1, "default"

    .line 500
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Try to setDataReport "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "key":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 538
    const/4 v0, 0x0

    .line 541
    :goto_1
    if-nez v0, :cond_3

    .line 542
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 545
    :cond_3
    if-nez v0, :cond_4

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key is null "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :pswitch_0
    const-string v0, "MapID"

    .line 506
    goto :goto_1

    .line 508
    :pswitch_1
    const-string v0, "FpsDirty"

    .line 509
    goto :goto_1

    .line 511
    :pswitch_2
    const-string v0, "PicQuality"

    .line 512
    goto :goto_1

    .line 514
    :pswitch_3
    const-string v0, "Resolution"

    .line 515
    goto :goto_1

    .line 517
    :pswitch_4
    const-string v0, "HighFrameMode"

    .line 518
    goto :goto_1

    .line 520
    :pswitch_5
    const-string v0, "MatchState"

    .line 521
    goto :goto_1

    .line 523
    :pswitch_6
    const-string v0, "DynamicSetting"

    .line 524
    goto :goto_1

    .line 526
    :pswitch_7
    const-string v0, "UserCount"

    .line 527
    goto :goto_1

    .line 529
    :pswitch_8
    const-string v0, "MobileType"

    .line 530
    goto :goto_1

    .line 532
    :pswitch_9
    const-string v0, "apmKey"

    .line 533
    goto :goto_1

    .line 535
    :pswitch_a
    const-string v0, "GPU"

    .line 536
    goto :goto_1

    .line 550
    :cond_4
    invoke-static {v0, p1}, Lcom/tencent/hawk/bridge/VmpHelper;->updateGameInfoToTGPASS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static updateGameInfoToTGPAIS(ILjava/lang/String;)V
    .locals 6
    .param p0, "key"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 744
    const-string v1, "UpdateGameInfoToTGPAIS"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/VmpHelper;->checkTGPAEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    sget-object v1, Lcom/tencent/hawk/bridge/VmpHelper;->sUpdateGameInfoIS:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 750
    :try_start_0
    sget-object v1, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAClass:Ljava/lang/Class;

    const-string/jumbo v2, "updateGameInfo"

    .line 751
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 750
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/tencent/hawk/bridge/VmpHelper;->sUpdateGameInfoIS:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 758
    :cond_2
    sget-object v1, Lcom/tencent/hawk/bridge/VmpHelper;->sUpdateGameInfoIS:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 763
    :try_start_1
    sget-object v1, Lcom/tencent/hawk/bridge/VmpHelper;->sUpdateGameInfoIS:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAInstance:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 766
    const-string v1, "Cannot invoke UpdateGameInfoIS"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 752
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "Cannot reflect UpdateGameInfoIS"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 764
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static updateGameInfoToTGPASS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 704
    const-string v1, "GPU"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    sput-object p1, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAGpuInfo:Ljava/lang/String;

    .line 708
    :cond_0
    const-string/jumbo v1, "updateGameInfoToTGPASS"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/VmpHelper;->checkTGPAEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 733
    :cond_1
    :goto_0
    return-void

    .line 712
    :cond_2
    sget-object v1, Lcom/tencent/hawk/bridge/VmpHelper;->sUpdateGameInfoSS:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    .line 714
    :try_start_0
    sget-object v1, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAClass:Ljava/lang/Class;

    const-string/jumbo v2, "updateGameInfo"

    .line 715
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 714
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/tencent/hawk/bridge/VmpHelper;->sUpdateGameInfoSS:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 722
    :cond_3
    sget-object v1, Lcom/tencent/hawk/bridge/VmpHelper;->sUpdateGameInfoSS:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 727
    :try_start_1
    sget-object v1, Lcom/tencent/hawk/bridge/VmpHelper;->sUpdateGameInfoSS:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/tencent/hawk/bridge/VmpHelper;->sTGPAInstance:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 730
    const-string v1, "Cannot invoke UpdateGameInfoII"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 716
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "Cannot reflect sUpdateGameInfoII"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 728
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method
