.class public Lcom/tencent/android/tpush/service/aa;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile c:Lcom/tencent/android/tpush/service/aa;


# instance fields
.field private b:Landroid/content/Context;

.field private d:Z

.field private e:Landroid/os/Handler;

.field private volatile f:Z

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/tencent/android/tpush/service/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/aa;->a:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/aa;->c:Lcom/tencent/android/tpush/service/aa;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/tencent/android/tpush/service/aa;->b:Landroid/content/Context;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/aa;->d:Z

    .line 39
    iput-object v1, p0, Lcom/tencent/android/tpush/service/aa;->e:Landroid/os/Handler;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/aa;->f:Z

    .line 196
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/aa;->g:J

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/aa;->b:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/aa;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/android/tpush/service/aa;->d:Z

    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/tencent/android/tpush/service/aa;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 46
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/android/tpush/service/aa;->e:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/aa;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/android/tpush/service/aa;->c:Lcom/tencent/android/tpush/service/aa;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/tencent/android/tpush/service/aa;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/aa;->c:Lcom/tencent/android/tpush/service/aa;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/tencent/android/tpush/service/aa;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/aa;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/service/aa;->c:Lcom/tencent/android/tpush/service/aa;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/service/aa;->c:Lcom/tencent/android/tpush/service/aa;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 68
    iget-object v0, p0, Lcom/tencent/android/tpush/service/aa;->b:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 69
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 70
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    .line 71
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 74
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/aa;->b()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    const-string/jumbo v1, "xg_service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lcom/tencent/android/tpush/service/aa;->a:Ljava/lang/String;

    const-string v1, "is xg_service"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    .line 192
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/aa;->a:Ljava/lang/String;

    const-string v1, "not xg_service"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method
