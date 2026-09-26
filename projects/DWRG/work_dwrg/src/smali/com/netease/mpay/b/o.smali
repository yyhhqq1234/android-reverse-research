.class public Lcom/netease/mpay/b/o;
.super Lcom/netease/mpay/b/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/b/o$a;
    }
.end annotation


# instance fields
.field public b:Lcom/netease/mpay/b/o$a;


# direct methods
.method protected constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/p;-><init>(Landroid/content/Intent;)V

    new-instance v0, Lcom/netease/mpay/b/o$a;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/o$a;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/b/o;->b:Lcom/netease/mpay/b/o$a;

    return-void
.end method

.method protected constructor <init>(Lcom/netease/mpay/b/o;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/p;-><init>(Lcom/netease/mpay/b/p;)V

    iget-object v0, p1, Lcom/netease/mpay/b/o;->b:Lcom/netease/mpay/b/o$a;

    iput-object v0, p0, Lcom/netease/mpay/b/o;->b:Lcom/netease/mpay/b/o$a;

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/b/p;Lcom/netease/mpay/b/o$a;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/p;-><init>(Lcom/netease/mpay/b/p;)V

    iput-object p2, p0, Lcom/netease/mpay/b/o;->b:Lcom/netease/mpay/b/o$a;

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
.method protected a(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/netease/mpay/b/p;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/b/o;->b:Lcom/netease/mpay/b/o$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/o;->b:Lcom/netease/mpay/b/o$a;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/b/o$a;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/b/o;->b:Lcom/netease/mpay/b/o$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/o;->b:Lcom/netease/mpay/b/o$a;

    iget-object v0, v0, Lcom/netease/mpay/b/o$a;->e:Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/o;->b:Lcom/netease/mpay/b/o$a;

    iget-object v0, v0, Lcom/netease/mpay/b/o$a;->e:Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    iget-object v0, v0, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/b/o;->b:Lcom/netease/mpay/b/o$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/o;->b:Lcom/netease/mpay/b/o$a;

    iget-object v0, v0, Lcom/netease/mpay/b/o$a;->e:Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/o;->b:Lcom/netease/mpay/b/o$a;

    iget-object v0, v0, Lcom/netease/mpay/b/o$a;->e:Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    iget-object v0, v0, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/b/o;->b:Lcom/netease/mpay/b/o$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/o;->b:Lcom/netease/mpay/b/o$a;

    iget-object v0, v0, Lcom/netease/mpay/b/o$a;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/b/o;->b:Lcom/netease/mpay/b/o$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/b/o;->b:Lcom/netease/mpay/b/o$a;

    invoke-virtual {v0}, Lcom/netease/mpay/b/o$a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public j()I
    .locals 1

    invoke-virtual {p0}, Lcom/netease/mpay/b/o;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/b/o;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
