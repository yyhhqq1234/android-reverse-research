.class public Lcom/netease/epay/sdk/card/ui/c;
.super Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
.source "AddCard3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/netease/epay/sdk/card/c/a;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/EditText;

.field private d:Lcom/netease/epay/sdk/card/model/AddCardConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->a:Lcom/netease/epay/sdk/card/c/a;

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/epay/sdk/card/ui/c;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    const-string v1, "AddCard3SmsActivity_biz_mode"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    const-string v1, "addcard_bank_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "addcard_card_number"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "addcard_phone"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "forget_pwdsms_certNum"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "addcard_account_name"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "addcard_creditExpire"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "addcard_cvv2"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "addcard_quickPayId"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "addcard_sms_attach"

    invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "addcard_chargeId"

    invoke-virtual {v0, v1, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "addcardsms_must_set_pwd"

    invoke-virtual {v0, v1, p11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    new-instance v1, Lcom/netease/epay/sdk/card/ui/c;

    invoke-direct {v1}, Lcom/netease/epay/sdk/card/ui/c;-><init>()V

    .line 63
    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/card/ui/c;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method public a(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->a:Lcom/netease/epay/sdk/card/c/a;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->a:Lcom/netease/epay/sdk/card/c/a;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/card/c/a;->a(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->a:Lcom/netease/epay/sdk/card/c/a;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->a:Lcom/netease/epay/sdk/card/c/a;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/c;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/c/a;->a(Ljava/lang/String;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AddCard3SmsActivity_biz_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 71
    packed-switch v0, :pswitch_data_0

    .line 79
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 88
    :goto_0
    return-void

    .line 73
    :pswitch_0
    new-instance v0, Lcom/netease/epay/sdk/card/c/e;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/card/c/e;-><init>(Lcom/netease/epay/sdk/card/ui/c;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->a:Lcom/netease/epay/sdk/card/c/a;

    .line 83
    :goto_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netease/epay/sdk/card/ui/f;

    if-eqz v1, :cond_0

    .line 85
    check-cast v0, Lcom/netease/epay/sdk/card/ui/f;

    invoke-interface {v0}, Lcom/netease/epay/sdk/card/ui/f;->a()Lcom/netease/epay/sdk/card/model/AddCardConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->d:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->a:Lcom/netease/epay/sdk/card/c/a;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/c;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/c/a;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 76
    :pswitch_1
    new-instance v0, Lcom/netease/epay/sdk/card/c/d;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/card/c/d;-><init>(Lcom/netease/epay/sdk/card/ui/c;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->a:Lcom/netease/epay/sdk/card/c/a;

    goto :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 93
    sget v0, Lcom/netease/epay/sdk/card/R$layout;->epaysdk_actv_addcard_sms:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

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
    .line 98
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->a:Lcom/netease/epay/sdk/card/c/a;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->rootView:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/card/R$id;->atb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    .line 103
    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/c;->d:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/c;->d:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/model/AddCardConfig;->titleThirdPage:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setTitle(Ljava/lang/String;)V

    .line 104
    sget v0, Lcom/netease/epay/sdk/card/R$id;->et_input_sms:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/c;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->c:Landroid/widget/EditText;

    .line 105
    sget v0, Lcom/netease/epay/sdk/card/R$id;->btn_done:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/c;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->b:Landroid/widget/Button;

    .line 106
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const-string v0, "card"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;

    .line 108
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/c;->b:Landroid/widget/Button;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_1
    new-instance v0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/c;->b:Landroid/widget/Button;

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/c;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 112
    sget v0, Lcom/netease/epay/sdk/card/R$id;->tv_receiving_sms_error:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/c;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;->setIsBankSend(Z)V

    .line 113
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 114
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->d:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->isShowStepView:Z

    if-nez v0, :cond_2

    .line 115
    sget v0, Lcom/netease/epay/sdk/card/R$id;->step_show_view:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/c;->findV(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->a:Lcom/netease/epay/sdk/card/c/a;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/card/c/a;->a()V

    .line 118
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/c;->c:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showSoftInput(Landroid/view/View;)V

    goto :goto_0

    .line 103
    :cond_3
    const-string v1, "\u586b\u5199\u9a8c\u8bc1\u7801"

    goto :goto_1
.end method
