.class Lio/netty/util/concurrent/DefaultPromise$2;
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

.field private final synthetic val$l:Lio/netty/util/concurrent/GenericFutureListener;


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise$2;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    iput-object p2, p0, Lio/netty/util/concurrent/DefaultPromise$2;->val$l:Lio/netty/util/concurrent/GenericFutureListener;

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise$2;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise$2;->val$l:Lio/netty/util/concurrent/GenericFutureListener;

    invoke-static {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 593
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise$2;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;->access$13(Lio/netty/util/concurrent/DefaultPromise;Ljava/lang/Object;)V

    .line 594
    return-void
.end method
