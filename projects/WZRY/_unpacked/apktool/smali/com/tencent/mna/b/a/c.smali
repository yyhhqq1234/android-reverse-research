.class public Lcom/tencent/mna/b/a/c;
.super Ljava/lang/Object;
.source "AccelerateState.java"


# static fields
.field static volatile a:Z

.field static volatile b:I

.field static volatile c:Z

.field static volatile d:Z

.field static volatile e:I

.field static final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile g:Z

.field private static volatile h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    sput-boolean v1, Lcom/tencent/mna/b/a/c;->g:Z

    .line 14
    sput-boolean v1, Lcom/tencent/mna/b/a/c;->h:Z

    .line 16
    sput-boolean v1, Lcom/tencent/mna/b/a/c;->a:Z

    .line 17
    sput v1, Lcom/tencent/mna/b/a/c;->b:I

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mna/b/a/c;->c:Z

    .line 19
    sput-boolean v1, Lcom/tencent/mna/b/a/c;->d:Z

    .line 20
    const/16 v0, -0x64

    sput v0, Lcom/tencent/mna/b/a/c;->e:I

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tencent/mna/b/a/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 33
    const-class v0, Lcom/tencent/mna/b/a/c;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/tencent/mna/b/a/c;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit v0

    return-void

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized a()Z
    .locals 2

    .prologue
    .line 28
    const-class v0, Lcom/tencent/mna/b/a/c;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/mna/b/a/c;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized b(Z)V
    .locals 2

    .prologue
    .line 43
    const-class v0, Lcom/tencent/mna/b/a/c;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/tencent/mna/b/a/c;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    return-void

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized b()Z
    .locals 2

    .prologue
    .line 38
    const-class v0, Lcom/tencent/mna/b/a/c;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/mna/b/a/c;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    sput-boolean v1, Lcom/tencent/mna/b/a/c;->a:Z

    .line 49
    sput v1, Lcom/tencent/mna/b/a/c;->b:I

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mna/b/a/c;->c:Z

    .line 51
    sput-boolean v1, Lcom/tencent/mna/b/a/c;->d:Z

    .line 52
    const/16 v0, -0x64

    sput v0, Lcom/tencent/mna/b/a/c;->e:I

    .line 53
    sget-object v0, Lcom/tencent/mna/b/a/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 54
    return-void
.end method
