.class Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$8;
.super Ljava/lang/Object;
.source "WebViewActivityPrior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$8;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 646
    const-string v0, "Runnable webview will be destroy"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$8;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/msdk/webview/WebViewActivity;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$8;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->onDestroy()V

    .line 650
    :cond_0
    return-void
.end method
