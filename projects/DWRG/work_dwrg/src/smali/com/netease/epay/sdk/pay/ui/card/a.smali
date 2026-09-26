.class public Lcom/netease/epay/sdk/pay/ui/card/a;
.super Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
.source "AddCard1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/Button;

.field private e:Landroid/view/View;

.field private f:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

.field private g:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

.field private h:Lcom/netease/epay/sdk/pay/ui/card/e;

.field private i:Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;-><init>()V

    .line 47
    const-string v0, "promptlimit"

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->j:Ljava/lang/String;

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->i:Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->i:Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;

    .line 128
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->i:Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Lcom/netease/epay/sdk/pay/ui/card/a$2;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/pay/ui/card/a$2;-><init>(Lcom/netease/epay/sdk/pay/ui/card/a;)V

    invoke-static {v0, p1, v1, v2, v3}, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/CharSequence;ZZLcom/netease/epay/sdk/base/ui/TitleMessageFragment$ITitleMsgCallback;)Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->i:Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->e:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->atb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    .line 73
    const-string v1, "\u6dfb\u52a0\u94f6\u884c\u5361"

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setTitle(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->e:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->llAdvertisement:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 76
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/a;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "has_market"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 77
    sget v1, Lcom/netease/epay/sdk/pay/R$id;->tvDesc:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 78
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/a;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/a;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "desc"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 81
    sget v1, Lcom/netease/epay/sdk/pay/R$id;->tvDetail:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_0
    :goto_1
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_addcardnum_top_guide:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/a;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->a:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->a:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u6dfb\u52a0\u6301\u5361\u4eba\u672c\u4eba\u7684\u94f6\u884c\u5361"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->input_name:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/a;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->f:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    .line 94
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->input_card:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/a;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->g:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    .line 95
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->btn_addcardnum_next_c:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/a;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->d:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->d:Landroid/widget/Button;

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->g:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 99
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->userName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->f:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->f:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 103
    :cond_1
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_support_bank_tip:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/a;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->c:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_support_bank_infos:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/a;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->b:Landroid/widget/TextView;

    .line 105
    return-void

    :cond_2
    move v1, v3

    .line 76
    goto/16 :goto_0

    .line 83
    :cond_3
    new-instance v3, Lcom/netease/epay/sdk/pay/ui/card/a$1;

    invoke-direct {v3, p0, v1}, Lcom/netease/epay/sdk/pay/ui/card/a$1;-><init>(Lcom/netease/epay/sdk/pay/ui/card/a;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/pay/ui/card/a;->d(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->i:Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 123
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
    .line 142
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/netease/epay/sdk/pay/ui/card/a$3;

    invoke-direct {v2, p0, p2}, Lcom/netease/epay/sdk/pay/ui/card/a$3;-><init>(Lcom/netease/epay/sdk/pay/ui/card/a;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lcom/netease/epay/sdk/base/util/UiUtil;->makeSupportBanksShortDisplay(Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/text/style/ClickableSpan;)V

    .line 155
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 163
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->g:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->g:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showSoftInput(Landroid/view/View;)V

    .line 174
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->g:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setHint(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 166
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->f:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->f:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 168
    return-void

    .line 166
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->btn_addcardnum_next_c:I

    if-ne v0, v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->hideSoftInput(Landroid/app/Activity;)V

    .line 111
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->h:Lcom/netease/epay/sdk/pay/ui/card/e;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->h:Lcom/netease/epay/sdk/pay/ui/card/e;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->g:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/card/e;->a(Ljava/lang/String;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/card/e;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/card/e;-><init>(Lcom/netease/epay/sdk/pay/ui/card/a;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->h:Lcom/netease/epay/sdk/pay/ui/card/e;

    .line 53
    return-void
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
    .line 58
    sget v0, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_frag_addcard1:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->e:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->e:Landroid/view/View;

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
    .line 64
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->h:Lcom/netease/epay/sdk/pay/ui/card/e;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/a;->h:Lcom/netease/epay/sdk/pay/ui/card/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/card/e;->a(Z)V

    .line 68
    :cond_0
    return-void
.end method
