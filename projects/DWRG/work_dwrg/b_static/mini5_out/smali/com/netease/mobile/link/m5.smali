.class public final Lcom/netease/mobile/link/m5;
.super Lcom/netease/mobile/link/l;
.source "SourceFile"


# instance fields
.field public final c:Lcom/netease/mobile/link/a0;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2

    sget v0, Lcom/netease/mobile/link/R$id;->mobile_link__sms:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget v1, Lcom/netease/mobile/link/R$id;->mobile_link__delete:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4}, Lcom/netease/mobile/link/l;-><init>(Landroid/widget/EditText;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iput-object p4, p0, Lcom/netease/mobile/link/m5;->e:Landroid/content/res/Resources;

    sget p4, Lcom/netease/mobile/link/R$id;->mobile_link__get_sms:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netease/mobile/link/m5;->d:Landroid/widget/TextView;

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Lcom/netease/mobile/link/a0;

    new-instance p4, Lcom/netease/mobile/link/m5$a;

    invoke-direct {p4, p0, p1}, Lcom/netease/mobile/link/m5$a;-><init>(Lcom/netease/mobile/link/m5;Landroid/app/Activity;)V

    invoke-direct {p3, p1, p2, p4}, Lcom/netease/mobile/link/a0;-><init>(Landroid/app/Activity;Landroid/widget/TextView;Lcom/netease/mobile/link/a0$a;)V

    iput-object p3, p0, Lcom/netease/mobile/link/m5;->c:Lcom/netease/mobile/link/a0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mobile/link/m5;->c:Lcom/netease/mobile/link/a0;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/netease/mobile/link/m5;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-static {p1}, Lcom/netease/mobile/link/j5;->a(Landroid/content/Context;)Lcom/netease/mobile/link/j5;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mobile/link/m5;->d:Landroid/widget/TextView;

    sget v1, Lcom/netease/mobile/link/R$color;->mobile_link__font_h1:I

    invoke-virtual {p1, v0, v1}, Lcom/netease/mobile/link/j5;->a(Landroid/view/View;I)V

    return-void
.end method
