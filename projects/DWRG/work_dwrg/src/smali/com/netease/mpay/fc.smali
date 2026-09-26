.class Lcom/netease/mpay/fc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/d/a/af$d;


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/af$e;

.field final synthetic b:Lcom/netease/mpay/ex;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ex;Lcom/netease/mpay/d/a/af$e;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/fc;->b:Lcom/netease/mpay/ex;

    iput-object p2, p0, Lcom/netease/mpay/fc;->a:Lcom/netease/mpay/d/a/af$e;

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
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lcom/netease/mpay/fg;->b:[I

    iget-object v1, p0, Lcom/netease/mpay/fc;->a:Lcom/netease/mpay/d/a/af$e;

    iget-object v1, v1, Lcom/netease/mpay/d/a/af$e;->c:Lcom/netease/mpay/b/m$b;

    invoke-virtual {v1}, Lcom/netease/mpay/b/m$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/fc;->b:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->e(Lcom/netease/mpay/ex;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/fc;->b:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->f(Lcom/netease/mpay/ex;)Lcom/netease/mpay/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/fc;->a:Lcom/netease/mpay/d/a/af$e;

    iget-object v1, v1, Lcom/netease/mpay/d/a/af$e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/fc;->b:Lcom/netease/mpay/ex;

    invoke-static {v1}, Lcom/netease/mpay/ex;->f(Lcom/netease/mpay/ex;)Lcom/netease/mpay/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-boolean v4, v0, Lcom/netease/mpay/e/b/o;->m:Z

    iget-object v2, p0, Lcom/netease/mpay/fc;->b:Lcom/netease/mpay/ex;

    invoke-static {v2}, Lcom/netease/mpay/ex;->f(Lcom/netease/mpay/ex;)Lcom/netease/mpay/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/fc;->a:Lcom/netease/mpay/d/a/af$e;

    iget-object v3, v3, Lcom/netease/mpay/d/a/af$e;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lcom/netease/mpay/e/c/k;->a(Lcom/netease/mpay/e/b/o;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/netease/mpay/fc;->b:Lcom/netease/mpay/ex;

    new-instance v3, Lcom/netease/mpay/b/ao;

    invoke-direct {v3, v1, v0}, Lcom/netease/mpay/b/ao;-><init>(Ljava/lang/String;Lcom/netease/mpay/e/b/o;)V

    invoke-static {v2, v3}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;Lcom/netease/mpay/b/ao;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/fc;->b:Lcom/netease/mpay/ex;

    invoke-static {v0, p1}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/fc;->b:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->d(Lcom/netease/mpay/ex;)V

    return-void
.end method

.method public d()V
    .locals 2

    sget-object v0, Lcom/netease/mpay/fg;->b:[I

    iget-object v1, p0, Lcom/netease/mpay/fc;->a:Lcom/netease/mpay/d/a/af$e;

    iget-object v1, v1, Lcom/netease/mpay/d/a/af$e;->c:Lcom/netease/mpay/b/m$b;

    invoke-virtual {v1}, Lcom/netease/mpay/b/m$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/fc;->b:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->e(Lcom/netease/mpay/ex;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/fc;->a:Lcom/netease/mpay/d/a/af$e;

    iget-object v0, v0, Lcom/netease/mpay/d/a/af$e;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/fc;->b:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->f(Lcom/netease/mpay/ex;)Lcom/netease/mpay/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/fc;->a:Lcom/netease/mpay/d/a/af$e;

    iget-object v1, v1, Lcom/netease/mpay/d/a/af$e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/fc;->b:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->e(Lcom/netease/mpay/ex;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/fc;->b:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->g(Lcom/netease/mpay/ex;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
