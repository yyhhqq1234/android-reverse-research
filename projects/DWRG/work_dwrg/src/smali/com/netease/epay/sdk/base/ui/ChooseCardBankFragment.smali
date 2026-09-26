.class public Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "ChooseCardBankFragment.java"


# static fields
.field private static final KEY_BANK_JSON:Ljava/lang/String; = "epay_bundle_bank_json"

.field private static final KEY_CHOOSE_BANK_SAVE_DATA:Ljava/lang/String; = "epay_bundle_chooseBank_onSaveInstanceState"

.field private static final KEY_CHOOSE_MODE:Ljava/lang/String; = "epay_bundle_is_choose_mode"

.field private static final KEY_NOW_BANK:Ljava/lang/String; = "epay_bundle_now_bank"


# instance fields
.field private adapter:Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;

.field private cards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;",
            ">;"
        }
    .end annotation
.end field

.field private isSelectMode:Z

.field private nowCardObj:Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

.field private onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    .line 148
    new-instance v0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$3;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$3;-><init>(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->onClickListener:Landroid/view/View$OnClickListener;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->cards:Ljava/util/ArrayList;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->isSelectMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->nowCardObj:Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;)Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;
    .param p1, "x1"    # Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->nowCardObj:Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->adapter:Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->isSelectMode:Z

    return v0
.end method

.method public static getInstance_SeclectMode(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;
    .locals 4
    .param p0, "banksInfoJson"    # Ljava/lang/String;
    .param p1, "nowBank"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;-><init>()V

    .line 42
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 43
    const-string v2, "epay_bundle_bank_json"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "epay_bundle_now_bank"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "epay_bundle_is_choose_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v0
.end method

.method public static getInstance_ShowMode(Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;
    .locals 4
    .param p0, "banksInfoJson"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;-><init>()V

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string v2, "epay_bundle_bank_json"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "epay_bundle_is_choose_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x103000d

    invoke-virtual {p0, v1, v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->setStyle(II)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->setCancelable(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    .line 67
    const-string v0, "epay_bundle_chooseBank_onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object v1, v0

    .line 70
    :goto_0
    if-eqz v1, :cond_4

    .line 71
    const-string v0, "epay_bundle_is_choose_mode"

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->isSelectMode:Z

    .line 72
    const-string v0, "epay_bundle_bank_json"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    const/4 v0, 0x0

    .line 74
    iget-boolean v3, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->isSelectMode:Z

    if-eqz v3, :cond_5

    .line 75
    const-string v0, "epay_bundle_now_bank"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 77
    :goto_1
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 78
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 79
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 82
    const-class v6, Lcom/netease/epay/sdk/base/model/SupportBanks;

    invoke-virtual {v3, v0, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/SupportBanks;

    .line 83
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 85
    :cond_0
    const-class v0, Lcom/netease/epay/sdk/base/model/SupportBanks;

    invoke-static {v2, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->json2Array(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->getSupportBanks(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->cards:Ljava/util/ArrayList;

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const-string v1, "debit"

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->nowCardObj:Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    .line 94
    iget-object v3, v0, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;->cardType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->nowCardObj:Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    .line 100
    :cond_4
    return-void

    :cond_5
    move-object v1, v0

    goto :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 105
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_frag_choose_card_bank:I

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 106
    sget v0, Lcom/netease/epay/sdk/base/R$id;->lv_banks:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 107
    sget v1, Lcom/netease/epay/sdk/base/R$id;->atb:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    .line 108
    iget-object v3, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-boolean v3, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->isSelectMode:Z

    if-eqz v3, :cond_0

    .line 110
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setDoneShow(Z)V

    .line 111
    iget-object v3, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setDoneListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_0
    new-instance v1, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;-><init>(Landroid/content/Context;)V

    .line 114
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 116
    new-instance v3, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->adapter:Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;

    .line 117
    iget-object v3, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->adapter:Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    new-instance v3, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$1;-><init>(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)V

    invoke-virtual {v1, v3}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->setOnItemSelectedListener(Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$OnCardTypeSelectListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->cards:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->cards:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->nowCardObj:Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->reloadDatas(Landroid/content/Context;Ljava/util/List;I)V

    .line 135
    iget-boolean v1, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->isSelectMode:Z

    if-eqz v1, :cond_1

    .line 136
    new-instance v1, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$2;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$2;-><init>(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    :cond_1
    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 171
    const-string v0, "epay_bundle_chooseBank_onSaveInstanceState"

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 172
    return-void
.end method
