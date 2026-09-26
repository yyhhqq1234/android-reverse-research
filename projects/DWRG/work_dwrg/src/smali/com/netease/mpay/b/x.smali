.class public Lcom/netease/mpay/b/x;
.super Lcom/netease/mpay/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/b/x$a;,
        Lcom/netease/mpay/b/x$b;,
        Lcom/netease/mpay/b/x$c;,
        Lcom/netease/mpay/b/x$d;
    }
.end annotation


# instance fields
.field public a:Lcom/netease/mpay/b/x$c;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/a;-><init>(Landroid/content/Intent;)V

    sget-object v0, Lcom/netease/mpay/b/ak;->ar:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/x;->c(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)I

    move-result v0

    invoke-static {v0}, Lcom/netease/mpay/b/x$d;->a(I)Lcom/netease/mpay/b/x$d;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/netease/mpay/b/y;->a:[I

    invoke-virtual {v0}, Lcom/netease/mpay/b/x$d;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    iput-object v2, p0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/netease/mpay/b/x$b;

    invoke-static {p1}, Lcom/netease/mpay/server/response/aa;->a(Landroid/content/Intent;)Lcom/netease/mpay/server/response/aa;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/b/x$b;-><init>(Lcom/netease/mpay/server/response/aa;)V

    iput-object v0, p0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/netease/mpay/b/x$a;

    sget-object v0, Lcom/netease/mpay/b/ak;->an:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/x;->b(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/netease/mpay/b/ak;->as:Lcom/netease/mpay/b/ak;

    invoke-static {p1, v0}, Lcom/netease/mpay/b/x;->e(Landroid/content/Intent;Lcom/netease/mpay/b/ak;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/ab;

    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/b/x$a;-><init>(Ljava/lang/String;Lcom/netease/mpay/server/response/ab;)V

    iput-object v1, p0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/b/x$c;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/b/a;-><init>(Lcom/netease/mpay/b/a$a;)V

    iput-object p2, p0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

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

    iget-object v0, p0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    instance-of v0, v0, Lcom/netease/mpay/b/x$b;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netease/mpay/b/ak;->ar:Lcom/netease/mpay/b/ak;

    sget-object v1, Lcom/netease/mpay/b/x$d;->a:Lcom/netease/mpay/b/x$d;

    invoke-virtual {v1}, Lcom/netease/mpay/b/x$d;->ordinal()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/x;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;I)V

    iget-object v0, p0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    check-cast v0, Lcom/netease/mpay/b/x$b;

    iget-object v0, v0, Lcom/netease/mpay/b/x$b;->a:Lcom/netease/mpay/server/response/aa;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/server/response/aa;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    instance-of v0, v0, Lcom/netease/mpay/b/x$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/b/ak;->ar:Lcom/netease/mpay/b/ak;

    sget-object v1, Lcom/netease/mpay/b/x$d;->b:Lcom/netease/mpay/b/x$d;

    invoke-virtual {v1}, Lcom/netease/mpay/b/x$d;->ordinal()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/b/x;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;I)V

    sget-object v1, Lcom/netease/mpay/b/ak;->an:Lcom/netease/mpay/b/ak;

    iget-object v0, p0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    check-cast v0, Lcom/netease/mpay/b/x$a;

    iget-object v0, v0, Lcom/netease/mpay/b/x$a;->a:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/netease/mpay/b/x;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/lang/String;)V

    sget-object v1, Lcom/netease/mpay/b/ak;->as:Lcom/netease/mpay/b/ak;

    iget-object v0, p0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    check-cast v0, Lcom/netease/mpay/b/x$a;

    iget-object v0, v0, Lcom/netease/mpay/b/x$a;->b:Lcom/netease/mpay/server/response/ab;

    invoke-static {p1, v1, v0}, Lcom/netease/mpay/b/x;->a(Landroid/os/Bundle;Lcom/netease/mpay/b/ak;Ljava/io/Serializable;)V

    goto :goto_0
.end method
