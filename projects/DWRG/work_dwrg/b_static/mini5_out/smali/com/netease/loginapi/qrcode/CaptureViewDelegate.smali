.class public interface abstract Lcom/netease/loginapi/qrcode/CaptureViewDelegate;
.super Ljava/lang/Object;
.source "Proguard"


# virtual methods
.method public abstract getCaptureConfig()Lcom/netease/loginapi/qrcode/QRAuthConfig;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getResultPointCallback()Lcom/google/zxing/ResultPointCallback;
.end method

.method public abstract getSurfaceView()Landroid/view/SurfaceView;
.end method

.method public abstract hasCameraPermission()Z
.end method
