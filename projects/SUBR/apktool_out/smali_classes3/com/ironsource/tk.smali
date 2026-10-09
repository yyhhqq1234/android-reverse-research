.class public Lcom/ironsource/tk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/String; = "tk"


# instance fields
.field private final a:Lcom/ironsource/lifecycle/b;

.field private final b:Ljava/lang/Runnable;

.field private final c:Lcom/ironsource/st;

.field private final d:Ljava/lang/Object;

.field private e:Ljava/util/Timer;

.field private final f:Lcom/ironsource/kj;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lcom/ironsource/lifecycle/b;Lcom/ironsource/st;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/tk;->d:Ljava/lang/Object;

    new-instance v0, Lcom/ironsource/tk$a;

    invoke-direct {v0, p0}, Lcom/ironsource/tk$a;-><init>(Lcom/ironsource/tk;)V

    iput-object v0, p0, Lcom/ironsource/tk;->f:Lcom/ironsource/kj;

    iput-object p1, p0, Lcom/ironsource/tk;->b:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/ironsource/tk;->a:Lcom/ironsource/lifecycle/b;

    iput-object p3, p0, Lcom/ironsource/tk;->c:Lcom/ironsource/st;

    return-void
.end method

.method static synthetic a(Lcom/ironsource/tk;)Lcom/ironsource/st;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/tk;->c:Lcom/ironsource/st;

    return-object p0
.end method

.method static synthetic a(Lcom/ironsource/tk;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ironsource/tk;->b(J)V

    return-void
.end method

.method private b(J)V
    .locals 3

    iget-object v0, p0, Lcom/ironsource/tk;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/tk;->c()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/ironsource/tk;->e:Ljava/util/Timer;

    new-instance v2, Lcom/ironsource/tk$b;

    invoke-direct {v2, p0}, Lcom/ironsource/tk$b;-><init>(Lcom/ironsource/tk;)V

    invoke-virtual {v1, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/ironsource/tk;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/tk;->c()V

    return-void
.end method

.method static synthetic c(Lcom/ironsource/tk;)Lcom/ironsource/kj;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/tk;->f:Lcom/ironsource/kj;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/tk;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ironsource/tk;->e:Ljava/util/Timer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ironsource/tk;->e:Ljava/util/Timer;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic d(Lcom/ironsource/tk;)Lcom/ironsource/lifecycle/b;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/tk;->a:Lcom/ironsource/lifecycle/b;

    return-object p0
.end method

.method static synthetic e(Lcom/ironsource/tk;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/tk;->b:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/tk;->a(J)V

    return-void
.end method

.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    sget-object p1, Lcom/ironsource/tk;->g:Ljava/lang/String;

    const-string p2, "cannot start timer with delay < 0"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ironsource/tk;->a:Lcom/ironsource/lifecycle/b;

    iget-object v1, p0, Lcom/ironsource/tk;->f:Lcom/ironsource/kj;

    invoke-virtual {v0, v1}, Lcom/ironsource/lifecycle/b;->a(Lcom/ironsource/kj;)V

    iget-object v0, p0, Lcom/ironsource/tk;->c:Lcom/ironsource/st;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/st;->a(J)V

    iget-object v0, p0, Lcom/ironsource/tk;->a:Lcom/ironsource/lifecycle/b;

    invoke-virtual {v0}, Lcom/ironsource/lifecycle/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/ironsource/tk;->c:Lcom/ironsource/st;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/st;->c(J)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/tk;->b(J)V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lcom/ironsource/tk;->c()V

    iget-object v0, p0, Lcom/ironsource/tk;->a:Lcom/ironsource/lifecycle/b;

    iget-object v1, p0, Lcom/ironsource/tk;->f:Lcom/ironsource/kj;

    invoke-virtual {v0, v1}, Lcom/ironsource/lifecycle/b;->b(Lcom/ironsource/kj;)V

    iget-object v0, p0, Lcom/ironsource/tk;->c:Lcom/ironsource/st;

    invoke-virtual {v0}, Lcom/ironsource/st;->b()V

    return-void
.end method
