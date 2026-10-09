.class final Lcom/tencent/special/httpdns/c;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/special/httpdns/Resolver;


# direct methods
.method public constructor <init>(Lcom/tencent/special/httpdns/Resolver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/special/httpdns/c;->a:Lcom/tencent/special/httpdns/Resolver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MainHandler receive message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/special/httpdns/b;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tencent/special/httpdns/b;->e:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/special/httpdns/c;->a:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v0}, Lcom/tencent/special/httpdns/Resolver;->b(Lcom/tencent/special/httpdns/Resolver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/special/httpdns/c;->a:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v0}, Lcom/tencent/special/httpdns/Resolver;->b(Lcom/tencent/special/httpdns/Resolver;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const-string v0, "handler mLock notify"

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/tencent/special/httpdns/c;->a:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v1}, Lcom/tencent/special/httpdns/Resolver;->c(Lcom/tencent/special/httpdns/Resolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/special/httpdns/c;->a:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v1}, Lcom/tencent/special/httpdns/Resolver;->d(Lcom/tencent/special/httpdns/Resolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/special/httpdns/c;->a:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v1}, Lcom/tencent/special/httpdns/Resolver;->e(Lcom/tencent/special/httpdns/Resolver;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/tencent/special/httpdns/b;->i:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "report at hdns is null and ldns back lock notify"

    invoke-static {v1}, Lcom/tencent/special/httpdns/LogOut;->d(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/special/httpdns/b;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/special/httpdns/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/special/httpdns/c;->a:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v1}, Lcom/tencent/special/httpdns/Resolver;->f(Lcom/tencent/special/httpdns/Resolver;)V

    :cond_3
    iget-object v1, p0, Lcom/tencent/special/httpdns/c;->a:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v1}, Lcom/tencent/special/httpdns/Resolver;->a(Lcom/tencent/special/httpdns/Resolver;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/tencent/special/httpdns/c;->a:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v1}, Lcom/tencent/special/httpdns/Resolver;->b(Lcom/tencent/special/httpdns/Resolver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/tencent/special/httpdns/c;->a:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v2}, Lcom/tencent/special/httpdns/Resolver;->b(Lcom/tencent/special/httpdns/Resolver;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    const-string v2, "handler mLock notify"

    invoke-static {v2}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lcom/tencent/special/httpdns/c;->a:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/special/httpdns/Resolver;->a(Lcom/tencent/special/httpdns/b;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/tencent/special/httpdns/c;->a:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v0, v3}, Lcom/tencent/special/httpdns/Resolver;->a(Lcom/tencent/special/httpdns/Resolver;Z)V

    iget-object v0, p0, Lcom/tencent/special/httpdns/c;->a:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v0, v3}, Lcom/tencent/special/httpdns/Resolver;->b(Lcom/tencent/special/httpdns/Resolver;Z)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/tencent/special/httpdns/c;->a:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v1, v0}, Lcom/tencent/special/httpdns/Resolver;->a(Lcom/tencent/special/httpdns/Resolver;Lcom/tencent/special/httpdns/b;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/tencent/special/httpdns/c;->a:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v1, v0}, Lcom/tencent/special/httpdns/Resolver;->b(Lcom/tencent/special/httpdns/Resolver;Lcom/tencent/special/httpdns/b;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/tencent/special/httpdns/c;->a:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v1, v0}, Lcom/tencent/special/httpdns/Resolver;->c(Lcom/tencent/special/httpdns/Resolver;Lcom/tencent/special/httpdns/b;)V

    goto :goto_1

    :pswitch_3
    iget-object v1, v0, Lcom/tencent/special/httpdns/b;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/special/httpdns/Cache;->a(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
