.class public Lcom/netease/epay/sdk/pay/ui/card/c;
.super Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
.source "AddCard3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/netease/epay/sdk/pay/ui/card/d;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->a:Lcom/netease/epay/sdk/pay/ui/card/d;

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/epay/sdk/pay/ui/card/c;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v1, "AddCard3SmsActivity_biz_mode"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    const-string v1, "addcard_bank_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "addcard_card_number"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "addcard_phone"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "forget_pwdsms_certNum"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "addcard_account_name"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "addcard_creditExpire"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "addcard_cvv2"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "addcard_quickPayId"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "addcard_sms_attach"

    invoke-virtual {v0, v1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "addcard_chargeId"

    invoke-virtual {v0, v1, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "addcardsms_must_set_pwd"

    invoke-virtual {v0, v1, p11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    new-instance v1, Lcom/netease/epay/sdk/pay/ui/card/c;

    invoke-direct {v1}, Lcom/netease/epay/sdk/pay/ui/card/c;-><init>()V

    .line 55
    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/pay/ui/card/c;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method public a(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->a:Lcom/netease/epay/sdk/pay/ui/card/d;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->a:Lcom/netease/epay/sdk/pay/ui/card/d;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/pay/ui/card/d;->a(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->a:Lcom/netease/epay/sdk/pay/ui/card/d;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->a:Lcom/netease/epay/sdk/pay/ui/card/d;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/card/d;->a(Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AddCard3SmsActivity_biz_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 63
    packed-switch v0, :pswitch_data_0

    .line 71
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 76
    :goto_0
    return-void

    .line 65
    :pswitch_0
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/card/g;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/card/g;-><init>(Lcom/netease/epay/sdk/pay/ui/card/c;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->a:Lcom/netease/epay/sdk/pay/ui/card/d;

    .line 75
    :goto_1
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->a:Lcom/netease/epay/sdk/pay/ui/card/d;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/c;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/card/d;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 68
    :pswitch_1
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/card/h;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/card/h;-><init>(Lcom/netease/epay/sdk/pay/ui/card/c;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->a:Lcom/netease/epay/sdk/pay/ui/card/d;

    goto :goto_1

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .line 81
    sget v0, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_actv_addcard_sms:I

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
    .line 86
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->a:Lcom/netease/epay/sdk/pay/ui/card/d;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->rootView:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->atb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    .line 91
    const-string v1, "\u586b\u5199\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setTitle(Ljava/lang/String;)V

    .line 92
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->et_input_sms:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/c;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->c:Landroid/widget/EditText;

    .line 93
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->btn_done:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/c;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->b:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance v0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->b:Landroid/widget/Button;

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 96
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_receiving_sms_error:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/c;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;->setIsBankSend(Z)V

    .line 97
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 98
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->a:Lcom/netease/epay/sdk/pay/ui/card/d;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/d;->a()V

    .line 99
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/c;->c:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showSoftInput(Landroid/view/View;)V

    goto :goto_0
.end method
