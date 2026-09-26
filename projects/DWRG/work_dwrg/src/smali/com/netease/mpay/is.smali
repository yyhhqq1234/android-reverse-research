.class Lcom/netease/mpay/is;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/iq;


# direct methods
.method constructor <init>(Lcom/netease/mpay/iq;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/is;->a:Lcom/netease/mpay/iq;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/netease/mpay/is;->a:Lcom/netease/mpay/iq;

    iget-object v0, v0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    sget-object v1, Lcom/netease/mpay/PaymentResult;->NETWORK_ERROR:Lcom/netease/mpay/PaymentResult;

    invoke-static {v0, v1}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/ij;Lcom/netease/mpay/PaymentResult;)V

    return-void
.end method
