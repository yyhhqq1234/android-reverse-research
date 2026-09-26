.class public Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;
.super Lcom/netease/epay/sdk/base/ui/SdkActivity;
.source "SMSVerificationActivity.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    const-string v1, "IdentityVerificationActivity_bindMobile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->c:Ljava/lang/String;

    .line 54
    const-string v1, "IdentityVerificationActivity_businessType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->d:Ljava/lang/String;

    .line 55
    const-string v1, "faceDetect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->e:Z

    .line 58
    :cond_0
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->atb:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    .line 59
    sget v1, Lcom/netease/epay/sdk/rsa/R$string;->epaysdk_id_verify:I

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setTitle(Ljava/lang/String;)V

    .line 60
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->step_show_view:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->tv_addcardsms_top_info:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->a:Landroid/widget/TextView;

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->a(Z)V

    .line 63
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->et_input_sms:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;

    iput-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->b:Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;

    .line 64
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->b:Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showSoftInput(Landroid/view/View;)V

    .line 65
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->btn_send_sms:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/SendSmsButton;

    .line 66
    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->sendSms(Z)V

    .line 67
    new-instance v1, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1;-><init>(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setListener(Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;)V

    .line 81
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->tv_receiving_sms_error:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;

    .line 82
    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/SmsErrorTextView;->setIsBankSend(Z)V

    .line 83
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->btn_done:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/LongCommonButton;

    .line 84
    sget v1, Lcom/netease/epay/sdk/rsa/R$string;->epaysdk_ok:I

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v1, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$2;-><init>(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v1, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-direct {v1, v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->b:Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 106
    invoke-direct {p0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->b()V

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    sget v1, Lcom/netease/epay/sdk/rsa/R$string;->epaysdk_id_verify_tips:I

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    if-eqz p1, :cond_0

    .line 113
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/netease/epay/sdk/rsa/R$string;->epaysdk_code_sent_already:I

    invoke-virtual {p0, v2}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const-string v1, "\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method static synthetic b(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;)Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->b:Lcom/netease/epay/sdk/base/view/AutoSmsAuthCodeEditText;

    return-object v0
.end method

.method private b()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, -0x2

    const/16 v5, 0xa

    const/4 v6, 0x0

    .line 122
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->rl_sms:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 123
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-static {p0, v5}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v8}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v3

    invoke-static {p0, v5}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v5}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 125
    sget v1, Lcom/netease/epay/sdk/rsa/R$string;->epaysdk_verification_choose_other:I

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 127
    const v1, -0x905517

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    new-instance v1, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$3;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$3;-><init>(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 137
    sget v1, Lcom/netease/epay/sdk/rsa/R$id;->btn_done:I

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base/view/LongCommonButton;

    .line 138
    const/4 v4, 0x3

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->getId()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 139
    invoke-static {p0, v8}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v6, v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 140
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    return-void
.end method

.method static synthetic c(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->e:Z

    return v0
.end method


# virtual methods
.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    sget v0, Lcom/netease/epay/sdk/rsa/R$layout;->epaysdk_actv_addcard_sms:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->a()V

    .line 47
    return-void
.end method
