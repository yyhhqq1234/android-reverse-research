.class public abstract Lcom/netease/mpay/dd;
.super Lcom/netease/mpay/a;

# interfaces
.implements Lcom/netease/mpay/widget/webview/js/WebViewExListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/dd$a;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/s;

.field private e:Lcom/netease/mpay/ii;

.field private f:Z

.field private g:Z

.field private h:Lcom/netease/mpay/widget/webview/js/WebViewEx;

.field private i:Lcom/netease/mpay/widget/av;

.field private j:Lcom/netease/mpay/server/response/l;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-boolean v0, p0, Lcom/netease/mpay/dd;->f:Z

    iput-boolean v0, p0, Lcom/netease/mpay/dd;->g:Z

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

.method static synthetic a(Lcom/netease/mpay/dd;Lcom/netease/mpay/server/response/l;)Lcom/netease/mpay/server/response/l;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/dd;->j:Lcom/netease/mpay/server/response/l;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/dd;Lcom/netease/mpay/widget/av;)Lcom/netease/mpay/widget/av;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/dd;->i:Lcom/netease/mpay/widget/av;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/dd;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/dd;->w()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/dd;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/dd;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/dd;)Lcom/netease/mpay/ii;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/dd;->e:Lcom/netease/mpay/ii;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/mpay/dd;->s()Lcom/netease/mpay/dd$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/dd$a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/dd;->e:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->b()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/netease/mpay/dd;->i:Lcom/netease/mpay/widget/av;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/dd;->i:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/dd;->i:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ak:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/dd;->f:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/netease/mpay/dd;->e:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->b()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/netease/mpay/dd;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/dd;->u()V

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/dd;)Lcom/netease/mpay/widget/av;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/dd;->i:Lcom/netease/mpay/widget/av;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/dd;)Lcom/netease/mpay/widget/webview/js/WebViewEx;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/dd;->h:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/dd;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/dd;->v()V

    return-void
.end method

.method private t()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/dd;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v0}, Lcom/netease/mpay/b/s;->n()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private u()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x800

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void
.end method

.method private v()V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/dd;->g:Z

    new-instance v8, Lcom/netease/mpay/widget/s;

    iget-object v0, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v8, v0}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/netease/mpay/f/f;

    iget-object v1, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/dd;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/dd;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v3}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/dd;->d:Lcom/netease/mpay/b/s;

    iget-object v4, v4, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/dd;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v5}, Lcom/netease/mpay/b/s;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/netease/mpay/dd;->s()Lcom/netease/mpay/dd$a;

    move-result-object v6

    new-instance v7, Lcom/netease/mpay/df;

    invoke-direct {v7, p0, v8}, Lcom/netease/mpay/df;-><init>(Lcom/netease/mpay/dd;Lcom/netease/mpay/widget/s;)V

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/dd$a;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/f;->h()V

    return-void
.end method

