package com.netease.neox;

/* loaded from: classes.dex */
public final class NativeInterface {
    public static native int NativeGetFileToTransfer();

    public static native int NativeGetFileTransferred();

    public static native String NativeGetTransferAction();

    public static native void NativeNotifyWelcomeViewFinished();

    public static native void NativeOnCameraPreviewCapture(byte[] bArr, int i, int i2);

    public static native void NativeOnChar(int i);

    public static native void NativeOnCodeScannerFinish(int i, String str);

    public static native void NativeOnExitApp();

    public static native void NativeOnGMBridgeTokenOverdue();

    public static native void NativeOnHeadset(int i);

    public static native void NativeOnInitSdk(int i);

    public static native void NativeOnInputFinish(String str, boolean z);

    public static native void NativeOnIsDarenUpdated(boolean z);

    public static native void NativeOnLeaveSdk(int i);

    public static native void NativeOnLocationUpdated(double d, double d2, double d3);

    public static native void NativeOnLogin(int i);

    public static native void NativeOnLogout(int i);

    public static native void NativeOnMapInfoCallback(int i, String str);

    public static native void NativeOnMessageBoxButton(int i);

    public static native void NativeOnNetworkChanged(int i, int i2);

    public static native void NativeOnOrderCheckDone(String str, int i, String str2);

    public static native void NativeOnPickResult(int i, int i2, int i3, String str, int i4, int i5, String str2, int i6, int i7);

    public static native void NativeOnPlayStateCallback(int i);

    public static native void NativeOnRegisterPushService(String str);

    public static native void NativeOnRingerMode(int i);

    public static native void NativeOnScreenShot();

    public static native void NativeOnShareEnd(int i, int i2, String str);

    public static native void NativeOnShareFinished(boolean z);

    public static native void NativeOnStopVideoCallBack();

    public static native void NativeOnVirtualKeyboardHidden();

    public static native void NativeOnVirtualKeyboardShown(int i);

    public static native void NativeOnVolumeSilent(int i);

    public static native void NativeOnWebViewCallback(String str, String str2);

    public static native void NativeOnWindowSizeChanged();

    public static native int NativePatchGetDownloadedSize();

    public static native int NativePatchGetPatchStatus();

    public static native int NativePatchGetTotalSize();

    public static native void NativePreparePatch(String str);

    public static native void NativeRsync(String str);

    public static native void NativeStartPatch(String str);

    public static native void NativeUpdateProfileInfo(String str, String str2);

    public static void Dummy() {
    }

    static {
        System.loadLibrary("fmodex");
        System.loadLibrary("fmodevent");
        System.loadLibrary("client");
    }
}
