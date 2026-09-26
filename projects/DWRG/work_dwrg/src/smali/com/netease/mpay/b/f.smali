.class public Lcom/netease/mpay/b/f;
.super Lcom/netease/mpay/b/s;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/s;-><init>(Landroid/content/Intent;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->W:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/b/o;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/s;-><init>(Lcom/netease/mpay/b/o;)V

    iput-object p2, p0, Lcom/netease/mpay/b/f;->a:Ljava/lang/String;

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

.method public constructor <init>(Lcom/netease/mpay/b/s;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p1, Lcom/netease/mpay/b/s;->g:Lcom/netease/mpay/b/s$a;

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/b/s;-><init>(Lcom/netease/mpay/b/r;Lcom/netease/mpay/b/s$a;)V

    iput-object p2, p0, Lcom/netease/mpay/b/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/netease/mpay/b/s;->a(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->W:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/f;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/f;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    return-void
.end method
