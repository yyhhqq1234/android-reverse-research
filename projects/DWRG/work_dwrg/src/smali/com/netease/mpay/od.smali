.class Lcom/netease/mpay/od;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/oc$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/oc;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oc;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/od;->a:Lcom/netease/mpay/oc;

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
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/od;->a:Lcom/netease/mpay/oc;

    invoke-static {v0}, Lcom/netease/mpay/oc;->e(Lcom/netease/mpay/oc;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/e/b/u;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/mpay/od;->a:Lcom/netease/mpay/oc;

    invoke-static {v0, p1}, Lcom/netease/mpay/oc;->a(Lcom/netease/mpay/oc;Lcom/netease/mpay/e/b/u;)Lcom/netease/mpay/e/b/u;

    iget-object v0, p0, Lcom/netease/mpay/od;->a:Lcom/netease/mpay/oc;

    invoke-virtual {v0}, Lcom/netease/mpay/oc;->w()Lcom/netease/mpay/widget/b/c$c;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/od;->a:Lcom/netease/mpay/oc;

    iget-object v3, p1, Lcom/netease/mpay/e/b/u;->f:Ljava/lang/String;

    iget-boolean v4, p1, Lcom/netease/mpay/e/b/u;->g:Z

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    :goto_0
    invoke-static {v2, v3, p2}, Lcom/netease/mpay/oc;->a(Lcom/netease/mpay/oc;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/f/an;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/mpay/widget/b/c$c;->a(Lcom/netease/mpay/f/an;)V

    iget-object v0, p0, Lcom/netease/mpay/od;->a:Lcom/netease/mpay/oc;

    invoke-static {v0}, Lcom/netease/mpay/oc;->a(Lcom/netease/mpay/oc;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/netease/mpay/e/b/u;->g:Z

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/od;->a:Lcom/netease/mpay/oc;

    iget-object v0, p1, Lcom/netease/mpay/e/b/u;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/netease/mpay/e/b/u;->h:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/od;->a:Lcom/netease/mpay/oc;

    iget-object v0, v0, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/sharer/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v0}, Lcom/netease/mpay/oc;->a(Lcom/netease/mpay/oc;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/od;->a:Lcom/netease/mpay/oc;

    invoke-static {v0}, Lcom/netease/mpay/oc;->a(Lcom/netease/mpay/oc;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/od;->a:Lcom/netease/mpay/oc;

    invoke-static {v2}, Lcom/netease/mpay/oc;->b(Lcom/netease/mpay/oc;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/od;->a:Lcom/netease/mpay/oc;

    iget-object v0, v0, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/od;->a:Lcom/netease/mpay/oc;

    iget-object v0, v0, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/od;->a:Lcom/netease/mpay/oc;

    invoke-static {v0}, Lcom/netease/mpay/oc;->d(Lcom/netease/mpay/oc;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/od;->a:Lcom/netease/mpay/oc;

    invoke-static {v1}, Lcom/netease/mpay/oc;->c(Lcom/netease/mpay/oc;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cJ:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oe;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oe;-><init>(Lcom/netease/mpay/od;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
