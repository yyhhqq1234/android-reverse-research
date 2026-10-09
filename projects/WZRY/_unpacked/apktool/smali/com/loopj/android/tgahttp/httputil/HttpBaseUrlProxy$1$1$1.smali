.class Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1$1;
.super Ljava/lang/Object;
.source "HttpBaseUrlProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1;->onSuccess(I[Lorg/apache/http/Header;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1;I)V
    .locals 0
    .param p1, "this$2"    # Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1;

    .prologue
    .line 47
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1$1;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1$1;"
    iput-object p1, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1$1;->this$2:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1;

    iput p2, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1$1;->val$statusCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1$1;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1$1;"
    iget-object v0, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1$1;->this$2:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1;

    iget-object v0, v0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1;->this$1:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;

    iget-object v0, v0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;->val$callback:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$Callback;

    iget v1, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1$1;->val$statusCode:I

    invoke-interface {v0, v1}, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$Callback;->onSuc(I)V

    .line 51
    return-void
.end method
