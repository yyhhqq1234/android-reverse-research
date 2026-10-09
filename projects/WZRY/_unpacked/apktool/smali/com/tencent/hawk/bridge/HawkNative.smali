.class public Lcom/tencent/hawk/bridge/HawkNative;
.super Ljava/lang/Object;
.source "HawkNative.java"


# static fields
.field public static version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x24

    sput v0, Lcom/tencent/hawk/bridge/HawkNative;->version:I

    .line 152
    const-string v0, "cubehawk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native beginHawk()V
.end method

.method public static native beginTupleWrap(Ljava/lang/String;)V
.end method

.method public static native beignExclude()V
.end method

.method public static native checkDCLS(II[Ljava/lang/String;)I
.end method

.method public static native checkEmulator(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native checkServerDCLS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native disableOpts(I)V
.end method

.method public static native enableLogPrint()V
.end method

.method public static native enableSlinetMode()V
.end method

.method public static native enableTMode()V
.end method

.method public static native enableTrackState()V
.end method

.method public static native endExclude()V
.end method

.method public static native endHawk()V
.end method

.method public static native endTupleWrap()V
.end method

.method public static native getFrames()I
.end method

.method public static native getPlatformInfo()Ljava/lang/String;
.end method

.method public static native getRomInfo()Ljava/lang/String;
.end method

.method public static native initCommitter(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIII)V
.end method

.method public static native initStreamEvent(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIJJILjava/lang/String;)V
.end method

.method public static native launchHawk(Ljava/lang/String;III)V
.end method

.method public static native launchStreamEvent(Ljava/lang/String;)V
.end method

.method public static native levelControl(IIILjava/lang/String;)V
.end method

.method public static native postEvent(ILjava/lang/String;)V
.end method

.method public static native postFrame(F)V
.end method

.method public static native postLagStatus(I)V
.end method

.method public static native postMsgExt(IIIILjava/lang/String;)V
.end method

.method public static native postNTL(II)V
.end method

.method public static native postNTL2(IJ)V
.end method

.method public static native postStreamEvent(IIILjava/lang/String;I)V
.end method

.method public static native postTrackState(FFFFFF)V
.end method

.method public static native postValue1F(Ljava/lang/String;Ljava/lang/String;F)V
.end method

.method public static native postValue1I(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native postValue2F(Ljava/lang/String;Ljava/lang/String;FF)V
.end method

.method public static native postValue2I(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public static native postValue3F(Ljava/lang/String;Ljava/lang/String;FFF)V
.end method

.method public static native postValue3I(Ljava/lang/String;Ljava/lang/String;III)V
.end method

.method public static native postValueS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native postVmpStatus(IIIILjava/lang/String;)V
.end method

.method public static native processCCQualityCallback(I)V
.end method

.method public static native processRomCallback(I)V
.end method

.method public static native registerFBCallBack()I
.end method

.method public static native requestPssSample()V
.end method

.method public static native setAndroidId(Ljava/lang/String;)V
.end method

.method public static native setAppId(Ljava/lang/String;)V
.end method

.method public static native setAppStartupTime(I)V
.end method

.method public static native setBuildEnv(I)V
.end method

.method public static native setCompressFormatRand(I)V
.end method

.method public static native setFBCheckPb(I)V
.end method

.method public static native setFlashInfo(IIII)V
.end method

.method public static native setGQuality(I)V
.end method

.method public static native setGpuInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setHardwareInfo(Ljava/lang/String;)V
.end method

.method public static native setIMEI(J)V
.end method

.method public static native setLocale(Ljava/lang/String;I)V
.end method

.method public static native setManualPostFrame()V
.end method

.method public static native setPssManualMode()V
.end method

.method public static native setQccFetherTime(I)V
.end method

.method public static native setRevisedVersion(Ljava/lang/String;)V
.end method

.method public static native setRunConfigPolicy(IIII)V
.end method

.method public static native setSDKVersion(I)V
.end method

.method public static native setTargetFramerate(I)V
.end method

.method public static native setTencentQemuBlocked()V
.end method

.method public static native setUUID(JJ)V
.end method

.method public static native setUserId(Ljava/lang/String;)V
.end method
