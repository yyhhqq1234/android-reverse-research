.class Lcom/netease/mpay/ik;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/bc$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/ij;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ij;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

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
.method public a(Lcom/netease/mpay/server/response/OrderInit$PayChannel;)V
    .locals 8

    const/4 v7, 0x7

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->e:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "weixinpay"

    iget-object v2, p1, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    iget-object v0, v0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    const-string v2, "tenpay"

    iget-object v4, p1, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    iget-object v2, v2, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v2}, Lcom/netease/mpay/m;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    :goto_2
    if-nez v0, :cond_2

    if-eqz v2, :cond_6

    :cond_2
    iget-object v1, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    iget-object v1, v1, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_5

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->ed:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    iget-object v0, v0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v4, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    iget-object v4, v4, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v4}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_1

    :cond_4
    move v2, v6

    goto :goto_2

    :cond_5
    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->ec:I

    goto :goto_3

    :cond_6
    const-string v0, "ecard"

    iget-object v2, p1, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/ij;)Lcom/netease/mpay/server/response/OrderInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/server/response/OrderInit;->b()I

    move-result v0

    iget-object v2, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    invoke-static {v2}, Lcom/netease/mpay/ij;->b(Lcom/netease/mpay/ij;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v0, :cond_8

    iget-object v0, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->c(Lcom/netease/mpay/ij;)Lcom/netease/mpay/ij$a;

    move-result-object v0

    const-string v1, "zf_cz"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/ij$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget v0, v0, Lcom/netease/mpay/b/p$a;->e:I

    if-ne v7, v0, :cond_7

    new-instance v0, Lcom/netease/mpay/f/ay;

    iget-object v1, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    iget-object v1, v1, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    invoke-static {v2}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/p;->c()Lcom/netease/mpay/MpayConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    invoke-static {v3}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/p;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    invoke-static {v4}, Lcom/netease/mpay/ij;->d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/b/p;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/il;

    invoke-direct {v5, p0, p1}, Lcom/netease/mpay/il;-><init>(Lcom/netease/mpay/ik;Lcom/netease/mpay/server/response/OrderInit$PayChannel;)V

    iget-object v6, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    invoke-static {v6}, Lcom/netease/mpay/ij;->e(Lcom/netease/mpay/ij;)Lcom/netease/mpay/e/b/o;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/ay;-><init>(Landroid/app/Activity;Lcom/netease/mpay/MpayConfig;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/ay$a;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ay;->h()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    invoke-static {v0, p1}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/ij;Lcom/netease/mpay/server/response/OrderInit$PayChannel;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->f(Lcom/netease/mpay/ij;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    invoke-static {v0}, Lcom/netease/mpay/ij;->c(Lcom/netease/mpay/ij;)Lcom/netease/mpay/ij$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/ij$a;->d()V

    iget-object v0, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    invoke-static {v0, v1}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/ij;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/ik;->a:Lcom/netease/mpay/ij;

    invoke-static {v0, p1}, Lcom/netease/mpay/ij;->b(Lcom/netease/mpay/ij;Lcom/netease/mpay/server/response/OrderInit$PayChannel;)V

    goto/16 :goto_0
.end method
