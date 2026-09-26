.class Lcom/netease/mpay/d/a/g;
.super Lcom/netease/mpay/d/a/a/aa;


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/f;Ljava/lang/String;Z)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/g;->a:Lcom/netease/mpay/d/a/f;

    invoke-direct {p0, p2, p3}, Lcom/netease/mpay/d/a/a/aa;-><init>(Ljava/lang/String;Z)V

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
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/g;->a:Lcom/netease/mpay/d/a/f;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/f;->b()V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/g;->a:Lcom/netease/mpay/d/a/f;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/d/a/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/g;->a:Lcom/netease/mpay/d/a/f;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/f;->c()V

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/g;->a:Lcom/netease/mpay/d/a/f;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/d/a/f;->a(Ljava/lang/String;)V

    return-void
.end method
