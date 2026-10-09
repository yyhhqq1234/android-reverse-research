.class Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;
.super Lcom/tencent/component/utils/thread/ThreadPool$Worker;
.source "ThreadPool.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/thread/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PriorityWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/component/utils/thread/ThreadPool$Worker",
        "<TT;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFilo:Z

.field private final mPriority:I

.field private final mSeqNum:J

.field final synthetic this$0:Lcom/tencent/component/utils/thread/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/tencent/component/utils/thread/ThreadPool;Lcom/tencent/component/utils/thread/ThreadPool$Job;Lcom/tencent/component/utils/thread/FutureListener;IZ)V
    .locals 2
    .param p4, "priority"    # I
    .param p5, "filo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/component/utils/thread/ThreadPool$Job",
            "<TT;>;",
            "Lcom/tencent/component/utils/thread/FutureListener",
            "<TT;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;, "Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker<TT;>;"
    .local p2, "job":Lcom/tencent/component/utils/thread/ThreadPool$Job;, "Lcom/tencent/component/utils/thread/ThreadPool$Job<TT;>;"
    .local p3, "listener":Lcom/tencent/component/utils/thread/FutureListener;, "Lcom/tencent/component/utils/thread/FutureListener<TT;>;"
    iput-object p1, p0, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;->this$0:Lcom/tencent/component/utils/thread/ThreadPool;

    .line 336
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/component/utils/thread/ThreadPool$Worker;-><init>(Lcom/tencent/component/utils/thread/ThreadPool;Lcom/tencent/component/utils/thread/ThreadPool$Job;Lcom/tencent/component/utils/thread/FutureListener;)V

    .line 337
    iput p4, p0, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;->mPriority:I

    .line 338
    iput-boolean p5, p0, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;->mFilo:Z

    .line 339
    sget-object v0, Lcom/tencent/component/utils/thread/ThreadPool;->SEQ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;->mSeqNum:J

    .line 340
    return-void
.end method

.method private subCompareTo(Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;)I
    .locals 6
    .param p1, "another"    # Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;

    .prologue
    .line 348
    .local p0, "this":Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;, "Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker<TT;>;"
    iget-wide v2, p0, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;->mSeqNum:J

    iget-wide v4, p1, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;->mSeqNum:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const/4 v0, -0x1

    .line 349
    .local v0, "result":I
    :goto_0
    iget-boolean v1, p0, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;->mFilo:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    .end local v0    # "result":I
    :cond_0
    return v0

    .line 348
    :cond_1
    iget-wide v2, p0, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;->mSeqNum:J

    iget-wide v4, p1, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;->mSeqNum:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;)I
    .locals 2
    .param p1, "another"    # Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;

    .prologue
    .line 344
    .local p0, "this":Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;, "Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker<TT;>;"
    iget v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;->mPriority:I

    iget v1, p1, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;->mPriority:I

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;->mPriority:I

    iget v1, p1, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;->mPriority:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;->subCompareTo(Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 318
    .local p0, "this":Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;, "Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker<TT;>;"
    check-cast p1, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;

    invoke-virtual {p0, p1}, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;->compareTo(Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;)I

    move-result v0

    return v0
.end method
