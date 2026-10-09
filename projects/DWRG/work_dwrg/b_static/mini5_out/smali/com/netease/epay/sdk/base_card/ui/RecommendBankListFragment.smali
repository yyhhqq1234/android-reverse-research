.class public Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;
.super Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
.source "RecommendBankListFragment.java"


# static fields
.field public static final KEY_BANK_JSON:Ljava/lang/String; = "epay_bundle_bank_json"

.field protected static final KEY_CHOOSE_BANK_SAVE_DATA:Ljava/lang/String; = "epay_bundle_chooseBank_onSaveInstanceState"


# instance fields
.field private allowEdite:Z

.field private banks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAddBank;",
            ">;"
        }
    .end annotation
.end field

.field private cards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAddBank;",
            ">;"
        }
    .end annotation
.end field

.field private dataLost:Z

.field private listViewCount:I

.field private lvBanks:Landroid/widget/ListView;

.field private lvCards:Landroid/widget/ListView;

.field private originalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAddBank;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->allowEdite:Z

    const/4 v1, 0x2

    .line 268
    iput v1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->listViewCount:I

    const/4 v1, 0x0

    .line 312
    iput-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->originalList:Ljava/util/ArrayList;

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->banks:Ljava/util/ArrayList;

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->cards:Ljava/util/ArrayList;

    .line 320
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->dataLost:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Lcom/netease/epay/sdk/base_card/model/SupportAddBank;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->deleteRecommendCard(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->showBottomLogo(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->allowEdite:Z

    return p0
.end method

.method static synthetic access$202(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->allowEdite:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Lcom/netease/epay/sdk/base_card/model/SupportAddBank;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->deleteLocalCard(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)V

    return-void
.end method

.method private deleteLocalCard(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->originalList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.netease.epaysdk.addcard.change.recommend.card"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/netease/epay/sdk/base/util/SdkGson;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->originalList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "epay_bundle_bank_json"

    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 10
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->originalList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->back(Landroid/view/View;)V

    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->cards:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->lvCards:Landroid/widget/ListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private deleteRecommendCard(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->getJsonForCard()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->quickPayId:Ljava/lang/String;

    const-string v2, "quickPayId"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$4;-><init>(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Lcom/netease/epay/sdk/base_card/model/SupportAddBank;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)V

    const-string p1, "delete_recommend_bankCard.htm"

    const/4 p2, 0x0

    .line 5
    invoke-static {p1, v0, p2, v1, v2}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroidx/fragment/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;-><init>()V

    .line 2
    invoke-static {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->setArguments(Lcom/netease/epay/sdk/base/ui/FullSdkFragment;Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/FullSdkFragment;

    move-result-object p0

    return-object p0
.end method

.method private initBanksView(Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 4

    .line 1
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->lv_banks:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->lvBanks:Landroid/widget/ListView;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3
    sget v0, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_layout_addcard_recomend_header:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 4
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->recommend_banks_cards_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "\u63a8\u8350\u94f6\u884c"

    .line 5
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->lvBanks:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 8
    new-instance p1, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;-><init>(Landroid/content/Context;)V

    .line 9
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->banks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->setData(Ljava/util/List;Z)V

    .line 10
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$5;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$5;-><init>(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;)V

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->setOnItemClickListener(Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$OnItemClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->lvBanks:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 26
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->lvBanks:Landroid/widget/ListView;

    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$6;

    invoke-direct {v0, p0, p2}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$6;-><init>(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initCardsView(Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 5

    .line 1
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->lv_cards:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->lvCards:Landroid/widget/ListView;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v2, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->setData(Ljava/util/List;Z)V

    .line 6
    new-instance v2, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;-><init>(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)V

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->setOnItemClickListener(Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$OnItemClickListener;)V

    .line 54
    iget-object v2, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->lvCards:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    iget-object v2, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->lvCards:Landroid/widget/ListView;

    new-instance v3, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$2;

    invoke-direct {v3, p0, p2}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$2;-><init>(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 62
    sget p2, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_layout_addcard_recomend_header:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 63
    sget p2, Lcom/netease/epay/sdk/base_card/R$id;->recommend_banks_cards_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 64
    sget v3, Lcom/netease/epay/sdk/base_card/R$id;->recommend_banks_manage:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 65
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v4, "\u7ba1\u7406"

    .line 66
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v4, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$3;

    invoke-direct {v4, p0, v3, v0}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$3;-><init>(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Landroid/widget/TextView;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u63a8\u8350\u6dfb\u52a0\u5df2\u89e3\u7ed1\u94f6\u884c\u5361\uff0c\u6216\u7ba1\u7406\u63a8\u8350"

    .line 87
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->lvCards:Landroid/widget/ListView;

    invoke-virtual {p2, p1, v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static setArguments(Lcom/netease/epay/sdk/base/ui/FullSdkFragment;Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "epay_bundle_bank_json"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private showBottomLogo(Landroid/view/View;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->listViewCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->listViewCount:I

    if-lez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->lvBanks:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->lvCards:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    .line 8
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-static {v2, v3}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v2

    .line 9
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x46

    invoke-static {v3, v4}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v3

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/2addr v2, v3

    if-gt v2, p1, :cond_1

    .line 12
    sget p1, Lcom/netease/epay/sdk/base_card/R$id;->iv_bottom_logo:I

    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->updateViews(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected epayLogoBg()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getJsonForCard()Lorg/json/JSONObject;
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->addBizType()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected initStatusBarColor()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_BG_Low:I

    const-string v2, "epaysdk_nav_bg"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/theme/LightDarkSupport;->getColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/util/inbar/InnerBarUtils;->initStatusBarColor(Landroid/app/Activity;I)V

    return-void
.end method

.method protected jumpToBankPage(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
    .locals 0

    return-void
.end method

.method protected jumpToReSignCardPage(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "epay_bundle_chooseBank_onSaveInstanceState"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->dataLost:Z

    if-eqz v0, :cond_3

    const-string p1, "epay_bundle_bank_json"

    .line 8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->dataLost:Z

    return-void

    .line 13
    :cond_1
    const-class v0, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->json2Array(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->originalList:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;

    .line 15
    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->isRecommendCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->cards:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->banks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2
    sget p2, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_frag_recommend_card_bank_list:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->dataLost:Z

    if-eqz v0, :cond_0

    .line 4
    sget p1, Lcom/netease/epay/sdk/base_card/R$id;->ivBack:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->back(Landroid/view/View;)V

    return-object p2

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->initCardsView(Landroid/view/LayoutInflater;Landroid/view/View;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->banks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->initBanksView(Landroid/view/LayoutInflater;Landroid/view/View;)V

    :cond_2
    const-string p1, "enter"

    .line 13
    invoke-virtual {p0, p3, p3, p1, p3}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object p2
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

.method public trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 1
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v5, p4

    .line 3
    iget-object p4, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->banks:Ljava/util/ArrayList;

    invoke-static {p4}, Lcom/netease/epay/sdk/base_card/biz/AddCardLogic;->getRecommendBankData(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "bindRecommendBankList"

    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p4, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->cards:Ljava/util/ArrayList;

    invoke-static {p4}, Lcom/netease/epay/sdk/base_card/biz/AddCardLogic;->getRecommendCardData(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "bindRecommendCardList"

    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->getBus()Lcom/netease/epay/sdk/base/model/CustomerDataBus;

    move-result-object p4

    iget-object p4, p4, Lcom/netease/epay/sdk/base/model/CustomerDataBus;->orderId:Ljava/lang/String;

    const-string v0, "bizNo"

    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->isRealName()Z

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    const-string v0, "isRealName"

    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p4, Lcom/netease/epay/sdk/base/core/CoreData;->biz:Lcom/netease/epay/sdk/base/model/EpayBiz;

    invoke-virtual {p4}, Lcom/netease/epay/sdk/base/model/EpayBiz;->getBindCardEpayBizType()Ljava/lang/String;

    move-result-object p4

    const-string v0, "epayBizType"

    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cardBind"

    const-string v1, "recommendBankBind"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/netease/epay/sdk/base/datacoll/EpayDaTrackUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
