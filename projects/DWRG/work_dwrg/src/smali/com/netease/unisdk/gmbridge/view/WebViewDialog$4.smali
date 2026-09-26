.class Lcom/netease/unisdk/gmbridge/view/WebViewDialog$4;
.super Ljava/lang/Object;
.source "WebViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->initDialogView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$4;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    const-string v0, "gm_bridge WebViewDialog"

    const-string v1, "click forward"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$4;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$000(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$4;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$000(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$4;->this$0:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->access$000(Lcom/netease/unisdk/gmbridge/view/WebViewDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 118
    :cond_0
    return-void
.end method
