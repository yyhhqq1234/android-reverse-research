.class Lcom/netease/mpay/widget/webview/js/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/widget/webview/js/e;


# instance fields
.field final synthetic a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

.field final synthetic b:Lcom/netease/mpay/widget/webview/js/WebViewEx;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/webview/js/WebViewEx;Lcom/netease/mpay/widget/webview/js/WebViewExListener;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/webview/js/i;->b:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    iput-object p2, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->b:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-static {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->a(Lcom/netease/mpay/widget/webview/js/WebViewEx;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->b:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-static {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->a(Lcom/netease/mpay/widget/webview/js/WebViewEx;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-void
.end method

.method public alert(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->alert(Ljava/lang/String;)V

    return-void
.end method

.method public changeNavigationTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->changeNavigationTitle(Ljava/lang/String;)V

    return-void
.end method

.method public closeWindow()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->closeWindow()V

    return-void
.end method

.method public jumpToMobileChangePage()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->jumpToMobileChangePage()V

    return-void
.end method

.method public onError(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onError(I)V

    return-void
.end method

.method public onMobileBindRelatedAccount(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onMobileBindRelatedAccount(Ljava/lang/String;)V

    return-void
.end method

.method public onMobileChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onMobileChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onPayFinished(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onPayFinished(I)V

    return-void
.end method

.method public onPayRedirect(I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onPayRedirect(I)V

    return-void
.end method

.method public onQrcodeLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onQrcodeLogin(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReady()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onReady()V

    return-void
.end method

.method public onRealnameVerify()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onRealnameVerify()V

    return-void
.end method

.method public onTokenRefresh(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onTokenRefresh(Ljava/lang/String;)V

    return-void
.end method

.method public onUrsMobileLogin(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onUrsMobileLogin(Ljava/lang/String;)V

    return-void
.end method

.method public onUserLogin(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onUserLogin(Ljava/lang/String;)V

    return-void
.end method

.method public onUserLogout()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onUserLogout()V

    return-void
.end method

.method public onVerify(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onVerify(Ljava/lang/String;)V

    return-void
.end method

.method public onVerifyRelatedMobile()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onVerifyRelatedMobile()V

    return-void
.end method

.method public onVerifyRelatedMobile(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onVerifyRelatedMobile(Ljava/lang/String;)V

    return-void
.end method

.method public saveImage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->saveImage(Ljava/lang/String;)V

    return-void
.end method

.method public saveToClipboard(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->saveToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method public setBackButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->setBackButton(Z)V

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/i;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->toast(Ljava/lang/String;)V

    return-void
.end method
