.class Lcom/netease/mpay/jb$b;
.super Lcom/netease/mpay/widget/bf$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Lcom/netease/mpay/server/response/e$b;

.field final synthetic b:Lcom/netease/mpay/jb;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/jb;Lcom/netease/mpay/server/response/e$b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    invoke-direct {p0}, Lcom/netease/mpay/widget/bf$c;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/jb$b;->a:Lcom/netease/mpay/server/response/e$b;

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

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v1, "epay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "cz_wyb"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "ecard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "cz_wydk"

    goto :goto_0

    :cond_2
    const-string v1, "mcard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "cz_sjcz"

    goto :goto_0

    :cond_3
    const-string v1, "uppay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "cz_yl"

    goto :goto_0

    :cond_4
    const-string v1, "bankcard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "cz_yhk"

    goto :goto_0

    :cond_5
    const-string v1, "alipay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "cz_zfb"

    goto :goto_0

    :cond_6
    const-string v1, "weixinpay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "cz_wxzf"

    goto :goto_0

    :cond_7
    const-string v1, "weixinpayqr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "cz_wxzfqr"

    goto :goto_0

    :cond_8
    const-string v1, "alipayqr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "cz_zfbqr"

    goto :goto_0

    :cond_9
    const-string v1, "tenpay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "cz_qqzf"

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    invoke-static {v0}, Lcom/netease/mpay/jb;->b(Lcom/netease/mpay/jb;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zhcz"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/netease/mpay/jb$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/mpay/jb$b;->a:Lcom/netease/mpay/server/response/e$b;

    iget-object v0, v0, Lcom/netease/mpay/server/response/e$b;->g:Ljava/lang/String;

    const-string v1, "weixinpay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    iget-object v0, v0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    iget-object v0, v0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->ed:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    iget-object v0, v0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v4, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    iget-object v4, v4, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v4}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/jb$b;->a:Lcom/netease/mpay/server/response/e$b;

    iget-object v0, v0, Lcom/netease/mpay/server/response/e$b;->g:Ljava/lang/String;

    const-string v1, "tenpay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    iget-object v0, v0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    iget-object v0, v0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->ec:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    iget-object v0, v0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v4, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    iget-object v4, v4, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v4}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    invoke-static {v0}, Lcom/netease/mpay/jb;->c(Lcom/netease/mpay/jb;)Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    iget-object v0, v0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    iget-object v5, v0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    invoke-static {v0}, Lcom/netease/mpay/jb;->c(Lcom/netease/mpay/jb;)Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-object v6, v0, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    invoke-static {v0}, Lcom/netease/mpay/jb;->d(Lcom/netease/mpay/jb;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iget-object v7, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    invoke-static {v0}, Lcom/netease/mpay/jb;->d(Lcom/netease/mpay/jb;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iget-object v8, v0, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    invoke-static {v0}, Lcom/netease/mpay/jb;->d(Lcom/netease/mpay/jb;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iget v9, v0, Lcom/netease/mpay/e/b/o;->f:I

    const-string v10, "zhcz"

    iget-object v0, p0, Lcom/netease/mpay/jb$b;->a:Lcom/netease/mpay/server/response/e$b;

    iget-object v0, v0, Lcom/netease/mpay/server/response/e$b;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/mpay/jb$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    invoke-static {v0}, Lcom/netease/mpay/jb;->b(Lcom/netease/mpay/jb;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zhcz"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v4 .. v13}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    new-instance v0, Lcom/netease/mpay/b/r;

    iget-object v1, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    invoke-static {v1}, Lcom/netease/mpay/jb;->e(Lcom/netease/mpay/jb;)Lcom/netease/mpay/b/t;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/b/r$a;

    iget-object v4, p0, Lcom/netease/mpay/jb$b;->a:Lcom/netease/mpay/server/response/e$b;

    iget-object v5, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    invoke-static {v5}, Lcom/netease/mpay/jb;->f(Lcom/netease/mpay/jb;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/mpay/jb$b;->a:Lcom/netease/mpay/server/response/e$b;

    iget-object v6, v6, Lcom/netease/mpay/server/response/e$b;->g:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/netease/mpay/jb$b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/netease/mpay/b/r$a;-><init>(Lcom/netease/mpay/server/response/e$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/b/r;-><init>(Lcom/netease/mpay/b/t;Lcom/netease/mpay/b/r$a;)V

    iget-object v1, p0, Lcom/netease/mpay/jb$b;->b:Lcom/netease/mpay/jb;

    iget-object v1, v1, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v2, Lcom/netease/mpay/b$a;->t:Lcom/netease/mpay/b$a;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto/16 :goto_0
.end method
