.class Lcom/netease/mpay/server/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/server/e$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/server/e$b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/server/e$b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/server/f;->a:Lcom/netease/mpay/server/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/server/f;->a:Lcom/netease/mpay/server/e$b;

    iget-object v0, v0, Lcom/netease/mpay/server/e$b;->a:Lcom/netease/mpay/server/e;

    invoke-static {v0}, Lcom/netease/mpay/server/e;->b(Lcom/netease/mpay/server/e;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/server/f;->a:Lcom/netease/mpay/server/e$b;

    iget-object v0, v0, Lcom/netease/mpay/server/e$b;->a:Lcom/netease/mpay/server/e;

    invoke-static {v0}, Lcom/netease/mpay/server/e;->b(Lcom/netease/mpay/server/e;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/server/f;->a:Lcom/netease/mpay/server/e$b;

    iget-object v0, v0, Lcom/netease/mpay/server/e$b;->a:Lcom/netease/mpay/server/e;

    invoke-static {v0}, Lcom/netease/mpay/server/e;->b(Lcom/netease/mpay/server/e;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/server/f;->a:Lcom/netease/mpay/server/e$b;

    iget-object v0, v0, Lcom/netease/mpay/server/e$b;->a:Lcom/netease/mpay/server/e;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/netease/mpay/server/e;->a(Lcom/netease/mpay/server/e;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/server/f;->a:Lcom/netease/mpay/server/e$b;

    iget-object v0, v0, Lcom/netease/mpay/server/e$b;->a:Lcom/netease/mpay/server/e;

    invoke-static {v0, p1}, Lcom/netease/mpay/server/e;->a(Lcom/netease/mpay/server/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/server/f;->a:Lcom/netease/mpay/server/e$b;

    iget-object v0, v0, Lcom/netease/mpay/server/e$b;->a:Lcom/netease/mpay/server/e;

    invoke-static {v0}, Lcom/netease/mpay/server/e;->b(Lcom/netease/mpay/server/e;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
