.class public Lcom/netease/mpay/f/bn;
.super Lcom/netease/mpay/f/a/d;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->f()V

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
.method protected a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Void;
    .locals 6

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/f/bn;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/b/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v2, v1, Lcom/netease/mpay/e/b/f;->o:J

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-wide v4, v0, Lcom/netease/mpay/e/b/af;->H:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/server/d;

    iget-object v2, p0, Lcom/netease/mpay/f/bn;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/f/bn;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/bn;->e:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/netease/mpay/server/a/l;

    iget-object v3, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v4}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/f/bn;->c:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/netease/mpay/e/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/netease/mpay/server/a/l;-><init>(Ljava/lang/String;Lcom/netease/mpay/e/b/f;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/g;

    iget-wide v2, v0, Lcom/netease/mpay/server/response/g;->a:J

    iput-wide v2, v1, Lcom/netease/mpay/e/b/f;->o:J

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/c;->a(Lcom/netease/mpay/e/b/f;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/bn;->a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
