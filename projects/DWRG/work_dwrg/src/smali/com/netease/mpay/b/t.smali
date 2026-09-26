.class public Lcom/netease/mpay/b/t;
.super Lcom/netease/mpay/b/o;


# instance fields
.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/o;-><init>(Landroid/content/Intent;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->Z:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/t;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/b/t;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/b/p$a;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/netease/mpay/b/o;

    new-instance v1, Lcom/netease/mpay/b/p;

    invoke-direct {v1, p1, p2, v2}, Lcom/netease/mpay/b/p;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/b/p$a;Lcom/netease/mpay/b/p$b;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/b/o;-><init>(Lcom/netease/mpay/b/p;Lcom/netease/mpay/b/o$a;)V

    invoke-direct {p0, v0, p3}, Lcom/netease/mpay/b/t;-><init>(Lcom/netease/mpay/b/o;Ljava/lang/String;)V

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

.method public constructor <init>(Lcom/netease/mpay/b/o;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/o;-><init>(Lcom/netease/mpay/b/o;)V

    iput-object p2, p0, Lcom/netease/mpay/b/t;->h:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/netease/mpay/b/t;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/o;-><init>(Lcom/netease/mpay/b/o;)V

    iget-object v0, p1, Lcom/netease/mpay/b/t;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/b/t;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/netease/mpay/b/o;->a(Landroid/os/Bundle;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->Z:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/t;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/t;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    return-void
.end method

.method public s()I
    .locals 2

    const-string v0, "manage"

    iget-object v1, p0, Lcom/netease/mpay/b/t;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const-string v0, "pay"

    iget-object v1, p0, Lcom/netease/mpay/b/t;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method
