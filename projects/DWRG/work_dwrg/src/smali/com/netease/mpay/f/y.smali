.class public Lcom/netease/mpay/f/y;
.super Lcom/netease/mpay/f/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/f/y$a;
    }
.end annotation


# instance fields
.field private a:Lcom/netease/mpay/f/y$a;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/y$a;Lcom/netease/mpay/f/a/b;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/netease/mpay/f/n;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    iput-object p4, p0, Lcom/netease/mpay/f/y;->a:Lcom/netease/mpay/f/y$a;

    if-nez p5, :cond_0

    invoke-super {p0}, Lcom/netease/mpay/f/n;->g()V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/netease/mpay/e/b/w;Ljava/util/ArrayList;)Lcom/netease/mpay/e/b/w;
    .locals 5

    iget-object v0, p1, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iput-object p2, p1, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/u;

    iget-object v1, p1, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/e/b/u;

    invoke-direct {p0, v1, v0}, Lcom/netease/mpay/f/y;->a(Lcom/netease/mpay/e/b/u;Lcom/netease/mpay/e/b/u;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/u;

    const/4 v2, 0x2

    iget v0, v0, Lcom/netease/mpay/e/b/u;->e:I

    if-ne v2, v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/netease/mpay/e/b/u;Lcom/netease/mpay/e/b/u;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Lcom/netease/mpay/e/b/u;->e:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget v2, p2, Lcom/netease/mpay/e/b/u;->e:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p2, Lcom/netease/mpay/e/b/u;->e:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Lcom/netease/mpay/e/b/w;Ljava/util/ArrayList;)V
    .locals 7

    iget-object v0, p1, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/u;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/e/b/u;

    const/4 v3, 0x2

    iget v4, v1, Lcom/netease/mpay/e/b/u;->e:I

    if-eq v3, v4, :cond_1

    iget-wide v3, v1, Lcom/netease/mpay/e/b/u;->i:J

    iget-wide v5, v0, Lcom/netease/mpay/e/b/u;->i:J

    cmp-long v1, v3, v5

    if-ltz v1, :cond_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private d(Lcom/netease/mpay/f/a/d$d;)Ljava/util/ArrayList;
    .locals 12

    const/4 v7, 0x1

    const/4 v5, 0x0

    iput-boolean v7, p0, Lcom/netease/mpay/f/y;->j:Z

    :try_start_0
    invoke-direct {p0, p1}, Lcom/netease/mpay/f/y;->j(Lcom/netease/mpay/f/a/d$d;)V
    :try_end_0
    .catch Lcom/netease/mpay/server/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v8, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/y;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/y;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/y;->e:Ljava/lang/String;

    invoke-direct {v8, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/a/b;

    iget-object v1, p0, Lcom/netease/mpay/f/y;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/server/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/a/a;

    iget-object v1, v0, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/netease/mpay/f/y;->a(Ljava/util/ArrayList;)V

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/r;

    move-result-object v3

    iget-boolean v1, v0, Lcom/netease/mpay/server/response/a/a;->a:Z

    iput-boolean v1, v3, Lcom/netease/mpay/e/b/r;->a:Z

    iget-object v1, v0, Lcom/netease/mpay/server/response/a/a;->b:Ljava/lang/String;

    iput-object v1, v3, Lcom/netease/mpay/e/b/r;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v1

    iget-wide v1, v1, Lcom/netease/mpay/e/b/af;->l:J

    invoke-virtual {v3, v1, v2}, Lcom/netease/mpay/e/b/r;->a(J)V

    iget-object v1, v0, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/e/b/u;

    iget-boolean v2, v0, Lcom/netease/mpay/server/response/a/a;->a:Z

    if-eqz v2, :cond_1

    iget-wide v8, v1, Lcom/netease/mpay/e/b/u;->i:J

    iget-wide v10, v3, Lcom/netease/mpay/e/b/r;->d:J

    cmp-long v2, v8, v10

    if-lez v2, :cond_1

    move v2, v7

    :goto_1
    iput-boolean v2, v3, Lcom/netease/mpay/e/b/r;->c:Z

    iget-wide v1, v1, Lcom/netease/mpay/e/b/u;->i:J

    iput-wide v1, v3, Lcom/netease/mpay/e/b/r;->d:J

    :cond_0
    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/r;)V

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->b()Lcom/netease/mpay/e/c/m;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    new-instance v3, Lcom/netease/mpay/e/b/w;

    iget-object v4, v0, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Lcom/netease/mpay/e/b/w;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/e/c/m;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/w;)V

    iput-boolean v5, p0, Lcom/netease/mpay/f/y;->j:Z

    iget-object v0, v0, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_1
    iget-boolean v2, v3, Lcom/netease/mpay/e/b/r;->c:Z

    goto :goto_1
