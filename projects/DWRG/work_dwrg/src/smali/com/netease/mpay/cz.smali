.class public Lcom/netease/mpay/cz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/cz$a;,
        Lcom/netease/mpay/cz$b;
    }
.end annotation


# static fields
.field private static a:Lcom/netease/mpay/cz;


# instance fields
.field private b:Ljava/util/HashMap;

.field private c:Lcom/netease/mpay/widget/av;

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/cz;->b:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/netease/mpay/cz;->d:Z

    iput-boolean v1, p0, Lcom/netease/mpay/cz;->e:Z

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

.method static synthetic a(Lcom/netease/mpay/cz;Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/cz;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/netease/mpay/cz;
    .locals 2

    sget-object v0, Lcom/netease/mpay/cz;->a:Lcom/netease/mpay/cz;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/cz;->a:Lcom/netease/mpay/cz;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/netease/mpay/cz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/mpay/cz;->a:Lcom/netease/mpay/cz;

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/cz;

    invoke-direct {v0}, Lcom/netease/mpay/cz;-><init>()V

    sput-object v0, Lcom/netease/mpay/cz;->a:Lcom/netease/mpay/cz;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/netease/mpay/cz;->a:Lcom/netease/mpay/cz;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/netease/mpay/cz;Lcom/netease/mpay/widget/av;)Lcom/netease/mpay/widget/av;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/cz;->c:Lcom/netease/mpay/widget/av;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/cz;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/cz;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/netease/mpay/cz;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/cz;->d:Z

    return p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;
    .locals 4

    const-class v1, Lcom/netease/mpay/cz$b;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/cz;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/cz;->b:Ljava/util/HashMap;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/netease/mpay/bk;->a:Lcom/netease/mpay/dc;

    if-eqz v2, :cond_1

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/netease/mpay/bk;->a:Lcom/netease/mpay/dc;

    invoke-virtual {v3}, Lcom/netease/mpay/dc;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/cz;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/netease/mpay/cz;->b:Ljava/util/HashMap;

    new-instance v3, Lcom/netease/mpay/cz$b;

    invoke-direct {v3, p0, p1, p2}, Lcom/netease/mpay/cz$b;-><init>(Lcom/netease/mpay/cz;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lcom/netease/mpay/cz;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/cz$b;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Landroid/app/Activity;Ljava/lang/String;ZLcom/netease/mpay/cz$a;)V
    .locals 6

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/mpay/widget/av;->a(Landroid/content/Context;Z)Lcom/netease/mpay/widget/av;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/cz;->c:Lcom/netease/mpay/widget/av;

    iget-object v0, p0, Lcom/netease/mpay/cz;->c:Lcom/netease/mpay/widget/av;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/av;->show()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/cz;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    iget-object v1, v0, Lcom/netease/mpay/cz$b;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/cz;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/cz$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/cz;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    iget-object v1, v0, Lcom/netease/mpay/cz$b;->b:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/cz;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/cz$b;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/cz;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/mpay/cz$b;->b:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/cz;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/cz$b;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/f/ab;

    const-string v1, "login"

    new-instance v2, Lcom/netease/mpay/da;

    invoke-direct {v2, p0, p1, p2}, Lcom/netease/mpay/da;-><init>(Lcom/netease/mpay/cz;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/netease/mpay/f/ab;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ab;->h()V

    :cond_2
    new-instance v0, Lcom/netease/mpay/f/t;

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/cz;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v1

    iget-object v3, v1, Lcom/netease/mpay/cz$b;->d:Lcom/netease/mpay/e/b/af;

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/cz;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v1

    iget-object v4, v1, Lcom/netease/mpay/cz$b;->e:Lcom/netease/mpay/server/response/u;

    new-instance v5, Lcom/netease/mpay/db;

    invoke-direct {v5, p0, p1, p2, p4}, Lcom/netease/mpay/db;-><init>(Lcom/netease/mpay/cz;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/cz$a;)V

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/t;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/e/b/af;Lcom/netease/mpay/server/response/u;Lcom/netease/mpay/f/t$b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/t;->h()V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method static synthetic b(Lcom/netease/mpay/cz;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/cz;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/netease/mpay/cz;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/cz;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/netease/mpay/cz;)Lcom/netease/mpay/widget/av;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/cz;->c:Lcom/netease/mpay/widget/av;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/cz;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/cz$b;->e:Lcom/netease/mpay/server/response/u;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netease/mpay/server/response/u;

    invoke-direct {v0}, Lcom/netease/mpay/server/response/u;-><init>()V

    goto :goto_0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/mpay/cz;->a:Lcom/netease/mpay/cz;

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;ZLcom/netease/mpay/cz$a;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/cz;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/cz$b;->d:Lcom/netease/mpay/e/b/af;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/cz;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/cz$b;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/cz$b;->e:Lcom/netease/mpay/server/response/u;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/netease/mpay/cz$a;->a()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/netease/mpay/cz;->b(Landroid/app/Activity;Ljava/lang/String;ZLcom/netease/mpay/cz$a;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/cz;->b(Landroid/app/Activity;Ljava/lang/String;ZLcom/netease/mpay/cz$a;)V

    goto :goto_0
.end method
