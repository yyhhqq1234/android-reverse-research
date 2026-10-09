.class public interface abstract Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/loginapi/qrcode/CaptureInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCaptureEventListener"
.end annotation


# static fields
.field public static final ERROR_DECODE:I = 0x2

.field public static final ERROR_INIT:I = 0x1


# virtual methods
.method public abstract onFail(ILcom/netease/loginapi/qrcode/CaptureInterface$CaptureException;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onSuccess(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V
.end method
