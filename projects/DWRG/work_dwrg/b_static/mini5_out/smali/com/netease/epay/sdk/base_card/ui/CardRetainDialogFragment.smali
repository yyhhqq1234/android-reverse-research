.class public Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "CardRetainDialogFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/IFullScreenDialogFragment;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment$Callback;
    }
.end annotation


# static fields
.field private static final KEY_RETENTION_INFOS:Ljava/lang/String; = "retentionInfos"

.field private static callback:Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment$Callback;


# instance fields
.field private retentionInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/QueryRetentionInfos$RetentionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    return-void
.end method

.method private addRetentionInfoView(Landroid/widget/LinearLayout;Lcom/netease/epay/sdk/base_card/model/QueryRetentionInfos$RetentionInfo;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_item_card_retain:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lcom/netease/epay/sdk/base_card/R$id;->tv_item_card_retain_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    sget v2, Lcom/netease/epay/sdk/base_card/R$id;->tv_item_card_retain_content:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    sget v3, Lcom/netease/epay/sdk/base_card/R$id;->tv_item_card_retain_action:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 6
    iget-object v4, p2, Lcom/netease/epay/sdk/base_card/model/QueryRetentionInfos$RetentionInfo;->couponDesc:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/netease/epay/sdk/base_card/model/QueryRetentionInfos$RetentionInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Lcom/netease/epay/sdk/base_card/model/QueryRetentionInfos$RetentionInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :goto_0
    iget-object v1, p2, Lcom/netease/epay/sdk/base_card/model/QueryRetentionInfos$RetentionInfo;->content:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p2}, Lcom/netease/epay/sdk/base_card/model/QueryRetentionInfos$RetentionInfo;->getWayContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance v1, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;Lcom/netease/epay/sdk/base_card/model/QueryRetentionInfos$RetentionInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initBottomView(Landroid/view/View;)V
    .locals 4

    .line 1
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->btn_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_Btn_Primary:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 6
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->btn_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 13
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_Border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 18
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initRetentionInfo(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->retentionInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->ll_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 5
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->retentionInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base_card/model/QueryRetentionInfos$RetentionInfo;

    .line 6
    invoke-direct {p0, p1, v1}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->addRetentionInfoView(Landroid/widget/LinearLayout;Lcom/netease/epay/sdk/base_card/model/QueryRetentionInfos$RetentionInfo;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static newInstance(Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment$Callback;Ljava/lang/String;)Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;
    .locals 2

    .line 1
    sput-object p0, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->callback:Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment$Callback;

    .line 2
    new-instance p0, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "retentionInfos"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method synthetic lambda$addRetentionInfoView$0$com-netease-epay-sdk-base_card-ui-CardRetainDialogFragment(Lcom/netease/epay/sdk/base_card/model/QueryRetentionInfos$RetentionInfo;Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object p2, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->callback:Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment$Callback;

    if-eqz p2, :cond_2

    .line 2
    iget-object p2, p1, Lcom/netease/epay/sdk/base_card/model/QueryRetentionInfos$RetentionInfo;->way:Ljava/lang/String;

    const-string v0, "ADD_CARD"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "click"

    const-string v2, "cancelPop"

    if-eqz p2, :cond_0

    const-string p1, "cardNoForget"

    .line 3
    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    sget-object p1, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->callback:Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment$Callback;

    invoke-interface {p1}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment$Callback;->onOneKeyBind()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p1, Lcom/netease/epay/sdk/base_card/model/QueryRetentionInfos$RetentionInfo;->way:Ljava/lang/String;

    const-string v3, "USE_COUPON"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "cardCouponUse"

    .line 7
    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    sget-object p1, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->callback:Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment$Callback;

    invoke-interface {p1}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment$Callback;->onAddCard()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/model/QueryRetentionInfos$RetentionInfo;->way:Ljava/lang/String;

    const-string p2, "QUERY_CARD"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "cardNoSelect"

    .line 11
    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    sget-object p1, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->callback:Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment$Callback;

    invoke-interface {p1}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment$Callback;->onQueryCard()V

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->onDialogBackPressed()Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->btn_left:I

    const/4 v1, 0x0

    const-string v2, "click"

    const-string v3, "cancelPop"

    if-ne p1, v0, :cond_1

    .line 2
    sget-object p1, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->callback:Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment$Callback;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment$Callback;->onExit()V

    :cond_0
    const-string p1, "quitButton"

    .line 5
    invoke-virtual {p0, v3, p1, v2, v1}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const-string p1, "continueButton"

    .line 8
    invoke-virtual {p0, v3, p1, v2, v1}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->onDialogBackPressed()Z

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "retentionInfos"

    .line 4
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 6
    const-class p3, Lcom/netease/epay/sdk/base_card/model/QueryRetentionInfos$RetentionInfo;

    invoke-static {p2, p3}, Lcom/netease/epay/sdk/base/util/LogicUtil;->json2Array(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->retentionInfos:Ljava/util/ArrayList;

    .line 9
    :cond_0
    sget p2, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_frag_card_retain:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->initBottomView(Landroid/view/View;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->initRetentionInfo(Landroid/view/View;)V

    .line 13
    new-instance p2, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p2
.end method

.method public onDialogBackPressed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->dismissAllowingStateLoss()V

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment;->callback:Lcom/netease/epay/sdk/base_card/ui/CardRetainDialogFragment$Callback;

    const/4 v0, 0x1

    return v0
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

    .line 4
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->getBus()Lcom/netease/epay/sdk/base/model/CustomerDataBus;

    move-result-object p4

    iget-object p4, p4, Lcom/netease/epay/sdk/base/model/CustomerDataBus;->orderId:Ljava/lang/String;

    const-string v0, "bizNo"

    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->isRealName()Z

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    const-string v0, "isRealName"

    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p4, Lcom/netease/epay/sdk/base/core/CoreData;->biz:Lcom/netease/epay/sdk/base/model/EpayBiz;

    invoke-virtual {p4}, Lcom/netease/epay/sdk/base/model/EpayBiz;->getBindCardEpayBizType()Ljava/lang/String;

    move-result-object p4

    const-string v0, "epayBizType"

    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cardBind"

    const-string v1, "addCard"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/netease/epay/sdk/base/datacoll/EpayDaTrackUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
