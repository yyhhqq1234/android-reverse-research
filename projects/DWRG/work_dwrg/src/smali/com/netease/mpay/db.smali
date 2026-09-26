.class Lcom/netease/mpay/db;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/t$b;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mpay/cz$a;

.field final synthetic d:Lcom/netease/mpay/cz;


# direct methods
.method constructor <init>(Lcom/netease/mpay/cz;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/cz$a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/db;->d:Lcom/netease/mpay/cz;

    iput-object p2, p0, Lcom/netease/mpay/db;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/db;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/db;->c:Lcom/netease/mpay/cz$a;

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

.method private a(Ljava/lang/String;Lcom/netease/mpay/f/t$a;)Ljava/util/ArrayList;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/netease/mpay/f/t$a;->a:Lcom/netease/mpay/e/b/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/db;->d:Lcom/netease/mpay/cz;

    iget-object v2, p0, Lcom/netease/mpay/db;->a:Landroid/app/Activity;

    invoke-static {v0, v2, p1}, Lcom/netease/mpay/cz;->a(Lcom/netease/mpay/cz;Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    iget-object v2, p2, Lcom/netease/mpay/f/t$a;->a:Lcom/netease/mpay/e/b/af;

    iput-object v2, v0, Lcom/netease/mpay/cz$b;->d:Lcom/netease/mpay/e/b/af;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/netease/mpay/f/t$a;->b:Lcom/netease/mpay/server/response/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/db;->d:Lcom/netease/mpay/cz;

    iget-object v2, p0, Lcom/netease/mpay/db;->a:Landroid/app/Activity;

    invoke-static {v0, v2, p1}, Lcom/netease/mpay/cz;->a(Lcom/netease/mpay/cz;Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    iget-object v2, p2, Lcom/netease/mpay/f/t$a;->b:Lcom/netease/mpay/server/response/u;

    iput-object v2, v0, Lcom/netease/mpay/cz$b;->e:Lcom/netease/mpay/server/response/u;

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/db;->d:Lcom/netease/mpay/cz;

    iget-object v2, p0, Lcom/netease/mpay/db;->a:Landroid/app/Activity;

    invoke-static {v0, v2, p1}, Lcom/netease/mpay/cz;->a(Lcom/netease/mpay/cz;Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    iget-object v2, v0, Lcom/netease/mpay/cz$b;->b:Ljava/lang/Boolean;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/db;->d:Lcom/netease/mpay/cz;

    iget-object v3, p0, Lcom/netease/mpay/db;->a:Landroid/app/Activity;

    invoke-static {v0, v3, p1}, Lcom/netease/mpay/cz;->a(Lcom/netease/mpay/cz;Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/mpay/cz$b;->b:Ljava/lang/Boolean;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/netease/mpay/db;->d:Lcom/netease/mpay/cz;

    iget-object v2, p0, Lcom/netease/mpay/db;->a:Landroid/app/Activity;

    invoke-static {v0, v2, p1}, Lcom/netease/mpay/cz;->a(Lcom/netease/mpay/cz;Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    iget-object v2, v0, Lcom/netease/mpay/cz$b;->d:Lcom/netease/mpay/e/b/af;

    iget-object v0, p0, Lcom/netease/mpay/db;->d:Lcom/netease/mpay/cz;

    invoke-static {v0}, Lcom/netease/mpay/cz;->a(Lcom/netease/mpay/cz;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    iget-boolean v0, v2, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/db;->a:Landroid/app/Activity;

    sget-object v3, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-boolean v3, v2, Lcom/netease/mpay/e/b/af;->w:Z

    invoke-virtual {v0, v3}, Lcom/netease/mpay/widget/ay;->a(Z)V

    iget-object v0, p0, Lcom/netease/mpay/db;->a:Landroid/app/Activity;

    sget-object v3, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget v3, v2, Lcom/netease/mpay/e/b/af;->z:I

    invoke-virtual {v0, v3}, Lcom/netease/mpay/widget/ay;->a(I)V

    iget-object v0, p0, Lcom/netease/mpay/db;->a:Landroid/app/Activity;

    sget-object v3, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    invoke-static {}, Lcom/netease/mpay/widget/aw$b;->a()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/netease/mpay/widget/ay;->a(J)V

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/db;->d:Lcom/netease/mpay/cz;

    invoke-static {v0, v5}, Lcom/netease/mpay/cz;->a(Lcom/netease/mpay/cz;Z)Z

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/db;->d:Lcom/netease/mpay/cz;

    invoke-static {v0}, Lcom/netease/mpay/cz;->b(Lcom/netease/mpay/cz;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    iget-boolean v0, v2, Lcom/netease/mpay/e/b/af;->x:Z

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_4

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v3, p0, Lcom/netease/mpay/db;->a:Landroid/app/Activity;

    invoke-direct {v0, v3, p1}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/mpay/db;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_0
    iget v2, v2, Lcom/netease/mpay/e/b/af;->A:I

    invoke-static {v3, p1, v0, v2}, Lcom/netease/mpay/hy;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/db;->d:Lcom/netease/mpay/cz;

    invoke-static {v0, v5}, Lcom/netease/mpay/cz;->b(Lcom/netease/mpay/cz;Z)Z

    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/db;->d:Lcom/netease/mpay/cz;

    invoke-static {v0}, Lcom/netease/mpay/cz;->c(Lcom/netease/mpay/cz;)Lcom/netease/mpay/widget/av;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/mpay/db;->d:Lcom/netease/mpay/cz;

    invoke-static {v0}, Lcom/netease/mpay/cz;->c(Lcom/netease/mpay/cz;)Lcom/netease/mpay/widget/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/mpay/db;->d:Lcom/netease/mpay/cz;

    invoke-static {v0}, Lcom/netease/mpay/cz;->c(Lcom/netease/mpay/cz;)Lcom/netease/mpay/widget/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->dismiss()V

    iget-object v0, p0, Lcom/netease/mpay/db;->d:Lcom/netease/mpay/cz;

    invoke-static {v0, v1}, Lcom/netease/mpay/cz;->a(Lcom/netease/mpay/cz;Lcom/netease/mpay/widget/av;)Lcom/netease/mpay/widget/av;

    :cond_6
    iget-object v0, p0, Lcom/netease/mpay/db;->d:Lcom/netease/mpay/cz;

    iget-object v1, p0, Lcom/netease/mpay/db;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/netease/mpay/cz;->a(Lcom/netease/mpay/cz;Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/cz$b;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/mpay/db;->d:Lcom/netease/mpay/cz;

    iget-object v2, p0, Lcom/netease/mpay/db;->a:Landroid/app/Activity;

    invoke-static {v1, v2, p1}, Lcom/netease/mpay/cz;->a(Lcom/netease/mpay/cz;Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/netease/mpay/cz$b;->a:Ljava/util/ArrayList;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    iget-object v0, v0, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/netease/mpay/f/t$a;)V
    .locals 3

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/db;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/db;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->h()Lcom/netease/mpay/e/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/n;->a()V

    iget-object v0, p0, Lcom/netease/mpay/db;->b:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/netease/mpay/db;->a(Ljava/lang/String;Lcom/netease/mpay/f/t$a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/cz$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netease/mpay/cz$a;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/netease/mpay/f/t$c;Ljava/lang/String;Lcom/netease/mpay/f/t$a;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/db;->b:Ljava/lang/String;

    invoke-direct {p0, v0, p3}, Lcom/netease/mpay/db;->a(Ljava/lang/String;Lcom/netease/mpay/f/t$a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/cz$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/db;->c:Lcom/netease/mpay/cz$a;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/cz$a;->a(Lcom/netease/mpay/f/t$c;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
