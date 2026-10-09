.class public Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;
.super Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
.source "ChooseCardBankFragment.java"


# static fields
.field private static final KEY_BANK_JSON:Ljava/lang/String; = "epay_bundle_bank_json"

.field private static final KEY_CHOOSE_BANK_SAVE_DATA:Ljava/lang/String; = "epay_bundle_chooseBank_onSaveInstanceState"


# instance fields
.field private adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;

.field private dataLost:Z

.field protected lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardTypeListView;

.field private supportBanks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAllBank;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;-><init>()V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->dataLost:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->back(Landroid/view/View;)V

    return-void
.end method

.method public static getInstance_SeclectMode(Ljava/lang/String;)Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "epay_bundle_bank_json"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private getSelectedCardTypeJson(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->bankCardList:Ljava/util/List;

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;

    iget-object v3, v3, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;->bankId:Ljava/lang/String;

    const-string v4, "bankId"

    invoke-static {v2, v4, v3}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;

    iget-object v3, v3, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;->bankName:Ljava/lang/String;

    const-string v4, "bankName"

    invoke-static {v2, v4, v3}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;

    iget-object v3, v3, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;->cardType:Ljava/lang/String;

    const-string v4, "cardType"

    invoke-static {v2, v4, v3}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected epayLogoBg()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initStatusBarColor()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_BG:I

    const-string v2, "epaysdk_nav_bg"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/theme/LightDarkSupport;->getColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/util/inbar/InnerBarUtils;->initStatusBarColor(Landroid/app/Activity;I)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->lv_banks:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base_card/ui/view/CardTypeListView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardTypeListView;

    .line 2
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;

    .line 3
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardTypeListView;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base_card/ui/view/CardTypeListView;->setAdapter(Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;)V

    .line 4
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardTypeListView;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/view/CardTypeListView;->setOverlayView(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->updateBankListView()V

    return-void
.end method

.method synthetic lambda$updateBankListView$0$com-netease-epay-sdk-base_card-ui-ChooseCardBankFragment(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment$1;-><init>(Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->getSelectedCardTypeJson(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;->newInstance(Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment$Callback;Ljava/lang/String;)Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardDialogActivity;->startActivity(Landroid/content/Context;Lcom/netease/epay/sdk/base/ui/SdkFragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->dataLost:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "epay_bundle_chooseBank_onSaveInstanceState"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    const/4 p1, 0x1

    if-eqz v0, :cond_2

    const-string v1, "epay_bundle_bank_json"

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->dataLost:Z

    return-void

    .line 14
    :cond_1
    const-class p1, Lcom/netease/epay/sdk/base_card/model/SupportAllBank;

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->json2Array(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->supportBanks:Ljava/util/ArrayList;

    goto :goto_0

    .line 16
    :cond_2
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->dataLost:Z

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2
    sget p2, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_frag_choose_card_bank:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    iget-boolean p2, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->dataLost:Z

    if-eqz p2, :cond_0

    .line 4
    sget p2, Lcom/netease/epay/sdk/base_card/R$id;->ivBack:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->back(Landroid/view/View;)V

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->initView(Landroid/view/View;)V

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->initStatusBarColor()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "epay_bundle_chooseBank_onSaveInstanceState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public updateBankListView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->supportBanks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->supportBanks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->setData(Ljava/util/ArrayList;)V

    .line 3
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;

    new-instance v1, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment$$ExternalSyntheticLambda0;-><init>(Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->setOnItemClickListener(Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$OnItemClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardTypeListView;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankFragment;->adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->getArrLetters()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base_card/ui/view/CardTypeListView;->updateArrLetters([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
