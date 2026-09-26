.class Lcom/netease/mpay/widget/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/widget/b/m$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/widget/b/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/b/c;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/b/d;->a:Lcom/netease/mpay/widget/b/c;

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

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/d;->a:Lcom/netease/mpay/widget/b/c;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/d;->a:Lcom/netease/mpay/widget/b/c;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->goBack()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/widget/b/d;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/b/d;->a:Lcom/netease/mpay/widget/b/c;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
