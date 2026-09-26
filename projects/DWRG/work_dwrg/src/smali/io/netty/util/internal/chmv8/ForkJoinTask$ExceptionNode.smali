.class final Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
.super Ljava/lang/ref/WeakReference;
.source "ForkJoinTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/chmv8/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lio/netty/util/internal/chmv8/ForkJoinTask",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final ex:Ljava/lang/Throwable;

.field next:Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

.field final thrower:J


# direct methods
.method constructor <init>(Lio/netty/util/internal/chmv8/ForkJoinTask;Ljava/lang/Throwable;Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;)V
    .locals 2
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "next"    # Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "task":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinTask;->access$000()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 436
    iput-object p2, p0, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    .line 437
    iput-object p3, p0, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->next:Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    .line 438
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->thrower:J

    .line 439
    return-void
.end method
