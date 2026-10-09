.class Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;
.super Ljava/lang/Object;
.source "HttpBaseUrlProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;->postReq(Landroid/content/Context;Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$Callback;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;

.field final synthetic val$callback:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$Callback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$param:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;Landroid/content/Context;Ljava/lang/Object;Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;

    .prologue
    .line 33
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;"
    iput-object p1, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;->this$0:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;

    iput-object p2, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;->val$param:Ljava/lang/Object;

    iput-object p4, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;->val$callback:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 36
    .local p0, "this":Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;, "Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;"
    iget-object v0, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;->this$0:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;

    invoke-static {v0}, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;->access$000(Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;)Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;

    move-result-object v0

    iget-object v1, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;->this$0:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;

    iget-object v3, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;->val$param:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;->getUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;->this$0:Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;

    iget-object v4, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;->val$param:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy;->convertParamToPbReqBuf(Ljava/lang/Object;)[B

    move-result-object v3

    new-instance v4, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1;

    invoke-direct {v4, p0}, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1$1;-><init>(Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlProxy$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;->post(Landroid/content/Context;Ljava/lang/String;[BLcom/loopj/android/tgahttp/ResponseHandlerInterface;)V

    .line 68
    return-void
.end method