.method private w()V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->by:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->l:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->cJ:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/netease/mpay/dl;

    invoke-direct {v3, p0}, Lcom/netease/mpay/dl;-><init>(Lcom/netease/mpay/dd;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0
.end method

.method private x()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/netease/mpay/b/ar$a;

    invoke-direct {v0, v1, v1, v1}, Lcom/netease/mpay/b/ar$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$a;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/s;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/s;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/dd;->d:Lcom/netease/mpay/b/s;

    iget-object v0, p0, Lcom/netease/mpay/dd;->d:Lcom/netease/mpay/b/s;

    return-object v0
.end method

.method public alert(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/netease/mpay/dd;->e:Lcom/netease/mpay/ii;

    iget-object v0, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->f:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->am:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cJ:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lcom/netease/mpay/de;

    invoke-direct {v1, p0}, Lcom/netease/mpay/de;-><init>(Lcom/netease/mpay/dd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->an:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/widget/webview/js/WebViewEx;

    iput-object v0, p0, Lcom/netease/mpay/dd;->h:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    iget-object v1, p0, Lcom/netease/mpay/dd;->h:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    iget-object v2, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v3, Lcom/netease/mpay/widget/webview/js/Config;

    iget-object v0, p0, Lcom/netease/mpay/dd;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v0}, Lcom/netease/mpay/b/s;->c()Lcom/netease/mpay/MpayConfig;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/MpayConfig;->mScreenOrientation:I

    invoke-static {v0}, Lcom/netease/mpay/bj;->a(I)Z

    move-result v4

    const-string v5, "a2.14.1"

    sget-object v0, Lcom/netease/mpay/bk;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    sget-object v0, Lcom/netease/mpay/bk;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tv"

    :goto_0
    invoke-direct {v3, v4, v5, v6, v0}, Lcom/netease/mpay/widget/webview/js/Config;-><init>(ZLjava/lang/String;ZLjava/lang/String;)V

    const/16 v0, 0x438

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/netease/mpay/widget/webview/js/Config;->enableUploadFile(Ljava/lang/Integer;)Lcom/netease/mpay/widget/webview/js/Config;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->regist(Landroid/app/Activity;Lcom/netease/mpay/widget/webview/js/Config;Lcom/netease/mpay/widget/webview/js/WebViewExListener;)V

    iget-object v0, p0, Lcom/netease/mpay/dd;->h:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->setScrollBarStyle(I)V

    invoke-virtual {p0}, Lcom/netease/mpay/dd;->s()Lcom/netease/mpay/dd$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/dd$a;->a(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/netease/mpay/dd;->t()V

    invoke-direct {p0}, Lcom/netease/mpay/dd;->v()V

    return-void

    :cond_0
    const-string v0, "games"

    goto :goto_0
.end method

.method public changeNavigationTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public closeWindow()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->g()V

    iget-boolean v0, p0, Lcom/netease/mpay/dd;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/dd;->x()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/dd;->f:Z

    :cond_0
    return-void
.end method

.method public jumpToMobileChangePage()V
    .locals 0

    return-void
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/dd;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/dd;->w()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/dd;->e:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->o()Z

    iget-boolean v0, p0, Lcom/netease/mpay/dd;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/dd;->w()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/dd;->e:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    goto :goto_0
.end method

.method public onError(I)V
    .locals 0

    return-void
.end method

.method public onMobileBindRelatedAccount(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMobileChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onPayFinished(I)V
    .locals 0

    return-void
.end method

.method public onPayRedirect(I)V
    .locals 0

    return-void
.end method

.method public onQrcodeLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReady()V
    .locals 0

    return-void
.end method

.method public onRealnameVerify()V
    .locals 0

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTokenRefresh(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/netease/mpay/server/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/e/b;

    iget-object v2, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/dd;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v3}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/dd;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v0, v2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/dd;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v0}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/netease/mpay/e/c/k;->a(Lcom/netease/mpay/e/b/o;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onUrsMobileLogin(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUserLogin(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUserLogout()V
    .locals 0

    return-void
.end method

.method public onVerify(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onVerifyRelatedMobile()V
    .locals 0

    return-void
.end method

.method public onVerifyRelatedMobile(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method abstract s()Lcom/netease/mpay/dd$a;
.end method

.method public saveImage(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/netease/mpay/f/o;

    iget-object v1, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/dm;

    invoke-direct {v2, p0}, Lcom/netease/mpay/dm;-><init>(Lcom/netease/mpay/dd;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/netease/mpay/f/o;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/f/o$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/f/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public saveToClipboard(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1}, Lcom/netease/mpay/widget/aa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/dd;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cR:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setBackButton(Z)V
    .locals 0

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/dd;->j:Lcom/netease/mpay/server/response/l;

    iget-object v0, v0, Lcom/netease/mpay/server/response/l;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/dd;->u()V

    invoke-direct {p0, p2}, Lcom/netease/mpay/dd;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toast(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
