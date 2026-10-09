.class Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;
.super Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;
.source "HttpBaseUrlWithParameterProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1;


# direct methods
.method constructor <init>(Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1;

    .prologue
    .line 39
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;"
    iput-object p1, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;->this$1:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1;

    invoke-direct {p0}, Lcom/loopj/android/tgahttp/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;"
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1$2;

    invoke-direct {v1, p0, p1}, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1$2;-><init>(Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    sget-boolean v0, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "BaseUrlWithParamProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 43
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;"
    :try_start_0
    sget-boolean v0, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "BaseUrlWithParamProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42\u6210\u529f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, p3, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;->this$1:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1;

    iget-object v0, v0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1;->this$0:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;

    iget-object v1, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;->this$1:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1;

    iget-object v1, v1, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1;->val$param:Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;->parsePbRspBuf([BLjava/lang/Object;)I

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1$1;-><init>(Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy$1$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method
