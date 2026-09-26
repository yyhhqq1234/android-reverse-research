.class public Lcom/netease/mpay/e/c/k;
.super Lcom/netease/mpay/e/c/a/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/e/c/a/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

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

.method private a(Lcom/netease/mpay/e/b/q;Lcom/netease/mpay/e/b/o;Ljava/lang/String;)Lcom/netease/mpay/e/b/q;
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v0, "login"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v1}, Lcom/netease/mpay/e/b/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/mpay/e/b/q;->d:Ljava/lang/String;

    iget-object v0, p2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/netease/mpay/e/b/q;->b:Ljava/lang/String;

    iget v0, p2, Lcom/netease/mpay/e/b/o;->f:I

    iput v0, p1, Lcom/netease/mpay/e/b/q;->c:I

    iget-boolean v0, p2, Lcom/netease/mpay/e/b/o;->m:Z

    iput-boolean v0, p1, Lcom/netease/mpay/e/b/q;->e:Z

    :cond_2
    const-string v0, "webLogin"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v1}, Lcom/netease/mpay/e/b/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/mpay/e/b/q;->j:Ljava/lang/String;

    iget-object v0, p2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/netease/mpay/e/b/q;->i:Ljava/lang/String;

    iget v0, p2, Lcom/netease/mpay/e/b/o;->f:I

    iput v0, p1, Lcom/netease/mpay/e/b/q;->k:I

    :cond_3
    const-string v0, "pay"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "webPay"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p2, v1}, Lcom/netease/mpay/e/b/o;->a(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/mpay/e/b/q;->g:Ljava/lang/String;

    iget-object v0, p2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/netease/mpay/e/b/q;->f:Ljava/lang/String;

    iget v0, p2, Lcom/netease/mpay/e/b/o;->f:I

    iput v0, p1, Lcom/netease/mpay/e/b/q;->h:I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Lcom/netease/mpay/e/b/q;
    .locals 1

    invoke-static {p1}, Lcom/netease/mpay/widget/bd;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/e/b/q;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/q;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/k;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/e/b/q;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/q;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/e/b/q;->a([B)Lcom/netease/mpay/e/b/q;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/e/b/q;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/q;-><init>()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/netease/mpay/e/c/k;->a(Lcom/netease/mpay/e/b/q;I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/q;)Ljava/util/ArrayList;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_4

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    iget-object v4, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_1

    iget-object v4, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/netease/mpay/e/c/k;->c(Lcom/netease/mpay/e/b/q;)V

    :cond_3
    return-object v2

    :cond_4
    move-object v1, p3

    goto :goto_0
.end method

.method private a(Lcom/netease/mpay/e/b/q;)V
    .locals 4

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    iget-object v2, v1, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    iget v0, v0, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v0}, Lcom/netease/mpay/e/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :goto_2
    move v2, v0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/netease/mpay/e/c/k;->c(Lcom/netease/mpay/e/b/q;)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move-object v1, p1

    goto :goto_0
.end method

.method private a(Lcom/netease/mpay/e/b/q;I)V
    .locals 7

    const/4 v6, 0x5

    const/4 v1, 0x1

    const-class v3, Lcom/netease/mpay/e/c/k;

    monitor-enter v3

    if-ge p2, v6, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :try_start_0
    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    if-gt p2, v1, :cond_4

    iget-object v0, p1, Lcom/netease/mpay/e/b/q;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p1, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    iget-object v4, p1, Lcom/netease/mpay/e/b/q;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b/o;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p1, Lcom/netease/mpay/e/b/q;->c:I

    iget v5, v0, Lcom/netease/mpay/e/b/o;->f:I

    if-ne v4, v5, :cond_3

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/o;->m:Z

    iput-boolean v0, p1, Lcom/netease/mpay/e/b/q;->e:Z

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    if-gt p2, v0, :cond_9

    iget-object v0, p1, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    iget v2, v0, Lcom/netease/mpay/e/b/o;->f:I

    iget v5, p1, Lcom/netease/mpay/e/b/q;->c:I

    if-ne v2, v5, :cond_6

    iget-object v2, p1, Lcom/netease/mpay/e/b/q;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/netease/mpay/e/b/o;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p1, Lcom/netease/mpay/e/b/q;->d:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iput-object v2, p1, Lcom/netease/mpay/e/b/q;->b:Ljava/lang/String;

    :cond_6
    iget-object v2, v0, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    iget v5, v0, Lcom/netease/mpay/e/b/o;->f:I

    if-eq v2, v5, :cond_8

    invoke-virtual {v0}, Lcom/netease/mpay/e/b/o;->a()Ljava/lang/String;

    move-result-object v2

    iget v5, v0, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v2, v5}, Lcom/netease/mpay/e/b/o;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    iput-object v2, v0, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    :cond_7
    if-eqz v0, :cond_5

    iget v2, v0, Lcom/netease/mpay/e/b/o;->f:I

    if-ne v1, v2, :cond_5

    invoke-static {v0}, Lcom/netease/mpay/e/b/ah;->a(Lcom/netease/mpay/e/b/o;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/netease/mpay/e/b/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/mpay/e/b/ah;->a(Lcom/netease/mpay/e/b/o;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/netease/mpay/e/b/o;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    const/4 v0, 0x4

    if-gt p2, v0, :cond_b

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_c

    iget v0, v0, Lcom/netease/mpay/e/b/o;->f:I

    if-ne v6, v0, :cond_c

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_a
    move v0, v1

    :goto_5
    move v2, v0

    goto :goto_4

    :cond_b
    invoke-direct {p0, p1}, Lcom/netease/mpay/e/c/k;->c(Lcom/netease/mpay/e/b/q;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto :goto_5
.end method

.method private b(Lcom/netease/mpay/e/b/q;)V
    .locals 5

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    iget-object v2, v1, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    iget v0, v0, Lcom/netease/mpay/e/b/o;->f:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :goto_2
    move v2, v0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/netease/mpay/e/c/k;->c(Lcom/netease/mpay/e/b/q;)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move-object v1, p1

    goto :goto_0
.end method

.method private c(Lcom/netease/mpay/e/b/q;)V
    .locals 4

    const-string v0, "saveLogins"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b/q;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/k;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e/c/k;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "data"

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private d()Lcom/netease/mpay/e/b/o;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v2

    iget-object v0, v2, Lcom/netease/mpay/e/b/q;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, v2, Lcom/netease/mpay/e/b/q;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v2, v2, Lcom/netease/mpay/e/b/q;->e:Z

    iput-boolean v2, v0, Lcom/netease/mpay/e/b/o;->m:Z

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private e()Lcom/netease/mpay/e/b/o;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v0

    iget-object v1, v0, Lcom/netease/mpay/e/b/q;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/e/c/k;->d()Lcom/netease/mpay/e/b/o;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    goto :goto_0
.end method

.method private f()Lcom/netease/mpay/e/b/o;
    .locals 2

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v0

    iget-object v1, v0, Lcom/netease/mpay/e/b/q;->i:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/e/c/k;->d()Lcom/netease/mpay/e/b/o;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/q;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/e/b/q;)Lcom/netease/mpay/e/b/o;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object p2

    :cond_1
    iget-object v0, p2, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    iget-object v3, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public a()Lcom/netease/mpay/e/b/q;
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/e/c/k;->a:Landroid/content/SharedPreferences;

    const-string v1, "data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/e/c/k;->a:Landroid/content/SharedPreferences;

    const-string v2, "version"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b/q;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/q;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;I)Lcom/netease/mpay/e/b/q;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)Ljava/util/ArrayList;
    .locals 4

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    iget v3, v0, Lcom/netease/mpay/e/b/o;->f:I

    if-ne v3, p1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/q;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/netease/mpay/e/b/o;Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "saveLogin"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v1

    iget v0, p1, Lcom/netease/mpay/e/b/o;->f:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    iget-object v0, p1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/q;)Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p1, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    invoke-direct {p0, v1, p1, p2}, Lcom/netease/mpay/e/c/k;->a(Lcom/netease/mpay/e/b/q;Lcom/netease/mpay/e/b/o;Ljava/lang/String;)Lcom/netease/mpay/e/b/q;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/k;->c(Lcom/netease/mpay/e/b/q;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/netease/mpay/e/c/k;->a(Lcom/netease/mpay/e/b/q;)V

    iget-object v0, v1, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/netease/mpay/e/c/k;->b(Lcom/netease/mpay/e/b/q;)V

    iget-object v0, v1, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    invoke-static {p1}, Lcom/netease/mpay/e/b/x;->a(Lcom/netease/mpay/e/b/o;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/netease/mpay/e/b/x;->a(Lcom/netease/mpay/e/b/o;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v0

    iput-object p1, v0, Lcom/netease/mpay/e/b/q;->f:Ljava/lang/String;

    iput-object p3, v0, Lcom/netease/mpay/e/b/q;->g:Ljava/lang/String;

    iput p2, v0, Lcom/netease/mpay/e/b/q;->h:I

    invoke-direct {p0, v0}, Lcom/netease/mpay/e/c/k;->c(Lcom/netease/mpay/e/b/q;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/e/c/k;->d()Lcom/netease/mpay/e/b/o;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "pay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "webPay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/e/c/k;->e()Lcom/netease/mpay/e/b/o;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "webLogin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/netease/mpay/e/c/k;->f()Lcom/netease/mpay/e/b/o;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/netease/mpay/e/c/k;->d()Lcom/netease/mpay/e/b/o;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lcom/netease/mpay/e/b/q;
    .locals 3

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v1

    iget-object v0, v1, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v3

    iget-object v0, v3, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    iget-object v5, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v5, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v5, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iput-object v2, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    :cond_2
    move-object v0, v1

    move-object v1, v0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0, v3}, Lcom/netease/mpay/e/c/k;->c(Lcom/netease/mpay/e/b/q;)V

    :cond_4
    return-object v1
.end method

.method public c()V
    .locals 4

    invoke-virtual {p0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v1

    iget-object v0, v1, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/netease/mpay/e/c/k;->c(Lcom/netease/mpay/e/b/q;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, v2, Lcom/netease/mpay/e/b/o;->m:Z

    invoke-virtual {p0, v2, p2, v1}, Lcom/netease/mpay/e/c/k;->a(Lcom/netease/mpay/e/b/o;Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_0
.end method
