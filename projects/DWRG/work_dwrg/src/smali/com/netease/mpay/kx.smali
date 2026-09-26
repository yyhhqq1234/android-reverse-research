.class Lcom/netease/mpay/kx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/kv;


# direct methods
.method constructor <init>(Lcom/netease/mpay/kv;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/kx;->a:Lcom/netease/mpay/kv;

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

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/kx;->a:Lcom/netease/mpay/kv;

    invoke-static {v0}, Lcom/netease/mpay/kv;->b(Lcom/netease/mpay/kv;)Lcom/netease/mpay/kv$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/kx;->a:Lcom/netease/mpay/kv;

    invoke-static {v0}, Lcom/netease/mpay/kv;->b(Lcom/netease/mpay/kv;)Lcom/netease/mpay/kv$b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/netease/mpay/kv$b;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/kx;->a:Lcom/netease/mpay/kv;

    invoke-static {v0}, Lcom/netease/mpay/kv;->c(Lcom/netease/mpay/kv;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/kx;->a:Lcom/netease/mpay/kv;

    invoke-static {v0}, Lcom/netease/mpay/kv;->a(Lcom/netease/mpay/kv;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/k;)V
    .locals 2

    iget-object v0, p1, Lcom/netease/mpay/server/response/k;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/kx;->a:Lcom/netease/mpay/kv;

    invoke-static {v0}, Lcom/netease/mpay/kv;->a(Lcom/netease/mpay/kv;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/kx;->a:Lcom/netease/mpay/kv;

    invoke-static {v0}, Lcom/netease/mpay/kv;->a(Lcom/netease/mpay/kv;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netease/mpay/kx;->a:Lcom/netease/mpay/kv;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netease/mpay/kv;->a(Lcom/netease/mpay/kv;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/netease/mpay/kx;->a:Lcom/netease/mpay/kv;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/netease/mpay/kv;->a(Lcom/netease/mpay/kv;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/k;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/kx;->a(Lcom/netease/mpay/server/response/k;)V

    return-void
.end method
