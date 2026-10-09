.class Lcom/tencent/pandora/webview/WebViewHelper$2;
.super Lcom/tencent/smtt/sdk/WebView;
.source "WebViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/pandora/webview/WebViewHelper;->createWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field onKeyListener:Landroid/view/View$OnKeyListener;

.field final synthetic this$0:Lcom/tencent/pandora/webview/WebViewHelper;


# direct methods
.method constructor <init>(Lcom/tencent/pandora/webview/WebViewHelper;Landroid/content/Context;)V
    .locals 1
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/pandora/webview/WebViewHelper$2;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    .line 195
    invoke-direct {p0, p2}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;)V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper$2;->onKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x4

    .line 202
    const-string v0, "Pandora WebView"

    const-string v1, "On Key Pressed"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 204
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper$2;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    iget-object v0, v0, Lcom/tencent/pandora/webview/WebViewHelper;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 216
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper$2;->onKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper$2;->onKeyListener:Landroid/view/View$OnKeyListener;

    invoke-interface {v0, p0, v2, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 220
    :cond_1
    invoke-super {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper$2;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    iget-object v0, v0, Lcom/tencent/pandora/webview/WebViewHelper;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tencent/pandora/webview/WebViewEventListener;->onBackPress(Z)V

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper$2;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    iget-object v0, v0, Lcom/tencent/pandora/webview/WebViewHelper;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/pandora/webview/WebViewEventListener;->onBackPress(Z)V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 230
    invoke-super {p0}, Lcom/tencent/smtt/sdk/WebView;->onAttachedToWindow()V

    .line 231
    const-string v0, "Pandora WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "On Web View Attached "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewHelper$2;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper$2;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    iget-object v0, v0, Lcom/tencent/pandora/webview/WebViewHelper;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper$2;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    iget-object v0, v0, Lcom/tencent/pandora/webview/WebViewHelper;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    invoke-interface {v0}, Lcom/tencent/pandora/webview/WebViewEventListener;->onWebViewLoaded()V

    .line 233
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "Pandora WebView"

    const-string v1, "On Web View Detached"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-super {p0}, Lcom/tencent/smtt/sdk/WebView;->onDetachedFromWindow()V

    .line 239
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/tencent/pandora/webview/WebViewHelper$2;->onKeyListener:Landroid/view/View$OnKeyListener;

    .line 226
    return-void
.end method
