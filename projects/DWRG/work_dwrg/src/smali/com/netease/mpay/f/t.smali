.class public Lcom/netease/mpay/f/t;
.super Lcom/netease/mpay/f/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/f/t$a;,
        Lcom/netease/mpay/f/t$b;,
        Lcom/netease/mpay/f/t$c;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/Boolean;


# instance fields
.field private b:Z

.field private j:Lcom/netease/mpay/e/b/af;

.field private k:Lcom/netease/mpay/server/response/u;

.field private l:Lcom/netease/mpay/f/t$b;

.field private m:Lcom/netease/mpay/f/t$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/f/t;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/e/b/af;Lcom/netease/mpay/server/response/u;Lcom/netease/mpay/f/t$b;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/netease/mpay/e/b/af;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/netease/mpay/server/response/u;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/netease/mpay/f/t$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/netease/mpay/f/a/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/f/t;->b:Z

    iput-object p3, p0, Lcom/netease/mpay/f/t;->j:Lcom/netease/mpay/e/b/af;

    iput-object p4, p0, Lcom/netease/mpay/f/t;->k:Lcom/netease/mpay/server/response/u;

    iput-object p5, p0, Lcom/netease/mpay/f/t;->l:Lcom/netease/mpay/f/t$b;

    invoke-super {p0}, Lcom/netease/mpay/f/a/d;->f()V

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

