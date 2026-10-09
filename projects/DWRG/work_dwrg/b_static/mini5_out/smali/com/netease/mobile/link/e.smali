.class public final Lcom/netease/mobile/link/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/view/View$OnClickListener;

.field public final c:Landroid/view/View$OnClickListener;

.field public d:Landroid/app/Dialog;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mobile/link/e;->a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/netease/mobile/link/e;->b:Landroid/view/View$OnClickListener;

    iput-object p6, p0, Lcom/netease/mobile/link/e;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lcom/netease/mobile/link/e;
    .locals 10

    sget v0, Lcom/netease/mobile/link/R$string;->mobile_link__confirm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/netease/mobile/link/R$string;->mobile_link__cancel:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1
    new-instance v9, Lcom/netease/mobile/link/e;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, v8

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/netease/mobile/link/e;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-static {p0}, Lcom/netease/mobile/link/h6;->b(Landroid/app/Activity;)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p2, Lcom/netease/mobile/link/k;

    sget p3, Lcom/netease/mobile/link/R$style;->MobileLink_AlerterDialog:I

    invoke-direct {p2, p0, p3}, Lcom/netease/mobile/link/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p3, 0x11

    invoke-virtual {p0, p3}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p3, 0x1

    invoke-virtual {p0, p3}, Landroid/view/Window;->requestFeature(I)Z

    sget p0, Lcom/netease/mobile/link/R$layout;->mobile_link__alerter:I

    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {p2}, Lcom/netease/mobile/link/k;->show()V

    iput-object p2, v9, Lcom/netease/mobile/link/e;->d:Landroid/app/Dialog;

    new-instance p0, Lcom/netease/mobile/link/b;

    invoke-direct {p0, v9}, Lcom/netease/mobile/link/b;-><init>(Lcom/netease/mobile/link/e;)V

    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    sget p0, Lcom/netease/mobile/link/R$id;->mobile_link__alert_message:I

    invoke-virtual {p2, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    new-instance p3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {p3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-static {p0, p1}, Lcom/netease/mobile/link/t5;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    sget p0, Lcom/netease/mobile/link/R$id;->mobile_link__confirm:I

    invoke-virtual {p2, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    sget p1, Lcom/netease/mobile/link/R$id;->mobile_link__cancel:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sget p3, Lcom/netease/mobile/link/R$id;->mobile_link__btn_divider:I

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/netease/mobile/link/c;

    invoke-direct {v0, v9, p2}, Lcom/netease/mobile/link/c;-><init>(Lcom/netease/mobile/link/e;Landroid/app/Dialog;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/netease/mobile/link/d;

    invoke-direct {p0, v9, p2}, Lcom/netease/mobile/link/d;-><init>(Lcom/netease/mobile/link/e;Landroid/app/Dialog;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x0

    invoke-interface {p2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_2
    return-object v9
.end method
