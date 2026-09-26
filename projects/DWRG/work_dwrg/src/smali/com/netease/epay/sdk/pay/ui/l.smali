.class public abstract Lcom/netease/epay/sdk/pay/ui/l;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "PayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/pay/ui/l$b;,
        Lcom/netease/epay/sdk/pay/ui/l$a;
    }
.end annotation


# instance fields
.field public a:I

.field b:Landroid/widget/Button;

.field private c:Lcom/netease/epay/sdk/pay/ui/l$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/l;)Lcom/netease/epay/sdk/pay/ui/l$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/l;->c:Lcom/netease/epay/sdk/pay/ui/l$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/l;->b:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/l;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    :cond_0
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 58
    iget v0, p0, Lcom/netease/epay/sdk/pay/ui/l;->a:I

    sget v1, Lcom/netease/epay/sdk/pay/ui/l$b;->c:I

    if-ne v0, v1, :cond_1

    .line 59
    const-string v0, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    move-object v1, v0

    .line 65
    :goto_0
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->ftb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;

    .line 66
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setTitle(Ljava/lang/String;)V

    .line 67
    iget v1, p0, Lcom/netease/epay/sdk/pay/ui/l;->a:I

    sget v2, Lcom/netease/epay/sdk/pay/ui/l$b;->d:I

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setSubtitleShow(Z)V

    .line 68
    new-instance v1, Lcom/netease/epay/sdk/pay/ui/l$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/pay/ui/l$1;-><init>(Lcom/netease/epay/sdk/pay/ui/l;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const-string v0, "balance"

    move-object v1, v0

    .line 75
    :goto_2
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->ivIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->getIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->btn_done:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->btn_done:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/l;->b:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/l;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/l;->b:Landroid/widget/Button;

    const-string v1, "\u4ed8\u6b3e"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/l;->c:Lcom/netease/epay/sdk/pay/ui/l$a;

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/l;->c:Lcom/netease/epay/sdk/pay/ui/l$a;

    invoke-interface {v0, p1}, Lcom/netease/epay/sdk/pay/ui/l$a;->a(Landroid/view/View;)V

    .line 86
    :goto_3
    return-void

    .line 60
    :cond_1
    iget v0, p0, Lcom/netease/epay/sdk/pay/ui/l;->a:I

    sget v1, Lcom/netease/epay/sdk/pay/ui/l$b;->d:I

    if-ne v0, v1, :cond_2

    .line 61
    const-string v0, "\u7f51\u6613\u652f\u4ed8"

    move-object v1, v0

    goto :goto_0

    .line 63
    :cond_2
    const-string v0, "\u8bf7\u8f93\u5165\u652f\u4ed8\u5bc6\u7801"

    move-object v1, v0

    goto :goto_0

    .line 67
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 74
    :cond_4
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    invoke-static {v0}, Lcom/netease/epay/sdk/base/model/Card;->getSelectedCardBankStyleId(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 84
    :cond_5
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZ)V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 118
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_paymethod_order_amount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_original_amount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    sget v1, Lcom/netease/epay/sdk/pay/R$id;->tvRandom:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 121
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p5, :cond_4

    .line 122
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :goto_0
    if-eqz p4, :cond_1

    .line 128
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :cond_1
    if-eqz p5, :cond_2

    .line 132
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->rl_epaysdk_view_pay_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_2
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->ivDiscountArrow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p5, :cond_5

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 135
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_paymethod:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->ll_paymethod:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p7, :cond_6

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    if-eqz p8, :cond_3

    .line 138
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->ll_paymethod:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_3
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->iv_paymethod_selector:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p8, :cond_7

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    return-void

    .line 124
    :cond_4
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_0

    .line 134
    :cond_5
    const/4 v0, 0x4

    goto :goto_1

    :cond_6
    move v0, v3

    .line 136
    goto :goto_2

    :cond_7
    move v2, v3

    .line 140
    goto :goto_3
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/l;->c:Lcom/netease/epay/sdk/pay/ui/l$a;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/l;->c:Lcom/netease/epay/sdk/pay/ui/l$a;

    invoke-interface {v0, p1}, Lcom/netease/epay/sdk/pay/ui/l$a;->a(Lorg/json/JSONObject;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->onAttach(Landroid/app/Activity;)V

    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 53
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/pay/c/b;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/c/b;-><init>(Lcom/netease/epay/sdk/pay/ui/l;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/l;->c:Lcom/netease/epay/sdk/pay/ui/l$a;

    .line 54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/l;->c:Lcom/netease/epay/sdk/pay/ui/l$a;

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->ll_paymethod:I

    if-ne v0, v1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/l;->c:Lcom/netease/epay/sdk/pay/ui/l$a;

    invoke-interface {v0}, Lcom/netease/epay/sdk/pay/ui/l$a;->b()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->btn_done:I

    if-ne v0, v1, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/l;->b()V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->rl_epaysdk_view_pay_detail:I

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/l;->c:Lcom/netease/epay/sdk/pay/ui/l$a;

    invoke-interface {v0}, Lcom/netease/epay/sdk/pay/ui/l$a;->c()V

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
