.class public final Lcom/netease/neox/NativeInterface;
.super Ljava/lang/Object;
.source "NativeInterface.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-string v0, "fmodex"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 90
    const-string v0, "fmodevent"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 92
    const-string v0, "client"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dummy()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public static native NativeGetFileToTransfer()I
.end method

.method public static native NativeGetFileTransferred()I
.end method

.method public static native NativeGetTransferAction()Ljava/lang/String;
.end method

.method public static native NativeNotifyWelcomeViewFinished()V
.end method

.method public static native NativeOnCameraPreviewCapture([BII)V
.end method

.method public static native NativeOnChar(I)V
.end method

.method public static native NativeOnCodeScannerFinish(ILjava/lang/String;)V
.end method

.method public static native NativeOnExitApp()V
.end method

.method public static native NativeOnGMBridgeTokenOverdue()V
.end method

.method public static native NativeOnHeadset(I)V
.end method

.method public static native NativeOnInitSdk(I)V
.end method

.method public static native NativeOnInputFinish(Ljava/lang/String;Z)V
.end method

.method public static native NativeOnIsDarenUpdated(Z)V
.end method

.method public static native NativeOnLeaveSdk(I)V
.end method

.method public static native NativeOnLocationUpdated(DDD)V
.end method

.method public static native NativeOnLogin(I)V
.end method

.method public static native NativeOnLogout(I)V
.end method

.method public static native NativeOnMapInfoCallback(ILjava/lang/String;)V
.end method

.method public static native NativeOnMessageBoxButton(I)V
.end method

.method public static native NativeOnNetworkChanged(II)V
.end method

.method public static native NativeOnOrderCheckDone(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static native NativeOnPickResult(IIILjava/lang/String;IILjava/lang/String;II)V
.end method

.method public static native NativeOnPlayStateCallback(I)V
.end method

.method public static native NativeOnRegisterPushService(Ljava/lang/String;)V
.end method

.method public static native NativeOnRingerMode(I)V
.end method

.method public static native NativeOnScreenShot()V
.end method

.method public static native NativeOnShareEnd(IILjava/lang/String;)V
.end method

.method public static native NativeOnShareFinished(Z)V
.end method

.method public static native NativeOnStopVideoCallBack()V
.end method

.method public static native NativeOnVirtualKeyboardHidden()V
.end method

.method public static native NativeOnVirtualKeyboardShown(I)V
.end method

.method public static native NativeOnVolumeSilent(I)V
.end method

.method public static native NativeOnWebViewCallback(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native NativeOnWindowSizeChanged()V
.end method

.method public static native NativePatchGetDownloadedSize()I
.end method

.method public static native NativePatchGetPatchStatus()I
.end method

.method public static native NativePatchGetTotalSize()I
.end method

.method public static native NativePreparePatch(Ljava/lang/String;)V
.end method

.method public static native NativeRsync(Ljava/lang/String;)V
.end method

.method public static native NativeStartPatch(Ljava/lang/String;)V
.end method

.method public static native NativeUpdateProfileInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method
