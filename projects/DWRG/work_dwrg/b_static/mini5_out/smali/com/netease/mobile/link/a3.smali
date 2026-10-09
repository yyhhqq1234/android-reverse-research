.class public final Lcom/netease/mobile/link/a3;
.super Lcom/netease/mobile/link/z;
.source "SourceFile"


# instance fields
.field public f:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobile/link/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/netease/mobile/link/R$id;->btn_mobile_link__cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lcom/netease/mobile/link/R$id;->btn_mobile_link__confirm:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/netease/mobile/link/w2;

    invoke-direct {v2, p0}, Lcom/netease/mobile/link/w2;-><init>(Lcom/netease/mobile/link/a3;)V

    invoke-virtual {v2}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Lcom/netease/mobile/link/x2;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/x2;-><init>(Lcom/netease/mobile/link/a3;)V

    invoke-virtual {v0}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v0, Lcom/netease/mobile/link/R$id;->tv_mobile_link__current_phone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mobile/link/a5;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mobile/link/r0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 1
    iget-boolean v1, v0, Lcom/netease/mobile/link/a5;->p:Z

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->o:Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;

    invoke-interface {v0}, Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;->getUserConfig()Lcom/netease/mobile/link/relatelogin/UserConfig;

    move-result-object v0

    iget-boolean v1, v0, Lcom/netease/mobile/link/relatelogin/UserConfig;->mMobileRelatedLogin:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/netease/mobile/link/relatelogin/UserConfig;->mAllowUpdateRlStatus:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 2
    sget v0, Lcom/netease/mobile/link/R$id;->tb_mobile_link__related_login_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/netease/mobile/link/a3;->f:Landroid/widget/ToggleButton;

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->o:Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;

    invoke-interface {v0}, Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;->getUserConfig()Lcom/netease/mobile/link/relatelogin/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mobile/link/relatelogin/UserConfig;->mRelatedLoginEnabled:Z

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/netease/mobile/link/a3;->f:Landroid/widget/ToggleButton;

    invoke-static {p1}, Lcom/netease/mobile/link/j6;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/netease/mobile/link/y2;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/y2;-><init>(Lcom/netease/mobile/link/a3;)V

    invoke-virtual {v0}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    sget v0, Lcom/netease/mobile/link/R$id;->ll_mobile_link__related_login:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final d()I
    .locals 1

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/a5;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netease/mobile/link/R$layout;->mobile_link__current_phone:I

    return v0

    :cond_0
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mobile/link/a5;->p:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/netease/mobile/link/R$layout;->mobile_link__current_phone_update_related_login:I

    return v0

    :cond_1
    sget v0, Lcom/netease/mobile/link/R$layout;->mobile_link__current_phone_update:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/a5;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bm_status_fixed"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mobile/link/a5;->p:Z

    if-eqz v0, :cond_1

    const-string v0, "user_center_bm"

    return-object v0

    :cond_1
    const-string v0, "bm_status"

    return-object v0
.end method
