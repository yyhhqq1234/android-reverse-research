.class public Lcom/netease/mpay/af;
.super Landroid/support/v4/app/FragmentActivity;


# instance fields
.field a:Lcom/netease/mpay/a;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

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

.method private a()V
    .locals 1

    sget-object v0, Lcom/netease/mpay/bk;->a:Lcom/netease/mpay/dc;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/bk;->a:Lcom/netease/mpay/dc;

    invoke-virtual {v0, p0}, Lcom/netease/mpay/dc;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    invoke-static {p0}, Lcom/netease/mpay/widget/bf;->b(Landroid/app/Activity;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-static {p2, p3}, Lcom/netease/mpay/b/al;->a(ILandroid/content/Intent;)Lcom/netease/mpay/b/al;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0}, Lcom/netease/mpay/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    invoke-static {p0}, Lcom/netease/mpay/widget/bf;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/netease/mpay/af;->a()V

    iget-boolean v0, p0, Lcom/netease/mpay/af;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/af;->a()V

    invoke-static {p0, p1}, Lcom/netease/mpay/d;->a(Landroid/app/Activity;Landroid/os/Bundle;)Z

    invoke-static {p0}, Lcom/netease/mpay/b$a;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/netease/mpay/a;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/ag;

    invoke-direct {v0, p0, p0}, Lcom/netease/mpay/ag;-><init>(Lcom/netease/mpay/af;Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0}, Lcom/netease/mpay/a;->a()V

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0}, Lcom/netease/mpay/a;->b()V

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/a;->a(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/netease/mpay/d;->b(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/af;->b:Z

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/a;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0}, Lcom/netease/mpay/a;->j()V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onFragmentCallback(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0, p1, p2}, Lcom/netease/mpay/a;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0}, Lcom/netease/mpay/a;->c()V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/af;->b:Z

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0}, Lcom/netease/mpay/a;->h()V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0}, Lcom/netease/mpay/a;->g()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/a;->a(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/af;->a()V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0}, Lcom/netease/mpay/a;->e()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/a;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0}, Lcom/netease/mpay/a;->f()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {p1}, Lcom/netease/mpay/d;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/a;->d(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0}, Lcom/netease/mpay/a;->d()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0}, Lcom/netease/mpay/a;->i()V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/a;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/netease/mpay/af;->a:Lcom/netease/mpay/a;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/a;->a(Z)V

    return-void
.end method
