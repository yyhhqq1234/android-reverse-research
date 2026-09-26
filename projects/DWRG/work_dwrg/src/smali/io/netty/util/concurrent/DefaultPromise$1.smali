.class Lio/netty/util/concurrent/DefaultPromise$1;
.super Ljava/lang/Object;
.source "DefaultPromise.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/concurrent/DefaultPromise;

.field private final synthetic val$dfl:Lio/netty/util/concurrent/DefaultFutureListeners;


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/DefaultFutureListeners;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise$1;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    iput-object p2, p0, Lio/netty/util/concurrent/DefaultPromise$1;->val$dfl:Lio/netty/util/concurrent/DefaultFutureListeners;

    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise$1;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise$1;->val$dfl:Lio/netty/util/concurrent/DefaultFutureListeners;

    invoke-static {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;->access$12(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/DefaultFutureListeners;)V

    .line 583
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise$1;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;->access$13(Lio/netty/util/concurrent/DefaultPromise;Ljava/lang/Object;)V

    .line 584
    return-void
.end method
