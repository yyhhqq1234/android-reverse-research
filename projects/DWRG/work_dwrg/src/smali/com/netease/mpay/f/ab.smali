.class public Lcom/netease/mpay/f/ab;
.super Lcom/netease/mpay/f/a/d;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {p0}, Lcom/netease/mpay/f/ab;->f()V

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

.method private a(Lcom/netease/mpay/server/response/z;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/netease/mpay/e/b/z;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v0, v4

    if-lt v0, v1, :cond_0

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/netease/mpay/server/response/z;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lcom/netease/mpay/server/response/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/z;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/netease/mpay/e/b/z;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    if-nez v0, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/z;
    .locals 5

    new-instance v0, Lcom/netease/mpay/server/d;

    iget-object v1, p0, Lcom/netease/mpay/f/ab;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/ab;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/ab;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mpay/server/a/ap;

    const-string v2, "1"

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/d$d;->b()Lcom/netease/mpay/e/b/f;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->n:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/server/a/ap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/z;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/netease/mpay/server/response/z;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->m()Lcom/netease/mpay/e/c/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/o;->a()Lcom/netease/mpay/e/b/aa;

    move-result-object v3

    iget-object v1, v0, Lcom/netease/mpay/server/response/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/e/b/z;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Lcom/netease/mpay/e/b/aa;->a(Lcom/netease/mpay/e/b/z;)Lcom/netease/mpay/e/b/z;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/netease/mpay/e/b/z;->f:Lcom/netease/mpay/e/b/z$a;

    iput-object v2, v1, Lcom/netease/mpay/e/b/z;->f:Lcom/netease/mpay/e/b/z$a;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/netease/mpay/e/b/aa;

    iget-object v2, v0, Lcom/netease/mpay/server/response/z;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/netease/mpay/e/b/aa;-><init>(Ljava/util/ArrayList;)V

    iget-object v2, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->m()Lcom/netease/mpay/e/c/o;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/mpay/e/c/o;->a(Lcom/netease/mpay/e/b/aa;)V

    iget-object v1, v0, Lcom/netease/mpay/server/response/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/e/b/z;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b/z;->a()V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v0}, Lcom/netease/mpay/f/ab;->a(Lcom/netease/mpay/server/response/z;)V

    :cond_4
    return-object v0
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/ab;->a(Lcom/netease/mpay/f/a/d$d;)Lcom/netease/mpay/server/response/z;

    move-result-object v0

    return-object v0
.end method
