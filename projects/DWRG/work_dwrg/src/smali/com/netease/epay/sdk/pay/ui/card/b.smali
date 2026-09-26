.class public Lcom/netease/epay/sdk/pay/ui/card/b;
.super Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
.source "AddCard2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

.field public b:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

.field c:Landroid/widget/Button;

.field d:Ljava/lang/String;

.field e:Z

.field private f:Landroid/widget/CheckBox;

.field private g:Lcom/netease/epay/sdk/base/view/AgreementTextView;

.field private h:Lcom/netease/epay/sdk/pay/ui/card/i;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->d:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->e:Z

    .line 66
    new-instance v0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->c:Landroid/widget/Button;

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/widget/Button;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->j:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/card/b;)Lcom/netease/epay/sdk/base/view/AgreementTextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->g:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    return-object v0
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/pay/ui/card/b;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v1, "addcard_is_credit"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    const-string v1, "addcard_bank_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "addcard_card_number"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "addcard_card_type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "addcard_support_banks"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "addcard_account_name"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-direct {v1}, Lcom/netease/epay/sdk/pay/ui/card/b;-><init>()V

    .line 53
    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v1
.end method

.method static synthetic b(Lcom/netease/epay/sdk/pay/ui/card/b;)Lcom/netease/epay/sdk/pay/ui/card/i;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->h:Lcom/netease/epay/sdk/pay/ui/card/i;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->rootView:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->atb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    .line 133
    const-string v1, "\u586b\u5199\u94f6\u884c\u5361\u4fe1\u606f"

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setTitle(Ljava/lang/String;)V

    .line 134
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tv_addcreditcard_top_tips:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->i:Landroid/widget/TextView;

    .line 135
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->inputLayout:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    .line 136
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->input_phone:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    .line 137
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvAgreement:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/AgreementTextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->g:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    .line 138
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->btn_next:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->c:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->j:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->setButton(Landroid/widget/Button;)V

    .line 141
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->cb_addcard_agree_pact:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->f:Landroid/widget/CheckBox;

    .line 142
    return-void
.end method


# virtual methods
.method public a()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->h:Lcom/netease/epay/sdk/pay/ui/card/i;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->h:Lcom/netease/epay/sdk/pay/ui/card/i;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/i;->a()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 90
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 91
    const-string v2, "bankId"

    invoke-static {v1, v2, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-string v2, "payGateInfo"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string v1, "bizType"

    const-string v2, "order"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v1, "get_payGate_info_by_bank.htm"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/netease/epay/sdk/pay/ui/card/b$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/pay/ui/card/b$1;-><init>(Lcom/netease/epay/sdk/pay/ui/card/b;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 162
    return-void
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->clear()V

    .line 166
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->j:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->clearEditTexts()V

    .line 167
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->j:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 168
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->createItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItem;

    move-result-object v0

    .line 169
    new-instance v1, Lcom/netease/epay/sdk/pay/ui/card/b$2;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/pay/ui/card/b$2;-><init>(Lcom/netease/epay/sdk/pay/ui/card/b;)V

    iput-object v1, v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->listener:Landroid/view/View$OnClickListener;

    .line 179
    iput-object p3, v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->cacheContent:Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(Lcom/netease/epay/sdk/base/view/bankinput/InputItem;)V

    .line 181
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(I)V

    .line 183
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(I)V

    .line 185
    :cond_0
    if-eqz p1, :cond_3

    .line 186
    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->e:Z

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(I)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->createItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItem;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_2

    .line 191
    new-instance v1, Lcom/netease/epay/sdk/pay/ui/card/b$3;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/pay/ui/card/b$3;-><init>(Lcom/netease/epay/sdk/pay/ui/card/b;)V

    iput-object v1, v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->listener:Landroid/view/View$OnClickListener;

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(Lcom/netease/epay/sdk/base/view/bankinput/InputItem;)V

    .line 209
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 210
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->i:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u6dfb\u52a0\u6301\u5361\u4eba\u672c\u4eba\u7684\u94f6\u884c\u5361"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->inflate()V

    .line 213
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->j:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->bindButton(Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;)V

    .line 214
    return-void
.end method

.method public backKeyAction()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->g:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->g:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->isActionSheetShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->g:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->disMissSheet()V

    .line 237
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->backKeyAction()Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->btn_next:I

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u8bf7\u9605\u8bfb\u5e76\u540c\u610f\u670d\u52a1\u534f\u8bae"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->h:Lcom/netease/epay/sdk/pay/ui/card/i;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->h:Lcom/netease/epay/sdk/pay/ui/card/i;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/i;->c()V

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/card/i;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/card/i;-><init>(Lcom/netease/epay/sdk/pay/ui/card/b;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->h:Lcom/netease/epay/sdk/pay/ui/card/i;

    .line 72
    invoke-static {}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->getSingleton()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 73
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
    .line 78
    sget v0, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_actv_addcard_second:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onDestroy()V

    .line 127
    invoke-static {}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->getSingleton()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public onEvent(Lcom/netease/epay/sdk/base/event/BankTypeChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/netease/epay/sdk/base/event/BankTypeChangedEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->POSTING:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 218
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BankTypeChangedEvent;->card:Lcom/netease/epay/sdk/base/model/SupportBanks;

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->h:Lcom/netease/epay/sdk/pay/ui/card/i;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b;->h:Lcom/netease/epay/sdk/pay/ui/card/i;

    iget-object v1, p1, Lcom/netease/epay/sdk/base/event/BankTypeChangedEvent;->card:Lcom/netease/epay/sdk/base/model/SupportBanks;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/card/i;->a(Lcom/netease/epay/sdk/base/model/SupportBanks;)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 118
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/card/b;->b()V

    .line 119
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/card/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "addcard_bank_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->a(Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method
