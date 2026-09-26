.class Lcom/netease/mpay/codescanner/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/mpay/PaymentResult;

.field final synthetic c:Lcom/netease/mpay/codescanner/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/codescanner/b;ILcom/netease/mpay/PaymentResult;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/c;->c:Lcom/netease/mpay/codescanner/b;

    iput p2, p0, Lcom/netease/mpay/codescanner/c;->a:I

    iput-object p3, p0, Lcom/netease/mpay/codescanner/c;->b:Lcom/netease/mpay/PaymentResult;

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
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/codescanner/c;->c:Lcom/netease/mpay/codescanner/b;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/b;->b:Lcom/netease/mpay/PaymentCallback;

    iget v1, p0, Lcom/netease/mpay/codescanner/c;->a:I

    iget-object v2, p0, Lcom/netease/mpay/codescanner/c;->b:Lcom/netease/mpay/PaymentResult;

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/PaymentCallback;->onFinish(ILcom/netease/mpay/PaymentResult;)V

    return-void
.end method
