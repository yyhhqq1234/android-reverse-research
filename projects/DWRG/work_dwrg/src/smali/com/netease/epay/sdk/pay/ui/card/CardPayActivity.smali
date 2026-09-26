.class public Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;
.super Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;
.source "CardPayActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public exitNotify(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;)V
    .locals 2
    .param p1, "code"    # Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    .prologue
    .line 65
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 66
    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    invoke-direct {v1, p1, p0}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/PayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected getExitDialogMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "\u662f\u5426\u653e\u5f03\u7ed1\u5b9a\u94f6\u884c\u5361"

    return-object v0
.end method

.method public getFirstFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/card/a;

    invoke-direct {v0}, Lcom/netease/epay/sdk/pay/ui/card/a;-><init>()V

    return-object v0
.end method

.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    sget v0, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_actv_full_fragment:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;->setContentView(I)V

    .line 34
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 35
    const-string v1, "position"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    const-string v1, "get_market_position.htm"

    const/4 v2, 0x0

    new-instance v3, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity$1;

    invoke-direct {v3, p0, p1}, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity$1;-><init>(Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;Landroid/os/Bundle;)V

    invoke-static {v1, v0, v2, p0, v3}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 56
    return-void
.end method
