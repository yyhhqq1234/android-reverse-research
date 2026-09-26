.class public Lcom/netease/mpay/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/n$b;,
        Lcom/netease/mpay/n$a;
    }
.end annotation


# static fields
.field private static a:Lcom/netease/mpay/n;


# instance fields
.field private b:Ljava/util/HashMap;

.field private c:Lcom/netease/mpay/n$b;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/n;->b:Ljava/util/HashMap;

    new-instance v0, Lcom/netease/mpay/n$b;

    invoke-direct {v0, p0}, Lcom/netease/mpay/n$b;-><init>(Lcom/netease/mpay/n;)V

    iput-object v0, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

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

.method public static a()Lcom/netease/mpay/n;
    .locals 2

    const-class v1, Lcom/netease/mpay/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/mpay/n;->a:Lcom/netease/mpay/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/n;

    invoke-direct {v0}, Lcom/netease/mpay/n;-><init>()V

    sput-object v0, Lcom/netease/mpay/n;->a:Lcom/netease/mpay/n;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/netease/mpay/n;->a:Lcom/netease/mpay/n;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/netease/mpay/EnterGameActivity$a;)V
    .locals 3

    const-class v1, Lcom/netease/mpay/n;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    iput-object p1, v0, Lcom/netease/mpay/n$b;->c:Lcom/netease/mpay/EnterGameActivity$a;

    iget-object v0, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    sget-object v2, Lcom/netease/mpay/n$a;->b:Lcom/netease/mpay/n$a;

    iput-object v2, v0, Lcom/netease/mpay/n$b;->d:Lcom/netease/mpay/n$a;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/n;->b:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/bm$a;Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    iput-object p2, v0, Lcom/netease/mpay/n$b;->a:Lcom/netease/mpay/bm$a;

    iget-object v0, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    iget-object v0, v0, Lcom/netease/mpay/n$b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    iget-object v0, v0, Lcom/netease/mpay/n$b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public b()V
    .locals 2

    const-class v1, Lcom/netease/mpay/n;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/netease/mpay/n;

    invoke-direct {v0}, Lcom/netease/mpay/n;-><init>()V

    sput-object v0, Lcom/netease/mpay/n;->a:Lcom/netease/mpay/n;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/n;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    iget-object v0, v0, Lcom/netease/mpay/n$b;->a:Lcom/netease/mpay/bm$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/netease/mpay/bm$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    iget-object v0, v0, Lcom/netease/mpay/n$b;->a:Lcom/netease/mpay/bm$a;

    return-object v0
.end method

.method public e()V
    .locals 3

    invoke-virtual {p0}, Lcom/netease/mpay/n;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    iget-object v0, v0, Lcom/netease/mpay/n$b;->a:Lcom/netease/mpay/bm$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    sget-object v1, Lcom/netease/mpay/n$a;->c:Lcom/netease/mpay/n$a;

    iput-object v1, v0, Lcom/netease/mpay/n$b;->d:Lcom/netease/mpay/n$a;

    iget-object v0, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    iget-object v0, v0, Lcom/netease/mpay/n$b;->a:Lcom/netease/mpay/bm$a;

    iget-object v1, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    iget-object v1, v1, Lcom/netease/mpay/n$b;->c:Lcom/netease/mpay/EnterGameActivity$a;

    invoke-interface {v0, v1}, Lcom/netease/mpay/bm$a;->a(Lcom/netease/mpay/EnterGameActivity$a;)V

    :cond_0
    const-class v1, Lcom/netease/mpay/n;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/netease/mpay/n$b;->c:Lcom/netease/mpay/EnterGameActivity$a;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 3

    const-class v1, Lcom/netease/mpay/n;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/netease/mpay/n$b;->c:Lcom/netease/mpay/EnterGameActivity$a;

    iget-object v0, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    sget-object v2, Lcom/netease/mpay/n$a;->a:Lcom/netease/mpay/n$a;

    iput-object v2, v0, Lcom/netease/mpay/n$b;->d:Lcom/netease/mpay/n$a;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()Z
    .locals 3

    const-class v1, Lcom/netease/mpay/n;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    iget-object v0, v0, Lcom/netease/mpay/n$b;->c:Lcom/netease/mpay/EnterGameActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    iget-object v0, v0, Lcom/netease/mpay/n$b;->c:Lcom/netease/mpay/EnterGameActivity$a;

    invoke-virtual {v0}, Lcom/netease/mpay/EnterGameActivity$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/n$a;->b:Lcom/netease/mpay/n$a;

    iget-object v2, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    iget-object v2, v2, Lcom/netease/mpay/n$b;->d:Lcom/netease/mpay/n$a;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()Z
    .locals 3

    const-class v1, Lcom/netease/mpay/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/mpay/n$a;->a:Lcom/netease/mpay/n$a;

    iget-object v2, p0, Lcom/netease/mpay/n;->c:Lcom/netease/mpay/n$b;

    iget-object v2, v2, Lcom/netease/mpay/n$b;->d:Lcom/netease/mpay/n$a;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
