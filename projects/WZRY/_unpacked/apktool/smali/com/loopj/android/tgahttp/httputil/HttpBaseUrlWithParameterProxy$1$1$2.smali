.class Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1$2;
.super Ljava/lang/Object;
.source "HttpBaseUrlWithParameterProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;I)V
    .locals 0
    .param p1, "this$2"    # Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;

    .prologue
    .line 60
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1$2;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1$2;"
    iput-object p1, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1$2;->this$2:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;

    iput p2, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1$2;->val$statusCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1$2;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1$2;"
    iget-object v0, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1$2;->this$2:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;

    iget-object v0, v0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;->this$1:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1;

    iget-object v0, v0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1;->val$callback:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$Callback;

    iget v1, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1$2;->val$statusCode:I

    invoke-interface {v0, v1}, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$Callback;->onFail(I)V

    .line 64
    return-void
.end method
