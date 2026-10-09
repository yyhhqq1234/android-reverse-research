.class public final Lcom/netease/mobile/link/n7;
.super Lcom/netease/mobile/link/z;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobile/link/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 12

    sget v0, Lcom/netease/mobile/link/R$id;->tv_mobile_link__current_phone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/netease/mobile/link/R$id;->btn_mobile_link__confirm:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/netease/mobile/link/R$id;->btn_mobile_link__others:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/netease/mobile/link/R$id;->mobile_link__protocol:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/netease/mobile/link/R$id;->mobile_link__checkbox:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    sget v5, Lcom/netease/mobile/link/R$id;->ll_mobile_link__checkbox_area:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v1, :cond_0

    new-instance v5, Lcom/netease/mobile/link/g7;

    invoke-direct {v5, p0, v4}, Lcom/netease/mobile/link/g7;-><init>(Lcom/netease/mobile/link/n7;Landroid/widget/ToggleButton;)V

    invoke-virtual {v5}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v1, v1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    invoke-virtual {v1}, Lcom/netease/mobile/link/b5;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/netease/mobile/link/R$string;->mobile_link__sms_verify:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/netease/mobile/link/R$string;->mobile_link__link_other_phone:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/netease/mobile/link/h7;

    invoke-direct {v1, p0}, Lcom/netease/mobile/link/h7;-><init>(Lcom/netease/mobile/link/n7;)V

    invoke-virtual {v1}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v6, Lcom/netease/mobile/link/R$string;->mobile_link__local_phone_is:I

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/mobile/link/a5;->g()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v4, :cond_4

    new-instance v0, Lcom/netease/mobile/link/i7;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/i7;-><init>(Lcom/netease/mobile/link/n7;)V

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_4
    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    new-instance v0, Lcom/netease/mobile/link/j7;

    invoke-direct {v0, v4}, Lcom/netease/mobile/link/j7;-><init>(Landroid/widget/ToggleButton;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    new-instance p1, Lcom/netease/mobile/link/k7;

    invoke-direct {p1, v4}, Lcom/netease/mobile/link/k7;-><init>(Landroid/widget/ToggleButton;)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setHighlightColor(I)V

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 2
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/a5;->b()Lcom/netease/mobile/link/t;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mobile/link/t;->g:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/netease/mobile/link/f6;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mobile/link/t$a;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v5, Lcom/netease/mobile/link/R$string;->mobile_link__read_and_agree:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz p1, :cond_6

    iget-object v4, p1, Lcom/netease/mobile/link/t$a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Lcom/netease/mobile/link/w5$c;

    new-instance v11, Lcom/netease/mobile/link/w5$a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    iget-object v0, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v5, Lcom/netease/mobile/link/R$color;->mobile_link__font_h4:I

    invoke-static {v0, v5}, Lcom/netease/mobile/link/k6;->a(Landroid/content/Context;I)I

    move-result v8

    new-instance v0, Lcom/netease/mobile/link/l7;

    invoke-direct {v0, p0, p1}, Lcom/netease/mobile/link/l7;-><init>(Lcom/netease/mobile/link/n7;Lcom/netease/mobile/link/t$a;)V

    invoke-virtual {v0}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v10

    const/4 v9, 0x1

    move-object v5, v11

    .line 3
    invoke-direct/range {v5 .. v10}, Lcom/netease/mobile/link/w5$a;-><init>(IIIZLandroid/view/View$OnClickListener;)V

    aput-object v11, v2, v1

    .line 4
    invoke-static {v3, v4, v2}, Lcom/netease/mobile/link/w5;->a(Landroid/widget/TextView;Ljava/lang/String;[Lcom/netease/mobile/link/w5$c;)V

    :cond_7
    return-void
.end method

.method public final d()I
    .locals 1

    sget v0, Lcom/netease/mobile/link/R$layout;->mobile_link__yd_phone:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v0, v0, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    invoke-virtual {v0}, Lcom/netease/mobile/link/b5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bm_verify_onepass"

    return-object v0

    :cond_0
    const-string v0, "bm_onepass"

    return-object v0
.end method
