.class public Lcom/netease/pushclient/PushManager$TaskSubmitter;
.super Ljava/lang/Object;
.source "PushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pushclient/PushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskSubmitter"
.end annotation


# instance fields
.field final m_executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pushclient/PushManager$TaskSubmitter;->m_executorService:Ljava/util/concurrent/ExecutorService;

    .line 604
    return-void
.end method


# virtual methods
.method public shutdown()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/netease/pushclient/PushManager$TaskSubmitter;->m_executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 617
    return-void
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, "result":Ljava/util/concurrent/Future;
    iget-object v1, p0, Lcom/netease/pushclient/PushManager$TaskSubmitter;->m_executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/pushclient/PushManager$TaskSubmitter;->m_executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/netease/pushclient/PushManager$TaskSubmitter;->m_executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 612
    :cond_0
    return-object v0
.end method
