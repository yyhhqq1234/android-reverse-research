.class Lcom/netease/mpay/gm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/MpayApi$a;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/PaymentCallback;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/Integer;

.field final synthetic e:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;Ljava/lang/String;Lcom/netease/mpay/PaymentCallback;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/gm;->e:Lcom/netease/mpay/MpayApi;

    iput-object p2, p0, Lcom/netease/mpay/gm;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/gm;->b:Lcom/netease/mpay/PaymentCallback;

    iput-object p4, p0, Lcom/netease/mpay/gm;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mpay/gm;->d:Ljava/lang/Integer;

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
.method public a()V
    .locals 7

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/gm;->e:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/gm;->e:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v3, p0, Lcom/netease/mpay/gm;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v3

    if-eqz v2, :cond_0

    iget-object v1, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    iget-object v1, v3, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v0, "LOGOUT"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/gm;->b:Lcom/netease/mpay/PaymentCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/gm;->b:Lcom/netease/mpay/PaymentCallback;

    const/4 v1, 0x3

    sget-object v2, Lcom/netease/mpay/PaymentResult;->USER_ERROR:Lcom/netease/mpay/PaymentResult;

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/PaymentCallback;->onFinish(ILcom/netease/mpay/PaymentResult;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget v4, v3, Lcom/netease/mpay/e/b/o;->f:I

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/netease/mpay/e/b/o;->a(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/gm;->e:Lcom/netease/mpay/MpayApi;

    iget-object v1, p0, Lcom/netease/mpay/gm;->c:Ljava/lang/String;

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v4, v3, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/gm;->d:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/netease/mpay/gm;->b:Lcom/netease/mpay/PaymentCallback;

    invoke-static/range {v0 .. v6}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Ljava/lang/String;Ljava/lang/Integer;Lcom/netease/mpay/PaymentCallback;)V

    goto :goto_0
.end method
