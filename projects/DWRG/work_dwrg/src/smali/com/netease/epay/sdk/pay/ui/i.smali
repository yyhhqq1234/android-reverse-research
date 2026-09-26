.class public Lcom/netease/epay/sdk/pay/ui/i;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "PayChooserFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Lcom/netease/epay/sdk/pay/ui/h;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/i;->b:Z

    iput-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/i;->c:Z

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 59
    const-string v1, "position"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    const-string v1, "get_market_position.htm"

    const/4 v2, 0x0

    new-instance v3, Lcom/netease/epay/sdk/pay/ui/i$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/pay/ui/i$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v1, v0, v2, p0, v3}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 82
    return-void
.end method

.method private a(Landroid/widget/ListView;Landroid/view/LayoutInflater;)V
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/i;->c:Z

    .line 138
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->h:Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->h:Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;->code:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/g;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/i;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/epay/sdk/pay/ui/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    const-string v1, "FACE_PROMOTE_CAN"

    sget-object v2, Lcom/netease/epay/sdk/pay/c;->h:Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;

    iget-object v2, v2, Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 141
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/g;->setEnabled(Z)V

    .line 142
    sget v2, Lcom/netease/epay/sdk/pay/R$drawable;->epaysdk_icon_verify_limit:I

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/pay/ui/g;->setImageResource(I)V

    .line 143
    sget-object v2, Lcom/netease/epay/sdk/pay/c;->h:Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;

    iget-object v2, v2, Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/pay/ui/g;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    sget-object v2, Lcom/netease/epay/sdk/pay/c;->h:Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;

    iget-object v2, v2, Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;->desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/pay/ui/g;->setMessage(Ljava/lang/CharSequence;)V

    .line 145
    sget-object v2, Lcom/netease/epay/sdk/pay/c;->h:Lcom/netease/epay/sdk/pay/model/HomeData$PromoteLimitDto;

    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/i;->c:Z

    goto :goto_0
.end method


