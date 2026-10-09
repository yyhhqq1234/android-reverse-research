.class public final Lcom/netease/mobile/link/y5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobile/link/y5$a;,
        Lcom/netease/mobile/link/y5$b;
    }
.end annotation


# static fields
.field public static d:Lcom/netease/mobile/link/x5;

.field public static final e:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public a:I

.field public b:J

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/netease/mobile/link/y5;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    iput p1, p0, Lcom/netease/mobile/link/y5;->a:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/netease/mobile/link/y5;->b:J

    const/16 p1, 0x40

    iput p1, p0, Lcom/netease/mobile/link/y5;->c:I

    return-void
.end method

.method public static synthetic a()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/netease/mobile/link/y5;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static declared-synchronized b()Lcom/netease/mobile/link/x5;
    .locals 14

    const-class v0, Lcom/netease/mobile/link/y5;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/mobile/link/y5;->d:Lcom/netease/mobile/link/x5;

    if-nez v1, :cond_4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    if-le v1, v2, :cond_1

    const/4 v5, 0x3

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    new-instance v1, Lcom/netease/mobile/link/x5;

    new-instance v2, Lcom/netease/mobile/link/y5;

    mul-int/lit8 v6, v5, 0x2

    invoke-direct {v2, v5, v6}, Lcom/netease/mobile/link/y5;-><init>(II)V

    const/4 v4, 0x5

    .line 1
    iput v4, v2, Lcom/netease/mobile/link/y5;->a:I

    const-wide/32 v7, 0x927c0

    .line 2
    iput-wide v7, v2, Lcom/netease/mobile/link/y5;->b:J

    const/16 v4, 0x32

    .line 3
    iput v4, v2, Lcom/netease/mobile/link/y5;->c:I

    .line 4
    new-instance v13, Ljava/util/concurrent/ThreadPoolExecutor;

    iget-wide v7, v2, Lcom/netease/mobile/link/y5;->b:J

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget v4, v2, Lcom/netease/mobile/link/y5;->c:I

    if-lez v4, :cond_2

    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    iget v10, v2, Lcom/netease/mobile/link/y5;->c:I

    invoke-direct {v4, v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :goto_1
    move-object v10, v4

    new-instance v11, Lcom/netease/mobile/link/y5$b;

    invoke-direct {v11, v2}, Lcom/netease/mobile/link/y5$b;-><init>(Lcom/netease/mobile/link/y5;)V

    new-instance v12, Lcom/netease/mobile/link/y5$a;

    .line 5
    invoke-direct {v12}, Lcom/netease/mobile/link/y5$a;-><init>()V

    move-object v4, v13

    .line 6
    invoke-direct/range {v4 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iget-wide v4, v2, Lcom/netease/mobile/link/y5;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    :try_start_1
    invoke-virtual {v13, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v2

    :goto_2
    :try_start_2
    invoke-static {v2}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2

    .line 7
    :cond_3
    :goto_3
    invoke-direct {v1, v13}, Lcom/netease/mobile/link/x5;-><init>(Ljava/util/concurrent/ExecutorService;)V

    sput-object v1, Lcom/netease/mobile/link/y5;->d:Lcom/netease/mobile/link/x5;

    :cond_4
    sget-object v1, Lcom/netease/mobile/link/y5;->d:Lcom/netease/mobile/link/x5;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method
