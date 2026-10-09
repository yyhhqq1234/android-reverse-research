.class public Lcom/tencent/msdk/dns/MSDKDnsResolver;
.super Ljava/lang/Object;
.source "MSDKDnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/dns/MSDKDnsResolver$a;,
        Lcom/tencent/msdk/dns/MSDKDnsResolver$c;,
        Lcom/tencent/msdk/dns/MSDKDnsResolver$b;
    }
.end annotation


# static fields
.field public static b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/msdk/dns/b;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Lcom/tencent/msdk/dns/MSDKDnsResolver;


# instance fields
.field public a:Lcom/tencent/msdk/dns/HttpDnsCache;

.field private c:Ljava/lang/Object;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/Thread;

.field private l:Ljava/lang/Thread;

.field private m:Ljava/lang/Runnable;

.field private n:Ljava/lang/Runnable;

.field private o:Landroid/os/HandlerThread;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->t:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->p:Z

    .line 42
    iput-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->q:Z

    .line 43
    iput-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->r:Z

    .line 44
    iput-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->s:Z

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->o:Landroid/os/HandlerThread;

    .line 58
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->c:Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;

    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->o:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;-><init>(Lcom/tencent/msdk/dns/MSDKDnsResolver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->j:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/tencent/msdk/dns/MSDKDnsResolver;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->j:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 521
    new-instance v0, Lcom/tencent/msdk/dns/HttpDnsCache;

    invoke-direct {v0}, Lcom/tencent/msdk/dns/HttpDnsCache;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->a:Lcom/tencent/msdk/dns/HttpDnsCache;

    .line 522
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 523
    sget-object v0, Lcom/tencent/msdk/dns/a;->a:Ljava/lang/String;

    const-string v1, "TIME_OUT"

    invoke-static {p1, v0, v1}, Lcom/tencent/msdk/dns/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    sget-object v1, Lcom/tencent/msdk/dns/a;->a:Ljava/lang/String;

    const-string v2, "IS_DEBUG"

    invoke-static {p1, v1, v2}, Lcom/tencent/msdk/dns/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 525
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 527
    :cond_0
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->d:I

    .line 531
    :goto_0
    if-eqz v1, :cond_2

    const-string/jumbo v0, "true"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    sput-boolean v3, Lcom/tencent/msdk/dns/d;->a:Z

    .line 536
    :goto_1
    iput-boolean v3, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->p:Z

    .line 537
    return-void

    .line 529
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->d:I

    goto :goto_0

    .line 534
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/msdk/dns/d;->a:Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/msdk/dns/MSDKDnsResolver;Lcom/tencent/msdk/dns/b;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->c(Lcom/tencent/msdk/dns/b;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/msdk/dns/MSDKDnsResolver;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/msdk/dns/MSDKDnsResolver;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->k:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 374
    iput-object v2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->k:Ljava/lang/Thread;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->l:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 377
    iput-object v2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->l:Ljava/lang/Thread;

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->m:Ljava/lang/Runnable;

    check-cast v0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;->a(Z)V

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->n:Ljava/lang/Runnable;

    check-cast v0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;->a(Z)V

    .line 386
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/tencent/msdk/dns/MSDKDnsResolver;Lcom/tencent/msdk/dns/b;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->d(Lcom/tencent/msdk/dns/b;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/msdk/dns/MSDKDnsResolver;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->r:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/msdk/dns/MSDKDnsResolver;Lcom/tencent/msdk/dns/b;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->e(Lcom/tencent/msdk/dns/b;)V

    return-void
.end method

.method private c(Lcom/tencent/msdk/dns/b;)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x4

    .line 315
    const-string v0, "processHttpDnsResult"

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->q:Z

    .line 317
    iget-object v0, p1, Lcom/tencent/msdk/dns/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "processHttpDnsResult lock notify"

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lcom/tencent/msdk/dns/b;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {p1}, Lcom/tencent/msdk/dns/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 324
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "httpDNSRefreshDelay clean cache, ttl is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    .line 325
    iget-object v4, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->j:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 327
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 328
    iput v6, v2, Landroid/os/Message;->what:I

    .line 329
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 330
    iget-object v3, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->j:Landroid/os/Handler;

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    long-to-double v0, v0

    mul-double/2addr v0, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 334
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->k:Ljava/lang/Thread;

    .line 335
    return-void

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/msdk/dns/MSDKDnsResolver;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->q:Z

    return v0
.end method

.method private d(Lcom/tencent/msdk/dns/b;)V
    .locals 1

    .prologue
    .line 338
    const-string v0, "processLocalDnsResult"

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->r:Z

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->l:Ljava/lang/Thread;

    .line 341
    return-void
.end method

.method static synthetic d(Lcom/tencent/msdk/dns/MSDKDnsResolver;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->r:Z

    return v0
.end method

.method private e(Lcom/tencent/msdk/dns/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processTimeout mTimeOut is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lock notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->j:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->j:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    iput-boolean v2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->s:Z

    .line 348
    iget-object v0, p1, Lcom/tencent/msdk/dns/b;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 349
    iget v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->d:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/msdk/dns/b;->a(J)V

    .line 351
    :cond_0
    iget-object v0, p1, Lcom/tencent/msdk/dns/b;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 352
    iget v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->d:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/msdk/dns/b;->b(J)V

    .line 355
    :cond_1
    iget-object v0, p1, Lcom/tencent/msdk/dns/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p1, Lcom/tencent/msdk/dns/b;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/msdk/dns/b;->d(Ljava/lang/String;)V

    .line 362
    :goto_0
    invoke-direct {p0}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b()V

    .line 363
    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 364
    :try_start_0
    const-string v0, "process timeout mLock notify"

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 366
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->a(Lcom/tencent/msdk/dns/b;Ljava/lang/Boolean;)V

    .line 370
    return-void

    .line 358
    :cond_2
    iget-object v0, p1, Lcom/tencent/msdk/dns/b;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/msdk/dns/b;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic e(Lcom/tencent/msdk/dns/MSDKDnsResolver;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->s:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/msdk/dns/MSDKDnsResolver;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/dns/MSDKDnsResolver;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->t:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    if-nez v0, :cond_1

    .line 65
    const-class v1, Lcom/tencent/msdk/dns/MSDKDnsResolver;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->t:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-direct {v0}, Lcom/tencent/msdk/dns/MSDKDnsResolver;-><init>()V

    sput-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->t:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->t:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public WGSetDnsOpenId(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 540
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 541
    :cond_0
    const-string v0, "NULL"

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->h:Ljava/lang/String;

    .line 542
    const/4 v0, 0x0

    .line 546
    :goto_0
    return v0

    .line 544
    :cond_1
    iput-object p1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->h:Ljava/lang/String;

    .line 546
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 550
    const-string v1, ""

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->i:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 553
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 557
    :goto_0
    return-object v0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get imei fail, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->d(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/tencent/msdk/dns/b;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b(Lcom/tencent/msdk/dns/b;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 199
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(JZLjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 568
    const-string v0, "WGGetHostByName reportDNSEvent to beacon begin"

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    .line 569
    const-string v0, "WGGetHostByName"

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    move v1, p3

    move-wide v2, p1

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/tencent/msdk/dns/e;->a(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    .line 570
    return-void
.end method

.method public a(Lcom/tencent/msdk/dns/b;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 279
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->i:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/msdk/dns/b;->d:Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->i:Landroid/content/Context;

    sget-object v1, Lcom/tencent/msdk/dns/a;->a:Ljava/lang/String;

    const-string v2, "VERSION"

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/dns/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/msdk/dns/b;->i:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->i:Landroid/content/Context;

    sget-object v1, Lcom/tencent/msdk/dns/a;->a:Ljava/lang/String;

    const-string v2, "COOPERATOR_APPID"

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/dns/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/msdk/dns/b;->j:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->h:Ljava/lang/String;

    iput-object v0, p1, Lcom/tencent/msdk/dns/b;->k:Ljava/lang/String;

    .line 288
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 289
    const-string v0, "id"

    iget-object v2, p1, Lcom/tencent/msdk/dns/b;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v0, "key"

    iget-object v2, p1, Lcom/tencent/msdk/dns/b;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v0, "appID"

    iget-object v2, p1, Lcom/tencent/msdk/dns/b;->j:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v0, "openID"

    iget-object v2, p1, Lcom/tencent/msdk/dns/b;->k:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v0, "isCache"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v0, "dns"

    invoke-virtual {p1}, Lcom/tencent/msdk/dns/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string/jumbo v0, "userID"

    iget-object v2, p1, Lcom/tencent/msdk/dns/b;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v0, "sdk_Version"

    iget-object v2, p1, Lcom/tencent/msdk/dns/b;->i:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v0, "netType"

    invoke-virtual {p1}, Lcom/tencent/msdk/dns/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v0, "ssid"

    invoke-virtual {p1}, Lcom/tencent/msdk/dns/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string/jumbo v0, "ttl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/msdk/dns/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v0, "domain"

    invoke-virtual {p1}, Lcom/tencent/msdk/dns/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v0, "hdns_ip"

    iget-object v2, p1, Lcom/tencent/msdk/dns/b;->l:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v0, "ldns_ip"

    iget-object v2, p1, Lcom/tencent/msdk/dns/b;->m:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v0, "clientIP"

    iget-object v2, p1, Lcom/tencent/msdk/dns/b;->n:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v0, "hdns_time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/msdk/dns/b;->f()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v0, "ldns_time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/msdk/dns/b;->g()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :cond_2
    iget-wide v2, p1, Lcom/tencent/msdk/dns/b;->q:J

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->a(JZLjava/util/Map;)V

    goto/16 :goto_0
.end method

.method public b(Lcom/tencent/msdk/dns/b;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 85
    .line 86
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->i:Landroid/content/Context;

    sget-object v1, Lcom/tencent/msdk/dns/a;->a:Ljava/lang/String;

    const-string v2, "IS_COOPERATOR"

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/dns/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->e:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->i:Landroid/content/Context;

    sget-object v1, Lcom/tencent/msdk/dns/a;->a:Ljava/lang/String;

    const-string v2, "DNS_KEY"

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/dns/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->g:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->i:Landroid/content/Context;

    sget-object v1, Lcom/tencent/msdk/dns/a;->a:Ljava/lang/String;

    const-string v2, "DNS_ID"

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/dns/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->f:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v2, v3

    .line 192
    :goto_0
    return-object v2

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->e:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    const-string v0, "119.29.29.29"

    .line 95
    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->i:Landroid/content/Context;

    sget-object v2, Lcom/tencent/msdk/dns/a;->a:Ljava/lang/String;

    const-string v4, "IS_COOPERATOR_TEST"

    invoke-static {v1, v2, v4}, Lcom/tencent/msdk/dns/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_2

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    const-string v0, "182.254.16.100"

    .line 104
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    move-object v2, v3

    .line 105
    goto :goto_0

    .line 100
    :cond_4
    const-string v0, "1"

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->f:Ljava/lang/String;

    .line 101
    const-string v0, ">srW/8;&"

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->g:Ljava/lang/String;

    .line 102
    const-string v0, "182.254.116.117"

    goto :goto_1

    .line 107
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&clientip=1&ttl=1&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->i:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/tencent/msdk/dns/HttpDnsCache;->a(Landroid/content/Context;Lcom/tencent/msdk/dns/b;)Ljava/lang/String;

    move-result-object v8

    .line 109
    invoke-virtual {p1, v8}, Lcom/tencent/msdk/dns/b;->b(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->f:Ljava/lang/String;

    iput-object v2, p1, Lcom/tencent/msdk/dns/b;->b:Ljava/lang/String;

    .line 111
    iget-object v2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->g:Ljava/lang/String;

    iput-object v2, p1, Lcom/tencent/msdk/dns/b;->c:Ljava/lang/String;

    .line 114
    :try_start_0
    iget-object v2, p1, Lcom/tencent/msdk/dns/b;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->g:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/tencent/msdk/dns/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/d?dn="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpDns URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 118
    iget v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->d:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 119
    iget v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->d:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 120
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    .line 121
    :goto_2
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 122
    iget-object v4, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->g:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/tencent/msdk/dns/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpDnsServer response ips are "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    .line 126
    iget-object v4, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->e:Ljava/lang/String;

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 128
    const/4 v4, 0x0

    const-string/jumbo v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 129
    const-string/jumbo v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 130
    if-eqz v4, :cond_13

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_13

    .line 131
    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 132
    const/4 v1, 0x0

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 133
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_3
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 138
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move v5, v7

    move v4, v7

    .line 139
    :goto_4
    array-length v10, v9

    if-ge v5, v10, :cond_6

    .line 140
    aget-object v4, v9, v5

    invoke-static {v4}, Lcom/tencent/msdk/dns/c;->b(Ljava/lang/String;)Z

    move-result v4

    .line 141
    if-nez v4, :cond_8

    .line 148
    :cond_6
    :goto_5
    if-eqz v4, :cond_13

    :goto_6
    move-object v2, v1

    :goto_7
    move-object v1, v3

    .line 177
    goto/16 :goto_2

    :cond_7
    move-object v1, v4

    .line 135
    goto :goto_3

    .line 139
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 146
    :cond_9
    invoke-static {v1}, Lcom/tencent/msdk/dns/c;->b(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    goto :goto_5

    .line 154
    :cond_a
    const/4 v4, 0x0

    :try_start_3
    const-string/jumbo v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 155
    const-string/jumbo v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 156
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_12

    .line 157
    const-string v3, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 158
    const-string v3, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move v5, v7

    move v3, v7

    .line 159
    :goto_8
    array-length v11, v10

    if-ge v5, v11, :cond_b

    .line 160
    aget-object v3, v10, v5

    invoke-static {v3}, Lcom/tencent/msdk/dns/c;->b(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    .line 161
    if-nez v3, :cond_c

    .line 168
    :cond_b
    :goto_9
    if-eqz v3, :cond_12

    .line 170
    if-eqz v9, :cond_11

    :try_start_4
    const-string v2, ","

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 171
    const/4 v2, 0x0

    const-string v3, ","

    invoke-virtual {v9, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v2, ","

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    move-object v3, v1

    move-object v2, v4

    goto :goto_7

    .line 159
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 166
    :cond_d
    :try_start_5
    invoke-static {v4}, Lcom/tencent/msdk/dns/c;->b(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v3

    goto :goto_9

    .line 181
    :cond_e
    if-eqz v6, :cond_f

    .line 183
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 189
    :cond_f
    :goto_a
    iput-object v1, p1, Lcom/tencent/msdk/dns/b;->n:Ljava/lang/String;

    .line 190
    invoke-virtual {p1, v0}, Lcom/tencent/msdk/dns/b;->e(Ljava/lang/String;)V

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetHttpDns network type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",ttl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",clientip:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",dns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :catch_0
    move-exception v3

    .line 185
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 178
    :catch_1
    move-exception v4

    move-object v5, v4

    move-object v6, v3

    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    .line 179
    :goto_b
    :try_start_7
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 181
    if-eqz v6, :cond_f

    .line 183
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_a

    .line 184
    :catch_2
    move-exception v3

    .line 185
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 181
    :catchall_0
    move-exception v0

    move-object v6, v3

    :goto_c
    if-eqz v6, :cond_10

    .line 183
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 186
    :cond_10
    :goto_d
    throw v0

    .line 184
    :catch_3
    move-exception v1

    .line 185
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 181
    :catchall_1
    move-exception v0

    goto :goto_c

    .line 178
    :catch_4
    move-exception v3

    move-object v5, v3

    goto :goto_b

    :catch_5
    move-exception v4

    move-object v5, v4

    move-object v1, v3

    goto :goto_b

    :catch_6
    move-exception v3

    move-object v5, v3

    move-object v2, v4

    goto :goto_b

    :cond_11
    move-object v3, v1

    move-object v2, v4

    goto/16 :goto_7

    :cond_12
    move-object v3, v1

    goto/16 :goto_7

    :cond_13
    move-object v1, v2

    goto/16 :goto_6
.end method

.method public declared-synchronized getAddrByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 448
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAddrByName start domain is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    .line 449
    invoke-direct {p0}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b()V

    .line 450
    new-instance v2, Lcom/tencent/msdk/dns/b;

    invoke-direct {v2}, Lcom/tencent/msdk/dns/b;-><init>()V

    .line 451
    if-eqz p1, :cond_0

    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 505
    :goto_0
    monitor-exit p0

    return-object v0

    .line 466
    :cond_1
    :try_start_1
    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/dns/b;

    .line 467
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/tencent/msdk/dns/b;->l:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 468
    iget-object v1, v0, Lcom/tencent/msdk/dns/b;->l:Ljava/lang/String;

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get dns from cache are "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/dns/d;->b(Ljava/lang/String;)V

    .line 470
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->a(Lcom/tencent/msdk/dns/b;Ljava/lang/Boolean;)V

    move-object v0, v1

    .line 471
    goto :goto_0

    .line 473
    :cond_2
    invoke-virtual {v2, p1}, Lcom/tencent/msdk/dns/b;->a(Ljava/lang/String;)V

    .line 474
    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v3, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 478
    :try_start_2
    const-string v0, "getAddrByName mLock"

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->s:Z

    .line 480
    new-instance v0, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;

    invoke-direct {v0, p0, v2}, Lcom/tencent/msdk/dns/MSDKDnsResolver$b;-><init>(Lcom/tencent/msdk/dns/MSDKDnsResolver;Lcom/tencent/msdk/dns/b;)V

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->m:Ljava/lang/Runnable;

    .line 481
    new-instance v0, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->m:Ljava/lang/Runnable;

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->k:Ljava/lang/Thread;

    .line 482
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->k:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 483
    new-instance v0, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;

    invoke-direct {v0, p0, v2}, Lcom/tencent/msdk/dns/MSDKDnsResolver$c;-><init>(Lcom/tencent/msdk/dns/MSDKDnsResolver;Lcom/tencent/msdk/dns/b;)V

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->n:Ljava/lang/Runnable;

    .line 484
    new-instance v0, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->n:Ljava/lang/Runnable;

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->l:Ljava/lang/Thread;

    .line 485
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 486
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->j:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 489
    const/4 v4, 0x3

    iput v4, v0, Landroid/os/Message;->what:I

    .line 490
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 491
    iget-object v2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->j:Landroid/os/Handler;

    iget v4, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->d:I

    int-to-long v4, v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 494
    :try_start_3
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 498
    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 499
    :try_start_5
    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    move-object v0, v1

    .line 500
    goto/16 :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 448
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 503
    :cond_4
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get dns from network:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/dns/b;

    invoke-virtual {v0}, Lcom/tencent/msdk/dns/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",hdns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/dns/b;

    iget-object v0, v0, Lcom/tencent/msdk/dns/b;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localDns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 504
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/dns/b;

    iget-object v0, v0, Lcom/tencent/msdk/dns/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",domain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/dns/b;

    invoke-virtual {v0}, Lcom/tencent/msdk/dns/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->b(Ljava/lang/String;)V

    .line 505
    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/dns/b;

    invoke-virtual {v0}, Lcom/tencent/msdk/dns/b;->d()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v0

    goto/16 :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 509
    if-eqz p1, :cond_1

    .line 510
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->i:Landroid/content/Context;

    .line 515
    iget-boolean v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->p:Z

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->a(Landroid/content/Context;)V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    const-string v0, "init error"

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
