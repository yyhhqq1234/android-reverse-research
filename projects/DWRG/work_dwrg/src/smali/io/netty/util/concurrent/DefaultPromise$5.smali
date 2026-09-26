.class Lio/netty/util/concurrent/DefaultPromise$5;
.super Ljava/lang/Object;
.source "DefaultPromise.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListeners(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/concurrent/DefaultPromise;

.field private final synthetic val$l:Lio/netty/util/concurrent/GenericProgressiveFutureListener;

.field private final synthetic val$progress:J

.field private final synthetic val$self:Lio/netty/util/concurrent/ProgressiveFuture;

.field private final synthetic val$total:J


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise$5;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    iput-object p2, p0, Lio/netty/util/concurrent/DefaultPromise$5;->val$self:Lio/netty/util/concurrent/ProgressiveFuture;

    iput-object p3, p0, Lio/netty/util/concurrent/DefaultPromise$5;->val$l:Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    iput-wide p4, p0, Lio/netty/util/concurrent/DefaultPromise$5;->val$progress:J

    iput-wide p6, p0, Lio/netty/util/concurrent/DefaultPromise$5;->val$total:J

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 767
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise$5;->val$self:Lio/netty/util/concurrent/ProgressiveFuture;

    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise$5;->val$l:Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    iget-wide v2, p0, Lio/netty/util/concurrent/DefaultPromise$5;->val$progress:J

    iget-wide v4, p0, Lio/netty/util/concurrent/DefaultPromise$5;->val$total:J

    invoke-static/range {v0 .. v5}, Lio/netty/util/concurrent/DefaultPromise;->access$15(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    .line 768
    return-void
.end method
