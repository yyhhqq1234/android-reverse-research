.class public Lcom/netease/download/downloadpart/TestProxy;
.super Ljava/lang/Object;
.source "TestProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "test"

.field private static sTestProxy:Lcom/netease/download/downloadpart/TestProxy;


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExecutorServiceQueueSize:I

.field private mExs:Ljava/util/concurrent/ExecutorService;

.field private mIndexHasSubmit:I

.field private mIndexhasResult:I

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/downloadpart/TestProxy;->sTestProxy:Lcom/netease/download/downloadpart/TestProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloadpart/TestProxy;->list:Ljava/util/ArrayList;

    .line 34
    iput v1, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    .line 36
    iput v1, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexhasResult:I

    .line 38
    iput v1, p0, Lcom/netease/download/downloadpart/TestProxy;->mStatus:I

    .line 40
    iput v2, p0, Lcom/netease/download/downloadpart/TestProxy;->mExecutorServiceQueueSize:I

    .line 42
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/downloadpart/TestProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloadpart/TestProxy;->mAl:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public static getInstance()Lcom/netease/download/downloadpart/TestProxy;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/netease/download/downloadpart/TestProxy;->sTestProxy:Lcom/netease/download/downloadpart/TestProxy;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/netease/download/downloadpart/TestProxy;

    invoke-direct {v0}, Lcom/netease/download/downloadpart/TestProxy;-><init>()V

    sput-object v0, Lcom/netease/download/downloadpart/TestProxy;->sTestProxy:Lcom/netease/download/downloadpart/TestProxy;

    .line 56
    :cond_0
    sget-object v0, Lcom/netease/download/downloadpart/TestProxy;->sTestProxy:Lcom/netease/download/downloadpart/TestProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/netease/download/downloadpart/TestProxy;->mStatus:I

    return v0
.end method

