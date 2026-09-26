.class public Lcom/netease/mpay/bz;
.super Lcom/netease/mpay/widget/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/bz$a;
    }
.end annotation


# instance fields
.field private e:Lcom/netease/mpay/b/f;

.field private f:Lcom/netease/mpay/bz$a;

.field private g:Landroid/content/res/Resources;

.field private h:Lcom/netease/mpay/lo;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/b/c;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const/16 v0, -0x64

    iput v0, p0, Lcom/netease/mpay/bz;->i:I

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

.method static synthetic a(Lcom/netease/mpay/bz;I)I
    .locals 0

    iput p1, p0, Lcom/netease/mpay/bz;->i:I

    return p1
.end method

.method static synthetic a(Lcom/netease/mpay/bz;)Lcom/netease/mpay/b/f;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/bz;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/bz;->y()V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/bz;)I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/bz;->i:I

    return v0
.end method

.method private v()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    invoke-virtual {v0}, Lcom/netease/mpay/b/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/widget/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private x()V
    .locals 6

    sget-object v0, Lcom/netease/mpay/bz$a;->a:Lcom/netease/mpay/bz$a;

    iput-object v0, p0, Lcom/netease/mpay/bz;->f:Lcom/netease/mpay/bz$a;

    invoke-virtual {p0}, Lcom/netease/mpay/bz;->w()Lcom/netease/mpay/widget/b/c$c;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/f/an;

    iget-object v2, p0, Lcom/netease/mpay/bz;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    invoke-virtual {v3}, Lcom/netease/mpay/b/f;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    invoke-virtual {v4}, Lcom/netease/mpay/b/f;->b()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netease/mpay/f/an$a;->b:Lcom/netease/mpay/f/an$a;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netease/mpay/f/an;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/an$a;)V

    iget-object v2, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    iget-object v2, v2, Lcom/netease/mpay/b/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/f/an;->d(Ljava/lang/String;)Lcom/netease/mpay/f/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/f/an;)V

    return-void
.end method

.method private y()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/netease/mpay/b/ar$a;

    invoke-direct {v0, v1, v1, v1}, Lcom/netease/mpay/b/ar$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/bz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private z()V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/bz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/mpay/bz;->w()Lcom/netease/mpay/widget/b/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/widget/b/c$c;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0}, Lcom/netease/mpay/widget/b/c;->closeWindow()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/bz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/bz;->g:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->by:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/bz;->g:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->l:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/ca;

    invoke-direct {v3, p0}, Lcom/netease/mpay/ca;-><init>(Lcom/netease/mpay/bz;)V

    iget-object v4, p0, Lcom/netease/mpay/bz;->g:Landroid/content/res/Resources;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->cJ:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/cb;

    invoke-direct {v5, p0}, Lcom/netease/mpay/cb;-><init>(Lcom/netease/mpay/bz;)V

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    iget-object v0, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    iget-boolean v0, v0, Lcom/netease/mpay/b/f;->f:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/f/aa;

    iget-object v1, p0, Lcom/netease/mpay/bz;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    invoke-virtual {v2}, Lcom/netease/mpay/b/f;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    invoke-virtual {v3}, Lcom/netease/mpay/b/f;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    iget-object v4, v4, Lcom/netease/mpay/b/f;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    invoke-virtual {v5}, Lcom/netease/mpay/b/f;->q()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netease/mpay/cc;

    invoke-direct {v6, p0}, Lcom/netease/mpay/cc;-><init>(Lcom/netease/mpay/bz;)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/aa;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/aa;->h()V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/f;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/f;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    iget-object v0, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/bz;->g:Landroid/content/res/Resources;

    invoke-super {p0, p1}, Lcom/netease/mpay/widget/b/c;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/net/URL;

    sget-object v3, Lcom/netease/mpay/bk;->h:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netease/mpay/bz;->f:Lcom/netease/mpay/bz$a;

    sget-object v2, Lcom/netease/mpay/bz$a;->a:Lcom/netease/mpay/bz$a;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/netease/mpay/bz$a;->b:Lcom/netease/mpay/bz$a;

    iput-object v1, p0, Lcom/netease/mpay/bz;->f:Lcom/netease/mpay/bz$a;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_4

    :cond_1
    :goto_1
    return v0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/netease/mpay/bz;->f:Lcom/netease/mpay/bz$a;

    sget-object v2, Lcom/netease/mpay/bz$a;->c:Lcom/netease/mpay/bz$a;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/netease/mpay/bz$a;->d:Lcom/netease/mpay/bz$a;

    iput-object v1, p0, Lcom/netease/mpay/bz;->f:Lcom/netease/mpay/bz$a;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/netease/mpay/bz;->f:Lcom/netease/mpay/bz$a;

    sget-object v2, Lcom/netease/mpay/bz$a;->b:Lcom/netease/mpay/bz$a;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/netease/mpay/bz$a;->c:Lcom/netease/mpay/bz$a;

    iput-object v1, p0, Lcom/netease/mpay/bz;->f:Lcom/netease/mpay/bz$a;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/netease/mpay/bz;->setBackButton(Z)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_4
    const-string v1, "about:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-super {p0, p1, p2}, Lcom/netease/mpay/widget/b/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/netease/mpay/bz;->h:Lcom/netease/mpay/lo;

    invoke-virtual {v1, p2}, Lcom/netease/mpay/lo;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http(s)?://.*"

    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "file:///android_asset/netease_mpay/loading.html"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/widget/b/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_7
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/netease/mpay/bz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/mpay/widget/b/c;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    iget-object v0, v0, Lcom/netease/mpay/b/f;->c:Lcom/netease/mpay/b/p$a;

    iget-object v0, v0, Lcom/netease/mpay/b/p$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    iget-object v0, v0, Lcom/netease/mpay/b/f;->c:Lcom/netease/mpay/b/p$a;

    iget-object v0, v0, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/netease/mpay/widget/b/c;->closeWindow()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/netease/mpay/lo;

    iget-object v1, p0, Lcom/netease/mpay/bz;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    invoke-virtual {v2}, Lcom/netease/mpay/b/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/lo;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/bz;->h:Lcom/netease/mpay/lo;

    iget-object v0, p0, Lcom/netease/mpay/bz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/bz;->g:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/netease/mpay/bz;->v()V

    invoke-direct {p0}, Lcom/netease/mpay/bz;->x()V

    goto :goto_0
.end method

.method public closeWindow()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/bz;->f:Lcom/netease/mpay/bz$a;

    sget-object v1, Lcom/netease/mpay/bz$a;->c:Lcom/netease/mpay/bz$a;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/bz;->z()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/netease/mpay/widget/b/c;->closeWindow()V

    goto :goto_0
.end method

.method protected s()Lcom/netease/mpay/widget/b/c$e;
    .locals 5

    new-instance v0, Lcom/netease/mpay/widget/b/c$e;

    iget-object v1, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    invoke-virtual {v1}, Lcom/netease/mpay/b/f;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/widget/b/c$a;

    iget-object v3, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    iget-boolean v3, v3, Lcom/netease/mpay/b/f;->f:Z

    iget-object v4, p0, Lcom/netease/mpay/bz;->e:Lcom/netease/mpay/b/f;

    invoke-virtual {v4}, Lcom/netease/mpay/b/f;->p()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/widget/b/c$a;-><init>(ZLjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/b/c$e;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/widget/b/c$a;)V

    return-object v0
.end method
