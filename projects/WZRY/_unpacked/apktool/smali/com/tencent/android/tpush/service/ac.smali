.class Lcom/tencent/android/tpush/service/ac;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/XGWatchdog;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/XGWatchdog;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/tencent/android/tpush/service/ac;->a:Lcom/tencent/android/tpush/service/XGWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/ac;->a:Lcom/tencent/android/tpush/service/XGWatchdog;

    const-string/jumbo v1, "ver:"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/XGWatchdog;->access$000(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 463
    if-eqz v1, :cond_0

    .line 465
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 469
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 470
    iget-object v0, p0, Lcom/tencent/android/tpush/service/ac;->a:Lcom/tencent/android/tpush/service/XGWatchdog;

    const-string v1, "exit:"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/XGWatchdog;->access$000(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/lang/String;)Ljava/lang/String;

    .line 471
    iget-object v0, p0, Lcom/tencent/android/tpush/service/ac;->a:Lcom/tencent/android/tpush/service/XGWatchdog;

    const-string v1, "exit1:"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/XGWatchdog;->access$000(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/lang/String;)Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/tencent/android/tpush/service/ac;->a:Lcom/tencent/android/tpush/service/XGWatchdog;

    const-string v1, "exit2:"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/XGWatchdog;->access$000(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/lang/String;)Ljava/lang/String;

    .line 473
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 474
    iget-object v0, p0, Lcom/tencent/android/tpush/service/ac;->a:Lcom/tencent/android/tpush/service/XGWatchdog;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/XGWatchdog;->access$100(Lcom/tencent/android/tpush/service/XGWatchdog;)V

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/tencent/android/tpush/service/ac;->a:Lcom/tencent/android/tpush/service/XGWatchdog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/android/tpush/service/XGWatchdog;->isStarted:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 480
    :goto_1
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 478
    const-string/jumbo v1, "xguardian"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jniStartWatchdog error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 466
    :catch_1
    move-exception v1

    goto :goto_0
.end method
