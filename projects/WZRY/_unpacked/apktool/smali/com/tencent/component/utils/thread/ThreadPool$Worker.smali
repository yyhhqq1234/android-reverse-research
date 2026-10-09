.class Lcom/tencent/component/utils/thread/ThreadPool$Worker;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/tencent/component/utils/thread/Future;
.implements Lcom/tencent/component/utils/thread/ThreadPool$JobContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/thread/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/tencent/component/utils/thread/Future",
        "<TT;>;",
        "Lcom/tencent/component/utils/thread/ThreadPool$JobContext;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Worker"


# instance fields
.field private mCancelListener:Lcom/tencent/component/utils/thread/Future$CancelListener;

.field private volatile mIsCancelled:Z

.field private mIsDone:Z

.field private mJob:Lcom/tencent/component/utils/thread/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/component/utils/thread/ThreadPool$Job",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/tencent/component/utils/thread/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/component/utils/thread/FutureListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mMode:I

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mWaitOnResource:Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

.field final synthetic this$0:Lcom/tencent/component/utils/thread/ThreadPool;


# direct methods
.method public constructor <init>(Lcom/tencent/component/utils/thread/ThreadPool;Lcom/tencent/component/utils/thread/ThreadPool$Job;Lcom/tencent/component/utils/thread/FutureListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/component/utils/thread/ThreadPool$Job",
            "<TT;>;",
            "Lcom/tencent/component/utils/thread/FutureListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    .local p2, "job":Lcom/tencent/component/utils/thread/ThreadPool$Job;, "Lcom/tencent/component/utils/thread/ThreadPool$Job<TT;>;"
    .local p3, "listener":Lcom/tencent/component/utils/thread/FutureListener;, "Lcom/tencent/component/utils/thread/FutureListener<TT;>;"
    iput-object p1, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->this$0:Lcom/tencent/component/utils/thread/ThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p2, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mJob:Lcom/tencent/component/utils/thread/ThreadPool$Job;

    .line 170
    iput-object p3, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mListener:Lcom/tencent/component/utils/thread/FutureListener;

    .line 171
    return-void
.end method

.method private acquireResource(Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;)Z
    .locals 1
    .param p1, "counter"    # Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    .prologue
    .line 279
    .local p0, "this":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    :goto_0
    monitor-enter p0

    .line 280
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mWaitOnResource:Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    .line 282
    const/4 v0, 0x0

    monitor-exit p0

    .line 305
    :goto_1
    return v0

    .line 284
    :cond_0
    iput-object p1, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mWaitOnResource:Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    .line 285
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-enter p1

    .line 288
    :try_start_1
    iget v0, p1, Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;->value:I

    if-lez v0, :cond_1

    .line 289
    iget v0, p1, Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;->value:I

    .line 290
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 301
    monitor-enter p0

    .line 302
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mWaitOnResource:Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    .line 303
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 305
    const/4 v0, 0x1

    goto :goto_1

    .line 285
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 293
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 298
    :goto_2
    :try_start_5
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 303
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 294
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private modeToCounter(I)Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 268
    .local p0, "this":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->this$0:Lcom/tencent/component/utils/thread/ThreadPool;

    iget-object v0, v0, Lcom/tencent/component/utils/thread/ThreadPool;->mCpuCounter:Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    .line 273
    :goto_0
    return-object v0

    .line 270
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->this$0:Lcom/tencent/component/utils/thread/ThreadPool;

    iget-object v0, v0, Lcom/tencent/component/utils/thread/ThreadPool;->mNetworkCounter:Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    goto :goto_0

    .line 273
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseResource(Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;)V
    .locals 1
    .param p1, "counter"    # Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    .prologue
    .line 309
    .local p0, "this":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    monitor-enter p1

    .line 310
    :try_start_0
    iget v0, p1, Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;->value:I

    .line 311
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 312
    monitor-exit p1

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 202
    .local p0, "this":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 204
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mIsCancelled:Z

    .line 205
    iget-object v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mWaitOnResource:Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    if-eqz v0, :cond_2

    .line 206
    iget-object v1, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mWaitOnResource:Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :try_start_2
    iget-object v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mWaitOnResource:Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 208
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 210
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mCancelListener:Lcom/tencent/component/utils/thread/Future$CancelListener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mCancelListener:Lcom/tencent/component/utils/thread/Future$CancelListener;

    invoke-interface {v0}, Lcom/tencent/component/utils/thread/Future$CancelListener;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 226
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "Worker"

    const-string v2, "ignore exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 224
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 232
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mResult:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    iget-boolean v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mIsCancelled:Z

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 220
    .local p0, "this":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    const/4 v3, 0x1

    .line 175
    iget-object v2, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mListener:Lcom/tencent/component/utils/thread/FutureListener;

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mListener:Lcom/tencent/component/utils/thread/FutureListener;

    invoke-interface {v2, p0}, Lcom/tencent/component/utils/thread/FutureListener;->onFutureBegin(Lcom/tencent/component/utils/thread/Future;)V

    .line 178
    :cond_0
    const/4 v1, 0x0

    .line 182
    .local v1, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v3}, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->setMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mJob:Lcom/tencent/component/utils/thread/ThreadPool$Job;

    invoke-interface {v2, p0}, Lcom/tencent/component/utils/thread/ThreadPool$Job;->run(Lcom/tencent/component/utils/thread/ThreadPool$JobContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 190
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_0
    monitor-enter p0

    .line 191
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->setMode(I)Z

    .line 192
    iput-object v1, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mResult:Ljava/lang/Object;

    .line 193
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mIsDone:Z

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 195
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    iget-object v2, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mListener:Lcom/tencent/component/utils/thread/FutureListener;

    if-eqz v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mListener:Lcom/tencent/component/utils/thread/FutureListener;

    invoke-interface {v2, p0}, Lcom/tencent/component/utils/thread/FutureListener;->onFutureDone(Lcom/tencent/component/utils/thread/Future;)V

    .line 198
    :cond_2
    return-void

    .line 185
    .restart local v1    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 186
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "Worker"

    const-string v3, "Exception in running a job"

    invoke-static {v2, v3, v0}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 195
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public declared-synchronized setCancelListener(Lcom/tencent/component/utils/thread/Future$CancelListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/component/utils/thread/Future$CancelListener;

    .prologue
    .line 242
    .local p0, "this":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mCancelListener:Lcom/tencent/component/utils/thread/Future$CancelListener;

    .line 243
    iget-boolean v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mIsCancelled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mCancelListener:Lcom/tencent/component/utils/thread/Future$CancelListener;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mCancelListener:Lcom/tencent/component/utils/thread/Future$CancelListener;

    invoke-interface {v0}, Lcom/tencent/component/utils/thread/Future$CancelListener;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_0
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .local p0, "this":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    const/4 v1, 0x0

    .line 250
    iget v2, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mMode:I

    invoke-direct {p0, v2}, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->modeToCounter(I)Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    move-result-object v0

    .line 251
    .local v0, "rc":Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;
    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0, v0}, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->releaseResource(Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;)V

    .line 253
    :cond_0
    iput v1, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mMode:I

    .line 256
    invoke-direct {p0, p1}, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->modeToCounter(I)Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_2

    .line 258
    invoke-direct {p0, v0}, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->acquireResource(Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    :goto_0
    return v1

    .line 261
    :cond_1
    iput p1, p0, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->mMode:I

    .line 264
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public waitDone()V
    .locals 0

    .prologue
    .line 236
    .local p0, "this":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    invoke-virtual {p0}, Lcom/tencent/component/utils/thread/ThreadPool$Worker;->get()Ljava/lang/Object;

    .line 237
    return-void
.end method
