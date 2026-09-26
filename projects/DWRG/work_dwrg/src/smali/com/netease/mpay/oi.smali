.class public Lcom/netease/mpay/oi;
.super Lcom/netease/mpay/widget/b/c;


# instance fields
.field private e:Lcom/netease/mpay/b/ah;

.field private f:Lcom/netease/mpay/widget/s;

.field private g:Z


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


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/ah;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/ah;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    iget-object v0, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/widget/b/c;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    const/16 v0, 0x439

    if-ne v0, p1, :cond_0

    const/16 v0, 0x64

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oi;->f:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/oi;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->dF:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/mpay/f/a/b$a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/b/ap;

    invoke-direct {v0}, Lcom/netease/mpay/b/ap;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/oi;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ap;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/netease/mpay/widget/b/c;->a(Lcom/netease/mpay/f/a/b$a;)V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/netease/mpay/widget/b/c;->b(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/oi;->g:Z

    iget-object v0, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    invoke-virtual {v0}, Lcom/netease/mpay/b/ah;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    iget-object v0, v0, Lcom/netease/mpay/b/ah;->a:Lcom/netease/mpay/f/an$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    iget-object v0, v0, Lcom/netease/mpay/b/ah;->a:Lcom/netease/mpay/f/an$a;

    sget-object v1, Lcom/netease/mpay/f/an$a;->F:Lcom/netease/mpay/f/an$a;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/oi;->closeWindow()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/oi;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/oi;->f:Lcom/netease/mpay/widget/s;

    invoke-virtual {p0}, Lcom/netease/mpay/oi;->w()Lcom/netease/mpay/widget/b/c$c;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/f/an;

    iget-object v2, p0, Lcom/netease/mpay/oi;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    invoke-virtual {v3}, Lcom/netease/mpay/b/ah;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    invoke-virtual {v4}, Lcom/netease/mpay/b/ah;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    iget-object v5, v5, Lcom/netease/mpay/b/ah;->a:Lcom/netease/mpay/f/an$a;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netease/mpay/f/an;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/an$a;)V

    iget-object v2, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    iget-object v2, v2, Lcom/netease/mpay/b/ah;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/f/an;->d(Ljava/lang/String;)Lcom/netease/mpay/f/an;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    iget-object v2, v2, Lcom/netease/mpay/b/ah;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/f/an;->c(Ljava/lang/String;)Lcom/netease/mpay/f/an;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    iget-object v2, v2, Lcom/netease/mpay/b/ah;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    iget-object v3, v3, Lcom/netease/mpay/b/ah;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/f/an;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/f/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/f/an;)V

    goto :goto_0
.end method

.method public closeWindow()V
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/widget/b/c;->closeWindow()V

    iget-object v0, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    iget-object v0, v0, Lcom/netease/mpay/b/ah;->d:Lcom/netease/mpay/server/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    iget-object v0, v0, Lcom/netease/mpay/b/ah;->d:Lcom/netease/mpay/server/e$a;

    invoke-interface {v0}, Lcom/netease/mpay/server/e$a;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/oi;->g:Z

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/widget/b/c;->j()V

    iget-object v0, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    iget-object v0, v0, Lcom/netease/mpay/b/ah;->d:Lcom/netease/mpay/server/e$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/mpay/oi;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    iget-object v0, v0, Lcom/netease/mpay/b/ah;->d:Lcom/netease/mpay/server/e$a;

    invoke-interface {v0}, Lcom/netease/mpay/server/e$a;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/oi;->g:Z

    :cond_0
    return-void
.end method

.method public onVerify(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    iget-object v0, v0, Lcom/netease/mpay/b/ah;->d:Lcom/netease/mpay/server/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    iget-object v0, v0, Lcom/netease/mpay/b/ah;->d:Lcom/netease/mpay/server/e$a;

    invoke-interface {v0, p1}, Lcom/netease/mpay/server/e$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/oi;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/oi;->g:Z

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/netease/mpay/widget/b/c;->onVerify(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected s()Lcom/netease/mpay/widget/b/c$e;
    .locals 2

    new-instance v0, Lcom/netease/mpay/widget/b/c$e;

    iget-object v1, p0, Lcom/netease/mpay/oi;->e:Lcom/netease/mpay/b/ah;

    invoke-virtual {v1}, Lcom/netease/mpay/b/ah;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/b/c$e;-><init>(Lcom/netease/mpay/b/a$a;)V

    return-object v0
.end method
