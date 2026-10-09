.class public final Lcom/netease/mobile/link/v0;
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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mobile/link/z;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    :cond_0
    sget v0, Lcom/netease/mobile/link/R$id;->tv_mobile_link__current_phone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mobile/link/a5;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mobile/link/r0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->n:Lcom/netease/mobile/link/relatelogin/CheckGuideResp;

    .line 4
    iget-object v0, v0, Lcom/netease/mobile/link/relatelogin/CheckGuideResp;->guideSwitchText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/netease/mobile/link/R$id;->tv_mobile_link__related_login_guide_hint:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netease/mobile/link/t5;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1
    sget v0, Lcom/netease/mobile/link/R$id;->btn_mobile_link__confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/netease/mobile/link/s0;

    invoke-direct {v1, p0}, Lcom/netease/mobile/link/s0;-><init>(Lcom/netease/mobile/link/v0;)V

    invoke-virtual {v1}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/netease/mobile/link/R$id;->btn_mobile_link__cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/netease/mobile/link/j6;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/netease/mobile/link/t0;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/t0;-><init>(Lcom/netease/mobile/link/v0;)V

    invoke-virtual {v0}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final d()I
    .locals 1

    sget v0, Lcom/netease/mobile/link/R$layout;->mobile_link__login_guide_related_login:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "login_bm_switch"

    return-object v0
.end method
