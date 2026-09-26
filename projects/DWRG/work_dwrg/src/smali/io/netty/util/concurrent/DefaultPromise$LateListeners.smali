.class final Lio/netty/util/concurrent/DefaultPromise$LateListeners;
.super Ljava/util/ArrayDeque;
.source "DefaultPromise.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/DefaultPromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LateListeners"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayDeque",
        "<",
        "Lio/netty/util/concurrent/GenericFutureListener",
        "<*>;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x98933d7548f9434L


# instance fields
.field final synthetic this$0:Lio/netty/util/concurrent/DefaultPromise;


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/DefaultPromise;)V
    .locals 1

    .prologue
    .line 833
    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise$LateListeners;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    .line 834
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 835
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 839
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise$LateListeners;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    invoke-static {v1}, Lio/netty/util/concurrent/DefaultPromise;->access$8(Lio/netty/util/concurrent/DefaultPromise;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 841
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise$LateListeners;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/GenericFutureListener;

    .line 842
    .local v0, "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    if-nez v0, :cond_0

    .line 852
    .end local v0    # "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    :goto_1
    return-void

    .line 845
    .restart local v0    # "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    :cond_0
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise$LateListeners;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    invoke-static {v1, v0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    goto :goto_0

    .line 850
    .end local v0    # "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    :cond_1
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise$LateListeners;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    invoke-virtual {v1}, Lio/netty/util/concurrent/DefaultPromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-static {v1, p0}, Lio/netty/util/concurrent/DefaultPromise;->access$9(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    goto :goto_1
.end method