.end method

.method private e(Lcom/netease/mpay/f/a/d$d;)Ljava/util/ArrayList;
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/f/y;->j:Z

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/l;->d(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/netease/mpay/f/y;->j(Lcom/netease/mpay/f/a/d$d;)V
    :try_end_0
    .catch Lcom/netease/mpay/server/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v7, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/y;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/y;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/y;->e:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/a/b;

    iget-object v1, p0, Lcom/netease/mpay/f/y;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/server/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/a/a;

    iget-object v1, v0, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/netease/mpay/f/y;->a(Ljava/util/ArrayList;)V

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/r;

    move-result-object v2

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/netease/mpay/e/b/r;->a:Z

    iget-object v1, v0, Lcom/netease/mpay/server/response/a/a;->b:Ljava/lang/String;

    iput-object v1, v2, Lcom/netease/mpay/e/b/r;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v1

    iget-wide v3, v1, Lcom/netease/mpay/e/b/af;->l:J

    invoke-virtual {v2, v3, v4}, Lcom/netease/mpay/e/b/r;->a(J)V

    iget-object v1, v0, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/e/b/u;

    iget-wide v3, v1, Lcom/netease/mpay/e/b/u;->i:J

    iput-wide v3, v2, Lcom/netease/mpay/e/b/r;->d:J

    :cond_0
    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/r;)V

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->b()Lcom/netease/mpay/e/c/m;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    new-instance v3, Lcom/netease/mpay/e/b/w;

    iget-object v4, v0, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Lcom/netease/mpay/e/b/w;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/e/c/m;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/w;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netease/mpay/f/y;->j:Z

    iget-object v0, v0, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lcom/netease/mpay/server/a; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iput-boolean v8, p0, Lcom/netease/mpay/f/y;->j:Z

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->b()Lcom/netease/mpay/e/c/m;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/m;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/w;

    move-result-object v1

    iget-object v2, v1, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v1, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    throw v0
.end method

