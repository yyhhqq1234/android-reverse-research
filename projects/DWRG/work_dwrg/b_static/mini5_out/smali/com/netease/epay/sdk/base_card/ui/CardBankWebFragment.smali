.class public Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;
.super Lcom/netease/epay/sdk/base/ui/WebViewFragment;
.source "CardBankWebFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;-><init>()V

    return-void
.end method

.method static synthetic access$001(Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->onClosePage()V

    return-void
.end method

.method public static newInstance(ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "WebView_postUrl"

    .line 3
    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "WebView_postFormData"

    .line 4
    invoke-virtual {v1, p5, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "WebView_isNeedTitle"

    .line 5
    invoke-virtual {v1, p5, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "WebView_TitleName"

    .line 6
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "WebView_isNeedBack"

    .line 7
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "WebView_helpAddress"

    .line 8
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "WebView_isNeedSecondTitle"

    .line 9
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "WebView_cookie"

    .line 10
    invoke-virtual {v1, p0, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "WebView_cookie_key"

    .line 11
    invoke-virtual {v1, p0, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected onClosePage()V
    .locals 3

    const-string v0, "bankPage"

    const-string v1, "close"

    const-string v2, "click"

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment$1;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;)V

    .line 35
    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->getInstance(Lcom/netease/epay/sdk/base/simpleimpl/TwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "RetainDialogFragment"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentKeepAll(Lcom/netease/epay/sdk/base/ui/SdkFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

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

    .line 2
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v5, p4

    .line 3
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->getBus()Lcom/netease/epay/sdk/base/model/CustomerDataBus;

    move-result-object p4

    iget-object p4, p4, Lcom/netease/epay/sdk/base/model/CustomerDataBus;->orderId:Ljava/lang/String;

    const-string v0, "bizNo"

    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->isRealName()Z

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    const-string v0, "isRealName"

    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p4, Lcom/netease/epay/sdk/base/core/CoreData;->biz:Lcom/netease/epay/sdk/base/model/EpayBiz;

    invoke-virtual {p4}, Lcom/netease/epay/sdk/base/model/EpayBiz;->getBindCardEpayBizType()Ljava/lang/String;

    move-result-object p4

    const-string v0, "epayBizType"

    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cardBind"

    const-string v1, "noCardInputAddCard"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/netease/epay/sdk/base/datacoll/EpayDaTrackUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
