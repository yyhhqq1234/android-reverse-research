.class public Lcom/netease/mpay/f/aq;
.super Lcom/netease/mpay/f/au;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/au$a;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/au;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/netease/mpay/f/au$a;)V

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

.method private a(Lcom/netease/mpay/e/b;Lcom/netease/mpay/e/b/f;Ljava/lang/String;)Lcom/netease/mpay/server/response/m;
    .locals 6

    :try_start_0
    new-instance v0, Lcom/netease/mpay/server/d;

    iget-object v1, p0, Lcom/netease/mpay/f/aq;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/aq;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/aq;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mpay/server/a/aa;

    iget-object v2, p0, Lcom/netease/mpay/f/aq;->d:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v4, p2, Lcom/netease/mpay/e/b/f;->i:[B

    invoke-direct {v1, v2, v3, v4, p3}, Lcom/netease/mpay/server/a/aa;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;
    :try_end_0
    .catch Lcom/netease/mpay/server/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/netease/mpay/server/a$l;

    if-nez v1, :cond_1

    :cond_0
    instance-of v1, v0, Lcom/netease/mpay/server/a$f;

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/netease/mpay/e/b;->k()Lcom/netease/mpay/e/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/g;->a()V

    new-instance v0, Lcom/netease/mpay/server/d;

    iget-object v1, p0, Lcom/netease/mpay/f/aq;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/aq;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/aq;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mpay/server/a/aa;

    iget-object v2, p0, Lcom/netease/mpay/f/aq;->d:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v4, p2, Lcom/netease/mpay/e/b/f;->i:[B

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netease/mpay/server/a/aa;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;

    goto :goto_0

    :cond_2
    throw v0
.end method

.method private a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/e/b/o;)Lcom/netease/mpay/server/response/m;
    .locals 8

    invoke-virtual {p1, p2}, Lcom/netease/mpay/f/au$b;->a(Lcom/netease/mpay/e/b/o;)V

    new-instance v7, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/aq;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/aq;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/aq;->e:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/ba;

    iget-object v1, p0, Lcom/netease/mpay/f/aq;->d:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v4, p2, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/aq;->e:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/server/a/ba;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/f/au$b;)Lcom/netease/mpay/server/response/m;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/netease/mpay/e/c/k;->a(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    :goto_0
    iget-object v2, p1, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->k()Lcom/netease/mpay/e/c/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/e/c/g;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/f/aq;->a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/e/b/o;)Lcom/netease/mpay/server/response/m;

    move-result-object v0

    move-object v2, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    iget-object v4, p1, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v4}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v4

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/netease/mpay/f/au$b;->a:Lcom/netease/mpay/e/b;

    iget-object v4, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    invoke-direct {p0, v0, v4, v2}, Lcom/netease/mpay/f/aq;->a(Lcom/netease/mpay/e/b;Lcom/netease/mpay/e/b/f;Ljava/lang/String;)Lcom/netease/mpay/server/response/m;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/netease/mpay/f/aq;->a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o$a;Z)V

    return-object v2
.end method
