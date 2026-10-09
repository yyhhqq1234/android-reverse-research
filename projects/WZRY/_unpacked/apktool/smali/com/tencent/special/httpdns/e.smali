.class final Lcom/tencent/special/httpdns/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/tencent/special/httpdns/b;

.field private volatile b:Z

.field private synthetic c:Lcom/tencent/special/httpdns/Resolver;


# direct methods
.method public constructor <init>(Lcom/tencent/special/httpdns/Resolver;Lcom/tencent/special/httpdns/b;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/special/httpdns/e;->c:Lcom/tencent/special/httpdns/Resolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/special/httpdns/e;->b:Z

    iput-object p2, p0, Lcom/tencent/special/httpdns/e;->a:Lcom/tencent/special/httpdns/b;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/special/httpdns/e;->b:Z

    return-void
.end method

.method public final run()V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/special/httpdns/e;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/special/httpdns/e;->a:Lcom/tencent/special/httpdns/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/special/httpdns/b;->m:J

    :try_start_0
    iget-object v0, p0, Lcom/tencent/special/httpdns/e;->a:Lcom/tencent/special/httpdns/b;

    iget-object v1, p0, Lcom/tencent/special/httpdns/e;->c:Lcom/tencent/special/httpdns/Resolver;

    iget-object v1, p0, Lcom/tencent/special/httpdns/e;->a:Lcom/tencent/special/httpdns/b;

    iget-object v1, v1, Lcom/tencent/special/httpdns/b;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/special/httpdns/Resolver;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/special/httpdns/b;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/tencent/special/httpdns/e;->b:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/special/httpdns/e;->a:Lcom/tencent/special/httpdns/b;

    iget-wide v2, v2, Lcom/tencent/special/httpdns/b;->m:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/special/httpdns/e;->a:Lcom/tencent/special/httpdns/b;

    iput-wide v0, v2, Lcom/tencent/special/httpdns/b;->o:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LocalDns is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/special/httpdns/e;->a:Lcom/tencent/special/httpdns/b;

    iget-object v3, v3, Lcom/tencent/special/httpdns/b;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", LocalDns cost time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/special/httpdns/LogOut;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/special/httpdns/e;->c:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v0}, Lcom/tencent/special/httpdns/Resolver;->a(Lcom/tencent/special/httpdns/Resolver;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/special/httpdns/e;->a:Lcom/tencent/special/httpdns/b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
