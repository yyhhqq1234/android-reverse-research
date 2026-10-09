.class public interface abstract Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$Callback;
.super Ljava/lang/Object;
.source "HttpBaseProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# static fields
.field public static final ERROR_CODE_SUCCESS:I = 0x0

.field public static final ERROR_CODE_TIMEOUT:I = -0x2

.field public static final ERROR_CODE_UNKNOWN:I = -0x1


# virtual methods
.method public abstract onFail(I)V
.end method

.method public abstract onSuc(I)V
.end method
