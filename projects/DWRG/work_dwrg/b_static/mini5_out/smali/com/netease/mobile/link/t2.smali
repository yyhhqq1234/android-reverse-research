.class public final Lcom/netease/mobile/link/t2;
.super Lcom/netease/mobile/link/z;
.source "SourceFile"


# instance fields
.field public f:Lcom/netease/mobile/link/m5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobile/link/z;-><init>()V

    return-void
.end method

.method public static a(Lcom/netease/mobile/link/t2;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/mobile/link/t2;->f:Lcom/netease/mobile/link/m5;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netease/mobile/link/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v0, Lcom/netease/mobile/link/R$string;->mobile_link__error_sms_null:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/netease/mobile/link/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 4
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/netease/mobile/link/p4;->a(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/netease/mobile/link/t2;->f:Lcom/netease/mobile/link/m5;

    invoke-virtual {v1}, Lcom/netease/mobile/link/l;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mobile/link/c6;

    invoke-virtual {v0}, Lcom/netease/mobile/link/f6;->a()Lcom/netease/mobile/link/f6$a;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v4, v4, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    invoke-direct {v2, v3, v4}, Lcom/netease/mobile/link/c6;-><init>(Lcom/netease/mobile/link/f6$a;Lcom/netease/mobile/link/b5;)V

    iget-object v0, v0, Lcom/netease/mobile/link/f6;->i:Ljava/lang/String;

    .line 5
    iput-object v0, v2, Lcom/netease/mobile/link/c6;->i:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/netease/mobile/link/t2;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 7
    iput v0, v2, Lcom/netease/mobile/link/c6;->j:I

    iput-object p1, v2, Lcom/netease/mobile/link/c6;->k:Ljava/lang/String;

    iput-object v1, v2, Lcom/netease/mobile/link/c6;->l:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    .line 8
    iput p1, v2, Lcom/netease/mobile/link/c6;->j:I

    iput-object v1, v2, Lcom/netease/mobile/link/c6;->l:Ljava/lang/String;

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/netease/mobile/link/t2;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lcom/netease/mobile/link/c6;->c()V

    :cond_2
    new-instance p1, Lcom/netease/mobile/link/e6;

    new-instance v0, Lcom/netease/mobile/link/u2;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/u2;-><init>(Lcom/netease/mobile/link/t2;)V

    invoke-direct {p1, v2, v0}, Lcom/netease/mobile/link/e6;-><init>(Lcom/netease/mobile/link/c6;Lcom/netease/mobile/link/n;)V

    invoke-virtual {p1}, Lcom/netease/mobile/link/f5;->a()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 8

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/a5;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mobile/link/a5;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/mobile/link/t2;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    new-instance v3, Lcom/netease/mobile/link/m5;

    iget-object v4, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v5, Lcom/netease/mobile/link/R$id;->ll_mobile_link__sms_box:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/netease/mobile/link/q2;

    invoke-direct {v6, p0, v2}, Lcom/netease/mobile/link/q2;-><init>(Lcom/netease/mobile/link/t2;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v6

    new-instance v7, Lcom/netease/mobile/link/p2;

    invoke-direct {v7, p0, v2}, Lcom/netease/mobile/link/p2;-><init>(Lcom/netease/mobile/link/t2;Ljava/lang/String;)V

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/netease/mobile/link/m5;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/netease/mobile/link/t2;->f:Lcom/netease/mobile/link/m5;

    iget-object v4, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v5, Lcom/netease/mobile/link/R$string;->mobile_link__input_sms_hint:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 10
    iget-object v3, v3, Lcom/netease/mobile/link/l;->a:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v3, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v3, v3, Lcom/netease/mobile/link/m0;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/netease/mobile/link/t2;->a(Ljava/lang/String;)V

    :cond_1
    sget v3, Lcom/netease/mobile/link/R$id;->tv_mobile_link__current_phone:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/netease/mobile/link/t2;->l()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v5, Lcom/netease/mobile/link/R$string;->mobile_link__history_phone_is:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/netease/mobile/link/r0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v5, Lcom/netease/mobile/link/R$string;->mobile_link__current_phone_is:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/netease/mobile/link/r0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    sget v0, Lcom/netease/mobile/link/R$id;->tv_mobile_link__has_mobile_disabled:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/mobile/link/t2;->l()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    .line 12
    iget-boolean v1, v1, Lcom/netease/mobile/link/a5;->p:Z

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/netease/mobile/link/j6;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mobile/link/r2;

    invoke-direct {v1, p0}, Lcom/netease/mobile/link/r2;-><init>(Lcom/netease/mobile/link/t2;)V

    invoke-virtual {v1}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    sget v0, Lcom/netease/mobile/link/R$id;->btn_mobile_link__confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/netease/mobile/link/t2;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/netease/mobile/link/R$string;->mobile_link__next:I

    goto :goto_3

    :cond_5
    sget v0, Lcom/netease/mobile/link/R$string;->mobile_link__link_phone:I

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/netease/mobile/link/s2;

    invoke-direct {v0, p0, v2}, Lcom/netease/mobile/link/s2;-><init>(Lcom/netease/mobile/link/t2;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 15
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/netease/mobile/link/p4;->a(Landroid/app/Activity;)V

    new-instance v1, Lcom/netease/mobile/link/e5;

    invoke-virtual {v0}, Lcom/netease/mobile/link/f6;->a()Lcom/netease/mobile/link/f6$a;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v0, v0, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    .line 16
    iget-object v5, v0, Lcom/netease/mobile/link/b5;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Lcom/netease/mobile/link/t2;->l()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v7, 0x3

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    invoke-virtual {p0}, Lcom/netease/mobile/link/t2;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x2

    :goto_1
    new-instance v9, Lcom/netease/mobile/link/t2$a;

    invoke-direct {v9, p0}, Lcom/netease/mobile/link/t2$a;-><init>(Lcom/netease/mobile/link/t2;)V

    move-object v3, v1

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/netease/mobile/link/e5;-><init>(Lcom/netease/mobile/link/f6$a;Ljava/lang/String;Ljava/lang/String;IILcom/netease/mobile/link/n;)V

    invoke-virtual {v1}, Lcom/netease/mobile/link/f5;->a()V

    return-void
.end method

.method public final d()I
    .locals 1

    sget v0, Lcom/netease/mobile/link/R$layout;->mobile_link__input_sms:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/netease/mobile/link/t2;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bm_verify_sms_used"

    return-object v0

    :cond_0
    const-string v0, "bm_verify_sms_current"

    return-object v0
.end method

.method public final l()Z
    .locals 1

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/a5;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v0, v0, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object v1, Lcom/netease/mobile/link/b5;->g:Lcom/netease/mobile/link/b5;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/netease/mobile/link/b5;->f:Lcom/netease/mobile/link/b5;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/netease/mobile/link/b5;->k:Lcom/netease/mobile/link/b5;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