.method public init(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/netease/download/downloadpart/TestProxy;->list:Ljava/util/ArrayList;

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 65
    return-void

    .line 63
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    const-string v0, "test"

    const-string v1, "\u6062\u590d\u9ed8\u8ba4\u72b6\u6001"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput v2, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    .line 140
    iput v2, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexhasResult:I

    .line 141
    iput v2, p0, Lcom/netease/download/downloadpart/TestProxy;->mStatus:I

    .line 142
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "result":I
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mStatus="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/netease/download/downloadpart/TestProxy;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mStatus:I

    if-ne v3, v7, :cond_1

    .line 72
    const-string v3, "test"

    const-string v4, "\u7ebf\u7a0b\u6c60\u6b63\u5728\u8fdb\u884c\u4e2d"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    return-void

    .line 76
    :cond_1
    iput v7, p0, Lcom/netease/download/downloadpart/TestProxy;->mStatus:I

    .line 79
    iget-object v3, p0, Lcom/netease/download/downloadpart/TestProxy;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_3

    .line 80
    iput v8, p0, Lcom/netease/download/downloadpart/TestProxy;->mExecutorServiceQueueSize:I

    .line 86
    :goto_0
    iput v6, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    :goto_1
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    iget v4, p0, Lcom/netease/download/downloadpart/TestProxy;->mExecutorServiceQueueSize:I

    if-lt v3, v4, :cond_4

    .line 92
    :cond_2
    :goto_2
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexhasResult:I

    iget-object v4, p0, Lcom/netease/download/downloadpart/TestProxy;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 93
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7b2c"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexhasResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4e2a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :try_start_0
    iget-object v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mAl:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 96
    iget-object v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mAl:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 97
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "al\u7684\u5927\u5c0f="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/netease/download/downloadpart/TestProxy;->mAl:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexhasResult:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexhasResult:I

    .line 111
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    iget-object v4, p0, Lcom/netease/download/downloadpart/TestProxy;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 112
    new-instance v2, Lcom/netease/download/downloadpart/test;

    invoke-direct {v2}, Lcom/netease/download/downloadpart/test;-><init>()V

    .line 113
    .local v2, "test1":Lcom/netease/download/downloadpart/test;
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    invoke-virtual {v2, v3}, Lcom/netease/download/downloadpart/test;->init(I)V

    .line 114
    iget-object v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mAl:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/netease/download/downloadpart/TestProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    goto/16 :goto_2

    .line 82
    .end local v2    # "test1":Lcom/netease/download/downloadpart/test;
    :cond_3
    iget-object v3, p0, Lcom/netease/download/downloadpart/TestProxy;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mExecutorServiceQueueSize:I

    goto/16 :goto_0

    .line 87
    :cond_4
    new-instance v2, Lcom/netease/download/downloadpart/test;

    invoke-direct {v2}, Lcom/netease/download/downloadpart/test;-><init>()V

    .line 88
    .restart local v2    # "test1":Lcom/netease/download/downloadpart/test;
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    invoke-virtual {v2, v3}, Lcom/netease/download/downloadpart/test;->init(I)V

    .line 89
    iget-object v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mAl:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/netease/download/downloadpart/TestProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    goto/16 :goto_1

    .line 99
    .end local v2    # "test1":Lcom/netease/download/downloadpart/test;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "InterruptedException="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexhasResult:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexhasResult:I

    .line 111
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    iget-object v4, p0, Lcom/netease/download/downloadpart/TestProxy;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 112
    new-instance v2, Lcom/netease/download/downloadpart/test;

    invoke-direct {v2}, Lcom/netease/download/downloadpart/test;-><init>()V

    .line 113
    .restart local v2    # "test1":Lcom/netease/download/downloadpart/test;
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    invoke-virtual {v2, v3}, Lcom/netease/download/downloadpart/test;->init(I)V

    .line 114
    iget-object v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mAl:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/netease/download/downloadpart/TestProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    goto/16 :goto_2

    .line 102
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "test1":Lcom/netease/download/downloadpart/test;
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ExecutionException="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexhasResult:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexhasResult:I

    .line 111
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    iget-object v4, p0, Lcom/netease/download/downloadpart/TestProxy;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 112
    new-instance v2, Lcom/netease/download/downloadpart/test;

    invoke-direct {v2}, Lcom/netease/download/downloadpart/test;-><init>()V

    .line 113
    .restart local v2    # "test1":Lcom/netease/download/downloadpart/test;
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    invoke-virtual {v2, v3}, Lcom/netease/download/downloadpart/test;->init(I)V

    .line 114
    iget-object v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mAl:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/netease/download/downloadpart/TestProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    goto/16 :goto_2

    .line 105
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "test1":Lcom/netease/download/downloadpart/test;
    :catch_2
    move-exception v0

    .line 106
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    :try_start_3
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CancellationException="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexhasResult:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexhasResult:I

    .line 111
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    iget-object v4, p0, Lcom/netease/download/downloadpart/TestProxy;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 112
    new-instance v2, Lcom/netease/download/downloadpart/test;

    invoke-direct {v2}, Lcom/netease/download/downloadpart/test;-><init>()V

    .line 113
    .restart local v2    # "test1":Lcom/netease/download/downloadpart/test;
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    invoke-virtual {v2, v3}, Lcom/netease/download/downloadpart/test;->init(I)V

    .line 114
    iget-object v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mAl:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/netease/download/downloadpart/TestProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    goto/16 :goto_2

    .line 108
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    .end local v2    # "test1":Lcom/netease/download/downloadpart/test;
    :catchall_0
    move-exception v3

    .line 110
    iget v4, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexhasResult:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexhasResult:I

    .line 111
    iget v4, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    iget-object v5, p0, Lcom/netease/download/downloadpart/TestProxy;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 112
    new-instance v2, Lcom/netease/download/downloadpart/test;

    invoke-direct {v2}, Lcom/netease/download/downloadpart/test;-><init>()V

    .line 113
    .restart local v2    # "test1":Lcom/netease/download/downloadpart/test;
    iget v4, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    invoke-virtual {v2, v4}, Lcom/netease/download/downloadpart/test;->init(I)V

    .line 114
    iget-object v4, p0, Lcom/netease/download/downloadpart/TestProxy;->mAl:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/netease/download/downloadpart/TestProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget v4, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/netease/download/downloadpart/TestProxy;->mIndexHasSubmit:I

    .line 117
    .end local v2    # "test1":Lcom/netease/download/downloadpart/test;
    :cond_5
    throw v3
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 122
    iget v0, p0, Lcom/netease/download/downloadpart/TestProxy;->mStatus:I

    if-ne v0, v2, :cond_0

    .line 123
    const-string v0, "test"

    const-string v1, "\u5f53\u524d\u5df2\u5904\u4e8e\u505c\u6b62\u72b6\u6001"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v0, "test"

    const-string v1, "\u89e6\u53d1\u505c\u6b62\u72b6\u6001"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput v2, p0, Lcom/netease/download/downloadpart/TestProxy;->mStatus:I

    goto :goto_0
.end method
