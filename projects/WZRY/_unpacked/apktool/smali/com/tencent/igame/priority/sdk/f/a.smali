.class public Lcom/tencent/igame/priority/sdk/f/a;
.super Landroid/os/HandlerThread;


# static fields
.field private static volatile a:Lcom/tencent/igame/priority/sdk/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/igame/priority/sdk/f/a;->a:Lcom/tencent/igame/priority/sdk/f/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Landroid/os/HandlerThread;
    .locals 4

    sget-object v0, Lcom/tencent/igame/priority/sdk/f/a;->a:Lcom/tencent/igame/priority/sdk/f/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/igame/priority/sdk/f/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/igame/priority/sdk/f/a;->a:Lcom/tencent/igame/priority/sdk/f/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/igame/priority/sdk/f/a;

    const-string/jumbo v2, "workThread"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/tencent/igame/priority/sdk/f/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/igame/priority/sdk/f/a;->a:Lcom/tencent/igame/priority/sdk/f/a;

    :cond_0
    sget-object v0, Lcom/tencent/igame/priority/sdk/f/a;->a:Lcom/tencent/igame/priority/sdk/f/a;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/f/a;->start()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/igame/priority/sdk/f/a;->a:Lcom/tencent/igame/priority/sdk/f/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
