.class public final Lcom/netease/mobile/link/l1;
.super Lcom/netease/mobile/link/z;
.source "SourceFile"


# instance fields
.field public f:Lcom/netease/mobile/link/h1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobile/link/z;-><init>()V

    return-void
.end method

.method public static a(Lcom/netease/mobile/link/l1;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/netease/mobile/link/l1;->f:Lcom/netease/mobile/link/h1;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/netease/mobile/link/l3;->d:Lcom/netease/mobile/link/k3;

    invoke-virtual {v0}, Lcom/netease/mobile/link/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mobile/link/R$string;->mobile_link__error_phone_null:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/netease/mobile/link/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/l1;->f:Lcom/netease/mobile/link/h1;

    .line 4
    iget-object v0, v0, Lcom/netease/mobile/link/l3;->d:Lcom/netease/mobile/link/k3;

    invoke-virtual {v0}, Lcom/netease/mobile/link/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 7
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/netease/mobile/link/p4;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mobile/link/a5;->d()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/netease/mobile/link/r0;->b(Ljava/lang/String;)Lcom/netease/mobile/link/r0$a;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mobile/link/r0$a;->a:Ljava/lang/String;

    .line 9
    invoke-static {v2, v0}, Lcom/netease/mobile/link/r0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/netease/mobile/link/b6;

    invoke-virtual {v1}, Lcom/netease/mobile/link/f6;->a()Lcom/netease/mobile/link/f6$a;

    move-result-object v4

    iget-object v5, v1, Lcom/netease/mobile/link/f6;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v1, v1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    .line 10
    iget-object v6, v1, Lcom/netease/mobile/link/b5;->a:Ljava/lang/String;

    .line 11
    new-instance v8, Lcom/netease/mobile/link/k1;

    invoke-direct {v8, p0}, Lcom/netease/mobile/link/k1;-><init>(Lcom/netease/mobile/link/l1;)V

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/netease/mobile/link/b6;-><init>(Lcom/netease/mobile/link/f6$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/n;)V

    invoke-virtual {v0}, Lcom/netease/mobile/link/f5;->a()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 5

    new-instance v0, Lcom/netease/mobile/link/h1;

    iget-object v1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mobile/link/R$id;->ll_mobile_link__phone_box:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/netease/mobile/link/h1;-><init>(Lcom/netease/mobile/link/l1;Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netease/mobile/link/l1;->f:Lcom/netease/mobile/link/h1;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/a5;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mobile/link/r0;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/mobile/link/l1;->f:Lcom/netease/mobile/link/h1;

    .line 12
    invoke-static {v0}, Lcom/netease/mobile/link/r0;->b(Ljava/lang/String;)Lcom/netease/mobile/link/r0$a;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mobile/link/r0$a;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v2}, Lcom/netease/mobile/link/l3;->b(Ljava/lang/String;)V

    :cond_0
    sget v1, Lcom/netease/mobile/link/R$id;->btn_mobile_link__cancel:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/netease/mobile/link/R$id;->btn_mobile_link__confirm:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-eqz v1, :cond_1

    new-instance v3, Lcom/netease/mobile/link/i1;

    invoke-direct {v3, p0}, Lcom/netease/mobile/link/i1;-><init>(Lcom/netease/mobile/link/l1;)V

    invoke-virtual {v3}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v2, :cond_2

    new-instance v1, Lcom/netease/mobile/link/j1;

    invoke-direct {v1, p0}, Lcom/netease/mobile/link/j1;-><init>(Lcom/netease/mobile/link/l1;)V

    invoke-virtual {v1}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    sget v1, Lcom/netease/mobile/link/R$id;->tv_mobile_link__history_phone:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mobile/link/R$string;->mobile_link__unified_update_phone_tip:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/netease/mobile/link/r0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final d()I
    .locals 1

    sget v0, Lcom/netease/mobile/link/R$layout;->mobile_link__input_history_phone:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "bm_unify_verify"

    return-object v0
.end method
