.class public Lcom/netease/mpay/b/s;
.super Lcom/netease/mpay/b/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/b/s$a;
    }
.end annotation


# instance fields
.field public g:Lcom/netease/mpay/b/s$a;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/r;-><init>(Landroid/content/Intent;)V

    new-instance v0, Lcom/netease/mpay/b/s$a;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/s$a;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/b/s;->g:Lcom/netease/mpay/b/s$a;

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/b/o;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/netease/mpay/b/r;

    new-instance v1, Lcom/netease/mpay/b/t;

    invoke-direct {v1, p1, v2}, Lcom/netease/mpay/b/t;-><init>(Lcom/netease/mpay/b/o;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/b/r;-><init>(Lcom/netease/mpay/b/t;Lcom/netease/mpay/b/r$a;)V

    invoke-direct {p0, v0, v2}, Lcom/netease/mpay/b/r;-><init>(Lcom/netease/mpay/b/t;Lcom/netease/mpay/b/r$a;)V

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

.method public constructor <init>(Lcom/netease/mpay/b/r;Lcom/netease/mpay/b/s$a;)V
    .locals 1

    iget-object v0, p1, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/b/r;-><init>(Lcom/netease/mpay/b/t;Lcom/netease/mpay/b/r$a;)V

    iput-object p2, p0, Lcom/netease/mpay/b/s;->g:Lcom/netease/mpay/b/s$a;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/netease/mpay/b/r;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/b/s;->g:Lcom/netease/mpay/b/s$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/s;->g:Lcom/netease/mpay/b/s$a;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/b/s$a;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/b/s;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/b/s;->g:Lcom/netease/mpay/b/s$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/s;->g:Lcom/netease/mpay/b/s$a;

    iget-object v0, v0, Lcom/netease/mpay/b/s$a;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/mpay/b/s;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/b/s;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/b/s;->g:Lcom/netease/mpay/b/s$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/s;->g:Lcom/netease/mpay/b/s$a;

    iget-object v0, v0, Lcom/netease/mpay/b/s$a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/mpay/b/s;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
