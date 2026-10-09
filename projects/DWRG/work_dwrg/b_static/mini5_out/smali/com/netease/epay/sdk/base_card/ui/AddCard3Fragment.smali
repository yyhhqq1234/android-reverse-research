.class public Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "AddCard3Fragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/IFullScreenDialogFragment;


# static fields
.field public static final BIZ_MODE:Ljava/lang/String; = "AddCard3SmsActivity_biz_mode"

.field public static final BIZ_MODE_ADDCARD:I = 0x2

.field public static final BIZ_MODE_ADDCARD_PAY:I = 0x1

.field public static final BIZ_MODE_FORGET_PWD_HAS_CARD:I = 0x3

.field public static final KEY_PAY_SCHEMA_ID:Ljava/lang/String; = "paySchemaId"

.field public static final KEY_RESEND_SMS_JSON:Ljava/lang/String; = "reSendSmsJsonString"


# instance fields
.field private etInputSms:Lcom/netease/epay/sdk/base/view/SmsAuthCodeEditText;

.field private titleBar:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;)Lcom/netease/epay/sdk/base/view/SmsAuthCodeEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->etInputSms:Lcom/netease/epay/sdk/base/view/SmsAuthCodeEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->forceShowKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private onCloseClick()V
    .locals 3

    .line 1
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$2;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;)V

    .line 35
    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->getInstance(Lcom/netease/epay/sdk/base/simpleimpl/TwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "RetainDialogFragment"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentKeepAll(Lcom/netease/epay/sdk/base/ui/SdkFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public clearInput()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->etInputSms:Lcom/netease/epay/sdk/base/view/SmsAuthCodeEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/SmsAuthCodeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->etInputSms:Lcom/netease/epay/sdk/base/view/SmsAuthCodeEditText;

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->forceShowKeyboard(Landroid/view/View;)V

    return-void
.end method

.method protected clickDone(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected getPhone()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$onViewCreated$0$com-netease-epay-sdk-base_card-ui-AddCard3Fragment(Landroid/view/View;)V
    .locals 3

    const-string p1, "topNavigationBar"

    const-string v0, "back"

    const-string v1, "click"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->onCloseClick()V

    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-netease-epay-sdk-base_card-ui-AddCard3Fragment()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->etInputSms:Lcom/netease/epay/sdk/base/view/SmsAuthCodeEditText;

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->forceShowKeyboard(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$2$com-netease-epay-sdk-base_card-ui-AddCard3Fragment(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->getPhone()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/ui/NoSmsFragment;->getInstance(ILjava/lang/String;)Lcom/netease/epay/sdk/base/ui/NoSmsFragment;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "codeInput"

    const-string v2, "notReceived"

    const-string v3, "click"

    .line 3
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "noSmsFragment"

    invoke-virtual {p1, v0, v1}, Lcom/netease/epay/sdk/base/ui/NoSmsFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;)V

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/ui/NoSmsFragment;->setCallback(Lcom/netease/epay/sdk/base/ui/NoSmsFragment$FragmentCallback;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;
    .locals 0

    .line 2
    sget p2, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_actv_addcard_sms:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
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

    const/4 v0, 0x1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lcom/netease/epay/sdk/base_card/R$id;->atb:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    iput-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->titleBar:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    const-string v0, "\u9a8c\u8bc1\u94f6\u884c\u9884\u7559\u624b\u673a\u53f7"

    .line 3
    invoke-virtual {p2, v0}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setTitle(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->titleBar:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;)V

    invoke-virtual {p2, v0}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->titleBar:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;)V

    invoke-virtual {p2, v0}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setRightIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    sget p2, Lcom/netease/epay/sdk/base_card/R$id;->et_input_sms:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/netease/epay/sdk/base/view/SmsAuthCodeEditText;

    iput-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->etInputSms:Lcom/netease/epay/sdk/base/view/SmsAuthCodeEditText;

    .line 20
    invoke-virtual {p2}, Lcom/netease/epay/sdk/base/view/SmsAuthCodeEditText;->requestFocus()Z

    .line 21
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->etInputSms:Lcom/netease/epay/sdk/base/view/SmsAuthCodeEditText;

    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$1;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;)V

    invoke-virtual {p2, v0}, Lcom/netease/epay/sdk/base/view/SmsAuthCodeEditText;->setOnTextInputListener(Lcom/netease/epay/sdk/base/view/SmsAuthCodeEditText$OnTextInputListener;)V

    .line 35
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->etInputSms:Lcom/netease/epay/sdk/base/view/SmsAuthCodeEditText;

    invoke-virtual {p0, p2}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->forceShowKeyboard(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->updateViews(Landroid/view/View;)V

    return-void
.end method

.method public trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

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

    const-string v1, "codeInput"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/netease/epay/sdk/base/datacoll/EpayDaTrackUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
