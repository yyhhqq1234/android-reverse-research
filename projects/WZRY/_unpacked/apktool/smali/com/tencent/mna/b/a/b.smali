.class public Lcom/tencent/mna/b/a/b;
.super Ljava/lang/Object;
.source "AccelerateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/b/a/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/mna/b/a/f;

.field private static b:Lcom/tencent/mna/b/a/d;

.field private static c:Lcom/tencent/mna/b/b/b;

.field private static d:I

.field private static e:Ljava/util/concurrent/ScheduledExecutorService;

.field private static f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/concurrent/ScheduledExecutorService;

.field private static h:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private static i:Lcom/tencent/mna/base/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    sput-object v1, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    .line 65
    sput-object v1, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    .line 67
    sput-object v1, Lcom/tencent/mna/b/a/b;->c:Lcom/tencent/mna/b/b/b;

    .line 69
    const/4 v0, -0x1

    sput v0, Lcom/tencent/mna/b/a/b;->d:I

    .line 71
    sput-object v1, Lcom/tencent/mna/b/a/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 72
    sput-object v1, Lcom/tencent/mna/b/a/b;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 73
    sput-object v1, Lcom/tencent/mna/b/a/b;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 74
    sput-object v1, Lcom/tencent/mna/b/a/b;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 76
    sput-object v1, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    return-void
.end method

.method private static declared-synchronized A()V
    .locals 4

    .prologue
    .line 1287
    const-class v1, Lcom/tencent/mna/b/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/mna/b/a/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mna/b/a/b;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 1288
    const-string v0, "stopDelayTask"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    :try_start_1
    sget-object v0, Lcom/tencent/mna/b/a/b;->f:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1291
    sget-object v0, Lcom/tencent/mna/b/a/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 1292
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/b/a/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1293
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/b/a/b;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1298
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 1294
    :catch_0
    move-exception v0

    .line 1295
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopDelayTask exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1287
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static B()V
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1366
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/f/d;->a()I

    move-result v0

    .line 1367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/base/a/a;->z()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/base/a/a;->A()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/base/a/a;->B()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/base/a/a;->C()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1368
    if-ne v0, v3, :cond_1

    .line 1369
    const-string v0, "com.unity3d.player.UnityPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1370
    const-string v2, "UnitySendMessage"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1371
    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "MnaCallBackGameObejct"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "MnaListenerInit"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    :cond_0
    :goto_0
    return-void

    .line 1372
    :cond_1
    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 1377
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(I)I
    .locals 0

    .prologue
    .line 61
    sput p0, Lcom/tencent/mna/b/a/b;->d:I

    return p0
.end method

.method static synthetic a(IZLcom/tencent/mna/b/b/b;Lcom/tencent/mna/b/a/d;)I
    .locals 1

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/b/a/b;->b(IZLcom/tencent/mna/b/b/b;Lcom/tencent/mna/b/a/d;)I

    move-result v0

    return v0
.end method

.method private static a(Lcom/tencent/mna/b/a/d;Lcom/tencent/mna/base/c/a;J)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1165
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1167
    :cond_0
    const-string v1, "compareDelay NullPointer exception: facade or reporter is null"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 1210
    :goto_0
    return v0

    .line 1170
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mna/base/c/a;->d()Lcom/tencent/mna/b/a/c/c;

    move-result-object v1

    .line 1171
    invoke-virtual {p1}, Lcom/tencent/mna/base/c/a;->e()Lcom/tencent/mna/b/a/c/c;

    move-result-object v2

    .line 1173
    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    .line 1175
    :cond_2
    const-string v1, "compareDelay NullPointer exception: forwardDelaysInfo or directDelaysInfo is null"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1179
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[N]\u542f\u52a8\u5bf9\u6bd4\u6d4b\u901f \u603b\u65f6\u957f["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 1181
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 1182
    new-instance v3, Lcom/tencent/mna/b/a/b$10;

    invoke-direct {v3, v1, p2, p3, p0}, Lcom/tencent/mna/b/a/b$10;-><init>(Lcom/tencent/mna/b/a/c/c;JLcom/tencent/mna/b/a/d;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1189
    new-instance v3, Lcom/tencent/mna/b/a/b$2;

    invoke-direct {v3, v2, p2, p3, p0}, Lcom/tencent/mna/b/a/b$2;-><init>(Lcom/tencent/mna/b/a/c/c;JLcom/tencent/mna/b/a/d;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1196
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1199
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1201
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    :cond_4
    :goto_1
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/b/a/c/c;Lcom/tencent/mna/b/a/c/c;)V

    .line 1209
    new-instance v0, Lcom/tencent/mna/b/a/b/e;

    invoke-static {}, Lcom/tencent/mna/b/a/b;->z()Lcom/tencent/mna/b/a/b/b;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/tencent/mna/b/a/b/e;-><init>(Lcom/tencent/mna/b/a/b/b;)V

    .line 1210
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/b/a/b/e;->a(Lcom/tencent/mna/b/a/c/c;Lcom/tencent/mna/b/a/c/c;)I

    move-result v0

    goto :goto_0

    .line 1203
    :catch_0
    move-exception v3

    .line 1204
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_1
.end method

.method private static a(Lcom/tencent/mna/b/b/b;Lcom/tencent/mna/b/a/d;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 838
    if-nez p0, :cond_0

    .line 839
    sget v0, Lcom/tencent/mna/b/a/c;->e:I

    .line 899
    :goto_0
    return v0

    .line 841
    :cond_0
    if-nez p1, :cond_1

    .line 842
    const/4 v0, -0x3

    goto :goto_0

    .line 846
    :cond_1
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/l;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/tencent/mna/base/a/a;->as()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 847
    invoke-static {}, Lcom/tencent/mna/b/a/b;->j()I

    move-result v1

    .line 849
    if-ne v1, v0, :cond_5

    .line 850
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aA()I

    move-result v0

    if-lez v0, :cond_4

    .line 852
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/r;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/tencent/mna/base/a/a;->ay()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 854
    invoke-virtual {p1}, Lcom/tencent/mna/b/a/d;->e()I

    move-result v0

    .line 855
    invoke-virtual {p1}, Lcom/tencent/mna/b/a/d;->e()I

    move-result v1

    .line 857
    if-lez v0, :cond_2

    invoke-static {}, Lcom/tencent/mna/base/a/a;->az()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-lez v1, :cond_2

    .line 858
    invoke-static {}, Lcom/tencent/mna/base/a/a;->az()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 859
    const/4 v0, 0x0

    goto :goto_0

    .line 861
    :cond_2
    const/16 v0, -0xa

    goto :goto_0

    .line 864
    :cond_3
    const/16 v0, -0x9

    goto :goto_0

    .line 867
    :cond_4
    const/4 v0, -0x8

    goto :goto_0

    .line 872
    :cond_5
    sget-object v1, Lcom/tencent/mna/b/a/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aw()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 874
    invoke-static {}, Lcom/tencent/mna/base/f/i;->a()I

    move-result v1

    invoke-static {}, Lcom/tencent/mna/base/a/a;->au()I

    move-result v2

    if-le v1, v2, :cond_8

    .line 876
    invoke-virtual {p1}, Lcom/tencent/mna/b/a/d;->e()I

    move-result v1

    .line 877
    invoke-virtual {p1}, Lcom/tencent/mna/b/a/d;->e()I

    move-result v2

    .line 879
    if-lez v1, :cond_7

    invoke-static {}, Lcom/tencent/mna/base/a/a;->av()I

    move-result v3

    if-ge v1, v3, :cond_7

    if-lez v2, :cond_7

    .line 880
    invoke-static {}, Lcom/tencent/mna/base/a/a;->av()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 882
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aG()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/tencent/mna/base/f/c;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 883
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 885
    :cond_6
    sget-object v1, Lcom/tencent/mna/b/a/c;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/16 :goto_0

    .line 889
    :cond_7
    const/4 v0, -0x7

    goto/16 :goto_0

    .line 892
    :cond_8
    const/4 v0, -0x6

    goto/16 :goto_0

    .line 895
    :cond_9
    const/4 v0, -0x5

    goto/16 :goto_0

    .line 899
    :cond_a
    const/4 v0, -0x4

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tencent/mna/base/c/d;Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)I
    .locals 1

    .prologue
    .line 61
    invoke-static/range {p0 .. p8}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/d;Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/mna/b/a/d;)Lcom/tencent/mna/b/a/d;
    .locals 0

    .prologue
    .line 61
    sput-object p0, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/mna/b/a/f;)Lcom/tencent/mna/b/a/f;
    .locals 0

    .prologue
    .line 61
    sput-object p0, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/mna/b/b/b;)Lcom/tencent/mna/b/b/b;
    .locals 0

    .prologue
    .line 61
    sput-object p0, Lcom/tencent/mna/b/a/b;->c:Lcom/tencent/mna/b/b/b;

    return-object p0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/tencent/mna/b/a/b$1;

    invoke-direct {v0}, Lcom/tencent/mna/b/a/b$1;-><init>()V

    invoke-static {v0}, Lcom/tencent/mna/a;->a(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method static synthetic a(ILcom/tencent/mna/b/a/d;Lcom/tencent/mna/base/c/a;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/b/a/b;->b(ILcom/tencent/mna/b/a/d;Lcom/tencent/mna/base/c/a;)V

    return-void
.end method

.method private static a(ILcom/tencent/mna/base/c/d;)V
    .locals 4

    .prologue
    .line 1303
    if-nez p0, :cond_0

    .line 1305
    invoke-static {}, Lcom/tencent/mna/base/a/a;->K()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->f(I)V

    .line 1308
    :cond_0
    if-eqz p1, :cond_1

    .line 1310
    const-string v0, "ctl_errorno"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 1312
    if-nez p0, :cond_1

    .line 1314
    const-string v0, "control_ip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mna/base/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mna/a/a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 1315
    const-string v0, "speed_ip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mna/base/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mna/base/a/a;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 1316
    const-string v0, "ex_client_ip"

    invoke-static {}, Lcom/tencent/mna/base/a/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 1317
    const-string v0, "plat_flag"

    invoke-static {}, Lcom/tencent/mna/base/a/a;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 1318
    const-string v0, "pvp"

    invoke-static {}, Lcom/tencent/mna/base/a/a;->D()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 1319
    const-string/jumbo v0, "useping"

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aO()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 1320
    const-string/jumbo v0, "tos"

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aW()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 1321
    invoke-static {}, Lcom/tencent/mna/base/a/a;->a()Lcom/tencent/mna/base/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1322
    const-string v0, "control"

    invoke-static {}, Lcom/tencent/mna/base/a/a;->a()Lcom/tencent/mna/base/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mna/base/a/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 1328
    :cond_1
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->k:Lcom/tencent/mna/base/c/a$a;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1330
    if-nez p0, :cond_2

    .line 1331
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->i:Lcom/tencent/mna/base/c/a$a;

    invoke-static {}, Lcom/tencent/mna/base/a/a;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1332
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->l:Lcom/tencent/mna/base/c/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mna/base/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/tencent/mna/a/a;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1333
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->j:Lcom/tencent/mna/base/c/a$a;

    invoke-static {}, Lcom/tencent/mna/base/a/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1334
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->n:Lcom/tencent/mna/base/c/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mna/base/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mna/base/a/a;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1335
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->o:Lcom/tencent/mna/base/c/a$a;

    invoke-static {}, Lcom/tencent/mna/base/a/a;->D()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1336
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->p:Lcom/tencent/mna/base/c/a$a;

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aC()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1337
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->af:Lcom/tencent/mna/base/c/a$a;

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aO()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1338
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->q:Lcom/tencent/mna/base/c/a$a;

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aW()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1340
    :cond_2
    return-void
.end method

.method static synthetic a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/tencent/mna/b/a/b;->b(ILjava/lang/String;)V

    return-void
.end method

.method public static a(IZ)V
    .locals 1

    .prologue
    .line 770
    new-instance v0, Lcom/tencent/mna/b/a/b$8;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mna/b/a/b$8;-><init>(IZ)V

    invoke-static {v0}, Lcom/tencent/mna/a;->a(Ljava/lang/Runnable;)V

    .line 811
    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/StartSpeedRet;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/StartSpeedRet;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/base/c/a;I)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/b/a/c/a;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/b/a/c/a;)V

    return-void
