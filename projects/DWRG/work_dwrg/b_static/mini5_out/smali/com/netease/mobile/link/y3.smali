.class public final Lcom/netease/mobile/link/y3;
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
    .locals 5

    sget v0, Lcom/netease/mobile/link/R$id;->btn_mobile_link__cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lcom/netease/mobile/link/R$id;->btn_mobile_link__confirm:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/netease/mobile/link/v3;

    invoke-direct {v2, p0}, Lcom/netease/mobile/link/v3;-><init>(Lcom/netease/mobile/link/y3;)V

    invoke-virtual {v2}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Lcom/netease/mobile/link/w3;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/w3;-><init>(Lcom/netease/mobile/link/y3;)V

    invoke-virtual {v0}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v0, Lcom/netease/mobile/link/R$id;->tv_mobile_link__history_phone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mobile/link/R$string;->mobile_link__unified_update_phone_tip:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mobile/link/a5;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/mobile/link/r0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final d()I
    .locals 1

    sget v0, Lcom/netease/mobile/link/R$layout;->mobile_link__noinput_history_phone:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "bm_unify"

    return-object v0
.end method
