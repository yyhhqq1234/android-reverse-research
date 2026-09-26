.class Lcom/netease/dwrg/NeoXWebView$NeoXWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "NeoXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/dwrg/NeoXWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NeoXWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/NeoXWebView;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/NeoXWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/NeoXWebView;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/netease/dwrg/NeoXWebView$NeoXWebViewClient;->this$0:Lcom/netease/dwrg/NeoXWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/netease/dwrg/NeoXWebView$NeoXWebViewClient;->this$0:Lcom/netease/dwrg/NeoXWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/NeoXWebView;->setTitle(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/netease/dwrg/NeoXWebView$NeoXWebViewClient;->this$0:Lcom/netease/dwrg/NeoXWebView;

    invoke-static {v0}, Lcom/netease/dwrg/NeoXWebView;->access$000(Lcom/netease/dwrg/NeoXWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/netease/dwrg/NeoXWebView$NeoXWebViewClient;->this$0:Lcom/netease/dwrg/NeoXWebView;

    invoke-static {v0}, Lcom/netease/dwrg/NeoXWebView;->access$100(Lcom/netease/dwrg/NeoXWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 174
    iget-object v0, p0, Lcom/netease/dwrg/NeoXWebView$NeoXWebViewClient;->this$0:Lcom/netease/dwrg/NeoXWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/dwrg/NeoXWebView;->access$002(Lcom/netease/dwrg/NeoXWebView;Z)Z

    .line 176
    :cond_0
    return-void
.end method
