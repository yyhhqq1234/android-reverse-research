.class public Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;
.super Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
.source "CardBankListFragment.java"


# static fields
.field protected static final KEY_BANK_JSON:Ljava/lang/String; = "epay_bundle_bank_json"

.field protected static final KEY_CHOOSE_BANK_SAVE_DATA:Ljava/lang/String; = "epay_bundle_chooseBank_onSaveInstanceState"


# instance fields
.field private adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

.field private banks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAddBank;",
            ">;"
        }
    .end annotation
.end field

.field private dataLost:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->banks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->dataLost:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;Landroid/view/View;Landroid/widget/ListView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->showBottomLogo(Landroid/view/View;Landroid/widget/ListView;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;-><init>()V

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

.method private showBottomLogo(Landroid/view/View;Landroid/widget/ListView;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v1, v2}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x46

    invoke-static {v2, v3}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v2

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    const/4 v0, 0x0

    if-gt v1, p1, :cond_1

    .line 7
    sget p1, Lcom/netease/epay/sdk/base_card/R$id;->iv_bottom_logo:I

    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    .line 15
    :cond_1
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    sget v2, Lcom/netease/epay/sdk/base_card/R$drawable;->epaysdk_actv_bg_withlogo_nocolor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 19
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 20
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x19

    invoke-static {v3, v4}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v0, v3, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 21
    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected appendAttrs(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected back(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->back(Landroid/view/View;)V

    const-string p1, "topNavigationBar"

    const-string v0, "back"

    const-string v1, "click"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

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

.method protected jumpToCardBankDetail(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/epay/sdk/base_card/biz/CardBankDetailHelper;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base_card/biz/CardBankDetailHelper;-><init>()V

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;

    invoke-virtual {v0, v1, p1}, Lcom/netease/epay/sdk/base_card/biz/CardBankDetailHelper;->jumpToCardBankDetail(Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const-string v1, "enter"

    .line 2
    invoke-virtual {p0, v0, v0, v1, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "epay_bundle_chooseBank_onSaveInstanceState"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->dataLost:Z

    if-eqz v0, :cond_2

    const-string p1, "epay_bundle_bank_json"

    .line 9
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->dataLost:Z

    return-void

    .line 14
    :cond_1
    const-class v0, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->json2Array(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->banks:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2
    sget p2, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_frag_card_bank_list:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    iget-boolean p2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->dataLost:Z

    if-eqz p2, :cond_0

    .line 4
    sget p2, Lcom/netease/epay/sdk/base_card/R$id;->ivBack:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-super {p0, p2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->back(Landroid/view/View;)V

    return-object p1

    .line 7
    :cond_0
    sget p2, Lcom/netease/epay/sdk/base_card/R$id;->lv_banks:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 8
    new-instance p3, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

    .line 9
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->banks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->setData(Ljava/util/List;Z)V

    .line 10
    iget-object p3, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment$1;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;)V

    invoke-virtual {p3, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->setOnItemClickListener(Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$OnItemClickListener;)V

    .line 24
    iget-object p3, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    new-instance p3, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment$2;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;Landroid/view/View;Landroid/widget/ListView;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-object p1
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

    .line 2
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->isRealName()Z

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    const-string v0, "isRealName"

    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p4, Lcom/netease/epay/sdk/base/core/CoreData;->biz:Lcom/netease/epay/sdk/base/model/EpayBiz;

    invoke-virtual {p4}, Lcom/netease/epay/sdk/base/model/EpayBiz;->getBindCardEpayBizType()Ljava/lang/String;

    move-result-object p4

    const-string v0, "epayBizType"

    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v5}, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->appendAttrs(Ljava/util/Map;)V

    const-string v0, "cardBind"

    const-string v1, "noCardInputList"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/netease/epay/sdk/base/datacoll/EpayDaTrackUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
