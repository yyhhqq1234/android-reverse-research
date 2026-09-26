.class public Lcom/netease/mpay/oj;
.super Lcom/netease/mpay/widget/b/c;


# instance fields
.field private e:Lcom/netease/mpay/b/ai;

.field private f:Landroid/content/res/Resources;

.field private g:Lcom/netease/mpay/widget/s;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/b/c;-><init>(Landroid/support/v4/app/FragmentActivity;)V

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
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/oj;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/oj;->g:Lcom/netease/mpay/widget/s;

    iget-object v0, p0, Lcom/netease/mpay/oj;->e:Lcom/netease/mpay/b/ai;

    iget-boolean v0, v0, Lcom/netease/mpay/b/ai;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/mpay/oj;->w()Lcom/netease/mpay/widget/b/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/widget/b/c$c;->a()V

    :cond_0
    iput-boolean v2, p0, Lcom/netease/mpay/oj;->h:Z

    iput-boolean v2, p0, Lcom/netease/mpay/oj;->i:Z

    invoke-virtual {p0}, Lcom/netease/mpay/oj;->w()Lcom/netease/mpay/widget/b/c$c;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/f/an;

    iget-object v2, p0, Lcom/netease/mpay/oj;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/oj;->e:Lcom/netease/mpay/b/ai;

    invoke-virtual {v3}, Lcom/netease/mpay/b/ai;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/oj;->e:Lcom/netease/mpay/b/ai;

    invoke-virtual {v4}, Lcom/netease/mpay/b/ai;->b()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netease/mpay/f/an$a;->y:Lcom/netease/mpay/f/an$a;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netease/mpay/f/an;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/an$a;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/f/an;)V

    return-void
.end method

.method private x()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/oj;->f:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->bq:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/widget/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private y()V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/oj;->g:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/oj;->f:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->aV:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oj;->f:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cD:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/ok;

    invoke-direct {v3, p0}, Lcom/netease/mpay/ok;-><init>(Lcom/netease/mpay/oj;)V

    iget-object v4, p0, Lcom/netease/mpay/oj;->f:Landroid/content/res/Resources;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->aU:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/ol;

    invoke-direct {v5, p0}, Lcom/netease/mpay/ol;-><init>(Lcom/netease/mpay/oj;)V

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/ai;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/ai;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/oj;->e:Lcom/netease/mpay/b/ai;

    iget-object v0, p0, Lcom/netease/mpay/oj;->e:Lcom/netease/mpay/b/ai;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/mpay/widget/b/c;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/oj;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oj;->f:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/netease/mpay/oj;->x()V

    invoke-direct {p0}, Lcom/netease/mpay/oj;->v()V

    return-void
.end method

.method public closeWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/netease/mpay/oj;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/mpay/oj;->h:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/b/aq;

    invoke-direct {v0}, Lcom/netease/mpay/b/aq;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/oj;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/aq;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/oj;->y()V

    goto :goto_0
.end method

.method protected s()Lcom/netease/mpay/widget/b/c$e;
    .locals 2

    new-instance v0, Lcom/netease/mpay/widget/b/c$e;

    iget-object v1, p0, Lcom/netease/mpay/oj;->e:Lcom/netease/mpay/b/ai;

    invoke-virtual {v1}, Lcom/netease/mpay/b/ai;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/b/c$e;-><init>(Lcom/netease/mpay/b/a$a;)V

    return-object v0
.end method
