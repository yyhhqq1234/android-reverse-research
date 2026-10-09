.class Lcom/tencent/msdk/dns/MSDKDnsResolver$a;
.super Landroid/os/Handler;
.source "MSDKDnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/dns/MSDKDnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/msdk/dns/MSDKDnsResolver;


# direct methods
.method public constructor <init>(Lcom/tencent/msdk/dns/MSDKDnsResolver;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    .line 391
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 392
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainHandler receive message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    .line 397
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/msdk/dns/b;

    .line 399
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/msdk/dns/b;->h:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v0}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b(Lcom/tencent/msdk/dns/MSDKDnsResolver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v0}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b(Lcom/tencent/msdk/dns/MSDKDnsResolver;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 402
    const-string v0, "handler mLock notify"

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    .line 403
    monitor-exit v1

    .line 444
    :cond_1
    :goto_0
    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 407
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 425
    :goto_1
    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v1}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->c(Lcom/tencent/msdk/dns/MSDKDnsResolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v1}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->d(Lcom/tencent/msdk/dns/MSDKDnsResolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v1}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->e(Lcom/tencent/msdk/dns/MSDKDnsResolver;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 426
    iget-object v1, v0, Lcom/tencent/msdk/dns/b;->l:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 427
    const-string v1, "report at hdns is null and ldns back lock notify"

    invoke-static {v1}, Lcom/tencent/msdk/dns/d;->b(Ljava/lang/String;)V

    .line 428
    iget-object v1, v0, Lcom/tencent/msdk/dns/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/dns/b;->d(Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v1}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->f(Lcom/tencent/msdk/dns/MSDKDnsResolver;)V

    .line 431
    :cond_3
    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v1}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->a(Lcom/tencent/msdk/dns/MSDKDnsResolver;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 432
    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v1}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b(Lcom/tencent/msdk/dns/MSDKDnsResolver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 433
    :try_start_1
    iget-object v2, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v2}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b(Lcom/tencent/msdk/dns/MSDKDnsResolver;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 434
    const-string v2, "handler mLock notify"

    invoke-static {v2}, Lcom/tencent/msdk/dns/d;->a(Ljava/lang/String;)V

    .line 435
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 436
    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v1, v3}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->a(Lcom/tencent/msdk/dns/MSDKDnsResolver;Z)Z

    .line 437
    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v1, v3}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b(Lcom/tencent/msdk/dns/MSDKDnsResolver;Z)Z

    .line 438
    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->a(Lcom/tencent/msdk/dns/b;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 409
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v1, v0}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->a(Lcom/tencent/msdk/dns/MSDKDnsResolver;Lcom/tencent/msdk/dns/b;)V

    goto :goto_1

    .line 413
    :pswitch_1
    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v1, v0}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b(Lcom/tencent/msdk/dns/MSDKDnsResolver;Lcom/tencent/msdk/dns/b;)V

    goto :goto_1

    .line 417
    :pswitch_2
    iget-object v1, p0, Lcom/tencent/msdk/dns/MSDKDnsResolver$a;->a:Lcom/tencent/msdk/dns/MSDKDnsResolver;

    invoke-static {v1, v0}, Lcom/tencent/msdk/dns/MSDKDnsResolver;->c(Lcom/tencent/msdk/dns/MSDKDnsResolver;Lcom/tencent/msdk/dns/b;)V

    goto :goto_1

    .line 421
    :pswitch_3
    iget-object v1, v0, Lcom/tencent/msdk/dns/b;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/dns/HttpDnsCache;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 435
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 407
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
