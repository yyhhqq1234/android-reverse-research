.class final Lcom/tencent/special/httpdns/d;
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

    iput-object p1, p0, Lcom/tencent/special/httpdns/d;->c:Lcom/tencent/special/httpdns/Resolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/special/httpdns/d;->b:Z

    iput-object p2, p0, Lcom/tencent/special/httpdns/d;->a:Lcom/tencent/special/httpdns/b;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/special/httpdns/d;->b:Z

    return-void
.end method

.method public final run()V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/special/httpdns/d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/special/httpdns/d;->a:Lcom/tencent/special/httpdns/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/special/httpdns/b;->l:J

    :try_start_0
    iget-object v0, p0, Lcom/tencent/special/httpdns/d;->a:Lcom/tencent/special/httpdns/b;

    iget-object v1, p0, Lcom/tencent/special/httpdns/d;->c:Lcom/tencent/special/httpdns/Resolver;

    iget-object v2, p0, Lcom/tencent/special/httpdns/d;->a:Lcom/tencent/special/httpdns/b;

    invoke-virtual {v1, v2}, Lcom/tencent/special/httpdns/Resolver;->a(Lcom/tencent/special/httpdns/b;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/special/httpdns/b;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/tencent/special/httpdns/d;->b:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/special/httpdns/d;->a:Lcom/tencent/special/httpdns/b;

    iget-object v0, v0, Lcom/tencent/special/httpdns/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/special/httpdns/d;->a:Lcom/tencent/special/httpdns/b;

    iget-object v1, p0, Lcom/tencent/special/httpdns/d;->a:Lcom/tencent/special/httpdns/b;

    iget-object v1, v1, Lcom/tencent/special/httpdns/b;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/special/httpdns/b;->c:Ljava/lang/String;

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/special/httpdns/d;->a:Lcom/tencent/special/httpdns/b;

    iget-wide v2, v2, Lcom/tencent/special/httpdns/b;->l:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/special/httpdns/d;->a:Lcom/tencent/special/httpdns/b;

    iput-wide v0, v2, Lcom/tencent/special/httpdns/b;->n:J

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/tencent/special/httpdns/d;->a:Lcom/tencent/special/httpdns/b;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/special/httpdns/d;->c:Lcom/tencent/special/httpdns/Resolver;

    invoke-static {v1}, Lcom/tencent/special/httpdns/Resolver;->a(Lcom/tencent/special/httpdns/Resolver;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
