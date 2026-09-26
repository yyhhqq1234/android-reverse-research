.class Lio/netty/util/concurrent/SingleThreadEventExecutor$2;
.super Ljava/lang/Object;
.source "SingleThreadEventExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/SingleThreadEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;Ljava/util/concurrent/ThreadFactory;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/SingleThreadEventExecutor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x3

    const/4 v9, 0x0

    const/16 v8, 0x29

    const/4 v7, 0x5

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, "success":Z
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->updateLastExecutionTime()V

    .line 116
    :try_start_0
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 117
    const/4 v1, 0x1

    .line 122
    :cond_0
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 123
    .local v0, "oldState":I
    if-ge v0, v6, :cond_1

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    .line 124
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 123
    invoke-virtual {v3, v4, v0, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3

    .line 124
    if-eqz v3, :cond_0

    .line 129
    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$5(Lio/netty/util/concurrent/SingleThreadEventExecutor;)J

    move-result-wide v4

    cmp-long v3, v4, v10

    if-nez v3, :cond_2

    .line 130
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Buggy "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v5, Lio/netty/util/concurrent/EventExecutor;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " implementation; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 132
    const-class v5, Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".confirmShutdown() must be called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 133
    const-string v5, "before run() implementation terminates."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 139
    :cond_2
    :try_start_1
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    :try_start_2
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v3, v4, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An event executor terminated with non-empty task queue ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_3
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v3

    invoke-interface {v3, v9}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 159
    :goto_0
    return-void

    .line 118
    .end local v0    # "oldState":I
    :catch_0
    move-exception v2

    .line 119
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    const-string v4, "Unexpected exception from an event executor: "

    invoke-interface {v3, v4, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 122
    :cond_4
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 123
    .restart local v0    # "oldState":I
    if-ge v0, v6, :cond_5

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    .line 124
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 123
    invoke-virtual {v3, v4, v0, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3

    .line 124
    if-eqz v3, :cond_4

    .line 129
    :cond_5
    if-eqz v1, :cond_6

    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$5(Lio/netty/util/concurrent/SingleThreadEventExecutor;)J

    move-result-wide v4

    cmp-long v3, v4, v10

    if-nez v3, :cond_6

    .line 130
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Buggy "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v5, Lio/netty/util/concurrent/EventExecutor;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " implementation; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 132
    const-class v5, Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".confirmShutdown() must be called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 133
    const-string v5, "before run() implementation terminates."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 139
    :cond_6
    :try_start_4
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    if-eqz v3, :cond_6

    .line 145
    :try_start_5
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v3, v4, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An event executor terminated with non-empty task queue ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-interface {v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_7
    iget-object v3, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v3}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v3

    invoke-interface {v3, v9}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto/16 :goto_0

    .line 143
    :catchall_0
    move-exception v3

    .line 145
    :try_start_6
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "An event executor terminated with non-empty task queue ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v6}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_8
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v4

    invoke-interface {v4, v9}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 157
    throw v3

    .line 146
    :catchall_1
    move-exception v3

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "An event executor terminated with non-empty task queue ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v6}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_9
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v4

    invoke-interface {v4, v9}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 156
    throw v3

    .line 146
    :catchall_2
    move-exception v3

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "An event executor terminated with non-empty task queue ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v6}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_a
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v4

    invoke-interface {v4, v9}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 156
    throw v3

    .line 120
    .end local v0    # "oldState":I
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_3
    move-exception v3

    .line 122
    :cond_b
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 123
    .restart local v0    # "oldState":I
    if-ge v0, v6, :cond_c

    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    .line 124
    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    .line 123
    invoke-virtual {v4, v5, v0, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    .line 124
    if-eqz v4, :cond_b

    .line 129
    :cond_c
    if-eqz v1, :cond_d

    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$5(Lio/netty/util/concurrent/SingleThreadEventExecutor;)J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-nez v4, :cond_d

    .line 130
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Buggy "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v6, Lio/netty/util/concurrent/EventExecutor;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " implementation; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 132
    const-class v6, Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".confirmShutdown() must be called "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 133
    const-string v6, "before run() implementation terminates."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 131
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 139
    :cond_d
    :try_start_7
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result v4

    if-eqz v4, :cond_d

    .line 145
    :try_start_8
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "An event executor terminated with non-empty task queue ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v6}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_e
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v4

    invoke-interface {v4, v9}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 158
    throw v3

    .line 143
    :catchall_4
    move-exception v3

    .line 145
    :try_start_9
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "An event executor terminated with non-empty task queue ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v6}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_f
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v4

    invoke-interface {v4, v9}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 157
    throw v3

    .line 146
    :catchall_5
    move-exception v3

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "An event executor terminated with non-empty task queue ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v6}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_10
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v4

    invoke-interface {v4, v9}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 156
    throw v3

    .line 146
    :catchall_6
    move-exception v3

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "An event executor terminated with non-empty task queue ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v6}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_11
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v4

    invoke-interface {v4, v9}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 156
    throw v3

    .line 143
    :catchall_7
    move-exception v3

    .line 145
    :try_start_a
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->cleanup()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "An event executor terminated with non-empty task queue ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v6}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_12
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v4

    invoke-interface {v4, v9}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 157
    throw v3

    .line 146
    :catchall_8
    move-exception v3

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "An event executor terminated with non-empty task queue ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v6}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_13
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v4

    invoke-interface {v4, v9}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 156
    throw v3

    .line 146
    :catchall_9
    move-exception v3

    .line 147
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$4()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 148
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$7(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 149
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    .line 150
    invoke-static {}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$6()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "An event executor terminated with non-empty task queue ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-object v6, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v6}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$8(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-interface {v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 155
    :cond_14
    iget-object v4, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$2;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    invoke-static {v4}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->access$9(Lio/netty/util/concurrent/SingleThreadEventExecutor;)Lio/netty/util/concurrent/Promise;

    move-result-object v4

    invoke-interface {v4, v9}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 156
    throw v3
.end method
