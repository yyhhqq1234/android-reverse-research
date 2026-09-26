.class final Lcom/netease/codescanner/d;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/CountDownLatch;

.field private final e:Lcom/netease/codescanner/CodeScanConfig;

.field private final f:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/netease/codescanner/CodeScanConfig;Lcom/google/zxing/ResultPointCallback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/netease/codescanner/d;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/codescanner/d;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/netease/codescanner/d;->e:Lcom/netease/codescanner/CodeScanConfig;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/netease/codescanner/d;->d:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/netease/codescanner/d;->b:Ljava/util/Map;

    iget-object v0, p0, Lcom/netease/codescanner/d;->e:Lcom/netease/codescanner/CodeScanConfig;

    iget-object v0, v0, Lcom/netease/codescanner/CodeScanConfig;->decode_formats:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-class v0, Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/netease/codescanner/b;->b:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/netease/codescanner/b;->c:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v1, p0, Lcom/netease/codescanner/d;->b:Ljava/util/Map;

    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hints: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/codescanner/d;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->d(Ljava/lang/String;)V

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/netease/codescanner/d;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method a()Landroid/os/Handler;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/netease/codescanner/d;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lcom/netease/codescanner/d;->c:Landroid/os/Handler;

    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public run()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/netease/codescanner/c;

    iget-object v1, p0, Lcom/netease/codescanner/d;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/codescanner/d;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/netease/codescanner/d;->b:Ljava/util/Map;

    iget-object v4, p0, Lcom/netease/codescanner/d;->e:Lcom/netease/codescanner/CodeScanConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/codescanner/c;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Map;Lcom/netease/codescanner/CodeScanConfig;)V

    iput-object v0, p0, Lcom/netease/codescanner/d;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/netease/codescanner/d;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
