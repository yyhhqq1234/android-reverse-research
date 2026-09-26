.class Lcom/netease/mpay/gb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/SetRealnameCallback;


# instance fields
.field final synthetic a:Lcom/netease/mpay/ga;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ga;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/gb;->a:Lcom/netease/mpay/ga;

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
.method public onFinish(Lcom/netease/mpay/User;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/gb;->a:Lcom/netease/mpay/ga;

    iget-object v0, v0, Lcom/netease/mpay/ga;->a:Landroid/os/Handler;

    new-instance v1, Lcom/netease/mpay/gc;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/gc;-><init>(Lcom/netease/mpay/gb;Lcom/netease/mpay/User;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
