.class public Lcom/netease/mpay/le;
.super Lcom/netease/mpay/widget/b/c;


# instance fields
.field private e:Lcom/netease/mpay/b/u;

.field private f:Landroid/content/res/Resources;


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

    iget-object v0, p0, Lcom/netease/mpay/le;->e:Lcom/netease/mpay/b/u;

    iget-boolean v0, v0, Lcom/netease/mpay/b/u;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/mpay/le;->w()Lcom/netease/mpay/widget/b/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/widget/b/c$c;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/le;->w()Lcom/netease/mpay/widget/b/c$c;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/f/an;

    iget-object v2, p0, Lcom/netease/mpay/le;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/le;->e:Lcom/netease/mpay/b/u;

    invoke-virtual {v3}, Lcom/netease/mpay/b/u;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/le;->e:Lcom/netease/mpay/b/u;

    invoke-virtual {v4}, Lcom/netease/mpay/b/u;->b()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netease/mpay/f/an$a;->x:Lcom/netease/mpay/f/an$a;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netease/mpay/f/an;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/an$a;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/f/an;)V

    return-void
.end method

.method private x()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/le;->f:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->bd:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/widget/b/c;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/u;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/u;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/le;->e:Lcom/netease/mpay/b/u;

    iget-object v0, p0, Lcom/netease/mpay/le;->e:Lcom/netease/mpay/b/u;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/mpay/widget/b/c;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/le;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/le;->f:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/netease/mpay/le;->x()V

    invoke-direct {p0}, Lcom/netease/mpay/le;->v()V

    return-void
.end method

.method protected s()Lcom/netease/mpay/widget/b/c$e;
    .locals 2

    new-instance v0, Lcom/netease/mpay/widget/b/c$e;

    iget-object v1, p0, Lcom/netease/mpay/le;->e:Lcom/netease/mpay/b/u;

    invoke-virtual {v1}, Lcom/netease/mpay/b/u;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/b/c$e;-><init>(Lcom/netease/mpay/b/a$a;)V

    return-object v0
.end method
