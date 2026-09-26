.class public Lcom/netease/mpay/b/i;
.super Lcom/netease/mpay/b/k;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/k;-><init>(Landroid/content/Intent;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->h:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/i;->a(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/b/i;->a:Z

    sget-object v0, Lcom/netease/mpay/b/ak;->i:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/i;->a(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/b/i;->b:Z

    sget-object v0, Lcom/netease/mpay/b/ak;->j:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/i;->a(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/b/i;->c:Z

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/b/a$a;ZZZLcom/netease/mpay/AuthenticationCallback;)V
    .locals 2

    invoke-direct {p0, p1, p5}, Lcom/netease/mpay/b/k;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/AuthenticationCallback;)V

    iput-boolean p2, p0, Lcom/netease/mpay/b/i;->a:Z

    iput-boolean p3, p0, Lcom/netease/mpay/b/i;->b:Z

    iput-boolean p4, p0, Lcom/netease/mpay/b/i;->c:Z

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
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/netease/mpay/b/k;->a(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->h:Lcom/netease/mpay/b/ak;

    iget-boolean v1, p0, Lcom/netease/mpay/b/i;->a:Z

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/i;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Z)V

    sget-object v0, Lcom/netease/mpay/b/ak;->i:Lcom/netease/mpay/b/ak;

    iget-boolean v1, p0, Lcom/netease/mpay/b/i;->b:Z

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/i;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Z)V

    sget-object v0, Lcom/netease/mpay/b/ak;->j:Lcom/netease/mpay/b/ak;

    iget-boolean v1, p0, Lcom/netease/mpay/b/i;->c:Z

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/i;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Z)V

    return-void
.end method
