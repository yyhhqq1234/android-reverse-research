.class public Lcom/netease/mpay/li;
.super Lcom/netease/mpay/a;


# instance fields
.field private d:Lcom/netease/mpay/b/s;

.field private e:Z

.field private f:Lcom/netease/mpay/ii;

.field private g:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/li;->e:Z

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

.method static synthetic a(Lcom/netease/mpay/li;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/li;->g:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/li;)Lcom/netease/mpay/ii;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/li;->f:Lcom/netease/mpay/ii;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/li;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/li;->t()V

    return-void
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/li;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v0}, Lcom/netease/mpay/b/s;->n()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private t()V
    .locals 8

    new-instance v7, Lcom/netease/mpay/widget/s;

    iget-object v0, p0, Lcom/netease/mpay/li;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v7, v0}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/netease/mpay/f/k;

    iget-object v1, p0, Lcom/netease/mpay/li;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/li;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/li;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v3}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/li;->d:Lcom/netease/mpay/b/s;

    iget-object v4, v4, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/li;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v5}, Lcom/netease/mpay/b/s;->q()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netease/mpay/lj;

    invoke-direct {v6, p0, v7}, Lcom/netease/mpay/lj;-><init>(Lcom/netease/mpay/li;Lcom/netease/mpay/widget/s;)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/k;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/k;->h()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/s;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/s;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/li;->d:Lcom/netease/mpay/b/s;

    iget-object v0, p0, Lcom/netease/mpay/li;->d:Lcom/netease/mpay/b/s;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/li;->f:Lcom/netease/mpay/ii;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/li;->f:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pay_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/li;->f:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    goto :goto_0

    :cond_3
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/netease/mpay/li;->f:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->a()V

    goto :goto_0

    :cond_4
    const-string v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/netease/mpay/li;->f:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->b()V

    goto :goto_0

    :cond_5
    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/mpay/li;->f:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->b()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/netease/mpay/li;->f:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/li;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->V:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/li;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/li;->g:Landroid/content/res/Resources;

    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/li;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/netease/mpay/li;->f:Lcom/netease/mpay/ii;

    invoke-direct {p0}, Lcom/netease/mpay/li;->s()V

    invoke-direct {p0}, Lcom/netease/mpay/li;->t()V

    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/li;->f:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->o()Z

    iget-object v0, p0, Lcom/netease/mpay/li;->f:Lcom/netease/mpay/ii;

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->c()V

    const/4 v0, 0x1

    return v0
.end method
