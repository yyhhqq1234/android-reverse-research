.class Lcom/tencent/tmassistantsdk/internal/b/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/tencent/tmassistantsdk/internal/b/b;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantsdk/internal/b/b;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/b/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    iput-object p2, p0, Lcom/tencent/tmassistantsdk/internal/b/d;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/b/b;->c()Landroid/content/Intent;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/b/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/b/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    invoke-static {v2}, Lcom/tencent/tmassistantsdk/internal/b/b;->a(Lcom/tencent/tmassistantsdk/internal/b/b;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmassistantsdk/internal/b/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/tencent/tmassistantsdk/internal/b/b;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    iget v1, v0, Lcom/tencent/tmassistantsdk/internal/b/b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tmassistantsdk/internal/b/b;->b:I

    .line 209
    const-string v0, "TMAssistantDownloadOpenSDKClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry bind service! retryBindResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/b/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    iget-boolean v2, v2, Lcom/tencent/tmassistantsdk/internal/b/b;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",retryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/b/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    iget v2, v2, Lcom/tencent/tmassistantsdk/internal/b/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    iget-boolean v0, v0, Lcom/tencent/tmassistantsdk/internal/b/b;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/d;->b:Lcom/tencent/tmassistantsdk/internal/b/b;

    iget v0, v0, Lcom/tencent/tmassistantsdk/internal/b/b;->b:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/d;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    :cond_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 206
    const-string v1, "TMAssistantDownloadOpenSDKClient"

    const-string v2, "retry bind service Exception:"

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
