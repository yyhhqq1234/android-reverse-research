.class public abstract Lcom/netease/mobile/link/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobile/link/g$d;,
        Lcom/netease/mobile/link/g$g;,
        Lcom/netease/mobile/link/g$e;,
        Lcom/netease/mobile/link/g$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final g:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final h:Lcom/netease/mobile/link/g$f;

.field public static final i:Lcom/netease/mobile/link/g$a;

.field public static final j:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile k:Lcom/netease/mobile/link/g$f;

.field public static l:Lcom/netease/mobile/link/g$e;


# instance fields
.field public final a:Lcom/netease/mobile/link/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mobile/link/g$g<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/netease/mobile/link/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Landroid/os/Handler;

.field public volatile f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/netease/mobile/link/g$f;

    .line 1
    invoke-direct {v0}, Lcom/netease/mobile/link/g$f;-><init>()V

    .line 2
    sput-object v0, Lcom/netease/mobile/link/g;->h:Lcom/netease/mobile/link/g$f;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/lit8 v6, v1, 0x1

    new-instance v11, Lcom/netease/mobile/link/g$a;

    invoke-direct {v11}, Lcom/netease/mobile/link/g$a;-><init>()V

    sput-object v11, Lcom/netease/mobile/link/g;->i:Lcom/netease/mobile/link/g$a;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x20

    invoke-direct {v10, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v10, Lcom/netease/mobile/link/g;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    sput-object v0, Lcom/netease/mobile/link/g;->k:Lcom/netease/mobile/link/g$f;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1e

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v0, Lcom/netease/mobile/link/g;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/mobile/link/g;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/netease/mobile/link/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/netease/mobile/link/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput p1, p0, Lcom/netease/mobile/link/g;->f:I

    invoke-static {}, Lcom/netease/mobile/link/g;->a()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mobile/link/g;->e:Landroid/os/Handler;

    new-instance p1, Lcom/netease/mobile/link/g$b;

    invoke-direct {p1, p0}, Lcom/netease/mobile/link/g$b;-><init>(Lcom/netease/mobile/link/g;)V

    iput-object p1, p0, Lcom/netease/mobile/link/g;->a:Lcom/netease/mobile/link/g$b;

    new-instance v0, Lcom/netease/mobile/link/g$c;

    invoke-direct {v0, p0, p1}, Lcom/netease/mobile/link/g$c;-><init>(Lcom/netease/mobile/link/g;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/netease/mobile/link/g;->b:Lcom/netease/mobile/link/g$c;

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 3

    const-class v0, Lcom/netease/mobile/link/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/mobile/link/g;->l:Lcom/netease/mobile/link/g$e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mobile/link/g$e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/mobile/link/g$e;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/netease/mobile/link/g;->l:Lcom/netease/mobile/link/g$e;

    :cond_0
    sget-object v1, Lcom/netease/mobile/link/g;->l:Lcom/netease/mobile/link/g$e;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mobile/link/g;->e:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/netease/mobile/link/g$d;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcom/netease/mobile/link/g$d;-><init>(Lcom/netease/mobile/link/g;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method
