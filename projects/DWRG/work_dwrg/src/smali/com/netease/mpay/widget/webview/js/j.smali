.class Lcom/netease/mpay/widget/webview/js/j;
.super Lcom/netease/mpay/widget/webview/js/c;


# instance fields
.field final synthetic c:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

.field final synthetic d:Lcom/netease/mpay/widget/webview/js/WebViewEx;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/webview/js/WebViewEx;Landroid/app/Activity;Lcom/netease/mpay/widget/webview/js/Config;Lcom/netease/mpay/widget/webview/js/e;Lcom/netease/mpay/widget/webview/js/WebViewExListener;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/webview/js/j;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    iput-object p5, p0, Lcom/netease/mpay/widget/webview/js/j;->c:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/widget/webview/js/c;-><init>(Landroid/app/Activity;Lcom/netease/mpay/widget/webview/js/Config;Lcom/netease/mpay/widget/webview/js/e;)V

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
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/j;->c:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
