.class public Lcom/netease/mpay/MpayActivity;
.super Lcom/netease/mpay/af;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/af;-><init>()V

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
.method public inflateActionBar(Lcom/netease/mpay/a;)V
    .locals 3

    iget-object v1, p1, Lcom/netease/mpay/a;->a:Landroid/support/v4/app/FragmentActivity;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->n:I

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/netease/mpay/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->l:I

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/netease/mpay/fl;

    invoke-direct {v2, p0, p1}, Lcom/netease/mpay/fl;-><init>(Lcom/netease/mpay/MpayActivity;Lcom/netease/mpay/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->m:I

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netease/mpay/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$g;->b:I

    invoke-super {p0, v0}, Lcom/netease/mpay/af;->setContentView(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->q:I

    invoke-virtual {p0, v0}, Lcom/netease/mpay/MpayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/MpayActivity;->a:Lcom/netease/mpay/a;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/MpayActivity;->inflateActionBar(Lcom/netease/mpay/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$g;->b:I

    invoke-super {p0, v0}, Lcom/netease/mpay/af;->setContentView(I)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->q:I

    invoke-virtual {p0, v0}, Lcom/netease/mpay/MpayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/netease/mpay/MpayActivity;->a:Lcom/netease/mpay/a;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/MpayActivity;->inflateActionBar(Lcom/netease/mpay/a;)V

    return-void
.end method
