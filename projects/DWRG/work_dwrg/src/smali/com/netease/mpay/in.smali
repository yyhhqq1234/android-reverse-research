.class Lcom/netease/mpay/in;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/kv$b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/ij;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ij;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/in;->a:Lcom/netease/mpay/ij;

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
.method public a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/netease/mpay/in;->a:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->h(Lcom/netease/mpay/ij;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/in;->a:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->g(Lcom/netease/mpay/ij;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/in;->a:Lcom/netease/mpay/ij;

    sget-object v1, Lcom/netease/mpay/PaymentResult;->PAY_CHANNEL_ERROR:Lcom/netease/mpay/PaymentResult;

    invoke-static {v0, v1}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/ij;Lcom/netease/mpay/PaymentResult;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/in;->a:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->h(Lcom/netease/mpay/ij;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netease/mpay/in;->a:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->i(Lcom/netease/mpay/ij;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/netease/mpay/in;->a:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->j(Lcom/netease/mpay/ij;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
