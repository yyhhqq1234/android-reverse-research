.class public Lcom/netease/mpay/b/aa;
.super Lcom/netease/mpay/b/a;


# instance fields
.field public a:Lcom/netease/mpay/MobileBindCallback;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/a;-><init>(Landroid/content/Intent;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->ax:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/aa;->d(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/hi;->k:Lcom/netease/mpay/widget/al;

    invoke-virtual {v2, v0, v1}, Lcom/netease/mpay/widget/al;->b(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/MobileBindCallback;

    :goto_0
    iput-object v0, p0, Lcom/netease/mpay/b/aa;->a:Lcom/netease/mpay/MobileBindCallback;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/MobileBindCallback;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/a;-><init>(Lcom/netease/mpay/b/a$a;)V

    iput-object p2, p0, Lcom/netease/mpay/b/aa;->a:Lcom/netease/mpay/MobileBindCallback;

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
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/netease/mpay/b/aa;->a:Lcom/netease/mpay/MobileBindCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/b/ak;->ax:Lcom/netease/mpay/b/ak;

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/hi;->k:Lcom/netease/mpay/widget/al;

    iget-object v2, p0, Lcom/netease/mpay/b/aa;->a:Lcom/netease/mpay/MobileBindCallback;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/widget/al;->a(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/b/aa;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;J)V

    :cond_0
    return-void
.end method
