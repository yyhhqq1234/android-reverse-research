.class Lcom/netease/mpay/it;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/f/a/b$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/mpay/iq;


# direct methods
.method constructor <init>(Lcom/netease/mpay/iq;Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/it;->c:Lcom/netease/mpay/iq;

    iput-object p2, p0, Lcom/netease/mpay/it;->a:Lcom/netease/mpay/f/a/b$a;

    iput-object p3, p0, Lcom/netease/mpay/it;->b:Ljava/lang/String;

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

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/netease/mpay/it;->a:Lcom/netease/mpay/f/a/b$a;

    invoke-virtual {v0}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/it;->c:Lcom/netease/mpay/iq;

    iget-object v0, v0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->i(Lcom/netease/mpay/ij;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/it;->c:Lcom/netease/mpay/iq;

    iget-object v0, v0, Lcom/netease/mpay/iq;->a:Lcom/netease/mpay/ij;

    sget-object v1, Lcom/netease/mpay/PaymentResult;->ORDER_ERROR:Lcom/netease/mpay/PaymentResult;

    iget-object v2, p0, Lcom/netease/mpay/it;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/PaymentResult;->setMessage(Ljava/lang/String;)Lcom/netease/mpay/PaymentResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/ij;Lcom/netease/mpay/PaymentResult;)V

    goto :goto_0
.end method
