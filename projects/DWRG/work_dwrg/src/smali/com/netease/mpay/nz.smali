.class Lcom/netease/mpay/nz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/widget/af$a$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/np;


# direct methods
.method constructor <init>(Lcom/netease/mpay/np;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/nz;->a:Lcom/netease/mpay/np;

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

.method private a(Landroid/widget/TextView;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/nz;->a:Lcom/netease/mpay/np;

    iget-object v0, v0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$c;->k:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/nz;->a:Lcom/netease/mpay/np;

    iget-object v0, v0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$c;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/netease/mpay/e/b/u;I)V
    .locals 5

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bl:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/netease/mpay/e/b/u;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/nz;->a:Lcom/netease/mpay/np;

    invoke-static {v1}, Lcom/netease/mpay/np;->g(Lcom/netease/mpay/np;)Lcom/netease/mpay/c/a;

    move-result-object v1

    iget-object v2, p2, Lcom/netease/mpay/e/b/u;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/c/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Lcom/netease/mpay/e/b/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p2, Lcom/netease/mpay/e/b/u;->e:I

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/nz;->a(Landroid/widget/TextView;I)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bj:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Lcom/netease/mpay/e/b/u;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p2, Lcom/netease/mpay/e/b/u;->e:I

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/nz;->a(Landroid/widget/TextView;I)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "yyyy-MM-dd"

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p2, Lcom/netease/mpay/e/b/u;->i:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bY:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p2, Lcom/netease/mpay/e/b/u;->e:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/netease/mpay/e/b/u;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/mpay/nz;->a(Landroid/view/View;Lcom/netease/mpay/e/b/u;I)V

    return-void
.end method
