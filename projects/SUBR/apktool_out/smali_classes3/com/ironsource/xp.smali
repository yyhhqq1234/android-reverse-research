.class public Lcom/ironsource/xp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/l5;

.field private b:Lcom/ironsource/yp;

.field private c:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/ironsource/l5;Lcom/ironsource/yp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/xp;->a:Lcom/ironsource/l5;

    iput-object p2, p0, Lcom/ironsource/xp;->b:Lcom/ironsource/yp;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ironsource/xp;->c:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcom/ironsource/xp;)Lcom/ironsource/yp;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/xp;->b:Lcom/ironsource/yp;

    return-object p0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/xp;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/xp;->c:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/xp;->d()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/xp;->c:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/xp$b;

    invoke-direct {v1, p0}, Lcom/ironsource/xp$b;-><init>(Lcom/ironsource/xp;)V

    iget-object v2, p0, Lcom/ironsource/xp;->a:Lcom/ironsource/l5;

    invoke-virtual {v2}, Lcom/ironsource/l5;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/xp;->d()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/ironsource/xp;->b:Lcom/ironsource/yp;

    invoke-interface {v0}, Lcom/ironsource/yp;->a()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/xp;->d()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/xp;->c:Ljava/util/Timer;

    new-instance v1, Lcom/ironsource/xp$a;

    invoke-direct {v1, p0}, Lcom/ironsource/xp$a;-><init>(Lcom/ironsource/xp;)V

    iget-object v2, p0, Lcom/ironsource/xp;->a:Lcom/ironsource/l5;

    invoke-virtual {v2}, Lcom/ironsource/l5;->j()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
