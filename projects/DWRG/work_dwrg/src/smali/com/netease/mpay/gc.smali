.class Lcom/netease/mpay/gc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/mpay/User;

.field final synthetic b:Lcom/netease/mpay/gb;


# direct methods
.method constructor <init>(Lcom/netease/mpay/gb;Lcom/netease/mpay/User;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/gc;->b:Lcom/netease/mpay/gb;

    iput-object p2, p0, Lcom/netease/mpay/gc;->a:Lcom/netease/mpay/User;

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
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/gc;->b:Lcom/netease/mpay/gb;

    iget-object v0, v0, Lcom/netease/mpay/gb;->a:Lcom/netease/mpay/ga;

    iget-object v0, v0, Lcom/netease/mpay/ga;->b:Lcom/netease/mpay/SetRealnameCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/gc;->b:Lcom/netease/mpay/gb;

    iget-object v0, v0, Lcom/netease/mpay/gb;->a:Lcom/netease/mpay/ga;

    iget-object v0, v0, Lcom/netease/mpay/ga;->b:Lcom/netease/mpay/SetRealnameCallback;

    iget-object v1, p0, Lcom/netease/mpay/gc;->a:Lcom/netease/mpay/User;

    invoke-interface {v0, v1}, Lcom/netease/mpay/SetRealnameCallback;->onFinish(Lcom/netease/mpay/User;)V

    :cond_0
    return-void
.end method
