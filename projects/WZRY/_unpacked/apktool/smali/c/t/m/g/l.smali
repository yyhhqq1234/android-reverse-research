.class public final Lc/t/m/g/l;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:I

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:I

.field public static g:Z

.field private static h:Landroid/content/Context;

.field private static i:Ljava/lang/String;

.field private static j:J

.field private static k:I

.field private static l:Z

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Z

.field private static q:Ljava/lang/String;

.field private static r:Landroid/os/Handler;

.field private static volatile s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lc/t/m/g/l;->h:Landroid/content/Context;

    sput v1, Lc/t/m/g/l;->k:I

    sput-boolean v1, Lc/t/m/g/l;->l:Z

    const-string v0, ""

    sput-object v0, Lc/t/m/g/l;->m:Ljava/lang/String;

    const-string v0, "null"

    sput-object v0, Lc/t/m/g/l;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lc/t/m/g/l;->b:Ljava/lang/String;

    sput v1, Lc/t/m/g/l;->c:I

    const-string v0, ""

    sput-object v0, Lc/t/m/g/l;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lc/t/m/g/l;->e:Ljava/lang/String;

    const-string v0, "3.4.1.2"

    sput-object v0, Lc/t/m/g/l;->n:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lc/t/m/g/l;->o:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lc/t/m/g/l;->f:I

    sput-boolean v1, Lc/t/m/g/l;->p:Z

    const-string v0, ""

    sput-object v0, Lc/t/m/g/l;->q:Ljava/lang/String;

    sput-boolean v1, Lc/t/m/g/l;->s:Z

    const/4 v0, 0x1

    sput-boolean v0, Lc/t/m/g/l;->g:Z

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lc/t/m/g/l;->h:Landroid/content/Context;

    return-object v0
.end method

.method public static a(ILc/t/m/g/b;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lc/t/m/g/l;->j:J

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lc/t/m/g/l;->f:I

    iget-object v1, p1, Lc/t/m/g/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lc/t/m/g/l;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/t/m/g/l;->m:Ljava/lang/String;

    sput p0, Lc/t/m/g/l;->k:I

    iget-boolean v0, p1, Lc/t/m/g/b;->c:Z

    sput-boolean v0, Lc/t/m/g/l;->l:Z

    iget-object v0, p1, Lc/t/m/g/b;->d:Ljava/lang/String;

    invoke-static {v0}, Lc/t/m/g/ce;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    :cond_0
    sput-object v0, Lc/t/m/g/l;->d:Ljava/lang/String;

    iget-object v0, p1, Lc/t/m/g/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lc/t/m/g/ce;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, ""

    :cond_1
    sput-object v0, Lc/t/m/g/l;->e:Ljava/lang/String;

    const-string v0, "3.4.1.2"

    sput-object v0, Lc/t/m/g/l;->n:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lc/t/m/g/l;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lc/t/m/g/l;->a:Ljava/lang/String;

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lc/t/m/g/l;->c:I

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/t/m/g/l;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    sput-object p2, Lc/t/m/g/l;->o:Ljava/lang/String;

    sget-object v0, Lc/t/m/g/l;->m:Ljava/lang/String;

    sget-object v1, Lc/t/m/g/l;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lc/t/m/g/l;->p:Z

    invoke-static {}, Lc/t/m/g/ce;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/t/m/g/l;->i:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HalleyTempTaskThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lc/t/m/g/l;->r:Landroid/os/Handler;

    invoke-static {}, Lc/t/m/g/o;->a()V

    const-string v0, "after initSDKBaseInfo"

    .line 1000
    new-instance v1, Lc/t/m/g/ac;

    invoke-direct {v1, v0}, Lc/t/m/g/ac;-><init>(Ljava/lang/String;)V

    sget-object v0, Lc/t/m/g/l;->r:Landroid/os/Handler;

    if-eqz v0, :cond_2

    :try_start_1
    sget-object v0, Lc/t/m/g/l;->r:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static c()I
    .locals 1

    sget v0, Lc/t/m/g/l;->k:I

    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/t/m/g/l;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static e()I
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lc/t/m/g/l;->j:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/t/m/g/l;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Z
    .locals 1

    sget-boolean v0, Lc/t/m/g/l;->l:Z

    return v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/t/m/g/l;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 2

    sget-object v0, Lc/t/m/g/l;->q:Ljava/lang/String;

    invoke-static {v0}, Lc/t/m/g/ce;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lc/t/m/g/l;->q:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc/t/m/g/l;->o:Ljava/lang/String;

    invoke-static {v0}, Lc/t/m/g/ce;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lc/t/m/g/l;->o:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lc/t/m/g/l;->o:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lc/t/m/g/l;->o:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static j()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lc/t/m/g/l;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k()Landroid/content/Context;
    .locals 1

    sget-object v0, Lc/t/m/g/l;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/t/m/g/l;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m()J
    .locals 2

    sget-wide v0, Lc/t/m/g/l;->j:J

    return-wide v0
.end method

.method static synthetic n()I
    .locals 1

    sget v0, Lc/t/m/g/l;->k:I

    return v0
.end method

.method static synthetic o()Z
    .locals 1

    sget-boolean v0, Lc/t/m/g/l;->l:Z

    return v0
.end method

.method static synthetic p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/t/m/g/l;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/t/m/g/l;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/t/m/g/l;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/t/m/g/l;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t()Z
    .locals 1

    sget-boolean v0, Lc/t/m/g/l;->p:Z

    return v0
.end method

.method static synthetic u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
