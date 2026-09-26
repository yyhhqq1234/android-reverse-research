.class public abstract Lcom/netease/mpay/widget/b/c;
.super Lcom/netease/mpay/a;

# interfaces
.implements Lcom/netease/mpay/widget/webview/js/WebViewExListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/widget/b/c$b;,
        Lcom/netease/mpay/widget/b/c$c;,
        Lcom/netease/mpay/widget/b/c$e;,
        Lcom/netease/mpay/widget/b/c$a;,
        Lcom/netease/mpay/widget/b/c$d;
    }
.end annotation


# instance fields
.field protected d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

.field private e:Lcom/netease/mpay/widget/b/c$e;

.field private f:Lcom/netease/mpay/widget/b/c$c;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

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

.method static synthetic a(Lcom/netease/mpay/widget/b/c;)Lcom/netease/mpay/widget/b/c$c;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/widget/b/c;)Lcom/netease/mpay/widget/b/c$e;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    return-object v0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    const/16 v0, 0x438

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-virtual {v0, p2, p3}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->uploadFiles(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/mpay/f/a/b$a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$e;->d:Lcom/netease/mpay/widget/b/c$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->d()V

    :cond_0
    return-void
.end method

.method protected a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v2, v2, Lcom/netease/mpay/widget/b/c$e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v3, v3, Lcom/netease/mpay/widget/b/c$e;->c:Lcom/netease/mpay/MpayConfig;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/netease/mpay/widget/b/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final alert(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->e(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 8

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/mpay/widget/b/c;->s()Lcom/netease/mpay/widget/b/c$e;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    new-instance v0, Lcom/netease/mpay/widget/b/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/widget/b/c$c;-><init>(Lcom/netease/mpay/widget/b/c;Lcom/netease/mpay/widget/b/d;)V

    iput-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$e;->d:Lcom/netease/mpay/widget/b/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$e;->d:Lcom/netease/mpay/widget/b/c$a;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$e;->d:Lcom/netease/mpay/widget/b/c$a;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/b/c$c;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$e;->c:Lcom/netease/mpay/MpayConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$e;->c:Lcom/netease/mpay/MpayConfig;

    iget v1, v1, Lcom/netease/mpay/MpayConfig;->mScreenOrientation:I

    invoke-static {v0, v1}, Lcom/netease/mpay/bj;->a(Landroid/app/Activity;I)V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->V:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/w;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cf:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/widget/webview/js/WebViewEx;

    iput-object v0, p0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    iget-object v2, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v3, Lcom/netease/mpay/widget/webview/js/Config;

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$e;->c:Lcom/netease/mpay/MpayConfig;

    iget v0, v0, Lcom/netease/mpay/MpayConfig;->mScreenOrientation:I

    invoke-static {v0}, Lcom/netease/mpay/bj;->a(I)Z

    move-result v4

    const-string v5, "a2.14.1"

    sget-object v0, Lcom/netease/mpay/bk;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget-object v0, Lcom/netease/mpay/bk;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "tv"

    :goto_0
    invoke-direct {v3, v4, v5, v7, v0}, Lcom/netease/mpay/widget/webview/js/Config;-><init>(ZLjava/lang/String;ZLjava/lang/String;)V

    const/16 v0, 0x438

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/netease/mpay/widget/webview/js/Config;->enableUploadFile(Ljava/lang/Integer;)Lcom/netease/mpay/widget/webview/js/Config;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->regist(Landroid/app/Activity;Lcom/netease/mpay/widget/webview/js/Config;Lcom/netease/mpay/widget/webview/js/WebViewExListener;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-virtual {v1}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-wide/32 v2, 0x1000000

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-virtual {v1}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-virtual {v0, v6}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    new-instance v1, Lcom/netease/mpay/widget/b/m;

    iget-object v2, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v3, Lcom/netease/mpay/widget/b/d;

    invoke-direct {v3, p0}, Lcom/netease/mpay/widget/b/d;-><init>(Lcom/netease/mpay/widget/b/c;)V

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/widget/b/m;-><init>(Landroid/content/Context;Lcom/netease/mpay/widget/b/m$a;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-static {}, Lcom/netease/mpay/widget/b/v;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ea:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->dV:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/widget/b/e;

    invoke-direct {v3, p0}, Lcom/netease/mpay/widget/b/e;-><init>(Lcom/netease/mpay/widget/b/c;)V

    iget-object v4, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->g:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/widget/b/f;

    invoke-direct {v5, p0}, Lcom/netease/mpay/widget/b/f;-><init>(Lcom/netease/mpay/widget/b/c;)V

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v0, "games"

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ea:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/widget/b/g;

    invoke-direct {v3, p0}, Lcom/netease/mpay/widget/b/g;-><init>(Lcom/netease/mpay/widget/b/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method

.method public final changeNavigationTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netease/mpay/widget/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public closeWindow()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$e;->d:Lcom/netease/mpay/widget/b/c$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$b;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$b;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iget v0, v0, Lcom/netease/mpay/widget/b/c$b$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$b;

    move-result-object v0

    iget-object v1, v0, Lcom/netease/mpay/widget/b/c$b;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$e;->d:Lcom/netease/mpay/widget/b/c$a;

    iget-boolean v0, v0, Lcom/netease/mpay/widget/b/c$a;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "cz_fhyx"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netease/mpay/widget/b/c$b$a;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v1}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$b;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$b;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iget v1, v1, Lcom/netease/mpay/widget/b/c$b$a;->a:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_1
    const-string v0, "zf_fhyx"

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/netease/mpay/ii;->a()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lcom/netease/mpay/ii;->b()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final jumpToMobileChangePage()V
    .locals 5

    new-instance v0, Lcom/netease/mpay/f/an;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v2, v2, Lcom/netease/mpay/widget/b/c$e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v3, v3, Lcom/netease/mpay/widget/b/c$e;->b:Ljava/lang/String;

    sget-object v4, Lcom/netease/mpay/f/an$a;->p:Lcom/netease/mpay/f/an$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/f/an;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/an$a;)V

    new-instance v1, Lcom/netease/mpay/widget/b/j;

    invoke-direct {v1, p0}, Lcom/netease/mpay/widget/b/j;-><init>(Lcom/netease/mpay/widget/b/c;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/f/an;->a(Lcom/netease/mpay/f/a/b;)Lcom/netease/mpay/f/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/f/an;->h()V

    return-void
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/widget/b/c$b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///android_asset/netease_mpay/loading.html"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/mpay/widget/b/c;->closeWindow()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->goBack()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/netease/mpay/widget/b/c;->closeWindow()V

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    invoke-virtual {p0}, Lcom/netease/mpay/widget/b/c;->closeWindow()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onError(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1}, Lcom/netease/mpay/server/a/ax;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/netease/mpay/server/a; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/f/a/b$a;->a(Lcom/netease/mpay/server/a;)Lcom/netease/mpay/f/a/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/b/c;->a(Lcom/netease/mpay/f/a/b$a;)V

    goto :goto_0
.end method

.method public final onMobileBindRelatedAccount(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onMobileChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->c(Lcom/netease/mpay/widget/b/c$c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->d(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/f/an;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/widget/b/c$c;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->d(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/f/an;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/widget/b/h;

    invoke-direct {v1, p0}, Lcom/netease/mpay/widget/b/h;-><init>(Lcom/netease/mpay/widget/b/c;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/f/an;->a(Lcom/netease/mpay/f/a/b;)Lcom/netease/mpay/f/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/f/an;->h()V

    goto :goto_0
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->b(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$d;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/widget/b/c$d;->a:Lcom/netease/mpay/widget/b/c$d;

    if-ne v0, v1, :cond_2

    const-string v0, "file:///android_asset/netease_mpay/loading.html"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    sget-object v1, Lcom/netease/mpay/widget/b/c$d;->b:Lcom/netease/mpay/widget/b/c$d;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/widget/b/c$c;Lcom/netease/mpay/widget/b/c$d;)Lcom/netease/mpay/widget/b/c$d;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/widget/b/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->b(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$d;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/widget/b/c$d;->c:Lcom/netease/mpay/widget/b/c$d;

    if-ne v0, v1, :cond_0

    const-string v0, "file:///android_asset/netease_mpay/loading.html"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {p0}, Lcom/netease/mpay/widget/b/c;->closeWindow()V

    goto :goto_0
.end method

.method public final onPayFinished(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/b/c;->setBackButton(Z)V

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$e;->d:Lcom/netease/mpay/widget/b/c$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v1}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$b;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$b;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iget v1, v1, Lcom/netease/mpay/widget/b/c$b$a;->a:I

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v1}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$b;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$b;->b:Lcom/netease/mpay/widget/b/c$b$a;

    iput p1, v1, Lcom/netease/mpay/widget/b/c$b$a;->a:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$b;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$b;->b:Lcom/netease/mpay/widget/b/c$b$a;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/b/c$b$a;->a()V

    :cond_1
    return-void
.end method

.method public final onPayRedirect(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/netease/mpay/widget/b/c;->closeWindow()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$e;->d:Lcom/netease/mpay/widget/b/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$e;->d:Lcom/netease/mpay/widget/b/c$a;

    iget-boolean v0, v0, Lcom/netease/mpay/widget/b/c$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$b;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$b;->b:Lcom/netease/mpay/widget/b/c$b$a;

    const-string v1, "cz_jxcz"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/b/c$b$a;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/netease/mpay/b/ar$g;

    invoke-direct {v0}, Lcom/netease/mpay/b/ar$g;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$g;->a(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/netease/mpay/widget/b/c;->u()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/netease/mpay/widget/b/c;->t()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final onQrcodeLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onReady()V
    .locals 0

    return-void
.end method

.method public onRealnameVerify()V
    .locals 0

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/mpay/bk;->h:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/netease/mpay/widget/b/i;

    invoke-direct {v0, p0}, Lcom/netease/mpay/widget/b/i;-><init>(Lcom/netease/mpay/widget/b/c;)V

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, p2, p4}, Lcom/netease/mpay/widget/b/i;->a(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///android_asset/netease_mpay/loading.html"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/netease/mpay/widget/b/c;->changeNavigationTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTokenRefresh(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/netease/mpay/server/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/e/b;

    iget-object v2, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v3, v3, Lcom/netease/mpay/widget/b/c$e;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v2, v2, Lcom/netease/mpay/widget/b/c$e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v0, v2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v0, v0, Lcom/netease/mpay/widget/b/c$e;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/netease/mpay/e/c/k;->a(Lcom/netease/mpay/e/b/o;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final onUrsMobileLogin(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onUserLogin(Ljava/lang/String;)V
    .locals 11

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/netease/mpay/server/a/d;->a(Ljava/lang/String;)Lcom/netease/mpay/server/response/m;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v3, v3, Lcom/netease/mpay/widget/b/c$e;->a:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v1, v4, Lcom/netease/mpay/server/response/m;->c:I

    sparse-switch v1, :sswitch_data_0

    move-object v6, v5

    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v1, v1, Lcom/netease/mpay/widget/b/c$e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v3, v3, Lcom/netease/mpay/widget/b/c$e;->b:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/f/au;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/e/b;Ljava/lang/String;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o;Lcom/netease/mpay/e/b/o$a;Z)V

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/widget/b/c$b;->c:Z

    if-eqz v0, :cond_1

    new-instance v5, Lcom/netease/mpay/oy;

    iget-object v6, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v7, v0, Lcom/netease/mpay/widget/b/c$e;->a:Ljava/lang/String;

    iget-object v8, v4, Lcom/netease/mpay/server/response/m;->i:Ljava/lang/String;

    iget v9, v4, Lcom/netease/mpay/server/response/m;->c:I

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->e:Lcom/netease/mpay/widget/b/c$e;

    iget-object v10, v0, Lcom/netease/mpay/widget/b/c$e;->b:Ljava/lang/String;

    invoke-direct/range {v5 .. v10}, Lcom/netease/mpay/oy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v5}, Lcom/netease/mpay/oy;->a()V

    :cond_1
    new-instance v0, Lcom/netease/mpay/b/ao;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/netease/mpay/b/ao;-><init>(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ao;->a(Landroid/app/Activity;)V

    goto :goto_0

    :sswitch_0
    new-instance v6, Lcom/netease/mpay/e/b/ah;

    iget-object v1, v4, Lcom/netease/mpay/server/response/m;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v7

    :cond_2
    invoke-direct {v6, v0}, Lcom/netease/mpay/e/b/ah;-><init>(Z)V

    goto :goto_1

    :sswitch_1
    new-instance v6, Lcom/netease/mpay/e/b/x;

    invoke-direct {v6, v0}, Lcom/netease/mpay/e/b/x;-><init>(Z)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onUserLogout()V
    .locals 0

    return-void
.end method

.method public onVerify(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/netease/mpay/widget/b/c;->onUserLogin(Ljava/lang/String;)V

    return-void
.end method

.method public final onVerifyRelatedMobile()V
    .locals 0

    return-void
.end method

.method public onVerifyRelatedMobile(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->r()V

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->d:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->destroy()V

    :cond_0
    return-void
.end method

.method protected abstract s()Lcom/netease/mpay/widget/b/c$e;
.end method

.method public saveImage(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/netease/mpay/f/o;

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/widget/b/k;

    invoke-direct {v2, p0}, Lcom/netease/mpay/widget/b/k;-><init>(Lcom/netease/mpay/widget/b/c;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/netease/mpay/f/o;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/f/o$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/f/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public saveToClipboard(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1}, Lcom/netease/mpay/widget/aa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->e(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/widget/b/c;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cR:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final setBackButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$b;

    move-result-object v0

    iput-boolean p1, v0, Lcom/netease/mpay/widget/b/c$b;->a:Z

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->b(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$d;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/widget/b/c$d;->a:Lcom/netease/mpay/widget/b/c$d;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->b(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$d;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/widget/b/c$d;->b:Lcom/netease/mpay/widget/b/c$d;

    if-ne v0, v1, :cond_2

    :cond_0
    const-string v0, "file:///android_asset/netease_mpay/loading.html"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    sget-object v1, Lcom/netease/mpay/widget/b/c$d;->c:Lcom/netease/mpay/widget/b/c$d;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/widget/b/c$c;Lcom/netease/mpay/widget/b/c$d;)Lcom/netease/mpay/widget/b/c$d;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/widget/b/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->b(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/b/c$d;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/widget/b/c$d;->c:Lcom/netease/mpay/widget/b/c$d;

    if-ne v0, v1, :cond_1

    const-string v0, "file:///android_asset/netease_mpay/loading.html"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/mpay/widget/b/c;->closeWindow()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected t()V
    .locals 0

    return-void
.end method

.method public final toast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    invoke-static {v0}, Lcom/netease/mpay/widget/b/c$c;->e(Lcom/netease/mpay/widget/b/c$c;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected u()V
    .locals 0

    return-void
.end method

.method public w()Lcom/netease/mpay/widget/b/c$c;
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/widget/b/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/widget/b/c$c;-><init>(Lcom/netease/mpay/widget/b/c;Lcom/netease/mpay/widget/b/d;)V

    iput-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/b/c;->f:Lcom/netease/mpay/widget/b/c$c;

    return-object v0
.end method
