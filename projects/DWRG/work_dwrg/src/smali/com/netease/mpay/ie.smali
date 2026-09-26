.class Lcom/netease/mpay/ie;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Lcom/netease/mpay/hy;


# direct methods
.method constructor <init>(Lcom/netease/mpay/hy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ie;->e:Lcom/netease/mpay/hy;

    iput-object p2, p0, Lcom/netease/mpay/ie;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/ie;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/ie;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/netease/mpay/ie;->d:J

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
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/netease/mpay/ie;->e:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->l(Lcom/netease/mpay/hy;)Lcom/netease/mpay/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->i()Lcom/netease/mpay/e/c/t;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ie;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/ie;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/ie;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/netease/mpay/ie;->d:J

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/e/c/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/netease/mpay/ie;->e:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->e(Lcom/netease/mpay/hy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ie;->e:Lcom/netease/mpay/hy;

    invoke-static {v1}, Lcom/netease/mpay/hy;->d(Lcom/netease/mpay/hy;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/netease/mpay/ie;->e:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->e(Lcom/netease/mpay/hy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ie;->e:Lcom/netease/mpay/hy;

    invoke-static {v1}, Lcom/netease/mpay/hy;->m(Lcom/netease/mpay/hy;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ie;->e:Lcom/netease/mpay/hy;

    invoke-static {v2}, Lcom/netease/mpay/hy;->n(Lcom/netease/mpay/hy;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
