.class public Lcom/netease/mpay/codescanner/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/netease/mpay/MpayConfig;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/netease/mpay/MpayConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/codescanner/a;->d:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/netease/mpay/codescanner/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/codescanner/a;->a:Lcom/netease/mpay/MpayConfig;

    iput-object p4, p0, Lcom/netease/mpay/codescanner/a;->c:Ljava/lang/String;

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
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;Lcom/netease/mpay/PaymentCallback;)V
    .locals 13

    new-instance v1, Lcom/netease/mpay/e/b;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/a;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/codescanner/a;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v3, v0, Lcom/netease/mpay/e/b/o;->f:I

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/netease/mpay/e/b/o;->a(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_1

    const-string v1, "Order Info Error"

    invoke-static {v1}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    const/4 v1, 0x1

    sget-object v2, Lcom/netease/mpay/PaymentResult;->ORDER_ERROR:Lcom/netease/mpay/PaymentResult;

    move-object/from16 v0, p5

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/PaymentCallback;->onFinish(ILcom/netease/mpay/PaymentResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/codescanner/a;->d:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "netease_mpay"

    const-string v3, "loading.html"

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/widget/bd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Asset Files Error"

    invoke-static {v1}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    const/4 v1, 0x1

    sget-object v2, Lcom/netease/mpay/PaymentResult;->ASSETS_ERROR:Lcom/netease/mpay/PaymentResult;

    move-object/from16 v0, p5

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/PaymentCallback;->onFinish(ILcom/netease/mpay/PaymentResult;)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/netease/mpay/codescanner/b;

    move-object/from16 v0, p5

    invoke-direct {v8, p0, v1, v0}, Lcom/netease/mpay/codescanner/b;-><init>(Lcom/netease/mpay/codescanner/a;Landroid/os/Handler;Lcom/netease/mpay/PaymentCallback;)V

    iget-object v9, p0, Lcom/netease/mpay/codescanner/a;->d:Landroid/support/v4/app/FragmentActivity;

    sget-object v10, Lcom/netease/mpay/b$a;->r:Lcom/netease/mpay/b$a;

    new-instance v11, Lcom/netease/mpay/b/p;

    new-instance v12, Lcom/netease/mpay/b/a$a;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/codescanner/a;->a:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v12, v1, v2, v3}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    new-instance v1, Lcom/netease/mpay/b/p$a;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v6, v0, Lcom/netease/mpay/e/b/o;->f:I

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    move-object v2, p2

    invoke-direct/range {v1 .. v7}, Lcom/netease/mpay/b/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lcom/netease/mpay/b/p$b;

    invoke-direct {v2, p1, v8}, Lcom/netease/mpay/b/p$b;-><init>(Ljava/lang/String;Lcom/netease/mpay/PaymentCallback;)V

    invoke-direct {v11, v12, v1, v2}, Lcom/netease/mpay/b/p;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/b/p$a;Lcom/netease/mpay/b/p$b;)V

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-static {v9, v10, v11, v1, v0}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_0
.end method
