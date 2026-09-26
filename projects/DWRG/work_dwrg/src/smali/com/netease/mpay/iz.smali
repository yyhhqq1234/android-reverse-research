.class public Lcom/netease/mpay/iz;
.super Lcom/netease/mpay/widget/b/c;


# instance fields
.field private e:Lcom/netease/mpay/b/r;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/b/c;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/iz;->f:Ljava/lang/String;

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

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/iz;->i:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cq:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/widget/b/c;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/r;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/r;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/iz;->e:Lcom/netease/mpay/b/r;

    iget-object v0, p0, Lcom/netease/mpay/iz;->e:Lcom/netease/mpay/b/r;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/widget/b/c;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    instance-of v0, p4, Lcom/netease/mpay/b/ar$a;

    if-eqz v0, :cond_2

    move-object v0, p4

    check-cast v0, Lcom/netease/mpay/b/ar$a;

    iget-object v0, v0, Lcom/netease/mpay/b/ar$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/iz;->f:Ljava/lang/String;

    move-object v0, p4

    check-cast v0, Lcom/netease/mpay/b/ar$a;

    iget-object v0, v0, Lcom/netease/mpay/b/ar$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/iz;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/netease/mpay/iz;->w()Lcom/netease/mpay/widget/b/c$c;

    move-result-object v0

    check-cast p4, Lcom/netease/mpay/b/ar$a;

    iget-object v1, p4, Lcom/netease/mpay/b/ar$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/b/c$c;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-eq p1, v3, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/netease/mpay/iz;->h:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/iz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p4, v0}, Lcom/netease/mpay/b/al;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/iz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/iz;->i:Landroid/content/res/Resources;

    invoke-super {p0, p1}, Lcom/netease/mpay/widget/b/c;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/netease/mpay/widget/b/c;->b(Landroid/os/Bundle;)V

    iput-boolean v4, p0, Lcom/netease/mpay/iz;->h:Z

    iget-object v1, p0, Lcom/netease/mpay/iz;->e:Lcom/netease/mpay/b/r;

    invoke-virtual {v1}, Lcom/netease/mpay/b/r;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/iz;->e:Lcom/netease/mpay/b/r;

    iget-boolean v2, v2, Lcom/netease/mpay/b/r;->f:Z

    if-eqz v2, :cond_3

    const-string v0, "mcard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/netease/mpay/b$a;->C:Lcom/netease/mpay/b$a;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/iz;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/iz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v1, v3, v0}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Landroid/os/Bundle;Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/iz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/iz;->i:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/netease/mpay/iz;->v()V

    invoke-virtual {p0, v4}, Lcom/netease/mpay/iz;->setBackButton(Z)V

    return-void

    :cond_1
    const-string v0, "ecard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/netease/mpay/b$a;->D:Lcom/netease/mpay/b$a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/netease/mpay/b$a;->E:Lcom/netease/mpay/b$a;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v2, "epay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v1, Lcom/netease/mpay/b$a;->s:Lcom/netease/mpay/b$a;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v2, "mcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lcom/netease/mpay/b$a;->v:Lcom/netease/mpay/b$a;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v2, "weixinpay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v1, Lcom/netease/mpay/b$a;->z:Lcom/netease/mpay/b$a;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v2, "tenpay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/netease/mpay/b$a;->A:Lcom/netease/mpay/b$a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v1, v0

    goto :goto_0
.end method

.method public g()V
    .locals 6

    invoke-super {p0}, Lcom/netease/mpay/widget/b/c;->g()V

    iget-boolean v0, p0, Lcom/netease/mpay/iz;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/iz;->setBackButton(Z)V

    iget-object v0, p0, Lcom/netease/mpay/iz;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/netease/mpay/iz;->w()Lcom/netease/mpay/widget/b/c$c;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/f/an;

    iget-object v2, p0, Lcom/netease/mpay/iz;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/iz;->e:Lcom/netease/mpay/b/r;

    invoke-virtual {v3}, Lcom/netease/mpay/b/r;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/iz;->e:Lcom/netease/mpay/b/r;

    invoke-virtual {v4}, Lcom/netease/mpay/b/r;->b()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netease/mpay/f/an$a;->B:Lcom/netease/mpay/f/an$a;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netease/mpay/f/an;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/an$a;)V

    iget-object v2, p0, Lcom/netease/mpay/iz;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/f/an;->b(Ljava/lang/String;)Lcom/netease/mpay/f/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/f/an;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/netease/mpay/iz;->w()Lcom/netease/mpay/widget/b/c$c;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/f/an;

    iget-object v0, p0, Lcom/netease/mpay/iz;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/iz;->e:Lcom/netease/mpay/b/r;

    invoke-virtual {v3}, Lcom/netease/mpay/b/r;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/iz;->e:Lcom/netease/mpay/b/r;

    invoke-virtual {v4}, Lcom/netease/mpay/b/r;->b()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netease/mpay/f/an$a;->A:Lcom/netease/mpay/f/an$a;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/netease/mpay/f/an;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/an$a;)V

    iget-object v0, p0, Lcom/netease/mpay/iz;->e:Lcom/netease/mpay/b/r;

    iget-boolean v0, v0, Lcom/netease/mpay/b/r;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/iz;->f:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v0}, Lcom/netease/mpay/f/an;->a(Ljava/lang/String;)Lcom/netease/mpay/f/an;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/f/an;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/iz;->e:Lcom/netease/mpay/b/r;

    invoke-virtual {v0}, Lcom/netease/mpay/b/r;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected s()Lcom/netease/mpay/widget/b/c$e;
    .locals 5

    new-instance v0, Lcom/netease/mpay/widget/b/c$e;

    iget-object v1, p0, Lcom/netease/mpay/iz;->e:Lcom/netease/mpay/b/r;

    invoke-virtual {v1}, Lcom/netease/mpay/b/r;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/widget/b/c$a;

    iget-object v3, p0, Lcom/netease/mpay/iz;->e:Lcom/netease/mpay/b/r;

    iget-boolean v3, v3, Lcom/netease/mpay/b/r;->f:Z

    iget-object v4, p0, Lcom/netease/mpay/iz;->e:Lcom/netease/mpay/b/r;

    invoke-virtual {v4}, Lcom/netease/mpay/b/r;->p()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/widget/b/c$a;-><init>(ZLjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/widget/b/c$e;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/widget/b/c$a;)V

    return-object v0
.end method
