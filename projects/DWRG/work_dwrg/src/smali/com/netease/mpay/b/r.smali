.class public Lcom/netease/mpay/b/r;
.super Lcom/netease/mpay/b/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/b/r$a;
    }
.end annotation


# instance fields
.field public e:Lcom/netease/mpay/b/r$a;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/t;-><init>(Landroid/content/Intent;)V

    new-instance v0, Lcom/netease/mpay/b/r$a;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/r$a;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    sget-object v0, Lcom/netease/mpay/b/ak;->T:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/r;->a(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/b/r;->f:Z

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/b/t;Lcom/netease/mpay/b/r$a;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/t;-><init>(Lcom/netease/mpay/b/t;)V

    iput-object p2, p0, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/mpay/b/r;->f:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/netease/mpay/b/t;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/b/r$a;->a(Landroid/os/Bundle;)V

    :cond_0
    sget-object v0, Lcom/netease/mpay/b/ak;->T:Lcom/netease/mpay/b/ak;

    iget-boolean v1, p0, Lcom/netease/mpay/b/r;->f:Z

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/r;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Z)V

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/b/r;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    iget-object v0, v0, Lcom/netease/mpay/b/r$a;->c:Lcom/netease/mpay/server/response/e$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    iget-object v0, v0, Lcom/netease/mpay/b/r$a;->c:Lcom/netease/mpay/server/response/e$b;

    iget-object v0, v0, Lcom/netease/mpay/server/response/e$b;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/mpay/b/r;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/b/r;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    iget-object v0, v0, Lcom/netease/mpay/b/r$a;->c:Lcom/netease/mpay/server/response/e$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    iget-object v0, v0, Lcom/netease/mpay/b/r$a;->c:Lcom/netease/mpay/server/response/e$b;

    iget-object v0, v0, Lcom/netease/mpay/server/response/e$b;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/mpay/b/r;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/b/r;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    iget-object v0, v0, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/mpay/b/r;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
