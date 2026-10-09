.class public final Lcom/netease/mobile/link/s1;
.super Lcom/netease/mobile/link/z;
.source "SourceFile"


# instance fields
.field public f:Lcom/netease/mobile/link/m1;

.field public g:Lcom/netease/mobile/link/m5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobile/link/z;-><init>()V

    return-void
.end method

.method public static a(Lcom/netease/mobile/link/s1;)V
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 3
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/netease/mobile/link/p4;->a(Landroid/app/Activity;)V

    new-instance v1, Lcom/netease/mobile/link/e5;

    invoke-virtual {v0}, Lcom/netease/mobile/link/f6;->a()Lcom/netease/mobile/link/f6$a;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v0, v0, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    .line 4
    iget-object v5, v0, Lcom/netease/mobile/link/b5;->a:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/netease/mobile/link/s1;->f:Lcom/netease/mobile/link/m1;

    invoke-virtual {v0}, Lcom/netease/mobile/link/l3;->c()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/netease/mobile/link/q1;

    invoke-direct {v9, p0}, Lcom/netease/mobile/link/q1;-><init>(Lcom/netease/mobile/link/s1;)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/netease/mobile/link/e5;-><init>(Lcom/netease/mobile/link/f6$a;Ljava/lang/String;Ljava/lang/String;IILcom/netease/mobile/link/n;)V

    invoke-virtual {v1}, Lcom/netease/mobile/link/f5;->a()V

    return-void
.end method

.method public static b(Lcom/netease/mobile/link/s1;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/netease/mobile/link/s1;->f:Lcom/netease/mobile/link/m1;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/netease/mobile/link/s1;->g:Lcom/netease/mobile/link/m5;

    if-eqz v1, :cond_2

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

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/netease/mobile/link/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/netease/mobile/link/s1;->g:Lcom/netease/mobile/link/m5;

    invoke-virtual {v0}, Lcom/netease/mobile/link/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mobile/link/R$string;->mobile_link__error_sms_null:I

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/netease/mobile/link/a5;->g:Lcom/netease/mobile/link/f6;

    .line 6
    invoke-static {}, Lcom/netease/mobile/link/p4;->b()Lcom/netease/mobile/link/p4;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/netease/mobile/link/p4;->a(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/netease/mobile/link/s1;->f:Lcom/netease/mobile/link/m1;

    invoke-virtual {v1}, Lcom/netease/mobile/link/l3;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mobile/link/s1;->g:Lcom/netease/mobile/link/m5;

    invoke-virtual {v2}, Lcom/netease/mobile/link/l;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mobile/link/e6;

    new-instance v4, Lcom/netease/mobile/link/c6;

    invoke-virtual {v0}, Lcom/netease/mobile/link/f6;->a()Lcom/netease/mobile/link/f6$a;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v6, v6, Lcom/netease/mobile/link/m0;->b:Lcom/netease/mobile/link/b5;

    invoke-direct {v4, v5, v6}, Lcom/netease/mobile/link/c6;-><init>(Lcom/netease/mobile/link/f6$a;Lcom/netease/mobile/link/b5;)V

    iget-object v0, v0, Lcom/netease/mobile/link/f6;->i:Ljava/lang/String;

    .line 7
    iput-object v0, v4, Lcom/netease/mobile/link/c6;->i:Ljava/lang/String;

    .line 8
    invoke-virtual {v4, v1, v2}, Lcom/netease/mobile/link/c6;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mobile/link/c6;

    move-result-object v0

    new-instance v1, Lcom/netease/mobile/link/r1;

    invoke-direct {v1, p0}, Lcom/netease/mobile/link/r1;-><init>(Lcom/netease/mobile/link/s1;)V

    invoke-direct {v3, v0, v1}, Lcom/netease/mobile/link/e6;-><init>(Lcom/netease/mobile/link/c6;Lcom/netease/mobile/link/n;)V

    invoke-virtual {v3}, Lcom/netease/mobile/link/f5;->a()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/netease/mobile/link/z;->c:Lcom/netease/mobile/link/m0;

    iget-object v0, v0, Lcom/netease/mobile/link/m0;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/netease/mobile/link/R$id;->tv_mobile_link__title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/netease/mobile/link/R$id;->tv_mobile_link__hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/mobile/link/R$dimen;->mobile_link__space_40:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    :cond_0
    sget v0, Lcom/netease/mobile/link/R$id;->tv_mobile_link__hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/netease/mobile/link/a5;->e()Lcom/netease/mobile/link/a5;

    move-result-object v1

    .line 8
    iget-object v2, v1, Lcom/netease/mobile/link/a5;->n:Lcom/netease/mobile/link/relatelogin/CheckGuideResp;

    iget-object v2, v2, Lcom/netease/mobile/link/relatelogin/CheckGuideResp;->guideText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v1, Lcom/netease/mobile/link/a5;->a:Landroid/content/Context;

    sget v2, Lcom/netease/mobile/link/R$string;->mobile_link__related_login_guide_mobile_hint2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    :cond_1
    invoke-static {v0, v2}, Lcom/netease/mobile/link/t5;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mobile/link/m1;

    iget-object v1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mobile/link/R$id;->ll_mobile_link__phone_box:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/netease/mobile/link/m1;-><init>(Lcom/netease/mobile/link/s1;Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netease/mobile/link/s1;->f:Lcom/netease/mobile/link/m1;

    new-instance v0, Lcom/netease/mobile/link/m5;

    iget-object v1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mobile/link/R$id;->ll_mobile_link__sms_box:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/netease/mobile/link/o1;

    invoke-direct {v3, p0}, Lcom/netease/mobile/link/o1;-><init>(Lcom/netease/mobile/link/s1;)V

    invoke-virtual {v3}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v3

    new-instance v4, Lcom/netease/mobile/link/n1;

    invoke-direct {v4, p0}, Lcom/netease/mobile/link/n1;-><init>(Lcom/netease/mobile/link/s1;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mobile/link/m5;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/netease/mobile/link/s1;->g:Lcom/netease/mobile/link/m5;

    iget-object v1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mobile/link/R$string;->mobile_link__input_sms_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v0, v0, Lcom/netease/mobile/link/l;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 11
    sget v0, Lcom/netease/mobile/link/R$id;->btn_mobile_link__link_phone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/netease/mobile/link/p1;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/p1;-><init>(Lcom/netease/mobile/link/s1;)V

    invoke-virtual {v0}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final d()I
    .locals 1

    sget v0, Lcom/netease/mobile/link/R$layout;->mobile_link__input_phone_sms_related_login:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "login_bm_mobile"

    return-object v0
.end method
