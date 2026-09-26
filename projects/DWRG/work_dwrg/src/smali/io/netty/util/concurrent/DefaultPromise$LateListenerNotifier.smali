.class final Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;
.super Ljava/lang/Object;
.source "DefaultPromise.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/DefaultPromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LateListenerNotifier"
.end annotation


# instance fields
.field private l:Lio/netty/util/concurrent/GenericFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/netty/util/concurrent/DefaultPromise;


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 858
    .local p2, "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    iput-object p2, p0, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;->l:Lio/netty/util/concurrent/GenericFutureListener;

    .line 860
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 864
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    invoke-static {v1}, Lio/netty/util/concurrent/DefaultPromise;->access$10(Lio/netty/util/concurrent/DefaultPromise;)Lio/netty/util/concurrent/DefaultPromise$LateListeners;

    move-result-object v0

    .line 865
    .local v0, "lateListeners":Lio/netty/util/concurrent/DefaultPromise$LateListeners;, "Lio/netty/util/concurrent/DefaultPromise<TV;>.LateListeners;"
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;->l:Lio/netty/util/concurrent/GenericFutureListener;

    if-eqz v1, :cond_1

    .line 866
    if-nez v0, :cond_0

    .line 867
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    new-instance v0, Lio/netty/util/concurrent/DefaultPromise$LateListeners;

    .end local v0    # "lateListeners":Lio/netty/util/concurrent/DefaultPromise$LateListeners;, "Lio/netty/util/concurrent/DefaultPromise<TV;>.LateListeners;"
    iget-object v2, p0, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;->this$0:Lio/netty/util/concurrent/DefaultPromise;

    invoke-direct {v0, v2}, Lio/netty/util/concurrent/DefaultPromise$LateListeners;-><init>(Lio/netty/util/concurrent/DefaultPromise;)V

    .restart local v0    # "lateListeners":Lio/netty/util/concurrent/DefaultPromise$LateListeners;, "Lio/netty/util/concurrent/DefaultPromise<TV;>.LateListeners;"
    invoke-static {v1, v0}, Lio/netty/util/concurrent/DefaultPromise;->access$11(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/DefaultPromise$LateListeners;)V

    .line 869
    :cond_0
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;->l:Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {v0, v1}, Lio/netty/util/concurrent/DefaultPromise$LateListeners;->add(Ljava/lang/Object;)Z

    .line 870
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;->l:Lio/netty/util/concurrent/GenericFutureListener;

    .line 873
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/concurrent/DefaultPromise$LateListeners;->run()V

    .line 874
    return-void
.end method
