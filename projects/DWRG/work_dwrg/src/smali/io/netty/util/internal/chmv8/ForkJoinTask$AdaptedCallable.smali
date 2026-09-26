.class final Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;
.super Lio/netty/util/internal/chmv8/ForkJoinTask;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/chmv8/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AdaptedCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/chmv8/ForkJoinTask",
        "<TT;>;",
        "Ljava/util/concurrent/RunnableFuture",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2763fe86dcb18e30L


# instance fields
.field final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1426
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;, "Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable<TT;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;-><init>()V

    .line 1427
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1428
    :cond_0
    iput-object p1, p0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;->callable:Ljava/util/concurrent/Callable;

    .line 1429
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 4

    .prologue
    .line 1434
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;, "Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable<TT;>;"
    :try_start_0
    iget-object v3, p0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1435
    const/4 v3, 0x1

    return v3

    .line 1436
    :catch_0
    move-exception v0

    .line 1437
    .local v0, "err":Ljava/lang/Error;
    throw v0

    .line 1438
    .end local v0    # "err":Ljava/lang/Error;
    :catch_1
    move-exception v2

    .line 1439
    .local v2, "rex":Ljava/lang/RuntimeException;
    throw v2

    .line 1440
    .end local v2    # "rex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 1441
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1430
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;, "Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable<TT;>;"
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final run()V
    .locals 0

    .prologue
    .line 1444
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;, "Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable<TT;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final setRawResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1431
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;, "Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;->result:Ljava/lang/Object;

    return-void
.end method
