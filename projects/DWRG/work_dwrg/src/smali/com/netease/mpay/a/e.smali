.class public Lcom/netease/mpay/a/e;
.super Lcom/netease/mpay/a;


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Lcom/netease/mpay/b/g;

.field private f:Lcom/netease/mpay/a/a;

.field private g:Lcom/netease/mpay/widget/av;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/netease/mpay/a/e;->d:Landroid/app/Activity;

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

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/a/e;->d:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/av;->a(Landroid/content/Context;Z)Lcom/netease/mpay/widget/av;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/a/e;->g:Lcom/netease/mpay/widget/av;

    iget-object v0, p0, Lcom/netease/mpay/a/e;->g:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->show()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/g;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/g;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/a/e;->e:Lcom/netease/mpay/b/g;

    iget-object v0, p0, Lcom/netease/mpay/a/e;->e:Lcom/netease/mpay/b/g;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/a/e;->g:Lcom/netease/mpay/widget/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/a/e;->g:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/a/e;->g:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/a/e;->f:Lcom/netease/mpay/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/a/a;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/a/e;->e:Lcom/netease/mpay/b/g;

    iget-boolean v0, v0, Lcom/netease/mpay/b/g;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/a/a;

    iget-object v1, p0, Lcom/netease/mpay/a/e;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/a/e;->e:Lcom/netease/mpay/b/g;

    invoke-virtual {v2}, Lcom/netease/mpay/b/g;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/a/e;->e:Lcom/netease/mpay/b/g;

    invoke-virtual {v3}, Lcom/netease/mpay/b/g;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/a/e;->e:Lcom/netease/mpay/b/g;

    iget-object v4, v4, Lcom/netease/mpay/b/g;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/a/e;->e:Lcom/netease/mpay/b/g;

    iget-boolean v5, v5, Lcom/netease/mpay/b/g;->b:Z

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/a/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/netease/mpay/a/e;->f:Lcom/netease/mpay/a/a;

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/a/e;->f:Lcom/netease/mpay/a/a;

    invoke-virtual {v0}, Lcom/netease/mpay/a/a;->a()V

    invoke-direct {p0}, Lcom/netease/mpay/a/e;->s()V

    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/a/a;

    iget-object v1, p0, Lcom/netease/mpay/a/e;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/a/e;->e:Lcom/netease/mpay/b/g;

    invoke-virtual {v2}, Lcom/netease/mpay/b/g;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/a/e;->e:Lcom/netease/mpay/b/g;

    invoke-virtual {v3}, Lcom/netease/mpay/b/g;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/a/e;->e:Lcom/netease/mpay/b/g;

    iget-object v4, v4, Lcom/netease/mpay/b/g;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/a/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/a/e;->f:Lcom/netease/mpay/a/a;

    goto :goto_0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/a/e;->g:Lcom/netease/mpay/widget/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/a/e;->g:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/a/e;->g:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->dismiss()V

    :cond_0
    return-void
.end method
