.class public Lcom/netease/epay/sdk/card/ui/b;
.super Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
.source "AddCard2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/card/ui/b$a;
    }
.end annotation


# instance fields
.field a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

.field public b:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

.field c:Landroid/widget/Button;

.field d:Z

.field private e:Landroid/widget/CheckBox;

.field private f:Lcom/netease/epay/sdk/base/view/AgreementTextView;

.field private g:Lcom/netease/epay/sdk/card/ui/b$a;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

.field private j:Lcom/netease/epay/sdk/card/model/AddCardConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/card/ui/b;->d:Z

    .line 75
    new-instance v0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/b;->c:Landroid/widget/Button;

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/widget/Button;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->i:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->j:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/card/ui/b;)Lcom/netease/epay/sdk/base/view/AgreementTextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->f:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    return-object v0
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/card/ui/b;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    const-string v1, "addcard_is_credit"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    const-string v1, "addcard_bank_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "addcard_card_number"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "addcard_card_type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "addcard_support_banks"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "addcard_account_name"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/netease/epay/sdk/card/ui/b;

    invoke-direct {v1}, Lcom/netease/epay/sdk/card/ui/b;-><init>()V

    .line 63
    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/card/ui/b;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v1
.end method

.method static synthetic b(Lcom/netease/epay/sdk/card/ui/b;)Lcom/netease/epay/sdk/card/ui/b$a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->g:Lcom/netease/epay/sdk/card/ui/b$a;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->j:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->rootView:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/card/R$id;->atb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    .line 175
    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/b;->j:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/model/AddCardConfig;->titleSecondPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setTitle(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->j:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->isShowStepView:Z

    if-nez v0, :cond_1

    .line 177
    sget v0, Lcom/netease/epay/sdk/card/R$id;->step_show_view:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/b;->findV(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_1
    sget v0, Lcom/netease/epay/sdk/card/R$id;->tv_addcreditcard_top_tips:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/b;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->h:Landroid/widget/TextView;

    .line 180
    sget v0, Lcom/netease/epay/sdk/card/R$id;->inputLayout:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/b;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    .line 181
    sget v0, Lcom/netease/epay/sdk/card/R$id;->input_phone:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/b;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    .line 182
    sget v0, Lcom/netease/epay/sdk/card/R$id;->tvAgreement:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/b;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/AgreementTextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->f:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    .line 183
    sget v0, Lcom/netease/epay/sdk/card/R$id;->btn_next:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/b;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->c:Landroid/widget/Button;

    .line 184
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->i:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/b;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->setButton(Landroid/widget/Button;)V

    .line 186
    sget v0, Lcom/netease/epay/sdk/card/R$id;->cb_addcard_agree_pact:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/b;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->e:Landroid/widget/CheckBox;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->g:Lcom/netease/epay/sdk/card/ui/b$a;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->g:Lcom/netease/epay/sdk/card/ui/b$a;

    invoke-interface {v0}, Lcom/netease/epay/sdk/card/ui/b$a;->c()V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-static {}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 139
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 140
    const-string v2, "bankId"

    invoke-static {v1, v2, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    const-string v2, "payGateInfo"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v1, "get_payGate_info_by_bank.htm"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/netease/epay/sdk/card/ui/b$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/card/ui/b$1;-><init>(Lcom/netease/epay/sdk/card/ui/b;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 207
    return-void
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->clear()V

    .line 211
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->i:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->clearEditTexts()V

    .line 212
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->i:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/b;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 213
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->createItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItem;

    move-result-object v0

    .line 214
    new-instance v1, Lcom/netease/epay/sdk/card/ui/b$2;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/card/ui/b$2;-><init>(Lcom/netease/epay/sdk/card/ui/b;)V

    iput-object v1, v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->listener:Landroid/view/View$OnClickListener;

    .line 224
    iput-object p3, v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->cacheContent:Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(Lcom/netease/epay/sdk/base/view/bankinput/InputItem;)V

    .line 226
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->j:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->isAlwaysShowNameInputSecondPage:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(I)V

    .line 228
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(I)V

    .line 230
    :cond_1
    if-eqz p1, :cond_4

    .line 231
    iget-boolean v0, p0, Lcom/netease/epay/sdk/card/ui/b;->d:Z

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(I)V

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->createItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItem;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_3

    .line 236
    new-instance v1, Lcom/netease/epay/sdk/card/ui/b$3;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/card/ui/b$3;-><init>(Lcom/netease/epay/sdk/card/ui/b;)V

    iput-object v1, v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->listener:Landroid/view/View$OnClickListener;

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(Lcom/netease/epay/sdk/base/view/bankinput/InputItem;)V

    .line 253
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 254
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->h:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u6dfb\u52a0\u6301\u5361\u4eba\u672c\u4eba\u7684\u94f6\u884c\u5361"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_5
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->inflate()V

    .line 257
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->a:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/b;->i:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->bindButton(Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;)V

    .line 258
    return-void
.end method

.method public backKeyAction()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->f:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->f:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->isActionSheetShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->f:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->disMissSheet()V

    .line 281
    const/4 v0, 0x1

    .line 283
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
    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/card/R$id;->btn_next:I

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u8bf7\u9605\u8bfb\u5e76\u540c\u610f\u670d\u52a1\u534f\u8bae"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->g:Lcom/netease/epay/sdk/card/ui/b$a;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->g:Lcom/netease/epay/sdk/card/ui/b$a;

    invoke-interface {v0}, Lcom/netease/epay/sdk/card/ui/b$a;->a()V

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netease/epay/sdk/card/ui/f;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lcom/netease/epay/sdk/card/ui/f;

    invoke-interface {v0}, Lcom/netease/epay/sdk/card/ui/f;->a()Lcom/netease/epay/sdk/card/model/AddCardConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->j:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->j:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->j:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    iget v0, v0, Lcom/netease/epay/sdk/card/model/AddCardConfig;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 102
    new-instance v0, Lcom/netease/epay/sdk/card/c/h;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/card/c/h;-><init>(Lcom/netease/epay/sdk/card/ui/b;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->g:Lcom/netease/epay/sdk/card/ui/b$a;

    .line 113
    :goto_0
    invoke-static {}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->getSingleton()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 114
    :cond_1
    :goto_1
    return-void

    .line 104
    :cond_2
    new-instance v0, Lcom/netease/epay/sdk/card/c/f;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/card/c/f;-><init>(Lcom/netease/epay/sdk/card/ui/b;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->g:Lcom/netease/epay/sdk/card/ui/b$a;

    goto :goto_0

    .line 107
    :cond_3
    const-string v0, "card"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;

    .line 108
    if-eqz v0, :cond_1

    .line 109
    new-instance v1, Lcom/netease/epay/sdk/card/b/a;

    sget-object v2, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->SDK_ERROR:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/epay/sdk/card/b/a;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a(Lcom/netease/epay/sdk/card/b/a;)V

    goto :goto_1
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

    .prologue
    .line 118
    sget v0, Lcom/netease/epay/sdk/card/R$layout;->epaysdk_actv_addcard_second:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onDestroy()V

    .line 166
    invoke-static {}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->getSingleton()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public onEvent(Lcom/netease/epay/sdk/base/event/BankTypeChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/netease/epay/sdk/base/event/BankTypeChangedEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 262
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BankTypeChangedEvent;->card:Lcom/netease/epay/sdk/base/model/SupportBanks;

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->g:Lcom/netease/epay/sdk/card/ui/b$a;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b;->g:Lcom/netease/epay/sdk/card/ui/b$a;

    iget-object v1, p1, Lcom/netease/epay/sdk/base/event/BankTypeChangedEvent;->card:Lcom/netease/epay/sdk/base/model/SupportBanks;

    invoke-interface {v0, v1}, Lcom/netease/epay/sdk/card/ui/b$a;->a(Lcom/netease/epay/sdk/base/model/SupportBanks;)V

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .line 123
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 124
    invoke-direct {p0}, Lcom/netease/epay/sdk/card/ui/b;->b()V

    .line 125
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "addcard_bank_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/b;->a(Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method
