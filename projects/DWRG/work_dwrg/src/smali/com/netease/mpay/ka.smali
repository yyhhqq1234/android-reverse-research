.class Lcom/netease/mpay/ka;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/bj$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/jy;


# direct methods
.method constructor <init>(Lcom/netease/mpay/jy;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ka;->a:Lcom/netease/mpay/jy;

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
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ka;->a:Lcom/netease/mpay/jy;

    iget-object v0, v0, Lcom/netease/mpay/jy;->a:Lcom/netease/mpay/b/s;

    iget-object v0, v0, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iput-object p1, v0, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/ka;->a:Lcom/netease/mpay/jy;

    iget-object v0, v0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    invoke-static {v0}, Lcom/netease/mpay/jt;->f(Lcom/netease/mpay/jt;)Lcom/netease/mpay/b/r;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/b/r;->c:Lcom/netease/mpay/b/p$a;

    iput-object p1, v0, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/ka;->a:Lcom/netease/mpay/jy;

    iget-object v0, v0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    invoke-static {v0}, Lcom/netease/mpay/jt;->e(Lcom/netease/mpay/jt;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ka;->a:Lcom/netease/mpay/jy;

    iget-object v0, v0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    invoke-static {v0}, Lcom/netease/mpay/jt;->e(Lcom/netease/mpay/jt;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object p1, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ka;->a:Lcom/netease/mpay/jy;

    iget-object v0, v0, Lcom/netease/mpay/jy;->b:Lcom/netease/mpay/jt;

    iget-object v1, p0, Lcom/netease/mpay/ka;->a:Lcom/netease/mpay/jy;

    iget-object v1, v1, Lcom/netease/mpay/jy;->a:Lcom/netease/mpay/b/s;

    invoke-static {v0, v1}, Lcom/netease/mpay/jt;->a(Lcom/netease/mpay/jt;Lcom/netease/mpay/b/s;)V

    return-void
.end method
