.class Lcom/tencent/msdk/webview/WebViewActivity$6;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/WebViewActivity;->initMoreDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/tencent/msdk/webview/WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1300(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1300(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1300(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1096
    :cond_0
    return-void
.end method