.end method

.method private static a(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/b/a/c/c;Lcom/tencent/mna/b/a/c/c;)V
    .locals 4

    .prologue
    .line 1442
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1444
    :try_start_0
    const-string v0, "_"

    invoke-virtual {p1, v0}, Lcom/tencent/mna/b/a/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1445
    const-string v1, "_"

    invoke-virtual {p2, v1}, Lcom/tencent/mna/b/a/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[N]\u5bf9\u6bd4\u6d4b\u901f\u8f6c\u53d1\u5ef6\u8fdf:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 1447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[N]\u5bf9\u6bd4\u6d4b\u901f\u76f4\u8fde\u5ef6\u8fdf:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 1448
    sget-object v2, Lcom/tencent/mna/base/c/a$a;->E:Lcom/tencent/mna/base/c/a$a;

    invoke-virtual {p0, v2, v0}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    move-result-object v0

    sget-object v2, Lcom/tencent/mna/base/c/a$a;->D:Lcom/tencent/mna/base/c/a$a;

    .line 1449
    invoke-virtual {v0, v2, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    :cond_0
    :goto_0
    return-void

    .line 1450
    :catch_0
    move-exception v0

    .line 1451
    const-string v0, "add Router Compare Report failed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/b/g/d$a;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/b/g/d$a;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/tencent/mna/base/c/a;Z)V
    .locals 6

    .prologue
    .line 1457
    if-eqz p0, :cond_0

    .line 1459
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1460
    const/16 v2, 0x5f

    .line 1461
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1462
    :goto_0
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v3

    .line 1463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1464
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1465
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1466
    sget-object v0, Lcom/tencent/mna/base/c/a$a;->Z:Lcom/tencent/mna/base/c/a$a;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1471
    :cond_0
    :goto_1
    return-void

    .line 1461
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1467
    :catch_0
    move-exception v0

    .line 1468
    const-string v0, "add FrontBack Report failed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/mna/base/c/d;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/d;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mna/base/c/d;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/d;ILjava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 698
    invoke-static {}, Lcom/tencent/mna/base/a/a;->ar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mna/base/a/a;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 699
    invoke-static {}, Lcom/tencent/mna/b/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    new-instance v0, Lcom/tencent/mna/b/a/b$7;

    invoke-direct {v0, p0}, Lcom/tencent/mna/b/a/b$7;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mna/a;->a(Ljava/lang/Runnable;)V

    .line 710
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 542
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/tencent/mna/b/a/b;->a(Z)V

    .line 544
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/mna/b/a/c;->b(Z)V

    .line 545
    sget-object v0, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    if-eqz v0, :cond_0

    .line 546
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/mna/b/a/b$5;

    invoke-direct {v1}, Lcom/tencent/mna/b/a/b$5;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 556
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 560
    :goto_0
    const-string v0, "[N]MNAStopMNA succeed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 564
    :goto_1
    return-void

    .line 558
    :cond_0
    const-string v0, "stopMNA no need to end accelerator, which is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[N]MNAStopMNA fail, exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static declared-synchronized a(Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 1121
    const-class v1, Lcom/tencent/mna/b/a/b;

    monitor-enter v1

    if-gtz p2, :cond_0

    .line 1123
    :try_start_0
    const-string v0, "startTimerForStopMna input warning: startSpeedTimeoutMills <= 0"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    :goto_0
    monitor-exit v1

    return-void

    .line 1127
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/mna/b/a/b;->y()V

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTimerForStopMna() called with: startSpeedTimeoutMills = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 1129
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/b/a/b;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1130
    sget-object v0, Lcom/tencent/mna/b/a/b;->g:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/tencent/mna/b/a/b$9;

    invoke-direct {v2, p0, p1}, Lcom/tencent/mna/b/a/b$9;-><init>(Ljava/lang/String;I)V

    int-to-long v4, p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/b/a/b;->h:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)V
    .locals 10

    .prologue
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[N]vip = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], vport["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], htype["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], hookModules = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], zoneid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], stopMNA["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], \u542f\u52a8\u8d85\u65f6["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], pvpid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/tencent/mna/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mna/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    :cond_0
    const-string v1, "MNAStartSpeed fail"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/tencent/mna/StartSpeedRet;

    const/4 v5, -0x1

    const/4 v2, -0x7

    invoke-static {v2}, Lcom/tencent/mna/StartSpeedRet;->getSpeedDesc(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mna/StartSpeedRet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/StartSpeedRet;)V

    .line 227
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {}, Lcom/tencent/mna/b/a/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    const-string v1, "MNAStartSpeed fail"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 142
    new-instance v1, Lcom/tencent/mna/StartSpeedRet;

    const/4 v5, 0x1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/tencent/mna/StartSpeedRet;->getSpeedDesc(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/tencent/mna/StartSpeedRet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/StartSpeedRet;)V

    goto :goto_0

    .line 147
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/mna/b/a/c;->a(Z)V

    .line 149
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/mna/b/a/c;->b(Z)V

    .line 151
    const-string v1, ""

    invoke-static {p0, p1, v1}, Lcom/tencent/mna/b/a/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    new-instance v1, Lcom/tencent/mna/b/a/b$3;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/tencent/mna/b/a/b$3;-><init>(Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/mna/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 432
    new-instance v0, Lcom/tencent/mna/b/a/b$4;

    invoke-direct {v0, p2}, Lcom/tencent/mna/b/a/b$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mna/a;->a(Ljava/lang/Runnable;)V

    .line 512
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 602
    sput-boolean p0, Lcom/tencent/mna/b/a/c;->a:Z

    .line 603
    invoke-static {p0}, Lcom/tencent/mna/base/jni/e;->c(Z)V

    .line 604
    return-void
.end method

.method static synthetic a(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/tencent/mna/b/a/b;->b(ZLjava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/tencent/mna/base/c/d;I)Z
    .locals 7

    .prologue
    .line 384
    sget-boolean v0, Lcom/tencent/mna/a/b;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 385
    :goto_0
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v1

    .line 386
    invoke-static {v1}, Lcom/tencent/mna/base/f/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-static {v1}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v3

    .line 388
    invoke-static {v2}, Lcom/tencent/mna/b/g/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tencent/mna/b/g/d;->x:Ljava/lang/String;

    .line 389
    sput-object v2, Lcom/tencent/mna/b/g/d;->F:Ljava/lang/String;

    .line 390
    new-instance v4, Lcom/tencent/mna/base/a/a/b$a;

    invoke-direct {v4}, Lcom/tencent/mna/base/a/a/b$a;-><init>()V

    invoke-virtual {v4, p1}, Lcom/tencent/mna/base/a/a/b$a;->a(I)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v4

    .line 391
    invoke-static {}, Lcom/tencent/mna/a/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/mna/base/a/a/b$a;->a(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v4

    sget-object v5, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    .line 392
    invoke-virtual {v4, v5}, Lcom/tencent/mna/base/a/a/b$a;->b(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v4

    .line 394
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aX()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/tencent/mna/base/f/n;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/mna/base/a/a/b$a;->c(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v4

    .line 395
    invoke-static {}, Lcom/tencent/mna/base/f/n;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/mna/base/a/a/b$a;->d(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v4

    .line 396
    invoke-virtual {v4, v2}, Lcom/tencent/mna/base/a/a/b$a;->e(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    sget-object v4, Lcom/tencent/mna/b/g/d;->x:Ljava/lang/String;

    .line 397
    invoke-virtual {v2, v4}, Lcom/tencent/mna/base/a/a/b$a;->f(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    .line 398
    invoke-static {v1}, Lcom/tencent/mna/base/f/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/mna/base/a/a/b$a;->g(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    .line 399
    invoke-static {v1}, Lcom/tencent/mna/base/f/r;->g(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/tencent/mna/base/a/a/b$a;->b(I)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    .line 400
    invoke-static {v1}, Lcom/tencent/mna/base/f/r;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/mna/base/a/a/b$a;->h(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    sget-object v4, Lcom/tencent/mna/a/b;->e:Ljava/lang/String;

    .line 401
    invoke-virtual {v2, v4}, Lcom/tencent/mna/base/a/a/b$a;->i(Ljava/lang/String;)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    .line 402
    invoke-virtual {v2, v3}, Lcom/tencent/mna/base/a/a/b$a;->c(I)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v2

    .line 403
    invoke-static {v1, v3}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/mna/base/a/a/b$a;->d(I)Lcom/tencent/mna/base/a/a/b$a;

    move-result-object v1

    .line 404
    invoke-virtual {v1}, Lcom/tencent/mna/base/a/a/b$a;->a()Lcom/tencent/mna/base/a/a/b;

    move-result-object v1

    .line 406
    invoke-static {v1}, Lcom/tencent/mna/base/a/a;->a(Lcom/tencent/mna/base/a/a/b;)Ljava/lang/String;

    move-result-object v4

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " acc reqJson = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 408
    const/4 v1, -0x1

    move v2, v0

    .line 410
    :goto_1
    if-eqz v1, :cond_1

    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    .line 411
    invoke-static {}, Lcom/tencent/mna/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/tencent/mna/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v1, v0

    move v2, v3

    goto :goto_1

    .line 384
    :cond_0
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 413
    :cond_1
    invoke-static {v1, p0}, Lcom/tencent/mna/b/a/b;->a(ILcom/tencent/mna/base/c/d;)V

    .line 414
    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 676
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    if-eqz v0, :cond_0

    .line 678
    :try_start_0
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    invoke-virtual {v0}, Lcom/tencent/mna/base/c/a;->f()Lcom/tencent/mna/b/a/c/e;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0, p0}, Lcom/tencent/mna/b/a/c/e;->a(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0, p1}, Lcom/tencent/mna/b/a/c/e;->b(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0, p2}, Lcom/tencent/mna/b/a/c/e;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    const/4 v0, 0x1

    .line 689
    :goto_0
    return v0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEngineData throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 689
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(IZ)I
    .locals 1

    .prologue
    .line 827
    if-nez p1, :cond_0

    .line 828
    const/4 v0, -0x1

    .line 833
    :goto_0
    return v0

    .line 830
    :cond_0
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aB()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 831
    const/4 v0, -0x2

    goto :goto_0

    .line 833
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(IZLcom/tencent/mna/b/b/b;Lcom/tencent/mna/b/a/d;)I
    .locals 1

    .prologue
    .line 818
    invoke-static {p0, p1}, Lcom/tencent/mna/b/a/b;->b(IZ)I

    move-result v0

    .line 819
    if-gez v0, :cond_0

    .line 822
    :goto_0
    return v0

    :cond_0
    invoke-static {p2, p3}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/b/b/b;Lcom/tencent/mna/b/a/d;)I

    move-result v0

    goto :goto_0
.end method

.method private static b(Lcom/tencent/mna/base/c/d;Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)I
    .locals 12

    .prologue
    .line 233
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 234
    sput-wide v8, Lcom/tencent/mna/b;->a:J

    .line 236
    if-lez p7, :cond_0

    .line 237
    move/from16 v0, p7

    invoke-static {p1, p2, v0}, Lcom/tencent/mna/b/a/b;->a(Ljava/lang/String;II)V

    .line 239
    :cond_0
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v10

    .line 241
    sget-object v2, Lcom/tencent/mna/base/c/c;->b:Lcom/tencent/mna/base/c/c;

    invoke-static {v2}, Lcom/tencent/mna/base/c/f;->a(Lcom/tencent/mna/base/c/c;)Lcom/tencent/mna/base/c/d;

    move-result-object v2

    check-cast v2, Lcom/tencent/mna/base/c/a;

    sput-object v2, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    .line 242
    sget-object v3, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aX()Z

    move-result v4

    invoke-static {v2, v4}, Lcom/tencent/mna/base/f/n;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "5.5.0_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/tencent/mna/a/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    move-object/from16 v4, p8

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/mna/base/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 245
    invoke-static {v10}, Lcom/tencent/mna/base/f/l;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    const/4 v2, -0x2

    .line 378
    :goto_0
    return v2

    .line 249
    :cond_1
    invoke-static {p1, p2}, Lcom/tencent/mna/b/a/b;->c(Ljava/lang/String;I)Z

    move-result v2

    .line 250
    if-nez v2, :cond_2

    .line 251
    const/4 v2, -0x6

    goto :goto_0

    .line 254
    :cond_2
    move/from16 v0, p5

    invoke-static {p0, v0}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/base/c/d;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 255
    const/4 v2, -0x3

    goto :goto_0

    .line 261
    :cond_3
    sget-object v2, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aE()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mna/base/c/a;->a(Z)V

    .line 264
    new-instance v2, Lcom/tencent/mna/b/a/d;

    const/16 v3, 0x12c

    .line 265
    invoke-static {}, Lcom/tencent/mna/base/a/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mna/base/a/a;->d()I

    move-result v5

    .line 266
    invoke-static {}, Lcom/tencent/mna/base/a/a;->M()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/mna/b/a/d;-><init>(ILjava/lang/String;II)V

    sput-object v2, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    .line 269
    invoke-static {}, Lcom/tencent/mna/base/a/a;->j()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/mna/c/a;->a(I)Lcom/tencent/mna/b/a/f;

    move-result-object v2

    sput-object v2, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    .line 270
    sget-object v2, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    if-nez v2, :cond_4

    .line 271
    const-string v2, "startSpeed NullPointer exception: sAccelerator is null"

    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 272
    const/16 v2, -0x191

    goto :goto_0

    .line 274
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[N]\u9009\u7528\u534f\u8bae\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    invoke-interface {v3}, Lcom/tencent/mna/b/a/f;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 277
    sget-object v2, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    invoke-interface {v2}, Lcom/tencent/mna/b/a/f;->c()Lcom/tencent/mna/b/a/h;

    move-result-object v2

    .line 278
    sget-object v3, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    invoke-interface {v3}, Lcom/tencent/mna/b/a/f;->b()Lcom/tencent/mna/b/a/e;

    move-result-object v6

    .line 279
    if-eqz v2, :cond_5

    if-nez v6, :cond_6

    .line 280
    :cond_5
    const-string v2, "startSpeed NullPointer exception: speedTester or udpPtr is null"

    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 281
    const/16 v2, -0x191

    goto :goto_0

    .line 284
    :cond_6
    sget-object v3, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    invoke-virtual {v3, v2}, Lcom/tencent/mna/b/a/d;->a(Lcom/tencent/mna/b/a/h;)V

    .line 287
    invoke-static {}, Lcom/tencent/mna/b/a/a;->a()Z

    move-result v2

    if-nez v2, :cond_7

    .line 288
    const/16 v2, -0xd

    goto/16 :goto_0

    .line 292
    :cond_7
    sget v2, Lcom/tencent/mna/a/a;->c:I

    const/16 v3, 0x17

    if-le v2, v3, :cond_9

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-le v2, v3, :cond_9

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/tencent/mna/b/a/a;->a(Z)V

    .line 295
    invoke-static {}, Lcom/tencent/mna/base/a/a;->U()I

    move-result v2

    if-gtz v2, :cond_8

    invoke-static {}, Lcom/tencent/mna/base/a/a;->as()Z

    move-result v2

    if-nez v2, :cond_8

    .line 296
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aW()I

    move-result v2

    if-lez v2, :cond_a

    .line 298
    :cond_8
    move-object/from16 v0, p4

    invoke-static {p3, v0, v6}, Lcom/tencent/mna/b/a/a;->a(ILjava/lang/String;Lcom/tencent/mna/b/a/e;)Z

    move-result v2

    .line 299
    if-nez v2, :cond_a

    .line 300
    const/4 v2, -0x5

    goto/16 :goto_0

    .line 292
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 305
    :cond_a
    if-eqz p6, :cond_b

    .line 306
    const/4 v2, 0x2

    goto/16 :goto_0

    .line 310
    :cond_b
    sget-object v2, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    invoke-static {}, Lcom/tencent/mna/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/tencent/mna/b/a/f;->a(Ljava/lang/String;I)I

    move-result v2

    .line 312
    if-eqz v2, :cond_c

    .line 313
    const/16 v2, -0xc

    goto/16 :goto_0

    .line 319
    :cond_c
    invoke-static {}, Lcom/tencent/mna/base/a/a;->w()I

    move-result v2

    int-to-long v4, v2

    .line 321
    if-lez p7, :cond_d

    invoke-static {}, Lcom/tencent/mna/base/a/a;->L()I

    move-result v2

    if-lez v2, :cond_d

    .line 322
    invoke-static {}, Lcom/tencent/mna/base/a/a;->L()I

    move-result p7

    .line 324
    :cond_d
    if-lez p7, :cond_16

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 326
    move/from16 v0, p7

    int-to-long v10, v0

    sub-long/2addr v2, v8

    sub-long v2, v10, v2

    .line 327
    const-wide/16 v8, 0x3e8

    cmp-long v7, v2, v8

    if-lez v7, :cond_f

    .line 328
    const-wide/16 v8, 0x12c

    sub-long/2addr v2, v8

    .line 329
    cmp-long v7, v4, v2

    if-lez v7, :cond_e

    .line 338
    :goto_2
    invoke-static {}, Lcom/tencent/mna/base/a/a;->r()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    .line 339
    const/16 v2, -0x10

    goto/16 :goto_0

    :cond_e
    move-wide v2, v4

    .line 329
    goto :goto_2

    .line 331
    :cond_f
    const/16 v2, -0x9

    goto/16 :goto_0

    .line 342
    :cond_10
    invoke-static {}, Lcom/tencent/mna/base/a/a;->r()I

    move-result v4

    if-nez v4, :cond_11

    sget-object v4, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    sget-object v5, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    .line 343
    invoke-static {v4, v5, v2, v3}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/b/a/d;Lcom/tencent/mna/base/c/a;J)I

    move-result v2

    if-gtz v2, :cond_11

    .line 345
    const/4 v2, -0x4

    goto/16 :goto_0

    .line 349
    :cond_11
    invoke-static {}, Lcom/tencent/mna/base/a/a;->U()I

    move-result v2

    if-gtz v2, :cond_12

    invoke-static {}, Lcom/tencent/mna/base/a/a;->as()Z

    move-result v2

    if-nez v2, :cond_12

    .line 350
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aW()I

    move-result v2

    if-gtz v2, :cond_12

    .line 351
    move-object/from16 v0, p4

    invoke-static {p3, v0, v6}, Lcom/tencent/mna/b/a/a;->a(ILjava/lang/String;Lcom/tencent/mna/b/a/e;)Z

    move-result v2

    .line 352
    if-nez v2, :cond_12

    .line 353
    const/4 v2, -0x5

    goto/16 :goto_0

    .line 357
    :cond_12
    invoke-static {}, Lcom/tencent/mna/b/a/c;->b()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 359
    invoke-static {}, Lcom/tencent/mna/base/a/a;->U()I

    move-result v2

    if-gtz v2, :cond_13

    .line 361
    invoke-static {}, Lcom/tencent/mna/b/a/a;->b()Z

    .line 363
    :cond_13
    const/16 v2, -0xa

    goto/16 :goto_0

    .line 366
    :cond_14
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aF()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {}, Lcom/tencent/mna/base/f/c;->a()Z

    move-result v2

    if-nez v2, :cond_15

    .line 367
    const/16 v2, 0xa

    goto/16 :goto_0

    .line 370
    :cond_15
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/tencent/mna/b/a/b;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 371
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 373
    :catch_0
    move-exception v2

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startSpeed exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 375
    const/16 v2, -0x192

    goto/16 :goto_0

    .line 376
    :catch_1
    move-exception v2

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startSpeed throwable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 378
    const/16 v2, -0x193

    goto/16 :goto_0

    :cond_16
    move-wide v2, v4

    goto/16 :goto_2
.end method

.method public static b(Ljava/lang/String;I)Lcom/tencent/mna/b/a/c/g;
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b()V
    .locals 4

    .prologue
    .line 519
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->b(Z)V

    .line 520
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    if-eqz v0, :cond_0

    .line 521
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->g:Lcom/tencent/mna/base/c/a$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 523
    :cond_0
    const-string v0, "MNAEnterMapLoading succeed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    const-string v1, "MNAEnterMapLoading fail"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterMapLoading exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(I)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0}, Lcom/tencent/mna/b/a/b;->d(I)V

    return-void
.end method

.method private static b(ILcom/tencent/mna/b/a/d;Lcom/tencent/mna/base/c/a;)V
    .locals 7

    .prologue
    .line 1247
    invoke-static {}, Lcom/tencent/mna/b/a/b;->A()V

    .line 1249
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    .line 1250
    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v1

    .line 1251
    sget-object v2, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v3, Lcom/tencent/mna/base/c/a$a;->S:Lcom/tencent/mna/base/c/a$a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1253
    invoke-static {}, Lcom/tencent/mna/base/a/a;->H()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1254
    invoke-static {}, Lcom/tencent/mna/base/f/j;->a()Lcom/tencent/mna/base/f/j$b;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/j;->b(Lcom/tencent/mna/base/f/j$b;)Ljava/lang/String;

    move-result-object v1

    .line 1255
    sget-object v2, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v3, Lcom/tencent/mna/base/c/a$a;->U:Lcom/tencent/mna/base/c/a$a;

    invoke-static {v2, v3, v1}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1258
    :cond_0
    invoke-static {v0}, Lcom/tencent/mna/base/f/n;->a(Landroid/content/Context;)I

    move-result v0

    .line 1259
    sget-object v1, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v2, Lcom/tencent/mna/base/c/a$a;->ac:Lcom/tencent/mna/base/c/a$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1261
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 1263
    :cond_1
    const-string v0, "startDelayTask NullPointer exception: facade or reporter is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 1284
    :cond_2
    :goto_0
    return-void

    .line 1268
    :cond_3
    invoke-static {p0}, Lcom/tencent/mna/StartSpeedRet;->isRequestControlSucceed(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mna/base/a/a;->x()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1270
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/a/a;->D()I

    move-result v4

    .line 1272
    invoke-static {}, Lcom/tencent/mna/base/a/a;->N()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/mna/b/a/d;->d(I)V

    .line 1274
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/b/a/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1275
    const-string v0, "startDelayTask"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 1276
    sget-object v0, Lcom/tencent/mna/b/a/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/tencent/mna/b/a/a/c;

    invoke-direct {v1, p1, p2}, Lcom/tencent/mna/b/a/a/c;-><init>(Lcom/tencent/mna/b/a/d;Lcom/tencent/mna/base/c/a;)V

    const-wide/16 v2, 0x0

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/tencent/mna/b/a/b;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDelayTask exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 947
    invoke-static {p0}, Lcom/tencent/mna/StartSpeedRet;->isCanHook(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 949
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/a/a;->as()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 950
    new-instance v0, Lcom/tencent/mna/b/b/b;

    invoke-direct {v0}, Lcom/tencent/mna/b/b/b;-><init>()V

    .line 952
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v1

    sget-boolean v2, Lcom/tencent/mna/a/b;->i:Z

    .line 954
    invoke-static {p0}, Lcom/tencent/mna/StartSpeedRet;->isSpeedSucceed(I)Z

    move-result v3

    .line 955
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aH()Z

    move-result v4

    .line 952
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/mna/b/b/b;->a(Landroid/content/Context;ZZZ)I

    move-result v1

    sput v1, Lcom/tencent/mna/b/a/c;->e:I

    .line 956
    sget v1, Lcom/tencent/mna/b/a/c;->e:I

    if-nez v1, :cond_4

    .line 957
    sput-object v0, Lcom/tencent/mna/b/a/b;->c:Lcom/tencent/mna/b/b/b;

    .line 958
    sget-object v0, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    if-eqz v0, :cond_0

    .line 960
    sget-object v0, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    sget-object v1, Lcom/tencent/mna/b/a/b;->c:Lcom/tencent/mna/b/b/b;

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aH()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/b/a/d;->a(Lcom/tencent/mna/b/b/b;Z)V

    .line 962
    :cond_0
    const-string v0, "prepareW2m success"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 972
    :goto_0
    sget-object v0, Lcom/tencent/mna/b/a/b;->c:Lcom/tencent/mna/b/b/b;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    instance-of v0, v0, Lcom/tencent/mna/c/e/a;

    if-eqz v0, :cond_3

    .line 974
    :cond_1
    const-wide/16 v0, 0x0

    .line 975
    sget-object v2, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    if-eqz v2, :cond_2

    .line 976
    sget-object v2, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    invoke-interface {v2}, Lcom/tencent/mna/b/a/f;->b()Lcom/tencent/mna/b/a/e;

    move-result-object v2

    .line 977
    if-eqz v2, :cond_2

    .line 978
    iget-wide v0, v2, Lcom/tencent/mna/b/a/e;->h:J

    .line 981
    :cond_2
    invoke-static {p1, v0, v1}, Lcom/tencent/mna/b/a/a;->a(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 982
    const-string v0, "hookClose failed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V

    .line 993
    :cond_3
    :goto_1
    return-void

    .line 964
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareW2m fail in preparation, errno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tencent/mna/b/a/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 985
    :catch_0
    move-exception v0

    .line 986
    const/16 v1, -0x6d

    sput v1, Lcom/tencent/mna/b/a/c;->e:I

    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareW2m failed, exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 967
    :cond_5
    const/4 v0, -0x4

    :try_start_1
    sput v0, Lcom/tencent/mna/b/a/c;->e:I

    .line 968
    const-string v0, "prepareW2m failed, control not open"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 990
    :cond_6
    const-string v0, "prepareW2m failed, for control or hook"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 991
    const/16 v0, -0x6c

    sput v0, Lcom/tencent/mna/b/a/c;->e:I

    goto :goto_1
.end method

.method private static b(Lcom/tencent/mna/StartSpeedRet;)V
    .locals 4

    .prologue
    .line 1343
    if-eqz p0, :cond_1

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[N]Startspeed\u5b8c\u6210\uff0c\u9519\u8bef\u7801:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/StartSpeedRet;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 1345
    invoke-static {}, Lcom/tencent/mna/b;->b()Lcom/tencent/mna/MNAObserver;

    move-result-object v0

    .line 1347
    if-eqz v0, :cond_0

    .line 1348
    :try_start_0
    iget v1, p0, Lcom/tencent/mna/StartSpeedRet;->htype:I

    iget v2, p0, Lcom/tencent/mna/StartSpeedRet;->flag:I

    iget-object v3, p0, Lcom/tencent/mna/StartSpeedRet;->desc:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mna/MNAObserver;->OnStartSpeedNotify(IILjava/lang/String;)V

    .line 1353
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnStartSpeedNotify: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/StartSpeedRet;->htype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/StartSpeedRet;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    :goto_1
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->h:Lcom/tencent/mna/base/c/a$a;

    iget v2, p0, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1362
    :goto_2
    return-void

    .line 1350
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnStartSpeedNotify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/StartSpeedRet;->htype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/StartSpeedRet;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/StartSpeedRet;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->i(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1355
    :catch_0
    move-exception v0

    .line 1356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStartSpeedResult exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 1360
    :cond_1
    const-string v0, "notifyStartSpeedResult NullPointer exception: startSpeedRet is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static b(Lcom/tencent/mna/base/c/a;I)V
    .locals 2

    .prologue
    .line 1417
    if-eqz p0, :cond_0

    .line 1419
    :try_start_0
    sget-object v0, Lcom/tencent/mna/base/c/a$a;->ar:Lcom/tencent/mna/base/c/a$a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1424
    :cond_0
    :goto_0
    return-void

    .line 1420
    :catch_0
    move-exception v0

    .line 1421
    const-string v0, "add Tos Report failed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/b/a/c/a;)V
    .locals 3

    .prologue
    .line 1393
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1395
    :try_start_0
    sget-object v0, Lcom/tencent/mna/base/c/a$a;->r:Lcom/tencent/mna/base/c/a$a;

    iget-object v1, p1, Lcom/tencent/mna/b/a/c/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->s:Lcom/tencent/mna/base/c/a$a;

    iget-object v2, p1, Lcom/tencent/mna/b/a/c/a;->b:Ljava/lang/String;

    .line 1396
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->t:Lcom/tencent/mna/base/c/a$a;

    iget-object v2, p1, Lcom/tencent/mna/b/a/c/a;->c:Ljava/lang/String;

    .line 1397
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->v:Lcom/tencent/mna/base/c/a$a;

    iget v2, p1, Lcom/tencent/mna/b/a/c/a;->f:I

    .line 1398
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->w:Lcom/tencent/mna/base/c/a$a;

    iget-object v2, p1, Lcom/tencent/mna/b/a/c/a;->g:Ljava/lang/String;

    .line 1399
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->x:Lcom/tencent/mna/base/c/a$a;

    iget-object v2, p1, Lcom/tencent/mna/b/a/c/a;->h:Ljava/lang/String;

    .line 1400
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 1401
    iget-object v0, p1, Lcom/tencent/mna/b/a/c/a;->e:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    if-nez v0, :cond_1

    .line 1402
    sget-object v0, Lcom/tencent/mna/base/c/a$a;->u:Lcom/tencent/mna/base/c/a$a;

    iget-object v1, p1, Lcom/tencent/mna/b/a/c/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 1414
    :cond_0
    :goto_0
    return-void

    .line 1404
    :cond_1
    sget-object v0, Lcom/tencent/mna/base/c/a$a;->u:Lcom/tencent/mna/base/c/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/tencent/mna/b/a/c/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/mna/b/a/c/a;->e:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    iget v2, v2, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->isSameArea:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/mna/b/a/c/a;->e:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    iget v2, v2, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->isSameIsp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/mna/b/a/c/a;->e:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    iget v2, v2, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1410
    :catch_0
    move-exception v0

    .line 1411
    const-string v0, "add Plat Report failed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/b/g/d$a;)V
    .locals 3

    .prologue
    .line 1427
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1429
    :try_start_0
    sget-object v0, Lcom/tencent/mna/base/c/a$a;->K:Lcom/tencent/mna/base/c/a$a;

    iget v1, p1, Lcom/tencent/mna/b/g/d$a;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->L:Lcom/tencent/mna/base/c/a$a;

    iget v2, p1, Lcom/tencent/mna/b/g/d$a;->c:I

    .line 1430
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->M:Lcom/tencent/mna/base/c/a$a;

    iget v2, p1, Lcom/tencent/mna/b/g/d$a;->d:I

    .line 1431
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->O:Lcom/tencent/mna/base/c/a$a;

    iget v2, p1, Lcom/tencent/mna/b/g/d$a;->e:I

    .line 1432
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->P:Lcom/tencent/mna/base/c/a$a;

    iget-object v2, p1, Lcom/tencent/mna/b/g/d$a;->f:Ljava/lang/String;

    .line 1433
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    move-result-object v0

    sget-object v1, Lcom/tencent/mna/base/c/a$a;->Q:Lcom/tencent/mna/base/c/a$a;

    iget v2, p1, Lcom/tencent/mna/b/g/d$a;->g:I

    .line 1434
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    const-string v0, "add Router Report failed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1383
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 1385
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    :cond_0
    :goto_0
    return-void

    .line 1386
    :catch_0
    move-exception v0

    .line 1387
    const-string v0, "add String Report failed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Lcom/tencent/mna/base/c/d;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1045
    sget-object v1, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    if-nez v1, :cond_1

    .line 1046
    const-string v0, "startCheckAllDelayAndMobileQos NullPointer exception: facade is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v5

    .line 1054
    sget-object v1, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    if-eqz v1, :cond_4

    .line 1055
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    invoke-virtual {v0}, Lcom/tencent/mna/base/c/a;->d()Lcom/tencent/mna/b/a/c/c;

    move-result-object v1

    .line 1056
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    invoke-virtual {v0}, Lcom/tencent/mna/base/c/a;->e()Lcom/tencent/mna/b/a/c/c;

    move-result-object v0

    move-object v4, v0

    move-object v3, v1

    .line 1059
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/tencent/mna/b/a/c/c;->c()I

    move-result v0

    if-lez v0, :cond_3

    if-eqz v4, :cond_3

    .line 1060
    invoke-virtual {v4}, Lcom/tencent/mna/b/a/c/c;->c()I

    move-result v0

    if-lez v0, :cond_3

    .line 1061
    sget-object v2, Lcom/tencent/mna/b/a/d$b;->a:Lcom/tencent/mna/b/a/d$b;

    .line 1062
    sget-object v0, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    sget-object v1, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    .line 1063
    invoke-virtual {v3}, Lcom/tencent/mna/b/a/c/c;->d()I

    move-result v3

    invoke-virtual {v4}, Lcom/tencent/mna/b/a/c/c;->d()I

    move-result v4

    .line 1064
    invoke-static {v5}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v5

    const/4 v6, -0x2

    const/4 v7, -0x1

    .line 1062
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/mna/b/a/d;->a(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/b/a/d$b;IIIII)I

    move-result v0

    .line 1074
    :goto_2
    invoke-static {}, Lcom/tencent/mna/base/f/i;->a()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/b/a/g;->a(IILcom/tencent/mna/b/a/d$b;)V

    .line 1075
    sget-object v1, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    if-eqz v1, :cond_2

    .line 1076
    sget-object v1, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v2, Lcom/tencent/mna/base/c/a$a;->C:Lcom/tencent/mna/base/c/a$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 1078
    :cond_2
    if-eqz p0, :cond_0

    .line 1079
    const-string v1, "qosDelay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1081
    :catch_0
    move-exception v0

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCheckAllDelayAndMobileQos exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1067
    :cond_3
    :try_start_1
    sget-object v2, Lcom/tencent/mna/b/a/d$b;->d:Lcom/tencent/mna/b/a/d$b;

    .line 1068
    sget-object v0, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    sget-object v1, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1070
    invoke-static {v5}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v5

    const/4 v6, -0x2

    const/4 v7, -0x1

    .line 1068
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/mna/b/a/d;->a(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/b/a/d$b;IIIII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_2

    :cond_4
    move-object v4, v0

    move-object v3, v0

    goto :goto_1
.end method

.method private static b(Lcom/tencent/mna/base/c/d;ILjava/lang/String;I)V
    .locals 7

    .prologue
    .line 1476
    if-eqz p0, :cond_2

    .line 1477
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    .line 1478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/tencent/mna/b;->a:J

    sub-long/2addr v2, v4

    .line 1480
    sget-object v1, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    if-eqz v1, :cond_0

    .line 1481
    sget-object v1, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    invoke-interface {v1}, Lcom/tencent/mna/b/a/f;->f()Lcom/tencent/mna/b/a/c/a;

    move-result-object v1

    .line 1482
    if-eqz v1, :cond_0

    .line 1483
    const-string v4, "masterip"

    iget-object v5, v1, Lcom/tencent/mna/b/a/c/a;->a:Ljava/lang/String;

    invoke-interface {p0, v4, v5}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v4

    const-string v5, "negip"

    iget-object v6, v1, Lcom/tencent/mna/b/a/c/a;->b:Ljava/lang/String;

    .line 1484
    invoke-interface {v4, v5, v6}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v4

    const-string v5, "proxyips"

    iget-object v6, v1, Lcom/tencent/mna/b/a/c/a;->c:Ljava/lang/String;

    .line 1485
    invoke-interface {v4, v5, v6}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v4

    const-string v5, "prepare"

    iget v6, v1, Lcom/tencent/mna/b/a/c/a;->f:I

    .line 1486
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v4

    const-string/jumbo v5, "token"

    iget-object v6, v1, Lcom/tencent/mna/b/a/c/a;->g:Ljava/lang/String;

    .line 1487
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v4

    const-string v5, "clientkey"

    iget-object v6, v1, Lcom/tencent/mna/b/a/c/a;->h:Ljava/lang/String;

    .line 1488
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 1489
    iget-object v4, v1, Lcom/tencent/mna/b/a/c/a;->e:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    if-nez v4, :cond_1

    .line 1490
    const-string v4, "exportip"

    iget-object v1, v1, Lcom/tencent/mna/b/a/c/a;->d:Ljava/lang/String;

    invoke-interface {p0, v4, v1}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 1502
    :cond_0
    :goto_0
    const-string v1, "flag"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v1, v4}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v4, "devid"

    .line 1503
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aX()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/tencent/mna/base/f/n;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v4, "pvpid"

    .line 1504
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v4, "elapse"

    .line 1505
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "openid"

    sget-object v3, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    .line 1506
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "game_ip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1508
    invoke-static {}, Lcom/tencent/mna/a/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mna/a/b;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "netype"

    .line 1509
    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "mnaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "5.5.0_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/mna/a/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1511
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "qos"

    sget-object v3, Lcom/tencent/mna/b/f/a;->d:Ljava/lang/String;

    .line 1513
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "qossid"

    sget-object v3, Lcom/tencent/mna/b/f/a;->e:Ljava/lang/String;

    .line 1514
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "qosworked"

    sget v3, Lcom/tencent/mna/b/f/a;->a:I

    .line 1515
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "qosip"

    sget-object v3, Lcom/tencent/mna/b/f/a;->f:Ljava/lang/String;

    .line 1516
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "mac"

    .line 1518
    invoke-static {v0}, Lcom/tencent/mna/base/f/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "pcell"

    .line 1519
    invoke-static {v0}, Lcom/tencent/mna/base/f/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string/jumbo v1, "tos_flag"

    .line 1520
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 1522
    invoke-interface {p0}, Lcom/tencent/mna/base/c/d;->g()V

    .line 1526
    :goto_1
    return-void

    .line 1492
    :cond_1
    const-string v4, "exportip"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/tencent/mna/b/a/c/a;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/tencent/mna/b/a/c/a;->e:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    iget v6, v6, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->isSameArea:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/tencent/mna/b/a/c/a;->e:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    iget v6, v6, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->isSameIsp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v1, Lcom/tencent/mna/b/a/c/a;->e:Lcom/tencent/mna/base/jni/entity/TCallExportInfo;

    iget v1, v1, Lcom/tencent/mna/base/jni/entity/TCallExportInfo;->status:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v4, v1}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    goto/16 :goto_0

    .line 1524
    :cond_2
    const-string v0, "doStartPReport failed, reporter is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 632
    sput-boolean p0, Lcom/tencent/mna/a/b;->i:Z

    .line 633
    return-void
.end method

.method private static declared-synchronized b(ZLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 1529
    const-class v1, Lcom/tencent/mna/b/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    if-eqz v0, :cond_4

    .line 1531
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1532
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v2, Lcom/tencent/mna/base/c/a$a;->ao:Lcom/tencent/mna/base/c/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1538
    :goto_0
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v2, Lcom/tencent/mna/base/c/a$a;->y:Lcom/tencent/mna/base/c/a$a;

    sget-object v3, Lcom/tencent/mna/b/f/a;->d:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1539
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v2, Lcom/tencent/mna/base/c/a$a;->z:Lcom/tencent/mna/base/c/a$a;

    sget-object v3, Lcom/tencent/mna/b/f/a;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1540
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v2, Lcom/tencent/mna/base/c/a$a;->A:Lcom/tencent/mna/base/c/a$a;

    sget v3, Lcom/tencent/mna/b/f/a;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1541
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v2, Lcom/tencent/mna/base/c/a$a;->B:Lcom/tencent/mna/base/c/a$a;

    sget-object v3, Lcom/tencent/mna/b/f/a;->f:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1543
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v0

    .line 1544
    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v2

    .line 1545
    sget-object v3, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v4, Lcom/tencent/mna/base/c/a$a;->T:Lcom/tencent/mna/base/c/a$a;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1546
    invoke-static {}, Lcom/tencent/mna/base/a/a;->H()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1547
    invoke-static {}, Lcom/tencent/mna/base/f/j;->a()Lcom/tencent/mna/base/f/j$b;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/f/j;->b(Lcom/tencent/mna/base/f/j$b;)Ljava/lang/String;

    move-result-object v2

    .line 1548
    sget-object v3, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v4, Lcom/tencent/mna/base/c/a$a;->V:Lcom/tencent/mna/base/c/a$a;

    invoke-static {v3, v4, v2}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1550
    :cond_0
    invoke-static {v0}, Lcom/tencent/mna/base/f/n;->b(Landroid/content/Context;)[I

    move-result-object v2

    .line 1551
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 1552
    const/4 v3, 0x0

    aget v3, v2, v3

    .line 1553
    const/4 v4, 0x1

    aget v2, v2, v4

    .line 1554
    sget-object v4, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v5, Lcom/tencent/mna/base/c/a$a;->ac:Lcom/tencent/mna/base/c/a$a;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1555
    sget-object v3, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v4, Lcom/tencent/mna/base/c/a$a;->ac:Lcom/tencent/mna/base/c/a$a;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1558
    :cond_1
    sget-object v2, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v3, Lcom/tencent/mna/base/c/a$a;->aa:Lcom/tencent/mna/base/c/a$a;

    sget v4, Lcom/tencent/mna/a/b;->h:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1559
    sget-object v2, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v3, Lcom/tencent/mna/base/c/a$a;->ab:Lcom/tencent/mna/base/c/a$a;

    invoke-static {v0}, Lcom/tencent/mna/base/f/r;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1560
    sget-object v2, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v3, Lcom/tencent/mna/base/c/a$a;->W:Lcom/tencent/mna/base/c/a$a;

    invoke-static {v0}, Lcom/tencent/mna/base/f/m;->c(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1562
    invoke-static {v0}, Lcom/tencent/mna/base/f/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1563
    invoke-static {v0}, Lcom/tencent/mna/base/f/r;->k(Landroid/content/Context;)I

    move-result v3

    .line 1564
    invoke-static {v0}, Lcom/tencent/mna/base/f/r;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1565
    invoke-static {v0}, Lcom/tencent/mna/base/f/r;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1567
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1568
    sget-object v3, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v4, Lcom/tencent/mna/base/c/a$a;->X:Lcom/tencent/mna/base/c/a$a;

    invoke-static {v3, v4, v2}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1569
    sget-object v2, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v3, Lcom/tencent/mna/base/c/a$a;->Y:Lcom/tencent/mna/base/c/a$a;

    invoke-static {v0}, Lcom/tencent/mna/base/f/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1570
    invoke-static {}, Lcom/tencent/mna/base/f/g;->a()D

    move-result-wide v2

    .line 1571
    invoke-static {}, Lcom/tencent/mna/base/f/g;->b()D

    move-result-wide v4

    .line 1572
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v6, Lcom/tencent/mna/base/c/a$a;->ad:Lcom/tencent/mna/base/c/a$a;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v6, v2}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1573
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v2, Lcom/tencent/mna/base/c/a$a;->ae:Lcom/tencent/mna/base/c/a$a;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1575
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v2, Lcom/tencent/mna/base/c/a$a;->ag:Lcom/tencent/mna/base/c/a$a;

    invoke-static {}, Lcom/tencent/mna/base/f/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1578
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    invoke-virtual {v0}, Lcom/tencent/mna/base/c/a;->g()V

    .line 1579
    if-eqz p0, :cond_2

    .line 1581
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1586
    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    .line 1534
    :cond_3
    :try_start_1
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v2, Lcom/tencent/mna/base/c/a$a;->ao:Lcom/tencent/mna/base/c/a$a;

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1529
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1584
    :cond_4
    :try_start_2
    const-string v0, "doNormalPReport failed, reporter is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 584
    sget v0, Lcom/tencent/mna/b/a/b;->d:I

    return v0
.end method

.method public static declared-synchronized c(Z)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 736
    const-class v1, Lcom/tencent/mna/b/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/tencent/mna/b/a/b;->c:Lcom/tencent/mna/b/b/b;

    if-eqz v2, :cond_2

    .line 746
    sget-object v2, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    if-eqz v2, :cond_0

    .line 748
    sget-object v2, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    invoke-virtual {v2, p0}, Lcom/tencent/mna/b/a/d;->a(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 749
    const/16 v0, -0xb

    .line 764
    :goto_0
    monitor-exit v1

    return v0

    .line 753
    :cond_0
    if-eqz p0, :cond_1

    .line 754
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v2}, Lcom/tencent/mna/b/a/b;->c(I)V

    goto :goto_0

    .line 763
    :catch_0
    move-exception v0

    .line 764
    const/16 v0, -0xc

    goto :goto_0

    .line 757
    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/mna/b/a/b;->c(I)V

    .line 758
    const/4 v0, 0x0

    goto :goto_0

    .line 761
    :cond_2
    sget v0, Lcom/tencent/mna/b/a/c;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 736
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(I)V
    .locals 0

    .prologue
    .line 928
    sput p0, Lcom/tencent/mna/b/a/c;->b:I

    .line 930
    packed-switch p0, :pswitch_data_0

    .line 943
    :goto_0
    return-void

    .line 932
    :pswitch_0
    invoke-static {}, Lcom/tencent/mna/base/jni/e;->b()V

    goto :goto_0

    .line 935
    :pswitch_1
    invoke-static {}, Lcom/tencent/mna/base/jni/e;->c()V

    goto :goto_0

    .line 938
    :pswitch_2
    invoke-static {}, Lcom/tencent/mna/base/jni/e;->d()V

    goto :goto_0

    .line 930
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 996
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 997
    :cond_0
    const-string v1, "[N]\u6e38\u620fvip DNS\u5931\u8d25\uff0c\u4f20\u5165\u503c\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V

    .line 1040
    :goto_0
    return v0

    .line 1002
    :cond_1
    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1003
    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1004
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 1005
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1006
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/a/b;->b(Ljava/lang/String;)V

    .line 1012
    :cond_2
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1014
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 1024
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/a/b;->a(Ljava/lang/String;)V

    .line 1025
    invoke-static {v2}, Lcom/tencent/mna/a/b;->a(Ljava/util/List;)V

    .line 1027
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->a([Ljava/lang/String;)V

    .line 1029
    if-lez p1, :cond_4

    .line 1030
    invoke-static {p1}, Lcom/tencent/mna/a/b;->a(I)V

    .line 1031
    invoke-static {p1}, Lcom/tencent/mna/base/jni/e;->e(I)V

    .line 1035
    :cond_4
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    sget-object v3, Lcom/tencent/mna/base/c/a$a;->m:Lcom/tencent/mna/base/c/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mna/a/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mna/a/b;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/tencent/mna/b/a/b;->b(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[N]\u6e38\u620fvip DNS\u6210\u529f, domain:["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] to ip:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    move v0, v1

    .line 1037
    goto/16 :goto_0

    .line 1009
    :cond_5
    invoke-static {p0}, Lcom/tencent/mna/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1016
    :cond_6
    invoke-static {p0}, Lcom/tencent/mna/base/f/f;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1017
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1018
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 1039
    :cond_7
    const-string v1, "[N]\u6e38\u620fvip DNS\u5931\u8d25"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static d(I)V
    .locals 3

    .prologue
    .line 1088
    invoke-static {p0}, Lcom/tencent/mna/StartSpeedRet;->isSpeedSucceed(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    invoke-static {p0}, Lcom/tencent/mna/StartSpeedRet;->isNegotiateForwardTunnelSucceed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    sget-object v0, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    if-eqz v0, :cond_1

    .line 1092
    :try_start_0
    sget-object v0, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    invoke-interface {v0}, Lcom/tencent/mna/b/a/f;->a()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maybeReleaseForwardTunnel exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1097
    :cond_1
    const-string v0, "maybeReleaseForwardTunnel NullPointer exception: sAccelerator is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 593
    sget-boolean v0, Lcom/tencent/mna/b/a/c;->a:Z

    return v0
.end method

.method public static e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 612
    sput-boolean v1, Lcom/tencent/mna/b/a/c;->c:Z

    .line 613
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/base/c/a;Z)V

    .line 614
    return-void
.end method

.method public static f()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 622
    sput-boolean v1, Lcom/tencent/mna/b/a/c;->c:Z

    .line 623
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/base/c/a;Z)V

    .line 624
    return-void
.end method

.method public static g()V
    .locals 1

    .prologue
    .line 643
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mna/b/a/c;->d:Z

    .line 645
    new-instance v0, Lcom/tencent/mna/b/a/b$6;

    invoke-direct {v0}, Lcom/tencent/mna/b/a/b$6;-><init>()V

    invoke-static {v0}, Lcom/tencent/mna/a;->a(Ljava/lang/Runnable;)V

    .line 655
    return-void
.end method

.method public static h()V
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mna/b/a/c;->d:Z

    .line 665
    return-void
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 718
    sget-boolean v0, Lcom/tencent/mna/b/a/c;->c:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tencent/mna/b/a/c;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j()I
    .locals 1

    .prologue
    .line 727
    sget v0, Lcom/tencent/mna/b/a/c;->b:I

    return v0
.end method

.method public static k()Lcom/tencent/mna/b/a/f;
    .locals 1

    .prologue
    .line 909
    sget-object v0, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    return-object v0
.end method

.method public static l()Lcom/tencent/mna/b/a/d;
    .locals 1

    .prologue
    .line 918
    sget-object v0, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    return-object v0
.end method

.method public static m()Lcom/tencent/mna/b/b/b;
    .locals 1

    .prologue
    .line 1589
    sget-object v0, Lcom/tencent/mna/b/a/b;->c:Lcom/tencent/mna/b/b/b;

    return-object v0
.end method

.method static synthetic n()V
    .locals 0

    .prologue
    .line 61
    invoke-static {}, Lcom/tencent/mna/b/a/b;->y()V

    return-void
.end method

.method static synthetic o()Lcom/tencent/mna/base/c/a;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    return-object v0
.end method

.method static synthetic p()Lcom/tencent/mna/b/a/d;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    return-object v0
.end method

.method static synthetic q()V
    .locals 0

    .prologue
    .line 61
    invoke-static {}, Lcom/tencent/mna/b/a/b;->B()V

    return-void
.end method

.method static synthetic r()V
    .locals 0

    .prologue
    .line 61
    invoke-static {}, Lcom/tencent/mna/b/a/b;->A()V

    return-void
.end method

.method static synthetic s()Lcom/tencent/mna/b/a/f;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    return-object v0
.end method

.method static synthetic t()Z
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/tencent/mna/b/a/b;->w()Z

    move-result v0

    return v0
.end method

.method static synthetic u()Lcom/tencent/mna/b/b/b;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/tencent/mna/b/a/b;->c:Lcom/tencent/mna/b/b/b;

    return-object v0
.end method

.method static synthetic v()V
    .locals 0

    .prologue
    .line 61
    invoke-static {}, Lcom/tencent/mna/b/a/b;->x()V

    return-void
.end method

.method private static w()Z
    .locals 1

    .prologue
    .line 924
    sget-object v0, Lcom/tencent/mna/b/a/b;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mna/b/a/b;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mna/b/a/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static x()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1104
    invoke-static {v0}, Lcom/tencent/mna/b/a/b;->a(Z)V

    .line 1105
    invoke-static {v0}, Lcom/tencent/mna/b/a/b;->c(I)V

    .line 1106
    invoke-static {}, Lcom/tencent/mna/b/a/c;->c()V

    .line 1107
    invoke-static {}, Lcom/tencent/mna/b/a/a;->d()V

    .line 1108
    invoke-static {}, Lcom/tencent/mna/b/a/i;->a()V

    .line 1111
    invoke-static {}, Lcom/tencent/mna/a/b;->e()V

    .line 1113
    invoke-static {}, Lcom/tencent/mna/base/jni/e;->e()V

    .line 1115
    invoke-static {}, Lcom/tencent/mna/b/g/d;->a()V

    .line 1117
    invoke-static {}, Lcom/tencent/mna/b/f/a;->a()V

    .line 1118
    return-void
.end method

.method private static declared-synchronized y()V
    .locals 4

    .prologue
    .line 1145
    const-class v1, Lcom/tencent/mna/b/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/mna/b/a/b;->g:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mna/b/a/b;->h:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 1146
    const-string/jumbo v0, "stopTimerForStopMna"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    :try_start_1
    sget-object v0, Lcom/tencent/mna/b/a/b;->h:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1149
    sget-object v0, Lcom/tencent/mna/b/a/b;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 1150
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/b/a/b;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 1151
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/b/a/b;->g:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1156
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 1152
    :catch_0
    move-exception v0

    .line 1153
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopTimerForStopMna exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static z()Lcom/tencent/mna/b/a/b/b;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x3

    .line 1214
    invoke-static {}, Lcom/tencent/mna/base/a/a;->O()Ljava/lang/String;

    move-result-object v3

    .line 1215
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aC()I

    move-result v0

    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSpeedComparator xmlVer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", smart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 1221
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    if-eqz v1, :cond_3

    .line 1223
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v1

    .line 1224
    sget-object v2, Lcom/tencent/mna/b/a/b;->a:Lcom/tencent/mna/b/a/f;

    invoke-interface {v2}, Lcom/tencent/mna/b/a/f;->d()Ljava/lang/String;

    move-result-object v4

    .line 1226
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    if-eq v0, v7, :cond_0

    if-ne v0, v5, :cond_1

    .line 1227
    :cond_0
    const-string v0, "[N]\u9009\u8def\u7b97\u6cd5\uff1aLR"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 1228
    new-instance v0, Lcom/tencent/mna/b/a/b/d;

    sget-object v1, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    sget-object v2, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    .line 1229
    invoke-static {}, Lcom/tencent/mna/a/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/mna/base/a/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mna/b/a/b/d;-><init>(Lcom/tencent/mna/b/a/d;Lcom/tencent/mna/base/c/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1238
    :goto_0
    return-object v0

    .line 1230
    :cond_1
    if-ne v1, v5, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-ne v0, v5, :cond_3

    .line 1231
    :cond_2
    const-string v0, "[N]\u9009\u8def\u7b97\u6cd5\uff1aLR"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 1232
    new-instance v0, Lcom/tencent/mna/b/a/b/d;

    sget-object v1, Lcom/tencent/mna/b/a/b;->b:Lcom/tencent/mna/b/a/d;

    sget-object v2, Lcom/tencent/mna/b/a/b;->i:Lcom/tencent/mna/base/c/a;

    .line 1233
    invoke-static {}, Lcom/tencent/mna/a/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/mna/base/a/a;->c()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mna/b/a/b/d;-><init>(Lcom/tencent/mna/b/a/d;Lcom/tencent/mna/base/c/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1236
    :cond_3
    const-string v0, "[N]\u9009\u8def\u7b97\u6cd5\uff1aCommon"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 1238
    new-instance v0, Lcom/tencent/mna/b/a/b/a;

    invoke-static {}, Lcom/tencent/mna/base/a/a;->m()I

    move-result v1

    invoke-static {}, Lcom/tencent/mna/base/a/a;->n()I

    move-result v2

    .line 1239
    invoke-static {}, Lcom/tencent/mna/base/a/a;->o()I

    move-result v3

    invoke-static {}, Lcom/tencent/mna/base/a/a;->p()I

    move-result v4

    .line 1240
    invoke-static {}, Lcom/tencent/mna/base/a/a;->q()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/b/a/b/a;-><init>(IIIII)V

    goto :goto_0
.end method
