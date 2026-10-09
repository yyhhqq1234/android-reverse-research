.class public Lcom/oppo/oms/sdk/Util/ThreadExecutor;
.super Ljava/lang/Object;
.source "ThreadExecutor.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final KEEP_ALIVE_TIME:I = 0x3c

.field private static final MAX_POOL_SIZE:I = 0x7fffffff

.field private static final TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sThreadExecutor:Lcom/oppo/oms/sdk/Util/ThreadExecutor;


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/oppo/oms/sdk/Util/ThreadExecutor;->CORE_POOL_SIZE:I

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/oppo/oms/sdk/Util/ThreadExecutor;->TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 27
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/oppo/oms/sdk/Util/ThreadExecutor;->WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/oppo/oms/sdk/Util/ThreadExecutor;->CORE_POOL_SIZE:I

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Lcom/oppo/oms/sdk/Util/ThreadExecutor;->TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/oppo/oms/sdk/Util/ThreadExecutor;->WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/oppo/oms/sdk/Util/ThreadExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/oppo/oms/sdk/Util/ThreadExecutor;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oppo/oms/sdk/Util/ThreadExecutor;->sThreadExecutor:Lcom/oppo/oms/sdk/Util/ThreadExecutor;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/oppo/oms/sdk/Util/ThreadExecutor;

    invoke-direct {v0}, Lcom/oppo/oms/sdk/Util/ThreadExecutor;-><init>()V

    sput-object v0, Lcom/oppo/oms/sdk/Util/ThreadExecutor;->sThreadExecutor:Lcom/oppo/oms/sdk/Util/ThreadExecutor;

    .line 45
    :cond_0
    sget-object v0, Lcom/oppo/oms/sdk/Util/ThreadExecutor;->sThreadExecutor:Lcom/oppo/oms/sdk/Util/ThreadExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oppo/oms/sdk/Util/ThreadExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/oppo/oms/sdk/Util/ThreadExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    :cond_0
    return-void
.end method
