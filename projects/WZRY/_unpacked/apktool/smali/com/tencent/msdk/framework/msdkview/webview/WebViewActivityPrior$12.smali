.class Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$12;
.super Ljava/lang/Object;
.source "WebViewActivityPrior.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->initMoreDlg()V
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
    .line 995
    iput-object p1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$12;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 999
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$12;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$3300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$12;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$3300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$12;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$3300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1002
    :cond_0
    return-void
.end method
