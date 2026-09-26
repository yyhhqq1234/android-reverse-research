.class public Lcom/netease/epay/sdk/card/ui/e;
.super Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
.source "ForgetPwdValidateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

.field private c:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/CheckBox;

.field private i:Lcom/netease/epay/sdk/base/view/AgreementTextView;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

.field private m:Lcom/netease/epay/sdk/card/model/AddCardConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;-><init>()V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/card/ui/e;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/card/ui/e;)Lcom/netease/epay/sdk/base/view/AgreementTextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->i:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/card/ui/e;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    const-string v1, "addcard_bank_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "addcard_quickPayId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "addcard_is_credit"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    const-string v1, "addcard_card_type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "addcard_account_name"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/netease/epay/sdk/card/ui/e;

    invoke-direct {v1}, Lcom/netease/epay/sdk/card/ui/e;-><init>()V

    .line 53
    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/card/ui/e;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v1
.end method

.method static synthetic a(Lcom/netease/epay/sdk/card/ui/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netease/epay/sdk/card/ui/e;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/epay/sdk/card/ui/e;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/netease/epay/sdk/card/ui/e;->k:Z

    return p1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->clear()V

    .line 124
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->l:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->clearEditTexts()V

    .line 125
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->l:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/e;->c:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 127
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->createItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItem;

    move-result-object v1

    .line 128
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->userName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->j:Ljava/lang/String;

    .line 129
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ( \u8bf7\u8f93\u5165\u5b8c\u6574\u59d3\u540d )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hint:Ljava/lang/String;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(Lcom/netease/epay/sdk/base/view/bankinput/InputItem;)V

    .line 134
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(I)V

    .line 135
    iget-boolean v0, p0, Lcom/netease/epay/sdk/card/ui/e;->d:Z

    if-eqz v0, :cond_2

    .line 136
    iget-boolean v0, p0, Lcom/netease/epay/sdk/card/ui/e;->k:Z

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(I)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->createItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItem;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/netease/epay/sdk/card/ui/e$2;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/card/ui/e$2;-><init>(Lcom/netease/epay/sdk/card/ui/e;)V

    iput-object v1, v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->listener:Landroid/view/View$OnClickListener;

    .line 152
    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/e;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(Lcom/netease/epay/sdk/base/view/bankinput/InputItem;)V

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->inflate()V

    .line 155
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/e;->l:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->bindButton(Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;)V

    .line 156
    return-void

    .line 128
    :cond_3
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->userName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/epay/sdk/card/ui/e;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/netease/epay/sdk/card/ui/e;->b()V

    return-void
.end method

.method static synthetic c(Lcom/netease/epay/sdk/card/ui/e;)Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/epay/sdk/card/ui/e;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->a:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/epay/sdk/card/ui/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/epay/sdk/card/ui/e;)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->c:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/epay/sdk/card/ui/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/epay/sdk/card/ui/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 101
    invoke-static {}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 102
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 103
    const-string v2, "bankId"

    iget-object v3, p0, Lcom/netease/epay/sdk/card/ui/e;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string v2, "payGateInfo"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string v1, "get_payGate_info_by_bank.htm"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/netease/epay/sdk/card/ui/e$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/card/ui/e$1;-><init>(Lcom/netease/epay/sdk/card/ui/e;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 120
    return-void
.end method

.method public backKeyAction()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->i:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->i:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->isActionSheetShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->i:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->disMissSheet()V

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->backKeyAction()Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 160
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u8bf7\u9605\u8bfb\u5e76\u540c\u610f\u670d\u52a1\u534f\u8bae"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->a:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 166
    invoke-static {}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 167
    const-string v1, "bankId"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/ui/e;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    const-string v1, "quickPayId"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/ui/e;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    const-string v1, "mobilePhone"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/ui/e;->c:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    const-string v1, "certNo"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/ui/e;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-string v1, "cardAccountName"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/ui/e;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    iget-boolean v1, p0, Lcom/netease/epay/sdk/card/ui/e;->d:Z

    if-eqz v1, :cond_2

    .line 173
    const-string v1, "validDate"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/ui/e;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    const-string v1, "cvv2"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/ui/e;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    :cond_2
    const-string v1, "send_validate_quickPay_authcode.htm"

    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/netease/epay/sdk/card/ui/e$3;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/card/ui/e$3;-><init>(Lcom/netease/epay/sdk/card/ui/e;)V

    invoke-static {v1, v0, v4, v2, v3}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netease/epay/sdk/card/ui/f;

    if-eqz v1, :cond_0

    .line 62
    check-cast v0, Lcom/netease/epay/sdk/card/ui/f;

    invoke-interface {v0}, Lcom/netease/epay/sdk/card/ui/f;->a()Lcom/netease/epay/sdk/card/model/AddCardConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->m:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    .line 64
    :cond_0
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
    .line 69
    sget v0, Lcom/netease/epay/sdk/card/R$layout;->epaysdk_actv_forget_pwd_validate:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->rootView:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/card/R$id;->atb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    .line 76
    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/e;->m:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/e;->m:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/model/AddCardConfig;->titleSecondPage:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setTitle(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/e;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 78
    const/4 v0, 0x0

    .line 79
    if-eqz v1, :cond_1

    .line 80
    const-string v0, "addcard_is_credit"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/card/ui/e;->d:Z

    .line 81
    const-string v0, "addcard_bank_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->f:Ljava/lang/String;

    .line 82
    const-string v0, "addcard_quickPayId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->g:Ljava/lang/String;

    .line 83
    const-string v0, "addcard_card_type"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v2, "addcard_account_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/epay/sdk/card/ui/e;->j:Ljava/lang/String;

    move-object v1, v0

    .line 86
    :goto_1
    sget v0, Lcom/netease/epay/sdk/card/R$id;->btn_next:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/e;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->a:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v2, p0, Lcom/netease/epay/sdk/card/ui/e;->a:Landroid/widget/Button;

    invoke-direct {v0, v2}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/widget/Button;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->l:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    .line 89
    sget v0, Lcom/netease/epay/sdk/card/R$id;->input_card:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/e;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    .line 90
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 91
    sget v0, Lcom/netease/epay/sdk/card/R$id;->inputLayout:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/e;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    .line 92
    sget v0, Lcom/netease/epay/sdk/card/R$id;->input_phone:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/e;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->c:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    .line 93
    sget v0, Lcom/netease/epay/sdk/card/R$id;->tvAgreement:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/e;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/AgreementTextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->i:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    .line 94
    sget v0, Lcom/netease/epay/sdk/card/R$id;->cb_addcard_agree_pact:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/e;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/e;->h:Landroid/widget/CheckBox;

    .line 95
    invoke-direct {p0}, Lcom/netease/epay/sdk/card/ui/e;->b()V

    .line 96
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/e;->a()V

    .line 97
    return-void

    .line 76
    :cond_0
    const-string v1, "\u5fd8\u8bb0\u652f\u4ed8\u5bc6\u7801"

    goto/16 :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method
