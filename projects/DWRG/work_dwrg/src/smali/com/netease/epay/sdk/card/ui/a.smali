.class public Lcom/netease/epay/sdk/card/ui/a;
.super Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
.source "AddCard1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/card/ui/a$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/Button;

.field private d:Landroid/view/View;

.field private e:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

.field private f:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

.field private g:Lcom/netease/epay/sdk/card/ui/a$a;

.field private h:Lcom/netease/epay/sdk/card/model/AddCardConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->h:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->f:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->f:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showSoftInput(Landroid/view/View;)V

    .line 96
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->f:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setHint(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/a;->b:Landroid/widget/TextView;

    new-instance v2, Lcom/netease/epay/sdk/card/ui/a$1;

    invoke-direct {v2, p0, p2}, Lcom/netease/epay/sdk/card/ui/a$1;-><init>(Lcom/netease/epay/sdk/card/ui/a;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lcom/netease/epay/sdk/base/util/UiUtil;->makeSupportBanksShortDisplay(Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/text/style/ClickableSpan;)V

    .line 153
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->h:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->d:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/card/R$id;->atb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    .line 104
    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/a;->h:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/model/AddCardConfig;->titleFirstPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setTitle(Ljava/lang/String;)V

    .line 105
    sget v0, Lcom/netease/epay/sdk/card/R$id;->tv_addcardnum_top_guide:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/a;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/a;->h:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/model/AddCardConfig;->tipsFirstPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->h:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->isShowStepView:Z

    if-nez v0, :cond_1

    .line 109
    sget v0, Lcom/netease/epay/sdk/card/R$id;->step_show_view:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/a;->findV(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_1
    sget v0, Lcom/netease/epay/sdk/card/R$id;->btn_addcardnum_next_c:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/a;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->c:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v1, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->c:Landroid/widget/Button;

    invoke-direct {v1, v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/widget/Button;)V

    .line 114
    sget v0, Lcom/netease/epay/sdk/card/R$id;->input_name:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/a;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->e:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    .line 115
    sget v0, Lcom/netease/epay/sdk/card/R$id;->input_card:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/a;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->f:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    .line 117
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->userName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->h:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->isShowNameFirstPage:Z

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->e:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->e:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->f:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->bindButton(Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;)V

    .line 122
    sget v0, Lcom/netease/epay/sdk/card/R$id;->tv_support_bank_tip:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/a;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->b:Landroid/widget/TextView;

    .line 123
    sget v0, Lcom/netease/epay/sdk/card/R$id;->tv_support_bank_infos:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/a;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->a:Landroid/widget/TextView;

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 164
    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/a;->e:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->e:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 166
    return-void

    .line 164
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/card/R$id;->btn_addcardnum_next_c:I

    if-ne v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->hideSoftInput(Landroid/app/Activity;)V

    .line 129
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->g:Lcom/netease/epay/sdk/card/ui/a$a;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->g:Lcom/netease/epay/sdk/card/ui/a$a;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/a;->f:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/epay/sdk/card/ui/a$a;->a(Ljava/lang/String;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netease/epay/sdk/card/ui/f;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Lcom/netease/epay/sdk/card/ui/f;

    invoke-interface {v0}, Lcom/netease/epay/sdk/card/ui/f;->a()Lcom/netease/epay/sdk/card/model/AddCardConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->h:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->h:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->h:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    iget v0, v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 65
    new-instance v0, Lcom/netease/epay/sdk/card/c/g;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/card/c/g;-><init>(Lcom/netease/epay/sdk/card/ui/a;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->g:Lcom/netease/epay/sdk/card/ui/a$a;

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    new-instance v0, Lcom/netease/epay/sdk/card/c/b;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/card/c/b;-><init>(Lcom/netease/epay/sdk/card/ui/a;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->g:Lcom/netease/epay/sdk/card/ui/a$a;

    goto :goto_0

    .line 70
    :cond_3
    const-string v0, "card"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;

    .line 71
    if-eqz v0, :cond_1

    .line 72
    new-instance v1, Lcom/netease/epay/sdk/card/b/a;

    sget-object v2, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->SDK_ERROR:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/epay/sdk/card/b/a;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a(Lcom/netease/epay/sdk/card/b/a;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 80
    sget v0, Lcom/netease/epay/sdk/card/R$layout;->epaysdk_actv_addcard_num:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->d:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->d:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->g:Lcom/netease/epay/sdk/card/ui/a$a;

    if-eqz v0, :cond_1

    .line 88
    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/a;->g:Lcom/netease/epay/sdk/card/ui/a$a;

    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->h:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/a;->h:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->isShowNameFirstPage:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/netease/epay/sdk/card/ui/a$a;->a(Z)V

    .line 90
    :cond_1
    return-void

    .line 88
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