.method static synthetic a(Lcom/netease/mpay/f/t;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/t;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Lcom/netease/mpay/f/a/d$d;Lcom/netease/mpay/server/response/d;)Lcom/netease/mpay/e/b/af;
    .locals 3

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    iget-wide v1, p2, Lcom/netease/mpay/server/response/d;->m:J

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/mpay/f/t;->a(Lcom/netease/mpay/e/b;J)V

    new-instance v0, Lcom/netease/mpay/e/b/af;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/af;-><init>()V

    invoke-virtual {v0, p2}, Lcom/netease/mpay/e/b/af;->a(Lcom/netease/mpay/server/response/d;)V

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/b;->a(Lcom/netease/mpay/e/b/af;)V

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-direct {p0, p2, v1}, Lcom/netease/mpay/f/t;->a(Lcom/netease/mpay/server/response/d;Lcom/netease/mpay/e/b;)Lcom/netease/mpay/e/b/ak;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/mpay/e/c/b;->a(Lcom/netease/mpay/e/b/ak;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/netease/mpay/e/b/af;->k:Lcom/netease/mpay/e/b/i;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/netease/mpay/f/u;

    invoke-direct {v2, p0, v0}, Lcom/netease/mpay/f/u;-><init>(Lcom/netease/mpay/f/t;Lcom/netease/mpay/e/b/af;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-object v0
.end method

.method private a(Lcom/netease/mpay/server/response/d;Lcom/netease/mpay/e/b;)Lcom/netease/mpay/e/b/ak;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/b;->d()Lcom/netease/mpay/e/b/ak;

    move-result-object v2

    iget-boolean v1, p1, Lcom/netease/mpay/server/response/d;->y:Z

    if-eqz v1, :cond_0

    iget-wide v3, p1, Lcom/netease/mpay/server/response/d;->z:J

    iget-wide v5, v2, Lcom/netease/mpay/e/b/ak;->b:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    :cond_0
    const/4 v3, 0x1

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/d;->y:Z

    iput-boolean v0, v2, Lcom/netease/mpay/e/b/ak;->a:Z

    iget-wide v0, p1, Lcom/netease/mpay/server/response/d;->z:J

    iput-wide v0, v2, Lcom/netease/mpay/e/b/ak;->b:J

    iget v0, p1, Lcom/netease/mpay/server/response/d;->A:I

    if-lez v0, :cond_2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget v4, p1, Lcom/netease/mpay/server/response/d;->A:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v0, v4

    :goto_0
    iput-wide v0, v2, Lcom/netease/mpay/e/b/ak;->c:J

    move v0, v3

    :cond_1
    if-eqz v0, :cond_3

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lcom/netease/mpay/e/b;J)V
    .locals 5

    invoke-virtual {p1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v1

    iget-wide v2, v1, Lcom/netease/mpay/e/b/af;->l:J

    cmp-long v0, v2, p2

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/k;->a()Lcom/netease/mpay/e/b/q;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/e/b/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/o;

    iget-boolean v3, v1, Lcom/netease/mpay/e/b/af;->f:Z

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v3}, Lcom/netease/mpay/e/a/a;->d(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v3

    iget-object v4, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/r;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/netease/mpay/e/b/r;->a(J)V

    invoke-virtual {p1}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v4

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/r;)V

    goto :goto_0
.end method

.method private a(Lcom/netease/mpay/f/a/d$d;Lcom/netease/mpay/server/response/c;)V
    .locals 5

    new-instance v2, Lcom/netease/mpay/e/b/e;

    invoke-direct {v2}, Lcom/netease/mpay/e/b/e;-><init>()V

    iget-wide v0, p2, Lcom/netease/mpay/server/response/c;->a:J

    iput-wide v0, v2, Lcom/netease/mpay/e/b/e;->a:J

    iget-object v0, p2, Lcom/netease/mpay/server/response/c;->b:Ljava/util/ArrayList;

    iput-object v0, v2, Lcom/netease/mpay/e/b/e;->b:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/netease/mpay/server/response/c;->c:Ljava/util/ArrayList;

    iput-object v0, v2, Lcom/netease/mpay/e/b/e;->c:Ljava/util/ArrayList;

    iget v0, p2, Lcom/netease/mpay/server/response/c;->d:I

    if-lez v0, :cond_0

    iget v0, p2, Lcom/netease/mpay/server/response/c;->d:I

    :goto_0
    iput v0, v2, Lcom/netease/mpay/e/b/e;->d:I

    iget-wide v0, p2, Lcom/netease/mpay/server/response/c;->e:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    iget-wide v0, p2, Lcom/netease/mpay/server/response/c;->e:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    :goto_1
    iput-wide v0, v2, Lcom/netease/mpay/e/b/e;->e:J

    iget-object v0, p2, Lcom/netease/mpay/server/response/c;->f:Ljava/lang/String;

    iput-object v0, v2, Lcom/netease/mpay/e/b/e;->f:Ljava/lang/String;

    iget v0, p2, Lcom/netease/mpay/server/response/c;->g:I

    iput v0, v2, Lcom/netease/mpay/e/b/e;->g:I

    iget v0, p2, Lcom/netease/mpay/server/response/c;->h:I

    iput v0, v2, Lcom/netease/mpay/e/b/e;->h:I

    iget-object v0, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/mpay/e/c/b;->a(Lcom/netease/mpay/e/b/e;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x927c0

    goto :goto_1
.end method

.method static synthetic b(Lcom/netease/mpay/f/t;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/f/t;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Void;
    .locals 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    sget-object v5, Lcom/netease/mpay/f/t;->a:Ljava/lang/Boolean;

    monitor-enter v5

    :try_start_0
    new-instance v1, Lcom/netease/mpay/f/t$a;

    invoke-direct {v1}, Lcom/netease/mpay/f/t$a;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/f/t;->m:Lcom/netease/mpay/f/t$a;

    invoke-static {}, Lcom/netease/mpay/skin/SkinManager;->getInstance()Lcom/netease/mpay/skin/SkinManager;

    move-result-object v1

    iget-object v6, p0, Lcom/netease/mpay/f/t;->c:Landroid/app/Activity;

    sget-object v7, Lcom/netease/mpay/bk;->l:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/netease/mpay/skin/SkinManager;->loadSkin(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v6

    iget-object v1, p0, Lcom/netease/mpay/f/t;->j:Lcom/netease/mpay/e/b/af;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/f/t;->j:Lcom/netease/mpay/e/b/af;

    iget-wide v7, v1, Lcom/netease/mpay/e/b/af;->a:J

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    cmp-long v1, v7, v9

    if-gez v1, :cond_1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/netease/mpay/server/d;

    iget-object v7, p0, Lcom/netease/mpay/f/t;->c:Landroid/app/Activity;

    iget-object v8, p0, Lcom/netease/mpay/f/t;->d:Ljava/lang/String;

    iget-object v9, p0, Lcom/netease/mpay/f/t;->e:Ljava/lang/String;

    invoke-direct {v1, v7, v8, v9}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/server/d;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/netease/mpay/widget/aw$b;->a(J)V
    :try_end_1
    .catch Lcom/netease/mpay/server/a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    new-instance v7, Lcom/netease/mpay/server/d;

    iget-object v1, p0, Lcom/netease/mpay/f/t;->c:Landroid/app/Activity;

    iget-object v8, p0, Lcom/netease/mpay/f/t;->d:Ljava/lang/String;

    iget-object v9, p0, Lcom/netease/mpay/f/t;->e:Ljava/lang/String;

    invoke-direct {v7, v1, v8, v9}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/netease/mpay/server/a/g;

    iget-object v9, p0, Lcom/netease/mpay/f/t;->d:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v1, v6, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    :goto_1
    invoke-direct {v8, v9, v1}, Lcom/netease/mpay/server/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/server/response/d;

    iget-object v7, p0, Lcom/netease/mpay/f/t;->m:Lcom/netease/mpay/f/t$a;

    invoke-direct {p0, p1, v1}, Lcom/netease/mpay/f/t;->a(Lcom/netease/mpay/f/a/d$d;Lcom/netease/mpay/server/response/d;)Lcom/netease/mpay/e/b/af;

    move-result-object v8

    iput-object v8, v7, Lcom/netease/mpay/f/t$a;->a:Lcom/netease/mpay/e/b/af;

    iget-object v7, p0, Lcom/netease/mpay/f/t;->c:Landroid/app/Activity;

    iget-object v8, p0, Lcom/netease/mpay/f/t;->d:Ljava/lang/String;

    iget-object v1, v1, Lcom/netease/mpay/server/response/d;->b:Ljava/lang/String;

    invoke-static {v7, v8, v1}, Lcom/netease/mpay/server/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/netease/mpay/server/a; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/netease/mpay/f/t;->k:Lcom/netease/mpay/server/response/u;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/mpay/f/t;->k:Lcom/netease/mpay/server/response/u;

    iget-wide v7, v1, Lcom/netease/mpay/server/response/u;->a:J

    const-wide/16 v9, -0x1

    cmp-long v1, v7, v9

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netease/mpay/f/t;->k:Lcom/netease/mpay/server/response/u;

    iget-wide v7, v1, Lcom/netease/mpay/server/response/u;->a:J

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v9

    cmp-long v1, v7, v9

    if-gez v1, :cond_3

    :cond_2
    :try_start_4
    iget-object v7, p0, Lcom/netease/mpay/f/t;->m:Lcom/netease/mpay/f/t$a;

    new-instance v8, Lcom/netease/mpay/server/d;

    iget-object v1, p0, Lcom/netease/mpay/f/t;->c:Landroid/app/Activity;

    iget-object v9, p0, Lcom/netease/mpay/f/t;->d:Ljava/lang/String;

    iget-object v10, p0, Lcom/netease/mpay/f/t;->e:Ljava/lang/String;

    invoke-direct {v8, v1, v9, v10}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/netease/mpay/server/a/ac;

    iget-object v10, p0, Lcom/netease/mpay/f/t;->d:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v1, v6, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    :goto_2
    iget-object v6, p0, Lcom/netease/mpay/f/t;->c:Landroid/app/Activity;

    invoke-static {v6}, Lcom/netease/mpay/bj;->c(Landroid/content/Context;)Z

    move-result v6

    invoke-direct {v9, v10, v1, v6}, Lcom/netease/mpay/server/a/ac;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v9}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/server/response/u;

    iput-object v1, v7, Lcom/netease/mpay/f/t$a;->b:Lcom/netease/mpay/server/response/u;
    :try_end_4
    .catch Lcom/netease/mpay/server/a; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :try_start_5
    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v1

    iget-wide v3, v1, Lcom/netease/mpay/e/b/af;->d:J

    iget-object v1, p1, Lcom/netease/mpay/f/a/d$d;->a:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/b;->b()Lcom/netease/mpay/e/b/e;

    move-result-object v1

    iget-wide v6, v1, Lcom/netease/mpay/e/b/e;->a:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmp-long v1, v3, v6

    if-lez v1, :cond_4

    :try_start_6
    new-instance v1, Lcom/netease/mpay/server/d;

    iget-object v3, p0, Lcom/netease/mpay/f/t;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/f/t;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/f/t;->e:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v6}, Lcom/netease/mpay/server/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/netease/mpay/server/a/f;

    invoke-direct {v3}, Lcom/netease/mpay/server/a/f;-><init>()V

    invoke-virtual {v1, v3}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/server/response/c;

    invoke-direct {p0, p1, v1}, Lcom/netease/mpay/f/t;->a(Lcom/netease/mpay/f/a/d$d;Lcom/netease/mpay/server/response/c;)V
    :try_end_6
    .catch Lcom/netease/mpay/server/a; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    :goto_3
    :try_start_7
    monitor-exit v5

    return-object v2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1

    :cond_5
    move-object v1, v2

    goto/16 :goto_1

    :catch_1
    move-exception v2

    :try_start_8
    iget-object v1, p0, Lcom/netease/mpay/f/t;->c:Landroid/app/Activity;

    iget-object v6, p0, Lcom/netease/mpay/f/t;->d:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/netease/mpay/server/d;->a(Landroid/app/Activity;Ljava/lang/String;)V

    instance-of v1, v2, Lcom/netease/mpay/server/a$i;

    if-eqz v1, :cond_6

    move-object v0, v2

    check-cast v0, Lcom/netease/mpay/server/a$i;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/netease/mpay/server/a$i;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/netease/mpay/f/t;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/netease/mpay/widget/aq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_4
    iput-boolean v3, p0, Lcom/netease/mpay/f/t;->b:Z

    throw v2

    :cond_6
    move v3, v4

    goto :goto_4

    :cond_7
    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception v2

    instance-of v1, v2, Lcom/netease/mpay/server/a$i;

    if-eqz v1, :cond_8

    move-object v0, v2

    check-cast v0, Lcom/netease/mpay/server/a$i;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/netease/mpay/server/a$i;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/netease/mpay/f/t;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/netease/mpay/widget/aq;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v3

    :goto_5
    iput-boolean v1, p0, Lcom/netease/mpay/f/t;->b:Z

    throw v2

    :cond_8
    move v1, v4

    goto :goto_5

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3
.end method

.method protected a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/netease/mpay/f/a/d;->a(Lcom/netease/mpay/f/a/a$b;Lcom/netease/mpay/f/a/b;)V

    iget-object v0, p0, Lcom/netease/mpay/f/t;->l:Lcom/netease/mpay/f/t$b;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/netease/mpay/f/a/a$b;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/f/t;->l:Lcom/netease/mpay/f/t$b;

    iget-object v1, p0, Lcom/netease/mpay/f/t;->m:Lcom/netease/mpay/f/t$a;

    invoke-interface {v0, v1}, Lcom/netease/mpay/f/t$b;->a(Lcom/netease/mpay/f/t$a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/f/t;->l:Lcom/netease/mpay/f/t$b;

    iget-boolean v0, p0, Lcom/netease/mpay/f/t;->b:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netease/mpay/f/t$c;->a:Lcom/netease/mpay/f/t$c;

    :goto_1
    iget-object v2, p1, Lcom/netease/mpay/f/a/a$b;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/t;->m:Lcom/netease/mpay/f/t$a;

    invoke-interface {v1, v0, v2, v3}, Lcom/netease/mpay/f/t$b;->a(Lcom/netease/mpay/f/t$c;Ljava/lang/String;Lcom/netease/mpay/f/t$a;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netease/mpay/f/t$c;->b:Lcom/netease/mpay/f/t$c;

    goto :goto_1
.end method

.method protected synthetic b(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/f/t;->a(Lcom/netease/mpay/f/a/d$d;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
