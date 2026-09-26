.class Lcom/netease/mpay/f/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/f/h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/f/h;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/f/i;->a:Lcom/netease/mpay/f/h;

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

    iget-object v0, p0, Lcom/netease/mpay/f/i;->a:Lcom/netease/mpay/f/h;

    invoke-static {v0}, Lcom/netease/mpay/f/h;->a(Lcom/netease/mpay/f/h;)Lcom/netease/mpay/f/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/i;->a:Lcom/netease/mpay/f/h;

    invoke-static {v0}, Lcom/netease/mpay/f/h;->a(Lcom/netease/mpay/f/h;)Lcom/netease/mpay/f/h$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/i;->a:Lcom/netease/mpay/f/h;

    invoke-static {v1}, Lcom/netease/mpay/f/h;->b(Lcom/netease/mpay/f/h;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/netease/mpay/f/h$a;->a(Ljava/lang/String;Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/i;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/f/i;->a:Lcom/netease/mpay/f/h;

    invoke-static {v0}, Lcom/netease/mpay/f/h;->a(Lcom/netease/mpay/f/h;)Lcom/netease/mpay/f/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/f/i;->a:Lcom/netease/mpay/f/h;

    invoke-static {v0}, Lcom/netease/mpay/f/h;->a(Lcom/netease/mpay/f/h;)Lcom/netease/mpay/f/h$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/i;->a:Lcom/netease/mpay/f/h;

    invoke-static {v1}, Lcom/netease/mpay/f/h;->b(Lcom/netease/mpay/f/h;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/f/h$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
