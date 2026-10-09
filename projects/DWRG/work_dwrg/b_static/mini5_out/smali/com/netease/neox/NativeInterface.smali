.class public final Lcom/netease/neox/NativeInterface;
.super Ljava/lang/Object;
.source "NativeInterface.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-string v0, "c++_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 75
    const-string v0, "client"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dummy()V
    .locals 0

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

.method public static native NativeOnChar(I)V
.end method

.method public static native NativeOnDualNetworkStateChanged(II)V
.end method

.method public static native NativeOnGetDashenLogToken(Ljava/lang/String;I)V
.end method

.method public static native NativeOnHeadset(I)V
.end method

.method public static native NativeOnInputFinish(Ljava/lang/String;Z)V
.end method

.method public static native NativeOnInputTextChanged(Ljava/lang/String;)V
.end method

.method public static native NativeOnIsDarenUpdated(Z)V
.end method

.method public static native NativeOnLocationUpdated(DDD)V
.end method

.method public static native NativeOnMagtFuncCall(Ljava/lang/String;)V
.end method

.method public static native NativeOnMapInfoCallback(ILjava/lang/String;)V
.end method

.method public static native NativeOnMessageBoxButton(I)V
.end method

.method public static native NativeOnMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method public static native NativeOnNetworkChanged(II)V
.end method

.method public static native NativeOnPickResult(IIILjava/lang/String;IILjava/lang/String;II)V
.end method

.method public static native NativeOnPlayStateCallback(I)V
.end method

.method public static native NativeOnRequestPermissionsResult(ILjava/lang/String;Z)V
.end method

.method public static native NativeOnRingerMode(I)V
.end method

.method public static native NativeOnSizeChanged()V
.end method

.method public static native NativeOnVirtualKeyboardHidden()V
.end method

.method public static native NativeOnVirtualKeyboardShown(I)V
.end method

.method public static native NativeOnVolumeSilent(IF)V
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
