.class public Lcom/tencent/mna/a;
.super Ljava/lang/Object;
.source "MnaScheduler.java"


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Landroid/os/Handler;

.field private static c:Landroid/os/Handler;

.field private static d:Landroid/os/Handler;

.field private static volatile e:Landroid/os/Handler;

.field private static f:Landroid/os/HandlerThread;

.field private static g:Landroid/os/HandlerThread;

.field private static h:Landroid/os/HandlerThread;

.field private static i:Landroid/os/HandlerThread;

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mna/a;->j:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/tencent/mna/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/tencent/mna/a;->a:Landroid/os/Handler;

    invoke-static {p0}, Lcom/tencent/mna/a;->f(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Z
    .locals 2

    .prologue
    .line 53
    const-class v0, Lcom/tencent/mna/a;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/mna/a;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Z)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 23
    const-class v1, Lcom/tencent/mna/a;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/mna/a;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    monitor-exit v1

    return v3

    .line 27
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/mna/a;->f:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 28
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "mna-bg"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/mna/a;->f:Landroid/os/HandlerThread;

    .line 29
    sget-object v0, Lcom/tencent/mna/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 31
    :cond_1
    sget-object v0, Lcom/tencent/mna/a;->g:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "mna-kartin"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/mna/a;->g:Landroid/os/HandlerThread;

    .line 33
    sget-object v0, Lcom/tencent/mna/a;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 36
    :cond_2
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/tencent/mna/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/mna/a;->a:Landroid/os/Handler;

    .line 37
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/tencent/mna/a;->g:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/mna/a;->c:Landroid/os/Handler;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/mna/a;->b:Landroid/os/Handler;

    .line 40
    if-eqz p0, :cond_4

    .line 41
    sget-object v0, Lcom/tencent/mna/a;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_3

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "mna-battery"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/mna/a;->h:Landroid/os/HandlerThread;

    .line 43
    sget-object v0, Lcom/tencent/mna/a;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    :cond_3
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/tencent/mna/a;->h:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/mna/a;->d:Landroid/os/Handler;

    .line 48
    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mna/a;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/tencent/mna/a;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/tencent/mna/a;->b:Landroid/os/Handler;

    invoke-static {p0}, Lcom/tencent/mna/a;->f(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/tencent/mna/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/tencent/mna/a;->c:Landroid/os/Handler;

    invoke-static {p0}, Lcom/tencent/mna/a;->f(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/tencent/mna/a;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/tencent/mna/a;->d:Landroid/os/Handler;

    invoke-static {p0}, Lcom/tencent/mna/a;->f(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 82
    sget-object v0, Lcom/tencent/mna/a;->e:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 83
    const-class v1, Lcom/tencent/mna/a;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/tencent/mna/a;->e:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 85
    sget-object v0, Lcom/tencent/mna/a;->i:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "mna-ping-upload"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/mna/a;->i:Landroid/os/HandlerThread;

    .line 87
    sget-object v0, Lcom/tencent/mna/a;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    :cond_0
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/tencent/mna/a;->i:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/mna/a;->e:Landroid/os/Handler;

    .line 91
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_2
    sget-object v0, Lcom/tencent/mna/a;->e:Landroid/os/Handler;

    invoke-static {p0}, Lcom/tencent/mna/a;->f(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static f(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/tencent/mna/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/mna/a$1;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
