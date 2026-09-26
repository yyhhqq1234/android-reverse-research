.class Lcom/netease/mpay/jd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/af$b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/jb;


# direct methods
.method constructor <init>(Lcom/netease/mpay/jb;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/jd;->a:Lcom/netease/mpay/jb;

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

    iget-object v0, p0, Lcom/netease/mpay/jd;->a:Lcom/netease/mpay/jb;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/netease/mpay/jb;->a(Lcom/netease/mpay/jb;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/jd;->a:Lcom/netease/mpay/jb;

    invoke-static {v0}, Lcom/netease/mpay/jb;->j(Lcom/netease/mpay/jb;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dU:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/ah;Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netease/mpay/jd;->a:Lcom/netease/mpay/jb;

    iget-object v0, v0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/netease/mpay/server/response/ah;->c:Ljava/lang/Integer;

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/netease/mpay/jd;->a:Lcom/netease/mpay/jb;

    invoke-static {v1}, Lcom/netease/mpay/jb;->h(Lcom/netease/mpay/jb;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/jd;->a:Lcom/netease/mpay/jb;

    invoke-static {v2}, Lcom/netease/mpay/jb;->g(Lcom/netease/mpay/jb;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->r:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/mpay/jd;->a:Lcom/netease/mpay/jb;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/mpay/jb;->a(Lcom/netease/mpay/jb;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/jd;->a:Lcom/netease/mpay/jb;

    invoke-static {v0}, Lcom/netease/mpay/jb;->h(Lcom/netease/mpay/jb;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/jd;->a:Lcom/netease/mpay/jb;

    iget-object v0, v0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/jd;->a:Lcom/netease/mpay/jb;

    invoke-static {v1}, Lcom/netease/mpay/jb;->i(Lcom/netease/mpay/jb;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/jd;->a:Lcom/netease/mpay/jb;

    invoke-static {v2}, Lcom/netease/mpay/jb;->e(Lcom/netease/mpay/jb;)Lcom/netease/mpay/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/t;->j()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/server/response/OrderInit;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/mpay/jd;->a:Lcom/netease/mpay/jb;

    invoke-static {v0}, Lcom/netease/mpay/jb;->j(Lcom/netease/mpay/jb;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/jd;->a:Lcom/netease/mpay/jb;

    invoke-static {v0}, Lcom/netease/mpay/jb;->j(Lcom/netease/mpay/jb;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dU:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