# virtual methods
.method a(I)V
    .locals 5

    .prologue
    .line 217
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 218
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    .line 219
    const-string v1, "paymethod"

    const-string v2, "quickpay"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    :goto_0
    const-string v1, "get_pay_amount.htm"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/netease/epay/sdk/pay/ui/i$6;

    invoke-direct {v4, p0, p1}, Lcom/netease/epay/sdk/pay/ui/i$6;-><init>(Lcom/netease/epay/sdk/pay/ui/i;I)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 248
    return-void

    .line 220
    :cond_0
    if-gez p1, :cond_1

    .line 221
    const-string v1, "paymethod"

    const-string v2, "balance"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    :cond_1
    const-string v1, "paymethod"

    const-string v2, "quickpay"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    const-string v1, "cardId"

    invoke-static {p1}, Lcom/netease/epay/sdk/base/model/Card;->getSelectedCardBankQuickPayId(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 86
    sget v0, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_frag_pay_selector:I

    invoke-virtual {p1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 88
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->ftb:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;

    .line 89
    sget v1, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setCloseShow(Z)V

    .line 90
    sget v1, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    if-eq v1, v5, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setBackShow(Z)V

    .line 91
    new-instance v1, Lcom/netease/epay/sdk/pay/ui/i$2;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/pay/ui/i$2;-><init>(Lcom/netease/epay/sdk/pay/ui/i;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 100
    new-instance v1, Lcom/netease/epay/sdk/pay/ui/i$3;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/pay/ui/i$3;-><init>(Lcom/netease/epay/sdk/pay/ui/i;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 108
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->lv_payments_list:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 109
    invoke-direct {p0, v0, p1}, Lcom/netease/epay/sdk/pay/ui/i;->a(Landroid/widget/ListView;Landroid/view/LayoutInflater;)V

    .line 110
    new-instance v1, Lcom/netease/epay/sdk/pay/ui/g;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/i;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, v6}, Lcom/netease/epay/sdk/pay/ui/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    invoke-virtual {v1, v2}, Lcom/netease/epay/sdk/pay/ui/g;->setEnabled(Z)V

    .line 112
    sget v5, Lcom/netease/epay/sdk/pay/R$string;->epaysdk_pay_with_new_card:I

    invoke-virtual {p0, v5}, Lcom/netease/epay/sdk/pay/ui/i;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/netease/epay/sdk/pay/ui/g;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    sget v5, Lcom/netease/epay/sdk/pay/R$drawable;->epaysdk_icon_payaddcard:I

    invoke-virtual {v1, v5}, Lcom/netease/epay/sdk/pay/ui/g;->setImageResource(I)V

    .line 114
    const-string v5, "footer"

    invoke-virtual {v0, v1, v5, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 115
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/i;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/i;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "has_market"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/epay/sdk/pay/ui/i;->b:Z

    .line 117
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/i;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "title"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/epay/sdk/pay/ui/i;->d:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/i;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "desc"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/epay/sdk/pay/ui/i;->e:Ljava/lang/String;

    .line 120
    :cond_0
    iget-boolean v1, p0, Lcom/netease/epay/sdk/pay/ui/i;->b:Z

    if-eqz v1, :cond_2

    .line 121
    sget v1, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_view_advertisement:I

    invoke-virtual {p1, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 122
    sget v1, Lcom/netease/epay/sdk/pay/R$id;->tvDesc:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    iget-object v6, p0, Lcom/netease/epay/sdk/pay/ui/i;->d:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/i;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    sget v1, Lcom/netease/epay/sdk/pay/R$id;->tvDetail:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :cond_1
    const-string v1, "header"

    invoke-virtual {v0, v5, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 129
    :cond_2
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 131
    new-instance v1, Lcom/netease/epay/sdk/pay/ui/h;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/epay/sdk/pay/ui/h;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/epay/sdk/pay/ui/i;->a:Lcom/netease/epay/sdk/pay/ui/h;

    .line 132
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/i;->a:Lcom/netease/epay/sdk/pay/ui/h;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    return-object v4

    :cond_3
    move v1, v3

    .line 89
    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 90
    goto/16 :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 152
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    .line 154
    const/16 v0, -0x64

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/i;->a(I)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/i;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p3, v0, :cond_2

    .line 159
    const-string v0, "face"

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "promote_limit"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getFaceJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/netease/epay/sdk/pay/ui/i$4;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/pay/ui/i$4;-><init>(Lcom/netease/epay/sdk/pay/ui/i;)V

    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    goto :goto_0

    .line 172
    :cond_2
    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/i;->b:Z

    if-eqz v0, :cond_3

    .line 173
    add-int/lit8 p3, p3, -0x1

    .line 175
    :cond_3
    if-ne p3, v2, :cond_4

    .line 176
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/i;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 178
    const-string v1, "\u6d3b\u52a8\u8be6\u60c5"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/i;->e:Ljava/lang/String;

    new-instance v3, Lcom/netease/epay/sdk/pay/ui/i$5;

    invoke-direct {v3, p0, v0}, Lcom/netease/epay/sdk/pay/ui/i$5;-><init>(Lcom/netease/epay/sdk/pay/ui/i;Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v1, v2, v4, v4, v3}, Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/CharSequence;ZZLcom/netease/epay/sdk/base/ui/TitleMessageFragment$ITitleMsgCallback;)Lcom/netease/epay/sdk/base/ui/TitleMessageFragment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentWithHide(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;Z)V

    goto :goto_0

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/i;->a:Lcom/netease/epay/sdk/pay/ui/h;

    invoke-virtual {v0, p3}, Lcom/netease/epay/sdk/pay/ui/h;->a(I)Lcom/netease/epay/sdk/base/model/IPayChooser;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Lcom/netease/epay/sdk/base/model/IPayChooser;->isUsable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    instance-of v1, v0, Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    if-eqz v1, :cond_6

    .line 193
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    if-ne v0, v2, :cond_5

    .line 194
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a()V

    goto :goto_0

    .line 198
    :cond_5
    invoke-virtual {p0, v2}, Lcom/netease/epay/sdk/pay/ui/i;->a(I)V

    goto :goto_0

    .line 200
    :cond_6
    instance-of v0, v0, Lcom/netease/epay/sdk/base/model/Card;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/i;->a:Lcom/netease/epay/sdk/pay/ui/h;

    invoke-virtual {v0, v4}, Lcom/netease/epay/sdk/pay/ui/h;->a(I)Lcom/netease/epay/sdk/base/model/IPayChooser;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    if-eqz v0, :cond_7

    add-int/lit8 v0, p3, -0x1

    .line 203
    :goto_1
    invoke-static {v0}, Lcom/netease/epay/sdk/base/model/Card;->isSelectedCardUsable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    sget v1, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    if-ne v1, v0, :cond_8

    .line 206
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a()V

    goto/16 :goto_0

    :cond_7
    move v0, p3

    .line 202
    goto :goto_1

    .line 210
    :cond_8
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/i;->a(I)V

    goto/16 :goto_0
.end method
