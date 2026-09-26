.class Lcom/netease/mpay/gl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/DeviceTicketCallback;

.field final synthetic b:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/DeviceTicketCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/gl;->b:Lcom/netease/mpay/MpayApi;

    iput-object p2, p0, Lcom/netease/mpay/gl;->a:Lcom/netease/mpay/DeviceTicketCallback;

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
.method public a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/hb;->a:[I

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x3

    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/gl;->a:Lcom/netease/mpay/DeviceTicketCallback;

    invoke-interface {v1, v0, p2}, Lcom/netease/mpay/DeviceTicketCallback;->onFailure(ILjava/lang/String;)V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/netease/mpay/server/response/ae;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/gl;->a:Lcom/netease/mpay/DeviceTicketCallback;

    iget-object v1, p1, Lcom/netease/mpay/server/response/ae;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/mpay/DeviceTicketCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/ae;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/gl;->a(Lcom/netease/mpay/server/response/ae;)V

    return-void
.end method
