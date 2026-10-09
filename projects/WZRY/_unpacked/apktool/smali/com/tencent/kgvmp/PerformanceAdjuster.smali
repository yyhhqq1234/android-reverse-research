.class public Lcom/tencent/kgvmp/PerformanceAdjuster;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/vmp/GPerfAdjusterImpl;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/kgvmp/report/f;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/tencent/kgvmp/e/f;

.field private e:Lcom/tencent/kgvmp/d;

.field private f:Lcom/tencent/kgvmp/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/a/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    iput-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->b:Lcom/tencent/kgvmp/report/f;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->c:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    iput-object v1, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->e:Lcom/tencent/kgvmp/d;

    iput-object v1, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->f:Lcom/tencent/kgvmp/b/c;

    return-void
.end method

.method static synthetic a(Lcom/tencent/kgvmp/PerformanceAdjuster;Lcom/tencent/kgvmp/report/f;)Lcom/tencent/kgvmp/report/f;
    .locals 0

    iput-object p1, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->b:Lcom/tencent/kgvmp/report/f;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/report/j;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/kgvmp/report/e;->r(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/kgvmp/PerformanceAdjuster;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_init: tgpa sdk version name: 1.2.1.118"

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/kgvmp/c/c;

    invoke-direct {v0, p1}, Lcom/tencent/kgvmp/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/kgvmp/c/c;->a()Lcom/tencent/kgvmp/report/f;

    move-result-object v1

    sget-object v2, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v3, "Perf_init: load config file failed. "

    invoke-static {v2, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->b:Lcom/tencent/kgvmp/report/f;

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/kgvmp/c/c;->b()Lcom/tencent/kgvmp/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/kgvmp/c/c;->c()Lcom/tencent/kgvmp/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/kgvmp/c/c;->d()V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->VMP_SUCCESS:Lcom/tencent/kgvmp/report/f;

    if-ne v1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->b(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/kgvmp/PerformanceAdjuster;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/kgvmp/PerformanceAdjuster;->c()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/kgvmp/PerformanceAdjuster;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Perf_init: found log file. logfile path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/kgvmp/a/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/f/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Perf_init: found debug file. debugfile path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->o(Z)V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->D()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "perf_checkstrategy: check fps strategy is not open. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/kgvmp/b/c;

    invoke-direct {v0}, Lcom/tencent/kgvmp/b/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->f:Lcom/tencent/kgvmp/b/c;

    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->f:Lcom/tencent/kgvmp/b/c;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/b/c;->b()V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->r()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_init: startVmpHandler sdk func not open. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/tencent/kgvmp/e/f;->a(Landroid/content/Context;)Lcom/tencent/kgvmp/e/f;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/e/f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->c:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/tencent/kgvmp/report/BatteryInfoReceiver;

    invoke-direct {v0}, Lcom/tencent/kgvmp/report/BatteryInfoReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_init: vmp handler is running. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/kgvmp/PerformanceAdjuster;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/kgvmp/PerformanceAdjuster;->b()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/kgvmp/PerformanceAdjuster;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->d(Landroid/content/Context;)V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/kgvmp/e/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_init: need start report thread. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/tencent/kgvmp/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tencent/kgvmp/d;-><init>(Lcom/tencent/kgvmp/PerformanceAdjuster;Lcom/tencent/kgvmp/a;)V

    iput-object v1, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->e:Lcom/tencent/kgvmp/d;

    iget-object v1, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->e:Lcom/tencent/kgvmp/d;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_init: do not need start report thread. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->B()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_init: device check func is not open. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/kgvmp/b/a;

    invoke-direct {v0, p1}, Lcom/tencent/kgvmp/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/kgvmp/b/a;->b()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/kgvmp/PerformanceAdjuster;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->c(Landroid/content/Context;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->C()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_checkOpt: check opt func is not open. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/kgvmp/b/e;

    invoke-direct {v0}, Lcom/tencent/kgvmp/b/e;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/kgvmp/b/e;->a()V

    goto :goto_0
.end method


# virtual methods
.method public checkDeviceIsReal()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->T()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v2, "Perf_checkDevice: you need init first."

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Perf_checkDevice: check result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{\"result\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/kgvmp/report/e;->B()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v2, "Perf_checkDevice: device check func is not open."

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/kgvmp/report/e;->T()I

    move-result v0

    goto :goto_0
.end method

.method public checkSdkCanWork()Z
    .locals 2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->v()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "checkSdkCanWork:false"

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "checkSdkCanWork:true"

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentThreadTid()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    sget-object v1, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Perf_gettid: tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getOptCfgStr()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->S()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-1"

    goto :goto_0
.end method

.method public getSdkType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/kgvmp/e/f;->a:Lcom/tencent/kgvmp/d/j;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/d/j;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "1.2.1.118"

    return-object v0
.end method

.method public getVmpNumber()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/kgvmp/report/j;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 10

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_init: start. tgpa sdk version name: 1.2.1.118"

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/kgvmp/a;

    invoke-direct {v0, p0, p1}, Lcom/tencent/kgvmp/a;-><init>(Lcom/tencent/kgvmp/PerformanceAdjuster;Landroid/content/Context;)V

    invoke-direct {v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    const/16 v5, 0x1388

    const/4 v0, 0x0

    const/16 v6, 0xa

    :goto_0
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_0

    if-lt v0, v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    sget-object v0, Lcom/tencent/kgvmp/report/f;->INIT_THREAD_TIMEOUT:Lcom/tencent/kgvmp/report/f;

    iput-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->b:Lcom/tencent/kgvmp/report/f;

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Perf_init: init thread run time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/kgvmp/f/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "run_time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "result"

    iget-object v2, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->b:Lcom/tencent/kgvmp/report/f;

    invoke-virtual {v2}, Lcom/tencent/kgvmp/report/f;->getStringCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/tencent/kgvmp/report/j;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    int-to-long v8, v6

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    add-int/2addr v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_init: init exception at last. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lcom/tencent/kgvmp/report/e;->w(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->init(Landroid/content/Context;)V

    return-void
.end method

.method public native nativeNotifySystemInfo(Ljava/lang/String;)V
.end method

.method public postGameMatchFPS(ILjava/util/ArrayList;)V
    .locals 2

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_fps: start check fps score. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/tencent/kgvmp/report/j;->a(Ljava/util/ArrayList;)V

    :cond_0
    invoke-static {}, Lcom/tencent/kgvmp/report/e;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->f:Lcom/tencent/kgvmp/b/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->f:Lcom/tencent/kgvmp/b/c;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->f:Lcom/tencent/kgvmp/b/c;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/kgvmp/b/c;->a(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_post: check fps score exception. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerCallback()V
    .locals 2

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_register: register VmpCallback for native. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/kgvmp/b;

    invoke-direct {v0, p0}, Lcom/tencent/kgvmp/b;-><init>(Lcom/tencent/kgvmp/PerformanceAdjuster;)V

    invoke-virtual {p0, v0}, Lcom/tencent/kgvmp/PerformanceAdjuster;->registerCallback(Lcom/tencent/kgvmp/VmpCallback;)V

    return-void
.end method

.method public registerCallback(Lcom/tencent/kgvmp/VmpCallback;)V
    .locals 3

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_register: VmpCallback start."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->s()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_register: register func is not open. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    invoke-virtual {v1, p1}, Lcom/tencent/kgvmp/e/f;->a(Lcom/tencent/kgvmp/VmpCallback;)Lcom/tencent/kgvmp/report/f;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1}, Lcom/tencent/kgvmp/report/f;->getStringCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {v0}, Lcom/tencent/kgvmp/report/j;->d(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v2, "Perf_register: vmphandler is null."

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "result"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public registerCallback(Lcom/tencent/vmp/GCallback;)V
    .locals 3

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_register: GCallback start."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->s()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_register2: register func is not open. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->f:Lcom/tencent/kgvmp/b/c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->f:Lcom/tencent/kgvmp/b/c;

    invoke-virtual {v1, p1}, Lcom/tencent/kgvmp/b/c;->a(Lcom/tencent/vmp/GCallback;)V

    :cond_1
    iget-object v1, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    invoke-virtual {v1, p1}, Lcom/tencent/kgvmp/e/f;->a(Lcom/tencent/vmp/GCallback;)Lcom/tencent/kgvmp/report/f;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1}, Lcom/tencent/kgvmp/report/f;->getStringCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {v0}, Lcom/tencent/kgvmp/report/j;->d(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v2, "Perf_register2: vmphandler is null."

    invoke-static {v1, v2}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "result"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public registerCallback(Lcom/tencent/vmp/GCallbackStr;)V
    .locals 1

    new-instance v0, Lcom/tencent/kgvmp/c;

    invoke-direct {v0, p0, p1}, Lcom/tencent/kgvmp/c;-><init>(Lcom/tencent/kgvmp/PerformanceAdjuster;Lcom/tencent/vmp/GCallbackStr;)V

    invoke-virtual {p0, v0}, Lcom/tencent/kgvmp/PerformanceAdjuster;->registerCallback(Lcom/tencent/vmp/GCallback;)V

    return-void
.end method

.method public reportGameUserInfo(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_userinfo: reportGameUserInfo start."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p2}, Lcom/tencent/kgvmp/b/g;->a(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_userinfo: report user info exception. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLogAble(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/tencent/kgvmp/f/g;->a(I)V

    :cond_0
    return-void
.end method

.method public updateGameInfo(IF)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%.2f"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/kgvmp/PerformanceAdjuster;->updateGameInfo(ILjava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/a/d;->FPS:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKey()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->e:Lcom/tencent/kgvmp/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->e:Lcom/tencent/kgvmp/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/d;->a()V

    :cond_0
    new-array v0, v5, [F

    aput p2, v0, v4

    sget-object v1, Lcom/tencent/kgvmp/a/d;->FPS:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/d;->getKey()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/tencent/kgvmp/PerformanceAdjuster;->updateGameInfo(I[F)V

    :cond_1
    return-void
.end method

.method public updateGameInfo(II)V
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/kgvmp/PerformanceAdjuster;->updateGameInfo(ILjava/lang/String;)V

    return-void
.end method

.method public updateGameInfo(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->r()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_update: 1 sdk func is not open or mVmpHandler is null. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_update: 1 sdk func is not open or mVmpHandler is null. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/kgvmp/e/f;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public updateGameInfo(I[F)V
    .locals 2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->r()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_update: 2 sdk func is not open. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_update: 2 mVmpHandler is null. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/kgvmp/e/f;->a(I[F)V

    goto :goto_0
.end method

.method public updateGameInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Perf_update: key\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Perf_update: can not find string key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_update: start to convert string to int. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->updateGameInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string v2, "GPU"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v0, "FPS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "MapID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "FpsDirty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "PicQuality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "Resolution"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v0, "HighFrameMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v0, "MatchState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v0, "DynamicSetting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "OpenID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "UserCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "MobileType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "apmKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "ApmKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :pswitch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->x(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    sget-object v0, Lcom/tencent/kgvmp/a/d;->FPS:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKey()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->updateGameInfo(ILjava/lang/String;)V

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    sget-object v1, Lcom/tencent/kgvmp/a/d;->FPS:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/d;->getKey()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/tencent/kgvmp/PerformanceAdjuster;->updateGameInfo(I[F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Perf_update: update fps exception. value\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->k(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->v(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/kgvmp/a/d;->ROLE_STATUS:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKey()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->updateGameInfo(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v0, Lcom/tencent/kgvmp/a/d;->MODEL_LEVEL:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKey()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->updateGameInfo(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    sget-object v0, Lcom/tencent/kgvmp/a/d;->HD_MODEL:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKey()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->updateGameInfo(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_6
    sget-object v0, Lcom/tencent/kgvmp/a/d;->FPS_TARGET:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKey()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->updateGameInfo(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->e:Lcom/tencent/kgvmp/d;

    if-eqz v0, :cond_1

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->e:Lcom/tencent/kgvmp/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/d;->b()V

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->h()V

    :cond_2
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->e:Lcom/tencent/kgvmp/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/d;->a()V

    goto/16 :goto_1

    :pswitch_8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->n(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/kgvmp/report/j;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_a
    sget-object v0, Lcom/tencent/kgvmp/a/d;->USERS_COUNT:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v0}, Lcom/tencent/kgvmp/a/d;->getKey()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->updateGameInfo(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->s(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/kgvmp/report/e;->o(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/kgvmp/e/f;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Perf_update: can not parse string key to int. key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/kgvmp/report/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75ddc41c -> :sswitch_a
        -0x72d74efb -> :sswitch_9
        -0x541cf09f -> :sswitch_c
        -0x22dd6bcb -> :sswitch_4
        -0x1aa9d614 -> :sswitch_7
        -0x798b0e4 -> :sswitch_b
        -0x5827ef2 -> :sswitch_6
        0x110c9 -> :sswitch_1
        0x1148c -> :sswitch_0
        0x46ad757 -> :sswitch_2
        0x177354cc -> :sswitch_5
        0x4cd71d31 -> :sswitch_8
        0x54793489 -> :sswitch_3
        0x7547fb81 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public updateGameInfo(Ljava/util/HashMap;)V
    .locals 2

    invoke-static {}, Lcom/tencent/kgvmp/report/e;->r()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_update: 3 sdk func is not open. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/kgvmp/PerformanceAdjuster;->a:Ljava/lang/String;

    const-string v1, "Perf_update: 3 mVmpHandler is null. "

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/kgvmp/PerformanceAdjuster;->d:Lcom/tencent/kgvmp/e/f;

    invoke-virtual {v0, p1}, Lcom/tencent/kgvmp/e/f;->a(Ljava/util/HashMap;)V

    goto :goto_0
.end method
