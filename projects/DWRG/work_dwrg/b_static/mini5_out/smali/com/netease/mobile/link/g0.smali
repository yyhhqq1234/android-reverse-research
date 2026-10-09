.class public final Lcom/netease/mobile/link/g0;
.super Lcom/netease/mobile/link/z;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobile/link/z;-><init>()V

    return-void
.end method

.method public static a(Lcom/netease/mobile/link/g0;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/a5;->b()Lcom/netease/mobile/link/t;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v1, v1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    invoke-virtual {v1}, Lcom/netease/mobile/link/b5;->b()Z

    move-result v1

    const-string v2, "MobileLink"

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/netease/mobile/link/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobile/link/a5;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "verifyWithYDOrSMS: YD is available"

    .line 2
    invoke-static {v2, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/netease/mobile/link/m4;

    iget-object v1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mobile/link/e0;

    invoke-direct {v2, p0}, Lcom/netease/mobile/link/e0;-><init>(Lcom/netease/mobile/link/g0;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/mobile/link/m4;-><init>(Landroid/app/Activity;Lcom/netease/mobile/link/n;)V

    invoke-virtual {v0}, Lcom/netease/mobile/link/f5;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "verifyWithYDOrSMS: YD is not available"

    .line 4
    invoke-static {v2, v0}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/netease/mobile/link/z;->b:Lcom/netease/mobile/link/y;

    iget-object p0, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v1, p0, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    iget-object v2, p0, Lcom/netease/mobile/link/m0;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-static {v1, v2, p0}, Lcom/netease/mobile/link/p0;->e(Lcom/netease/mobile/link/b5;Ljava/lang/String;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    :goto_0
    return-void
.end method

.method public static a(Lcom/netease/mobile/link/v4;Lcom/netease/mobile/link/m0;Lcom/netease/mobile/link/y;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mobile/link/v4<",
            "Lcom/netease/mobile/link/d6;",
            ">;",
            "Lcom/netease/mobile/link/m0;",
            "Lcom/netease/mobile/link/y;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/netease/mobile/link/v4;->b:Ljava/lang/Object;

    check-cast p0, Lcom/netease/mobile/link/d6;

    .line 6
    iget v0, p0, Lcom/netease/mobile/link/d6;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 7
    iget p0, p0, Lcom/netease/mobile/link/d6;->c:I

    if-ne p0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, ""

    if-eqz v0, :cond_2

    .line 8
    iget-object p0, p1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    .line 9
    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/l1;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3, p1}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    .line 10
    iget-object p0, p1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    .line 11
    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/o2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3, p1}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    goto :goto_2

    .line 12
    :cond_4
    iget-object p0, p1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    .line 13
    new-instance v0, Lcom/netease/mobile/link/m0;

    const-class v1, Lcom/netease/mobile/link/y3;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3, p1}, Lcom/netease/mobile/link/m0;-><init>(Lcom/netease/mobile/link/b5;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobile/link/r3;)V

    .line 14
    :goto_2
    invoke-virtual {p2, v0}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    goto :goto_3

    :cond_5
    iget-object p0, p1, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    iget-object p1, p1, Lcom/netease/mobile/link/m0;->e:Lcom/netease/mobile/link/r3;

    invoke-static {p0, p1}, Lcom/netease/mobile/link/p0;->b(Lcom/netease/mobile/link/b5;Lcom/netease/mobile/link/r3;)Lcom/netease/mobile/link/m0;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/netease/mobile/link/y;->a(Lcom/netease/mobile/link/m0;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 6

    sget v0, Lcom/netease/mobile/link/R$id;->btn_mobile_link__cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lcom/netease/mobile/link/R$id;->btn_mobile_link__confirm:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/netease/mobile/link/c0;

    invoke-direct {v2, p0}, Lcom/netease/mobile/link/c0;-><init>(Lcom/netease/mobile/link/g0;)V

    invoke-virtual {v2}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Lcom/netease/mobile/link/d0;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/d0;-><init>(Lcom/netease/mobile/link/g0;)V

    invoke-virtual {v0}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v0, Lcom/netease/mobile/link/R$id;->tv_mobile_link__history_phone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mobile/link/R$string;->mobile_link__current_linked_is:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mobile/link/a5;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/mobile/link/r0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    sget v0, Lcom/netease/mobile/link/R$id;->tv_mobile_link__phone_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    sget v0, Lcom/netease/mobile/link/R$string;->mobile_link__verify_history_phone_tip:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    return-void
.end method

.method public final d()I
    .locals 1

    sget v0, Lcom/netease/mobile/link/R$layout;->mobile_link__phone_verify:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "bm_verify"

    return-object v0
.end method
