.class Lcom/netease/mpay/codescanner/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/AuthenticationCallback;


# instance fields
.field final synthetic a:Lcom/netease/mpay/codescanner/m;


# direct methods
.method constructor <init>(Lcom/netease/mpay/codescanner/m;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/r;->a:Lcom/netease/mpay/codescanner/m;

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


# virtual methods
.method public onDialogFinish()V
    .locals 0

    return-void
.end method

.method public onEnterGame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onGuestBindSuccess(Lcom/netease/mpay/User;)V
    .locals 0

    return-void
.end method

.method public onLoginSuccess(Lcom/netease/mpay/User;)V
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/codescanner/r;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/r;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v1}, Lcom/netease/mpay/codescanner/m;->e(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;Lcom/netease/mpay/e/b/q;)Lcom/netease/mpay/e/b/q;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/r;->a:Lcom/netease/mpay/codescanner/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/mpay/codescanner/m;->b(Lcom/netease/mpay/codescanner/m;Lcom/netease/mpay/e/b/o;)Lcom/netease/mpay/e/b/o;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/r;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/m;->d(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/q;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    iget v2, v0, Lcom/netease/mpay/e/b/o;->f:I

    iget v3, p1, Lcom/netease/mpay/User;->type:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/User;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/codescanner/r;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v2, v0}, Lcom/netease/mpay/codescanner/m;->b(Lcom/netease/mpay/codescanner/m;Lcom/netease/mpay/e/b/o;)Lcom/netease/mpay/e/b/o;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/codescanner/r;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/m;->f(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/b/an;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/r;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cV:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/b/an;-><init>(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/netease/mpay/codescanner/r;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/an;->a(Landroid/app/Activity;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/codescanner/r;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/r;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v1}, Lcom/netease/mpay/codescanner/m;->f(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;Lcom/netease/mpay/e/b/o;)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/r;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/r;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v1}, Lcom/netease/mpay/codescanner/m;->f(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/r;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v2}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/b/w;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/b/w;->b:Lcom/netease/mpay/server/response/aa;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;Ljava/lang/String;Lcom/netease/mpay/server/response/aa;)V

    goto :goto_1
.end method

.method public onLogout(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
