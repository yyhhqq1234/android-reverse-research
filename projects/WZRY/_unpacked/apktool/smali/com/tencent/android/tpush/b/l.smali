.class Lcom/tencent/android/tpush/b/l;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/b/i;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/b/i;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/tencent/android/tpush/b/l;->a:Lcom/tencent/android/tpush/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 415
    iget-object v0, p0, Lcom/tencent/android/tpush/b/l;->a:Lcom/tencent/android/tpush/b/i;

    invoke-static {v0}, Lcom/tencent/android/tpush/b/i;->a(Lcom/tencent/android/tpush/b/i;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/android/tpush/b/l;->a:Lcom/tencent/android/tpush/b/i;

    invoke-static {v0}, Lcom/tencent/android/tpush/b/i;->a(Lcom/tencent/android/tpush/b/i;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    invoke-static {}, Lcom/tencent/android/tpush/b/d;->a()Lcom/tencent/android/tpush/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/b/l;->a:Lcom/tencent/android/tpush/b/i;

    invoke-static {v1}, Lcom/tencent/android/tpush/b/i;->a(Lcom/tencent/android/tpush/b/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/b/d;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 420
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 421
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 422
    invoke-static {}, Lcom/tencent/android/tpush/b/i;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action -> trySendCachedMsg with CachedMsgList size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 428
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 429
    iget-object v3, p0, Lcom/tencent/android/tpush/b/l;->a:Lcom/tencent/android/tpush/b/i;

    invoke-static {v3, v0}, Lcom/tencent/android/tpush/b/i;->a(Lcom/tencent/android/tpush/b/i;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    invoke-static {}, Lcom/tencent/android/tpush/b/i;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 436
    :cond_1
    return-void
.end method
