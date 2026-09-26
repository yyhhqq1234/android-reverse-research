.class Lcom/netease/mpay/iy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/iu;


# direct methods
.method constructor <init>(Lcom/netease/mpay/iu;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/iy;->b:Lcom/netease/mpay/iu;

    iput-object p2, p0, Lcom/netease/mpay/iy;->a:Ljava/lang/String;

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
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/iy;->b:Lcom/netease/mpay/iu;

    iget-object v0, v0, Lcom/netease/mpay/iu;->b:Lcom/netease/mpay/ij;

    sget-object v1, Lcom/netease/mpay/PaymentResult;->PAY_CHANNEL_ERROR:Lcom/netease/mpay/PaymentResult;

    iget-object v2, p0, Lcom/netease/mpay/iy;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/PaymentResult;->setMessage(Ljava/lang/String;)Lcom/netease/mpay/PaymentResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/ij;Lcom/netease/mpay/PaymentResult;)V

    return-void
.end method
