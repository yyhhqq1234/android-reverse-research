.class public Lcom/netease/mpay/f/ae;
.super Lcom/netease/mpay/f/n;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/f/n;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-super {p0}, Lcom/netease/mpay/f/n;->f()V

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
.method protected synthetic a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/ae;->c(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/ag;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/ag;
    .locals 6

    new-instance v0, Lcom/netease/mpay/server/d;

    iget-object v1, p0, Lcom/netease/mpay/f/ae;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/ae;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/ae;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mpay/server/a/bf;

    iget-object v2, p0, Lcom/netease/mpay/f/ae;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/ae;->b:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/ae;->b:Lcom/netease/mpay/e/b/o;

    iget-object v5, v5, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netease/mpay/server/a/bf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/ag;

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    iget-object v2, v0, Lcom/netease/mpay/server/response/ag;->a:Lcom/netease/mpay/e/b/aj;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/b;->a(Lcom/netease/mpay/e/b/aj;)V

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/ae;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/b;->c(Ljava/lang/String;)Lcom/netease/mpay/e/b/al;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/netease/mpay/e/b/al;->a:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/netease/mpay/server/response/ag;->b:Lcom/netease/mpay/e/b/al;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/b/al;->a(Lcom/netease/mpay/e/b/al;)V

    :goto_0
    iget-object v2, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/f/ae;->b:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/netease/mpay/e/c/b;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/al;)V

    iput-object v1, v0, Lcom/netease/mpay/server/response/ag;->b:Lcom/netease/mpay/e/b/al;

    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/netease/mpay/server/response/ag;->b:Lcom/netease/mpay/e/b/al;

    goto :goto_0
.end method
