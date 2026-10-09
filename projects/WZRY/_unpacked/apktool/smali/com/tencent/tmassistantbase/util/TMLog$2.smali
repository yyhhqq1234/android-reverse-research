.class final Lcom/tencent/tmassistantbase/util/TMLog$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 454
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->isInitLogFileDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    new-instance v0, Lcom/tencent/tmassistantbase/util/TMLog$2$1;

    const-string v1, "TMLogInitThread"

    invoke-direct {v0, p0, v1}, Lcom/tencent/tmassistantbase/util/TMLog$2$1;-><init>(Lcom/tencent/tmassistantbase/util/TMLog$2;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/TMLog$2$1;->start()V

    goto :goto_0
.end method
