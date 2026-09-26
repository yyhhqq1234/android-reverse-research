.class Lcom/netease/mpay/gn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/PaymentCallback;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/netease/mpay/PaymentCallback;

.field final synthetic c:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;Landroid/os/Handler;Lcom/netease/mpay/PaymentCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/gn;->c:Lcom/netease/mpay/MpayApi;

    iput-object p2, p0, Lcom/netease/mpay/gn;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/netease/mpay/gn;->b:Lcom/netease/mpay/PaymentCallback;

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
.method public onFinish(ILcom/netease/mpay/PaymentResult;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/gn;->a:Landroid/os/Handler;

    new-instance v1, Lcom/netease/mpay/go;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/mpay/go;-><init>(Lcom/netease/mpay/gn;ILcom/netease/mpay/PaymentResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
