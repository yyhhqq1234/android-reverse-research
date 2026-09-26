.class Lcom/netease/mpay/jh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/af$b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/jg;


# direct methods
.method constructor <init>(Lcom/netease/mpay/jg;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/jh;->a:Lcom/netease/mpay/jg;

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

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jh;->a:Lcom/netease/mpay/jg;

    invoke-static {v0, p2}, Lcom/netease/mpay/jg;->a(Lcom/netease/mpay/jg;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/jh;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->c(Lcom/netease/mpay/jg;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dU:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/ah;Landroid/graphics/Bitmap;)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jh;->a:Lcom/netease/mpay/jg;

    iget-object v0, v0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/netease/mpay/server/response/ah;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/jh;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->b(Lcom/netease/mpay/jg;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/netease/mpay/server/response/ah;->c:Ljava/lang/Integer;

    aput-object v4, v3, v7

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netease/mpay/jh;->a:Lcom/netease/mpay/jg;

    invoke-static {v5}, Lcom/netease/mpay/jg;->a(Lcom/netease/mpay/jg;)Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/netease/mpay/widget/RIdentifier$h;->cv:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/jh;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->c(Lcom/netease/mpay/jg;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/jh;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->d(Lcom/netease/mpay/jg;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/jh;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->b(Lcom/netease/mpay/jg;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/jh;->a:Lcom/netease/mpay/jg;

    iget-object v0, v0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/jh;->a:Lcom/netease/mpay/jg;

    invoke-static {v1}, Lcom/netease/mpay/jg;->e(Lcom/netease/mpay/jg;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/jh;->a:Lcom/netease/mpay/jg;

    invoke-static {v2}, Lcom/netease/mpay/jg;->f(Lcom/netease/mpay/jg;)Lcom/netease/mpay/b/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->j()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/server/response/OrderInit;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/jh;->a:Lcom/netease/mpay/jg;

    invoke-static {v0}, Lcom/netease/mpay/jg;->c(Lcom/netease/mpay/jg;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dU:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
