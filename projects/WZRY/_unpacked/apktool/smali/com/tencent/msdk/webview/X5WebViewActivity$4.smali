.class Lcom/tencent/msdk/webview/X5WebViewActivity$4;
.super Ljava/lang/Object;
.source "X5WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$4;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$4;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$200(Lcom/tencent/msdk/webview/X5WebViewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    :goto_0
    return-void

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$4;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$300(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$4;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$300(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->goBack()V

    goto :goto_0

    .line 857
    :catch_0
    move-exception v0

    goto :goto_0

    .line 855
    :cond_1
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$4;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->closeWebview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
