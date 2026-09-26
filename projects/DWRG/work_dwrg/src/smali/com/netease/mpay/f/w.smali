.class public Lcom/netease/mpay/f/w;
.super Lcom/netease/mpay/f/a/d;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->g()V

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
.method protected a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/ae;
    .locals 4

    new-instance v0, Lcom/netease/mpay/server/d;

    iget-object v1, p0, Lcom/netease/mpay/f/w;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/w;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/w;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mpay/server/a/k;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/mpay/server/a/k;-><init>(Lcom/netease/mpay/e/b/f;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/ae;

    return-object v0
.end method

.method public b()Lcom/netease/mpay/f/w;
    .locals 0

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->c()Lcom/netease/mpay/f/a/d;

    return-object p0
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/w;->a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/netease/mpay/f/a/d;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/mpay/f/w;->b()Lcom/netease/mpay/f/w;

    move-result-object v0

    return-object v0
.end method
