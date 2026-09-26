.class final Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/chmv8/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WorkQueue"
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field static final INITIAL_QUEUE_CAPACITY:I = 0x2000

.field static final MAXIMUM_QUEUE_CAPACITY:I = 0x4000000

.field private static final QBASE:J

.field private static final QLOCK:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field array:[Lio/netty/util/internal/chmv8/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile base:I

.field volatile currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile eventCount:I

.field hint:I

.field final mode:S

.field nextWait:I

.field nsteals:I

.field final owner:Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

.field volatile pad00:J

.field volatile pad01:J

.field volatile pad02:J

.field volatile pad03:J

.field volatile pad04:J

.field volatile pad05:J

.field volatile pad06:J

.field volatile pad10:Ljava/lang/Object;

.field volatile pad11:Ljava/lang/Object;

.field volatile pad12:Ljava/lang/Object;

.field volatile pad13:Ljava/lang/Object;

.field volatile pad14:Ljava/lang/Object;

.field volatile pad15:Ljava/lang/Object;

.field volatile pad16:Ljava/lang/Object;

.field volatile pad17:Ljava/lang/Object;

.field volatile pad18:Ljava/lang/Object;

.field volatile pad19:Ljava/lang/Object;

.field volatile pad1a:Ljava/lang/Object;

.field volatile pad1b:Ljava/lang/Object;

.field volatile pad1c:Ljava/lang/Object;

.field volatile pad1d:Ljava/lang/Object;

.field volatile parker:Ljava/lang/Thread;

.field final pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

.field poolIndex:S

.field volatile qlock:I

.field top:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 1055
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->access$000()Lsun/misc/Unsafe;

    move-result-object v4

    sput-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1056
    const-class v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .line 1057
    .local v2, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, [Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 1058
    .local v0, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-string v5, "base"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->QBASE:J

    .line 1060
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-string v5, "qlock"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->QLOCK:J

    .line 1062
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v4

    sput v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    .line 1063
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v3

    .line 1064
    .local v3, "scale":I
    add-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 1065
    new-instance v4, Ljava/lang/Error;

    const-string v5, "data type scale not a power of two"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    .end local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "scale":I
    :catch_0
    move-exception v1

    .line 1068
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1066
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "scale":I
    :cond_0
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1f

    sput v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1070
    return-void
.end method

.method constructor <init>(Lio/netty/util/internal/chmv8/ForkJoinPool;Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;II)V
    .locals 1
    .param p1, "pool"    # Lio/netty/util/internal/chmv8/ForkJoinPool;
    .param p2, "owner"    # Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    .param p3, "mode"    # I
    .param p4, "seed"    # I

    .prologue
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    .line 677
    iput-object p2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->owner:Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .line 678
    int-to-short v0, p3

    iput-short v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->mode:S

    .line 679
    iput p4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->hint:I

    .line 681
    const/16 v0, 0x1000

    iput v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    iput v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    .line 682
    return-void
.end method


# virtual methods
.method final cancelAll()V
    .locals 2

    .prologue
    .line 855
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    invoke-static {v1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->cancelIgnoringExceptions(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    .line 856
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    invoke-static {v1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->cancelIgnoringExceptions(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    .line 857
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poll()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    .local v0, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    .line 858
    invoke-static {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->cancelIgnoringExceptions(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    goto :goto_0

    .line 859
    :cond_0
    return-void
.end method

.method final externalPopAndExecCC(Lio/netty/util/internal/chmv8/CountedCompleter;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/CountedCompleter",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 986
    .local p1, "root":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v11, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .local v11, "s":I
    sub-int/2addr v0, v11

    if-gez v0, :cond_4

    iget-object v6, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v6, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v6, :cond_4

    .line 987
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v11, -0x1

    and-int/2addr v0, v1

    sget v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v1

    sget v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v1

    int-to-long v8, v0

    .line 988
    .local v8, "j":J
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v6, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .local v7, "o":Ljava/lang/Object;
    instance-of v0, v7, Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v0, :cond_4

    move-object v12, v7

    .line 989
    check-cast v12, Lio/netty/util/internal/chmv8/CountedCompleter;

    .local v12, "t":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    move-object v10, v12

    .line 990
    .local v10, "r":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    :cond_0
    if-ne v10, p1, :cond_3

    .line 991
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->QLOCK:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v11, :cond_2

    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-ne v0, v6, :cond_2

    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-object v1, v6

    move-wide v2, v8

    move-object v4, v12

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 994
    add-int/lit8 v0, v11, -0x1

    iput v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .line 995
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    .line 996
    invoke-virtual {v12}, Lio/netty/util/internal/chmv8/CountedCompleter;->doExec()I

    .line 1001
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1008
    .end local v6    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "j":J
    .end local v10    # "r":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    .end local v12    # "t":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    :goto_1
    return v0

    .line 999
    .restart local v6    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .restart local v7    # "o":Ljava/lang/Object;
    .restart local v8    # "j":J
    .restart local v10    # "r":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    .restart local v12    # "t":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    goto :goto_0

    .line 1003
    :cond_3
    iget-object v10, v10, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    if-nez v10, :cond_0

    .line 1008
    .end local v6    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "j":J
    .end local v10    # "r":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    .end local v12    # "t":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final growArray()[Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 734
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 735
    .local v1, "oldA":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    array-length v0, v1

    shl-int/lit8 v12, v0, 0x1

    .line 736
    .local v12, "size":I
    :goto_0
    const/high16 v0, 0x4000000

    if-le v12, v0, :cond_1

    .line 737
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v2, "Queue capacity exceeded"

    invoke-direct {v0, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    .end local v12    # "size":I
    :cond_0
    const/16 v12, 0x2000

    goto :goto_0

    .line 739
    .restart local v12    # "size":I
    :cond_1
    new-array v6, v12, [Lio/netty/util/internal/chmv8/ForkJoinTask;

    iput-object v6, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 740
    .local v6, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v1, :cond_4

    array-length v0, v1

    add-int/lit8 v10, v0, -0x1

    .local v10, "oldMask":I
    if-ltz v10, :cond_4

    iget v13, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .local v13, "t":I
    iget v7, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    .local v7, "b":I
    sub-int v0, v13, v7

    if-lez v0, :cond_4

    .line 742
    add-int/lit8 v9, v12, -0x1

    .line 745
    .local v9, "mask":I
    :cond_2
    and-int v0, v7, v10

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v11, v0, v2

    .line 746
    .local v11, "oldj":I
    and-int v0, v7, v9

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v8, v0, v2

    .line 747
    .local v8, "j":I
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v11

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 748
    .local v4, "x":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v4, :cond_3

    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 750
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v8

    invoke-virtual {v0, v6, v2, v3, v4}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 751
    :cond_3
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v13, :cond_2

    .line 753
    .end local v4    # "x":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v7    # "b":I
    .end local v8    # "j":I
    .end local v9    # "mask":I
    .end local v10    # "oldMask":I
    .end local v11    # "oldj":I
    .end local v13    # "t":I
    :cond_4
    return-object v6
.end method

.method final internalPopAndExecCC(Lio/netty/util/internal/chmv8/CountedCompleter;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/CountedCompleter",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1016
    .local p1, "root":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v8, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .local v8, "s":I
    sub-int/2addr v0, v8

    if-gez v0, :cond_3

    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v1, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v1, :cond_3

    .line 1017
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v8, -0x1

    and-int/2addr v0, v5

    sget v5, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v5

    sget v5, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v5

    int-to-long v2, v0

    .line 1018
    .local v2, "j":J
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .local v6, "o":Ljava/lang/Object;
    instance-of v0, v6, Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v0, :cond_3

    move-object v4, v6

    .line 1019
    check-cast v4, Lio/netty/util/internal/chmv8/CountedCompleter;

    .local v4, "t":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    move-object v7, v4

    .line 1020
    .local v7, "r":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    :cond_0
    if-ne v7, p1, :cond_2

    .line 1021
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    add-int/lit8 v0, v8, -0x1

    iput v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .line 1023
    invoke-virtual {v4}, Lio/netty/util/internal/chmv8/CountedCompleter;->doExec()I

    .line 1025
    :cond_1
    const/4 v0, 0x1

    .line 1032
    .end local v1    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v4    # "t":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "r":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    :goto_0
    return v0

    .line 1027
    .restart local v1    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .restart local v2    # "j":J
    .restart local v4    # "t":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    .restart local v6    # "o":Ljava/lang/Object;
    .restart local v7    # "r":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    :cond_2
    iget-object v7, v7, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    if-nez v7, :cond_0

    .line 1032
    .end local v1    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v4    # "t":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "r":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isApparentlyUnblocked()Z
    .locals 3

    .prologue
    .line 1040
    iget v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    if-ltz v2, :cond_0

    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->owner:Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .local v1, "wt":Ljava/lang/Thread;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    .local v0, "s":Ljava/lang/Thread$State;
    sget-object v2, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    .end local v0    # "s":Ljava/lang/Thread$State;
    .end local v1    # "wt":Ljava/lang/Thread;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final isEmpty()Z
    .locals 10

    .prologue
    .line 699
    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v3, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .local v3, "s":I
    sub-int v2, v4, v3

    .line 700
    .local v2, "n":I
    if-gez v2, :cond_0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v0, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    array-length v4, v0

    add-int/lit8 v1, v4, -0x1

    .local v1, "m":I
    if-ltz v1, :cond_0

    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    add-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    sget v6, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v5, v6

    int-to-long v6, v5

    sget v5, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    invoke-virtual {v4, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .end local v0    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v1    # "m":I
    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method final nextLocalTask()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 821
    iget-short v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->mode:S

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pop()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poll()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    goto :goto_0
.end method

.method final peek()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 828
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 829
    .local v0, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    array-length v4, v0

    add-int/lit8 v3, v4, -0x1

    .local v3, "m":I
    if-gez v3, :cond_1

    .line 830
    .end local v3    # "m":I
    :cond_0
    const/4 v4, 0x0

    .line 833
    :goto_0
    return-object v4

    .line 831
    .restart local v3    # "m":I
    :cond_1
    iget-short v4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->mode:S

    if-nez v4, :cond_2

    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v1, v4, -0x1

    .line 832
    .local v1, "i":I
    :goto_1
    and-int v4, v1, v3

    sget v5, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v4, v5

    sget v5, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v2, v4, v5

    .line 833
    .local v2, "j":I
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v6, v2

    invoke-virtual {v4, v0, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/util/internal/chmv8/ForkJoinTask;

    goto :goto_0

    .line 831
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_2
    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    goto :goto_1
.end method

.method final poll()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 799
    :cond_0
    :goto_0
    iget v6, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    .local v6, "b":I
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int v0, v6, v0

    if-gez v0, :cond_2

    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v1, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v1, :cond_2

    .line 800
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v6

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v7, v0, v2

    .line 801
    .local v7, "j":I
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 802
    .local v4, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v4, :cond_1

    .line 803
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v7

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->QBASE:J

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v0, p0, v2, v3, v5}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 814
    .end local v1    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v4    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v7    # "j":I
    :goto_1
    return-object v4

    .line 808
    .restart local v1    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .restart local v4    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .restart local v7    # "j":I
    :cond_1
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_0

    .line 809
    add-int/lit8 v0, v6, 0x1

    iget v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v2, :cond_3

    .end local v1    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v4    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v7    # "j":I
    :cond_2
    move-object v4, v5

    .line 814
    goto :goto_1

    .line 811
    .restart local v1    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .restart local v4    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .restart local v7    # "j":I
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method final pollAndExecAll()V
    .locals 1

    .prologue
    .line 867
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poll()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    .local v0, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 869
    :cond_0
    return-void
.end method

.method final pollAndExecCC(Lio/netty/util/internal/chmv8/CountedCompleter;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/CountedCompleter",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "root":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    const/4 v9, 0x1

    .line 958
    iget v6, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    .local v6, "b":I
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int v0, v6, v0

    if-gez v0, :cond_4

    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v1, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v1, :cond_4

    .line 959
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v6

    sget v5, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v5

    sget v5, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v5

    int-to-long v2, v0

    .line 960
    .local v2, "j":J
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .local v7, "o":Ljava/lang/Object;
    if-nez v7, :cond_0

    move v0, v9

    .line 977
    .end local v1    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v7    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 962
    .restart local v1    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .restart local v2    # "j":J
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, v7, Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v0, :cond_4

    move-object v4, v7

    .line 963
    check-cast v4, Lio/netty/util/internal/chmv8/CountedCompleter;

    .local v4, "t":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    move-object v8, v4

    .line 964
    .local v8, "r":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    :cond_1
    if-ne v8, p1, :cond_3

    .line 965
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_2

    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 967
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v10, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->QBASE:J

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v0, p0, v10, v11, v5}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 968
    invoke-virtual {v4}, Lio/netty/util/internal/chmv8/CountedCompleter;->doExec()I

    :cond_2
    move v0, v9

    .line 970
    goto :goto_0

    .line 972
    :cond_3
    iget-object v8, v8, Lio/netty/util/internal/chmv8/CountedCompleter;->completer:Lio/netty/util/internal/chmv8/CountedCompleter;

    if-nez v8, :cond_1

    .line 977
    .end local v1    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v4    # "t":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "r":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final pollAt(I)Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 7
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 783
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v1, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    .line 784
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v6, v0, v2

    .line 785
    .local v6, "j":I
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v4, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v4, :cond_0

    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, p1, :cond_0

    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->QBASE:J

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v0, p0, v2, v3, v5}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 791
    .end local v4    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v6    # "j":I
    :goto_0
    return-object v4

    :cond_0
    move-object v4, v5

    goto :goto_0
.end method

.method final pop()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 762
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v1, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    array-length v0, v1

    add-int/lit8 v6, v0, -0x1

    .local v6, "m":I
    if-ltz v6, :cond_1

    .line 763
    :cond_0
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v7, v0, -0x1

    .local v7, "s":I
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    sub-int v0, v7, v0

    if-ltz v0, :cond_1

    .line 764
    and-int v0, v6, v7

    sget v8, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v8

    sget v8, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v8

    int-to-long v2, v0

    .line 765
    .local v2, "j":J
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v4, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-nez v4, :cond_2

    .end local v2    # "j":J
    .end local v4    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v6    # "m":I
    .end local v7    # "s":I
    :cond_1
    move-object v4, v5

    .line 773
    :goto_0
    return-object v4

    .line 767
    .restart local v2    # "j":J
    .restart local v4    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .restart local v6    # "m":I
    .restart local v7    # "s":I
    :cond_2
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iput v7, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    goto :goto_0
.end method

.method final push(Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 717
    .local p1, "task":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .line 718
    .local v4, "s":I
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v0, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    .line 719
    array-length v5, v0

    add-int/lit8 v1, v5, -0x1

    .line 720
    .local v1, "m":I
    sget-object v5, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    and-int v6, v1, v4

    sget v7, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v6, v7

    sget v7, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual {v5, v0, v6, v7, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 721
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    iget v6, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    sub-int v2, v5, v6

    .local v2, "n":I
    const/4 v5, 0x2

    if-gt v2, v5, :cond_1

    .line 722
    iget-object v3, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    .local v3, "p":Lio/netty/util/internal/chmv8/ForkJoinPool;
    iget-object v5, v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {v3, v5, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->signalWork([Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V

    .line 726
    .end local v1    # "m":I
    .end local v2    # "n":I
    .end local v3    # "p":Lio/netty/util/internal/chmv8/ForkJoinPool;
    :cond_0
    :goto_0
    return-void

    .line 723
    .restart local v1    # "m":I
    .restart local v2    # "n":I
    :cond_1
    if-lt v2, v1, :cond_0

    .line 724
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->growArray()[Lio/netty/util/internal/chmv8/ForkJoinTask;

    goto :goto_0
.end method

.method final queueSize()I
    .locals 3

    .prologue
    .line 688
    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int v0, v1, v2

    .line 689
    .local v0, "n":I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    neg-int v1, v0

    goto :goto_0
.end method

.method final runTask(Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "task":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    const/4 v5, 0x0

    .line 876
    iput-object p1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz p1, :cond_0

    .line 877
    invoke-virtual {p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    .line 878
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 879
    .local v1, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    iget-short v7, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->mode:S

    .line 880
    .local v7, "md":I
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nsteals:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nsteals:I

    .line 881
    iput-object v5, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 882
    if-eqz v7, :cond_1

    .line 883
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pollAndExecAll()V

    .line 898
    .end local v1    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v7    # "md":I
    :cond_0
    return-void

    .line 884
    .restart local v1    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .restart local v7    # "md":I
    :cond_1
    if-eqz v1, :cond_0

    .line 885
    array-length v0, v1

    add-int/lit8 v6, v0, -0x1

    .line 886
    .local v6, "m":I
    :cond_2
    :goto_0
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v8, v0, -0x1

    .local v8, "s":I
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    sub-int v0, v8, v0

    if-ltz v0, :cond_0

    .line 887
    and-int v0, v6, v8

    sget v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v9

    sget v9, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v9

    int-to-long v2, v0

    .line 888
    .local v2, "i":J
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 889
    .local v4, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v4, :cond_0

    .line 891
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 892
    iput v8, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .line 893
    invoke-virtual {v4}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    goto :goto_0
.end method

.method final tryRemoveAndExec(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "task":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    const/4 v5, 0x0

    .line 910
    if-eqz p1, :cond_8

    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v1, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v1, :cond_8

    array-length v0, v1

    add-int/lit8 v8, v0, -0x1

    .local v8, "m":I
    if-ltz v8, :cond_8

    iget v11, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .local v11, "s":I
    iget v6, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    .local v6, "b":I
    sub-int v9, v11, v6

    .local v9, "n":I
    if-lez v9, :cond_8

    .line 912
    const/4 v10, 0x0

    .local v10, "removed":Z
    const/4 v7, 0x1

    .line 913
    .local v7, "empty":Z
    const/4 v12, 0x1

    .line 915
    .local v12, "stat":Z
    :cond_0
    add-int/lit8 v11, v11, -0x1

    and-int v0, v11, v8

    sget v13, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v13

    sget v13, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v13

    int-to-long v2, v0

    .line 916
    .local v2, "j":J
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 917
    .local v4, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-nez v4, :cond_3

    .line 944
    .end local v4    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 945
    invoke-virtual {p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    .line 949
    .end local v1    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v6    # "b":I
    .end local v7    # "empty":Z
    .end local v8    # "m":I
    .end local v9    # "n":I
    .end local v10    # "removed":Z
    .end local v11    # "s":I
    :cond_2
    :goto_1
    return v12

    .line 919
    .restart local v1    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .restart local v2    # "j":J
    .restart local v4    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .restart local v6    # "b":I
    .restart local v7    # "empty":Z
    .restart local v8    # "m":I
    .restart local v9    # "n":I
    .restart local v10    # "removed":Z
    .restart local v11    # "s":I
    :cond_3
    if-ne v4, p1, :cond_5

    .line 920
    add-int/lit8 v0, v11, 0x1

    iget v13, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v13, :cond_4

    .line 921
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .end local v4    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    move-result v0

    if-eqz v0, :cond_1

    .line 923
    iput v11, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .line 924
    const/4 v10, 0x1

    goto :goto_0

    .line 926
    .restart local v4    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :cond_4
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_1

    .line 927
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    new-instance v5, Lio/netty/util/internal/chmv8/ForkJoinPool$EmptyTask;

    invoke-direct {v5}, Lio/netty/util/internal/chmv8/ForkJoinPool$EmptyTask;-><init>()V

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .end local v4    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    move-result v10

    goto :goto_0

    .line 931
    .restart local v4    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :cond_5
    iget v0, v4, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v0, :cond_7

    .line 932
    const/4 v7, 0x0

    .line 938
    :cond_6
    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_0

    .line 939
    if-nez v7, :cond_1

    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_1

    .line 940
    const/4 v12, 0x0

    goto :goto_0

    .line 933
    :cond_7
    add-int/lit8 v0, v11, 0x1

    iget v13, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v13, :cond_6

    .line 934
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 935
    iput v11, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    goto :goto_0

    .line 948
    .end local v1    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v4    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v6    # "b":I
    .end local v7    # "empty":Z
    .end local v8    # "m":I
    .end local v9    # "n":I
    .end local v10    # "removed":Z
    .end local v11    # "s":I
    .end local v12    # "stat":Z
    :cond_8
    const/4 v12, 0x0

    .restart local v12    # "stat":Z
    goto :goto_1
.end method

.method final tryUnpush(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 842
    .local p1, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    iget-object v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v1, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    iget v6, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .local v6, "s":I
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    if-eq v6, v0, :cond_0

    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v2, v6

    sget v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v2, v3

    sget v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    iput v6, p0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .line 846
    const/4 v0, 0x1

    .line 848
    .end local v6    # "s":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
