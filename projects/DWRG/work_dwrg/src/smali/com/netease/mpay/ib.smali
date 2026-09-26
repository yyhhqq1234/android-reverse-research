.class Lcom/netease/mpay/ib;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/mpay/hy;


# direct methods
.method constructor <init>(Lcom/netease/mpay/hy;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ib;->a:Lcom/netease/mpay/hy;

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
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/ib;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->c(Lcom/netease/mpay/hy;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ib;->a:Lcom/netease/mpay/hy;

    invoke-static {v0}, Lcom/netease/mpay/hy;->e(Lcom/netease/mpay/hy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ib;->a:Lcom/netease/mpay/hy;

    invoke-static {v1}, Lcom/netease/mpay/hy;->d(Lcom/netease/mpay/hy;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
