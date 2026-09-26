.class public Lcom/netease/mpay/b/an;
.super Lcom/netease/mpay/b/al;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method protected constructor <init>(Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/b/ak;->aJ:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/a;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/b/ak;->aK:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v1}, Lcom/netease/mpay/b/a;->a(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/b/an;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    const/16 v0, 0x3ec

    invoke-direct {p0, v0}, Lcom/netease/mpay/b/al;-><init>(I)V

    iput-object p1, p0, Lcom/netease/mpay/b/an;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/netease/mpay/b/an;->c:Z

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
.method a(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/b/ak;->aJ:Lcom/netease/mpay/b/ak;

    iget-object v1, p0, Lcom/netease/mpay/b/an;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->aK:Lcom/netease/mpay/b/ak;

    iget-boolean v1, p0, Lcom/netease/mpay/b/an;->c:Z

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/a;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Z)V

    return-void
.end method
