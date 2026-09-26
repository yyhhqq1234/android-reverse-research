.class Lio/netty/util/concurrent/DefaultPromise$3;
.super Ljava/lang/Object;
.source "DefaultPromise.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/DefaultPromise;->notifyListener(Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$future:Lio/netty/util/concurrent/Future;

.field private final synthetic val$l:Lio/netty/util/concurrent/GenericFutureListener;


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise$3;->val$future:Lio/netty/util/concurrent/Future;

    iput-object p2, p0, Lio/netty/util/concurrent/DefaultPromise$3;->val$l:Lio/netty/util/concurrent/GenericFutureListener;

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise$3;->val$future:Lio/netty/util/concurrent/Future;

    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise$3;->val$l:Lio/netty/util/concurrent/GenericFutureListener;

    invoke-static {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 665
    return-void
.end method
