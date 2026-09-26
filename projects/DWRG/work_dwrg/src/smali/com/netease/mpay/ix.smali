.class Lcom/netease/mpay/ix;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/bj$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/iu;


# direct methods
.method constructor <init>(Lcom/netease/mpay/iu;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ix;->a:Lcom/netease/mpay/iu;

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

    iget-object v0, p0, Lcom/netease/mpay/ix;->a:Lcom/netease/mpay/iu;

    iget-object v0, v0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iput-object p1, v0, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/ix;->a:Lcom/netease/mpay/iu;

    iget-object v0, v0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->e(Lcom/netease/mpay/ij;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ix;->a:Lcom/netease/mpay/iu;

    iget-object v0, v0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->e(Lcom/netease/mpay/ij;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object p1, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ix;->a:Lcom/netease/mpay/iu;

    iget-object v0, v0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    iget-object v1, p0, Lcom/netease/mpay/ix;->a:Lcom/netease/mpay/iu;

    iget-object v1, v1, Lcom/netease/mpay/iu;->a:Lcom/netease/mpay/b/o;

    invoke-static {v0, v1}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/ij;Lcom/netease/mpay/b/o;)V

    return-void
.end method
