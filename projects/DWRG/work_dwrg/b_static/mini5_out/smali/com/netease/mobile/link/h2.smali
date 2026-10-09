.class public final Lcom/netease/mobile/link/h2;
.super Lcom/netease/mobile/link/z;
.source "SourceFile"


# instance fields
.field public f:Lcom/netease/mobile/link/b2;

.field public g:Lcom/netease/mobile/link/m5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobile/link/z;-><init>()V

    return-void
.end method

.method public static a(Lcom/netease/mobile/link/h2;)V
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
    iget-object v0, p0, Lcom/netease/mobile/link/h2;->f:Lcom/netease/mobile/link/b2;

    invoke-virtual {v0}, Lcom/netease/mobile/link/l3;->c()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/netease/mobile/link/f2;

    invoke-direct {v9, p0}, Lcom/netease/mobile/link/f2;-><init>(Lcom/netease/mobile/link/h2;)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/netease/mobile/link/e5;-><init>(Lcom/netease/mobile/link/f6$a;Ljava/lang/String;Ljava/lang/String;IILcom/netease/mobile/link/n;)V

    invoke-virtual {v1}, Lcom/netease/mobile/link/f5;->a()V

    return-void
.end method

.method public static b(Lcom/netease/mobile/link/h2;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/netease/mobile/link/h2;->f:Lcom/netease/mobile/link/b2;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/netease/mobile/link/h2;->g:Lcom/netease/mobile/link/m5;

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
    iget-object v0, p0, Lcom/netease/mobile/link/h2;->g:Lcom/netease/mobile/link/m5;

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

    iget-object v1, p0, Lcom/netease/mobile/link/h2;->f:Lcom/netease/mobile/link/b2;

    invoke-virtual {v1}, Lcom/netease/mobile/link/l3;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mobile/link/h2;->g:Lcom/netease/mobile/link/m5;

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

    new-instance v1, Lcom/netease/mobile/link/g2;

    invoke-direct {v1, p0}, Lcom/netease/mobile/link/g2;-><init>(Lcom/netease/mobile/link/h2;)V

    invoke-direct {v3, v0, v1}, Lcom/netease/mobile/link/e6;-><init>(Lcom/netease/mobile/link/c6;Lcom/netease/mobile/link/n;)V

    invoke-virtual {v3}, Lcom/netease/mobile/link/f5;->a()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 5

    new-instance v0, Lcom/netease/mobile/link/b2;

    iget-object v1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mobile/link/R$id;->ll_mobile_link__phone_box:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/netease/mobile/link/b2;-><init>(Lcom/netease/mobile/link/h2;Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netease/mobile/link/h2;->f:Lcom/netease/mobile/link/b2;

    new-instance v0, Lcom/netease/mobile/link/m5;

    iget-object v1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mobile/link/R$id;->ll_mobile_link__sms_box:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/netease/mobile/link/d2;

    invoke-direct {v3, p0}, Lcom/netease/mobile/link/d2;-><init>(Lcom/netease/mobile/link/h2;)V

    invoke-virtual {v3}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v3

    new-instance v4, Lcom/netease/mobile/link/c2;

    invoke-direct {v4, p0}, Lcom/netease/mobile/link/c2;-><init>(Lcom/netease/mobile/link/h2;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mobile/link/m5;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/netease/mobile/link/h2;->g:Lcom/netease/mobile/link/m5;

    iget-object v1, p0, Lcom/netease/mobile/link/z;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mobile/link/R$string;->mobile_link__input_sms_hint:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v0, v0, Lcom/netease/mobile/link/l;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 7
    sget v0, Lcom/netease/mobile/link/R$id;->btn_mobile_link__link_phone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/netease/mobile/link/e2;

    invoke-direct {v0, p0}, Lcom/netease/mobile/link/e2;-><init>(Lcom/netease/mobile/link/h2;)V

    invoke-virtual {v0}, Lcom/netease/mobile/link/h0;->a()Lcom/netease/mobile/link/h0;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 1

    sget v0, Lcom/netease/mobile/link/R$layout;->mobile_link__input_phone_sms:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "bm_other_mobile"

    return-object v0
.end method
