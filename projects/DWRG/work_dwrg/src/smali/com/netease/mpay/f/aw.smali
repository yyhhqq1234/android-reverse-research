.class Lcom/netease/mpay/f/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/f/au$a;

.field final synthetic b:Lcom/netease/mpay/f/au;


# direct methods
.method constructor <init>(Lcom/netease/mpay/f/au;Lcom/netease/mpay/f/au$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/f/aw;->b:Lcom/netease/mpay/f/au;

    iput-object p2, p0, Lcom/netease/mpay/f/aw;->a:Lcom/netease/mpay/f/au$a;

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

    iget-object v0, p0, Lcom/netease/mpay/f/aw;->a:Lcom/netease/mpay/f/au$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/aw;->a:Lcom/netease/mpay/f/au$a;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/f/au$a;->a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/mpay/server/response/m;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/f/aw;->a:Lcom/netease/mpay/f/au$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/aw;->a:Lcom/netease/mpay/f/au$a;

    iget-object v1, p0, Lcom/netease/mpay/f/aw;->b:Lcom/netease/mpay/f/au;

    invoke-static {v1}, Lcom/netease/mpay/f/au;->c(Lcom/netease/mpay/f/au;)Lcom/netease/mpay/f/au$b;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/netease/mpay/f/au$a;->a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/m;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/aw;->a(Lcom/netease/mpay/server/response/m;)V

    return-void
.end method
