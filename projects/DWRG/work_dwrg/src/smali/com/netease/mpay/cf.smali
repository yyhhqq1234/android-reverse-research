.class Lcom/netease/mpay/cf;
.super Lcom/netease/mpay/widget/bf$c;


# instance fields
.field final synthetic a:Lcom/netease/mpay/ce;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ce;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    invoke-direct {p0}, Lcom/netease/mpay/widget/bf$c;-><init>()V

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
.method protected a(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    invoke-static {v0}, Lcom/netease/mpay/ce;->a(Lcom/netease/mpay/ce;)Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    invoke-static {v0}, Lcom/netease/mpay/ce;->b(Lcom/netease/mpay/ce;)Lcom/netease/mpay/ce$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    invoke-static {v0}, Lcom/netease/mpay/ce;->c(Lcom/netease/mpay/ce;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    iget-object v0, v0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    iget-object v1, v1, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    invoke-static {v2}, Lcom/netease/mpay/ce;->a(Lcom/netease/mpay/ce;)Lcom/netease/mpay/e/b/af;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    invoke-static {v3}, Lcom/netease/mpay/ce;->b(Lcom/netease/mpay/ce;)Lcom/netease/mpay/ce$a;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/ce$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    invoke-static {v4}, Lcom/netease/mpay/ce;->b(Lcom/netease/mpay/ce;)Lcom/netease/mpay/ce$a;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/ce$a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    invoke-static {v5}, Lcom/netease/mpay/ce;->b(Lcom/netease/mpay/ce;)Lcom/netease/mpay/ce$a;

    move-result-object v5

    iget v5, v5, Lcom/netease/mpay/ce$a;->c:I

    iget-object v6, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    invoke-static {v6}, Lcom/netease/mpay/ce;->c(Lcom/netease/mpay/ce;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v8, :cond_2

    const-string v6, "tctc_1"

    :goto_0
    const-string v7, "tc"

    invoke-virtual/range {v0 .. v8}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    iget-object v0, v0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/cz;->a(Landroid/content/Context;)Lcom/netease/mpay/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/cz;->a()V

    iget-object v0, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    iget-object v0, v0, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    iget-object v1, v1, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/netease/mpay/b/au;

    invoke-direct {v0}, Lcom/netease/mpay/b/au;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    iget-object v1, v1, Lcom/netease/mpay/ce;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/au;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    invoke-static {v0}, Lcom/netease/mpay/ce;->d(Lcom/netease/mpay/ce;)Lcom/netease/mpay/b/k;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_1

    const-string v0, "AuthenticationCallback : onDialogFinish"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    invoke-static {v0}, Lcom/netease/mpay/ce;->d(Lcom/netease/mpay/ce;)Lcom/netease/mpay/b/k;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/cf;->a:Lcom/netease/mpay/ce;

    invoke-static {v0, v8}, Lcom/netease/mpay/ce;->a(Lcom/netease/mpay/ce;Z)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/netease/mpay/cg;

    invoke-direct {v1, p0}, Lcom/netease/mpay/cg;-><init>(Lcom/netease/mpay/cf;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    const-string v6, "tctc_2"

    goto :goto_0
.end method
