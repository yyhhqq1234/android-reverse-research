.class public Lcom/netease/mpay/f/ax;
.super Lcom/netease/mpay/f/a/d;


# instance fields
.field private a:Lcom/netease/mpay/e/b/o;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->f()V

    iput-object p4, p0, Lcom/netease/mpay/f/ax;->a:Lcom/netease/mpay/e/b/o;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/f/ax;->b:Ljava/util/ArrayList;

    if-eqz p4, :cond_0

    iget-object v0, p4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/f/ax;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/ax;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    if-eqz p5, :cond_2

    iget-object v1, p4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v2, p4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v2, p4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/f/ax;->b:Ljava/util/ArrayList;

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netease/mpay/f/ax;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    iget-object v1, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/netease/mpay/e/b/o;->f:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/f/ax;->c:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/netease/mpay/a/a;->b(Landroid/content/Context;Lcom/netease/mpay/e/b/o;)V

    :cond_1
    iget v1, v0, Lcom/netease/mpay/e/b/o;->f:I

    if-ne v2, v1, :cond_4

    const/4 v3, 0x0

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/e/b/o;

    iget-object v6, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    :cond_3
    :goto_2
    return-object v7

    :cond_4
    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v1

    iget-object v3, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/netease/mpay/e/c/l;->b(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->b()Lcom/netease/mpay/e/c/m;

    move-result-object v1

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/m;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/f/ax;->a:Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/f/ax;->a:Lcom/netease/mpay/e/b/o;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/f/ax;->a:Lcom/netease/mpay/e/b/o;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v6, Lcom/netease/mpay/server/d;

    iget-object v0, p0, Lcom/netease/mpay/f/ax;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/f/ax;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/f/ax;->e:Ljava/lang/String;

    invoke-direct {v6, v0, v1, v2}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/server/a/ad;

    iget-object v1, p0, Lcom/netease/mpay/f/ax;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->i:[B

    iget-object v4, p0, Lcom/netease/mpay/f/ax;->a:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/f/ax;->a:Lcom/netease/mpay/e/b/o;

    iget-object v5, v5, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/server/a/ad;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_1
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/ax;->a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
