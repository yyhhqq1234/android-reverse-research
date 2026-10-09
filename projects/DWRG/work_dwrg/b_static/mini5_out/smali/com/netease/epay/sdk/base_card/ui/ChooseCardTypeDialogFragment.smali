.class public Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "ChooseCardTypeDialogFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/IFullScreenDialogFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment$Callback;
    }
.end annotation


# static fields
.field private static final KEY_CARD_INFOS:Ljava/lang/String; = "cardInfos"

.field private static callback:Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment$Callback;


# instance fields
.field private cards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportBankCard;",
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

.method private addCardTypeInfoView(Landroid/widget/LinearLayout;Lcom/netease/epay/sdk/base_card/model/SupportBankCard;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_item_card_type:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lcom/netease/epay/sdk/base_card/R$id;->tv_item_cards_card_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p2}, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;->getBankTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v1, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;Lcom/netease/epay/sdk/base_card/model/SupportBankCard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initCardTypeInfo(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;->cards:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;

    .line 6
    invoke-direct {p0, p1, v1}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;->addCardTypeInfoView(Landroid/widget/LinearLayout;Lcom/netease/epay/sdk/base_card/model/SupportBankCard;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static newInstance(Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment$Callback;Ljava/lang/String;)Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;
    .locals 2

    .line 1
    sput-object p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;->callback:Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment$Callback;

    .line 2
    new-instance p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cardInfos"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method synthetic lambda$addCardTypeInfoView$1$com-netease-epay-sdk-base_card-ui-ChooseCardTypeDialogFragment(Lcom/netease/epay/sdk/base_card/model/SupportBankCard;Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p2, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;->callback:Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment$Callback;

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.netease.epaysdk.addcard.change.bank"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;->cardType:Ljava/lang/String;

    const-string v1, "addcard_card_type"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v0, p1, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;->bankId:Ljava/lang/String;

    const-string v1, "addcard_bank_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;->bankName:Ljava/lang/String;

    const-string v0, "addcard_bank_name"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 7
    sget-object p1, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;->callback:Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment$Callback;

    invoke-interface {p1}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment$Callback;->onExit()V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;->onDialogBackPressed()Z

    return-void
.end method

.method synthetic lambda$onCreateView$0$com-netease-epay-sdk-base_card-ui-ChooseCardTypeDialogFragment(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;->onDialogBackPressed()Z

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "cardInfos"

    .line 4
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 6
    const-class p3, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;

    invoke-static {p2, p3}, Lcom/netease/epay/sdk/base/util/LogicUtil;->json2Array(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;->cards:Ljava/util/ArrayList;

    .line 9
    :cond_0
    sget p2, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_frag_card_type:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 10
    sget p2, Lcom/netease/epay/sdk/base_card/R$id;->atb:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    new-instance p3, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;)V

    invoke-virtual {p2, p3}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;->initCardTypeInfo(Landroid/view/View;)V

    .line 15
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
    sput-object v0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment;->callback:Lcom/netease/epay/sdk/base_card/ui/ChooseCardTypeDialogFragment$Callback;

    const/4 v0, 0x1

    return v0
.end method
