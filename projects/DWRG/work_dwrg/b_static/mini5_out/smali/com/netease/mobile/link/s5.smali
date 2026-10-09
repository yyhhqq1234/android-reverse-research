.class public final Lcom/netease/mobile/link/s5;
.super Lcom/netease/mobile/link/z;
.source "SourceFile"


# instance fields
.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/netease/mobile/link/z;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mobile/link/s5;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/netease/mobile/link/z3;->b()Lcom/netease/mobile/link/z3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/z3;->e()V

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->o:Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;

    .line 2
    invoke-interface {v0}, Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;->syncUserRelatedLoginInfo()V

    iget-object v0, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v0, v0, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    sget-object v1, Lcom/netease/mobile/link/b5;->c:Lcom/netease/mobile/link/b5;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/netease/mobile/link/R$id;->btn_mobile_link__confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lcom/netease/mobile/link/R$string;->mobile_link__enter_game:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    sget v0, Lcom/netease/mobile/link/R$id;->btn_mobile_link__confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/netease/mobile/link/r5;

    invoke-direct {v1, p0}, Lcom/netease/mobile/link/r5;-><init>(Lcom/netease/mobile/link/s5;)V

    invoke-virtual {v1}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v0, Lcom/netease/mobile/link/R$id;->tv_mobile_link__current_phone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/a5;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mobile/link/r0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final d()I
    .locals 1

    sget v0, Lcom/netease/mobile/link/R$layout;->mobile_link__link_phone_success:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "bm_success"

    return-object v0
.end method

.method public final j()V
    .locals 2

    iget-boolean v0, p0, Lcom/netease/mobile/link/s5;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v1, v1, Lcom/netease/mobile/link/m0;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mobile/link/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mobile/link/s5;->f:Z

    :cond_0
    return-void
.end method
