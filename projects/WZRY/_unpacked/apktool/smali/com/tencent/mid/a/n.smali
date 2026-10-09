.class public Lcom/tencent/mid/a/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/mid/a/n;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mid/a/n;->a:Lcom/tencent/mid/a/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mid/a/n;->b:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MidWorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/mid/a/n;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/tencent/mid/a/n;
    .locals 2

    sget-object v0, Lcom/tencent/mid/a/n;->a:Lcom/tencent/mid/a/n;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/mid/a/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/mid/a/n;->a:Lcom/tencent/mid/a/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mid/a/n;

    invoke-direct {v0}, Lcom/tencent/mid/a/n;-><init>()V

    sput-object v0, Lcom/tencent/mid/a/n;->a:Lcom/tencent/mid/a/n;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/mid/a/n;->a:Lcom/tencent/mid/a/n;

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
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mid/a/n;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mid/a/n;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
