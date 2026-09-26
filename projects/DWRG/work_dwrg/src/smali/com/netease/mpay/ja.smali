.class public Lcom/netease/mpay/ja;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/ja$b;,
        Lcom/netease/mpay/ja$a;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/q;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

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

    new-instance v0, Lcom/netease/mpay/b/q;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/q;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/ja;->d:Lcom/netease/mpay/b/q;

    iget-object v0, p0, Lcom/netease/mpay/ja;->d:Lcom/netease/mpay/b/q;

    return-object v0
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v1, Lcom/netease/mpay/ja$a;

    invoke-direct {v1}, Lcom/netease/mpay/ja$a;-><init>()V

    iget-object v0, p0, Lcom/netease/mpay/ja;->d:Lcom/netease/mpay/b/q;

    iget-object v0, v0, Lcom/netease/mpay/b/q;->a:Lcom/netease/mpay/ja$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ja;->d:Lcom/netease/mpay/b/q;

    iget-object v0, v0, Lcom/netease/mpay/b/q;->a:Lcom/netease/mpay/ja$a;

    iget-object v0, v0, Lcom/netease/mpay/ja$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/ja;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v0}, Lcom/netease/mpay/widget/at;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/netease/mpay/ja$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ja;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    iget-object v0, p0, Lcom/netease/mpay/ja;->d:Lcom/netease/mpay/b/q;

    iget-object v0, v0, Lcom/netease/mpay/b/q;->b:Lcom/netease/mpay/ja$b;

    invoke-interface {v0, v1}, Lcom/netease/mpay/ja$b;->a(Lcom/netease/mpay/ja$a;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/ja;->d:Lcom/netease/mpay/b/q;

    iget-object v0, v0, Lcom/netease/mpay/b/q;->b:Lcom/netease/mpay/ja$b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ja;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ja;->d:Lcom/netease/mpay/b/q;

    iget-object v0, v0, Lcom/netease/mpay/b/q;->a:Lcom/netease/mpay/ja$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ja;->d:Lcom/netease/mpay/b/q;

    iget-object v0, v0, Lcom/netease/mpay/b/q;->a:Lcom/netease/mpay/ja$a;

    iget-object v0, v0, Lcom/netease/mpay/ja$a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ja;->d:Lcom/netease/mpay/b/q;

    iget-object v0, v0, Lcom/netease/mpay/b/q;->a:Lcom/netease/mpay/ja$a;

    iget-object v0, v0, Lcom/netease/mpay/ja$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v3, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ja;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    iget-object v0, p0, Lcom/netease/mpay/ja;->d:Lcom/netease/mpay/b/q;

    iget-object v0, v0, Lcom/netease/mpay/b/q;->b:Lcom/netease/mpay/ja$b;

    new-instance v1, Lcom/netease/mpay/ja$a;

    invoke-direct {v1}, Lcom/netease/mpay/ja$a;-><init>()V

    invoke-interface {v0, v1}, Lcom/netease/mpay/ja$b;->a(Lcom/netease/mpay/ja$a;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netease/mpay/ja;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/ja;->d:Lcom/netease/mpay/b/q;

    iget-object v0, v0, Lcom/netease/mpay/b/q;->a:Lcom/netease/mpay/ja$a;

    iget-object v0, v0, Lcom/netease/mpay/ja$a;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netease/mpay/ja;->d:Lcom/netease/mpay/b/q;

    iget-object v2, v2, Lcom/netease/mpay/b/q;->a:Lcom/netease/mpay/ja$a;

    iget-object v2, v2, Lcom/netease/mpay/ja$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method