.method private f(Lcom/netease/mpay/f/a/d$d;)Ljava/util/ArrayList;
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/netease/mpay/f/y;->j:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/server/a;

    iget-object v1, p0, Lcom/netease/mpay/f/y;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->dz:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v8, p0, Lcom/netease/mpay/f/y;->j:Z

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/r;

    move-result-object v6

    new-instance v7, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/y;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/y;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/y;->e:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/a/b;

    iget-object v1, p0, Lcom/netease/mpay/f/y;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/netease/mpay/e/b/r;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/server/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/a/a;

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/netease/mpay/server/response/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v5, v3}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->b()Lcom/netease/mpay/e/c/m;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/m;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/w;

    move-result-object v1

    iget-object v2, v0, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/netease/mpay/f/y;->b(Lcom/netease/mpay/e/b/w;Ljava/util/ArrayList;)V

    iget-object v2, v0, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v8, :cond_1

    iput-boolean v5, p0, Lcom/netease/mpay/f/y;->j:Z

    new-instance v0, Lcom/netease/mpay/server/a;

    iget-object v1, p0, Lcom/netease/mpay/f/y;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->do:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v1, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->b()Lcom/netease/mpay/e/c/m;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    new-instance v4, Lcom/netease/mpay/e/b/w;

    iget-object v1, v1, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Lcom/netease/mpay/e/b/w;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3, v4}, Lcom/netease/mpay/e/c/m;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/w;)V

    iput-boolean v5, p0, Lcom/netease/mpay/f/y;->j:Z

    iget-object v0, v0, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private g(Lcom/netease/mpay/f/a/d$d;)Ljava/util/ArrayList;
    .locals 9

    const/4 v5, 0x1

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/netease/mpay/f/y;->j:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/server/a;

    iget-object v1, p0, Lcom/netease/mpay/f/y;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->dz:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v5, p0, Lcom/netease/mpay/f/y;->j:Z

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/r;

    move-result-object v6

    new-instance v7, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/y;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/y;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/y;->e:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/a/b;

    iget-object v1, p0, Lcom/netease/mpay/f/y;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/netease/mpay/e/b/r;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/server/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/a/a;

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/netease/mpay/server/response/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v8, v3}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v1, v0, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v5, :cond_1

    iput-boolean v8, p0, Lcom/netease/mpay/f/y;->j:Z

    new-instance v0, Lcom/netease/mpay/server/a;

    iget-object v1, p0, Lcom/netease/mpay/f/y;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->dh:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->b()Lcom/netease/mpay/e/c/m;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/m;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/w;

    move-result-object v1

    iget-object v0, v0, Lcom/netease/mpay/server/response/a/a;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/netease/mpay/f/y;->a(Lcom/netease/mpay/e/b/w;Ljava/util/ArrayList;)Lcom/netease/mpay/e/b/w;

    move-result-object v0

    iget-object v1, v0, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/netease/mpay/f/y;->a(Ljava/util/ArrayList;)V

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->b()Lcom/netease/mpay/e/c/m;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/e/c/m;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/w;)V

    iput-boolean v8, p0, Lcom/netease/mpay/f/y;->j:Z

    iget-object v0, v0, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method private h(Lcom/netease/mpay/f/a/d$d;)Ljava/util/ArrayList;
    .locals 3

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/l;->d(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->b()Lcom/netease/mpay/e/c/m;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/m;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/w;

    move-result-object v0

    iget-object v1, v0, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    new-instance v0, Lcom/netease/mpay/server/a;

    iget-object v1, p0, Lcom/netease/mpay/f/y;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->dp:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method private i(Lcom/netease/mpay/f/a/d$d;)Ljava/util/ArrayList;
    .locals 3

    iget-boolean v0, p0, Lcom/netease/mpay/f/y;->j:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/server/a;

    iget-object v1, p0, Lcom/netease/mpay/f/y;->c:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->dz:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/server/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/f/y;->j:Z

    invoke-direct {p0, p1}, Lcom/netease/mpay/f/y;->j(Lcom/netease/mpay/f/a/d$d;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/f/y;->j:Z

    const/4 v0, 0x0

    return-object v0
.end method

.method private j(Lcom/netease/mpay/f/a/d$d;)V
    .locals 7

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/e/b/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v5, Lcom/netease/mpay/e/b/r;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v6, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/y;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/y;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/y;->e:Ljava/lang/String;

    invoke-direct {v6, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/a/c;

    iget-object v1, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/netease/mpay/e/b/r;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v5, Lcom/netease/mpay/e/b/r;->g:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/server/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/y;->b:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/l;->c(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected synthetic a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/y;->c(Lcom/netease/mpay/f/a/d$d;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/netease/mpay/f/y;
    .locals 0

    invoke-super {p0}, Lcom/netease/mpay/f/n;->d()Lcom/netease/mpay/f/a/d;

    return-object p0
.end method

.method protected c(Lcom/netease/mpay/f/a/d$d;)Ljava/util/ArrayList;
    .locals 2

    sget-object v0, Lcom/netease/mpay/f/z;->a:[I

    iget-object v1, p0, Lcom/netease/mpay/f/y;->a:Lcom/netease/mpay/f/y$a;

    invoke-virtual {v1}, Lcom/netease/mpay/f/y$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/netease/mpay/f/y;->d(Lcom/netease/mpay/f/a/d$d;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/netease/mpay/f/y;->g(Lcom/netease/mpay/f/a/d$d;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/netease/mpay/f/y;->f(Lcom/netease/mpay/f/a/d$d;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/netease/mpay/f/y;->e(Lcom/netease/mpay/f/a/d$d;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/netease/mpay/f/y;->h(Lcom/netease/mpay/f/a/d$d;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/netease/mpay/f/y;->i(Lcom/netease/mpay/f/a/d$d;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public synthetic d()Lcom/netease/mpay/f/a/d;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/mpay/f/y;->b()Lcom/netease/mpay/f/y;

    move-result-object v0

    return-object v0
.end method
