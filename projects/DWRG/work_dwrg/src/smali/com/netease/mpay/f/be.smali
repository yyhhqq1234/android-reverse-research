.class Lcom/netease/mpay/f/be;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/au$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/f/bd;


# direct methods
.method constructor <init>(Lcom/netease/mpay/f/bd;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/f/be;->a:Lcom/netease/mpay/f/bd;

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
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/f/be;->a:Lcom/netease/mpay/f/bd;

    invoke-static {v0}, Lcom/netease/mpay/f/bd;->b(Lcom/netease/mpay/f/bd;)Lcom/netease/mpay/server/response/w;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/be;->a:Lcom/netease/mpay/f/bd;

    invoke-static {v0}, Lcom/netease/mpay/f/bd;->a(Lcom/netease/mpay/f/bd;)Lcom/netease/mpay/f/bd$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/be;->a:Lcom/netease/mpay/f/bd;

    invoke-static {v1}, Lcom/netease/mpay/f/bd;->b(Lcom/netease/mpay/f/bd;)Lcom/netease/mpay/server/response/w;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/f/bd$a;->a(Lcom/netease/mpay/server/response/w;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/f/be;->a:Lcom/netease/mpay/f/bd;

    invoke-static {v0}, Lcom/netease/mpay/f/bd;->a(Lcom/netease/mpay/f/bd;)Lcom/netease/mpay/f/bd$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/f/bd$a;->a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/be;->a:Lcom/netease/mpay/f/bd;

    invoke-static {v0}, Lcom/netease/mpay/f/bd;->a(Lcom/netease/mpay/f/bd;)Lcom/netease/mpay/f/bd$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/f/bd$a;->a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V

    return-void
.end method
