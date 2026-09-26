.class Lcom/netease/mpay/f/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/f/bh;


# direct methods
.method constructor <init>(Lcom/netease/mpay/f/bh;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/f/bi;->a:Lcom/netease/mpay/f/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/bi;->a:Lcom/netease/mpay/f/bh;

    invoke-static {v0}, Lcom/netease/mpay/f/bh;->a(Lcom/netease/mpay/f/bh;)Lcom/netease/mpay/f/bh$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/bi;->a:Lcom/netease/mpay/f/bh;

    invoke-static {v0}, Lcom/netease/mpay/f/bh;->a(Lcom/netease/mpay/f/bh;)Lcom/netease/mpay/f/bh$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/f/bh$a;->a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/bi;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/f/bi;->a:Lcom/netease/mpay/f/bh;

    invoke-static {v0}, Lcom/netease/mpay/f/bh;->a(Lcom/netease/mpay/f/bh;)Lcom/netease/mpay/f/bh$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/bi;->a:Lcom/netease/mpay/f/bh;

    invoke-static {v0}, Lcom/netease/mpay/f/bh;->a(Lcom/netease/mpay/f/bh;)Lcom/netease/mpay/f/bh$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/bi;->a:Lcom/netease/mpay/f/bh;

    invoke-static {v1}, Lcom/netease/mpay/f/bh;->b(Lcom/netease/mpay/f/bh;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/bi;->a:Lcom/netease/mpay/f/bh;

    invoke-static {v2}, Lcom/netease/mpay/f/bh;->c(Lcom/netease/mpay/f/bh;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/f/bh$a;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/o;)V

    :cond_0
    return-void
.end method
