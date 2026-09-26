.class Lcom/netease/mpay/d/a/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/af;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/af;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/an;->a:Lcom/netease/mpay/d/a/af;

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

    iget-object v0, p0, Lcom/netease/mpay/d/a/an;->a:Lcom/netease/mpay/d/a/af;

    invoke-static {v0}, Lcom/netease/mpay/d/a/af;->d(Lcom/netease/mpay/d/a/af;)Lcom/netease/mpay/d/a/af$d;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netease/mpay/d/a/af$d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/d/a/an;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/an;->a:Lcom/netease/mpay/d/a/af;

    invoke-static {v0}, Lcom/netease/mpay/d/a/af;->d(Lcom/netease/mpay/d/a/af;)Lcom/netease/mpay/d/a/af$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/mpay/d/a/af$d;->a()V

    return-void
.end method
