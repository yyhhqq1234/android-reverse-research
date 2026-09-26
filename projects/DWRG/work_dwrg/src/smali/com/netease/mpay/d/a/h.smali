.class Lcom/netease/mpay/d/a/h;
.super Lcom/netease/mpay/d/a/a/r;


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/f;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/h;->a:Lcom/netease/mpay/d/a/f;

    invoke-direct {p0, p2}, Lcom/netease/mpay/d/a/a/r;-><init>(Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/netease/mpay/d/a/h;->a:Lcom/netease/mpay/d/a/f;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/f;->b()V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/h;->a:Lcom/netease/mpay/d/a/f;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/d/a/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/h;->a:Lcom/netease/mpay/d/a/f;

    invoke-virtual {v0}, Lcom/netease/mpay/d/a/f;->c()V

    return-void
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/h;->a:Lcom/netease/mpay/d/a/f;

    invoke-static {v0}, Lcom/netease/mpay/d/a/f;->a(Lcom/netease/mpay/d/a/f;)Lcom/netease/mpay/d/a/f$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/mpay/d/a/f$d;->a()V

    return-void
.end method
