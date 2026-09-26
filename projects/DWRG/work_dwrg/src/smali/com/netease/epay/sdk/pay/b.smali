.class public abstract Lcom/netease/epay/sdk/pay/b;
.super Lcom/netease/epay/sdk/NetCallback;
.source "PayCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/pay/model/PayingResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/netease/epay/sdk/pay/model/PayingResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method

.method private b(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/PayingResponse;)V
    .locals 4

    .prologue
    .line 72
    const-string v0, "open_fingerprint_pay.htm"

    sget-object v1, Lcom/netease/epay/sdk/pay/c;->g:Lcom/netease/epay/sdk/base/network/IParamsCallback;

    const/4 v2, 0x0

    new-instance v3, Lcom/netease/epay/sdk/pay/b$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/netease/epay/sdk/pay/b$2;-><init>(Lcom/netease/epay/sdk/pay/b;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/PayingResponse;)V

    invoke-static {v0, v1, v2, p1, v3}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lcom/netease/epay/sdk/base/network/IParamsCallback;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 85
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 4

    .prologue
    .line 89
    sget-object v0, Lcom/netease/epay/sdk/pay/b;->a:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/epay/sdk/pay/b;->a:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;->isShowPaySuccessInfo:Z

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/n;->a(Z)Lcom/netease/epay/sdk/pay/ui/n;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    const-string v2, "000000"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/PayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/PayingResponse;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    sput-object p2, Lcom/netease/epay/sdk/pay/b;->a:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    .line 55
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->g:Lcom/netease/epay/sdk/base/network/IParamsCallback;

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/pay/b;->b(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/PayingResponse;)V

    .line 69
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-boolean v0, Lcom/netease/epay/sdk/base/core/BaseData;->hasShortPwd:Z

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/pay/b;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 62
    :cond_1
    const-string v0, "setPwd"

    const/4 v1, 0x1

    invoke-static {v2, v2, v1, v2}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getSetPwdJson(ZZZZ)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/netease/epay/sdk/pay/b$1;

    invoke-direct {v2, p0, p1}, Lcom/netease/epay/sdk/pay/b$1;-><init>(Lcom/netease/epay/sdk/pay/b;Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v0, p1, v1, v2}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    goto :goto_0
.end method

.method protected a(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .prologue
    .line 209
    const-string v0, "HUAWEI"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {p2, v0, v1}, Lcom/netease/epay/sdk/base/ui/ToastResult;->makeToast(Landroid/content/Context;ZLjava/lang/String;)Lcom/netease/epay/sdk/base/ui/ToastResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/ToastResult;->show()V

    .line 213
    :cond_0
    iget-object v0, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public onLaterDeal(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 218
    .local p0, "this":Lcom/netease/epay/sdk/pay/b;, "Lcom/netease/epay/sdk/pay/b<TT;>;"
    const-string v0, "060006"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {p1}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a(Landroid/content/Context;)V

    .line 221
    :cond_0
    return-void
.end method

.method public onUIChanged(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 203
    .local p0, "this":Lcom/netease/epay/sdk/pay/b;, "Lcom/netease/epay/sdk/pay/b<TT;>;"
    const-string v0, "060006"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    check-cast p1, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    .end local p1    # "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {p1}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a()V

    .line 206
    :cond_0
    return-void
.end method

.method public onUnhandledFail(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 102
    .local p0, "this":Lcom/netease/epay/sdk/pay/b;, "Lcom/netease/epay/sdk/pay/b<TT;>;"
    sget-object v0, Lcom/netease/epay/sdk/base/util/ErrorCode;->balanceErrorList:Ljava/util/List;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/base/util/ErrorCode;->changeBankList:Ljava/util/List;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/pay/b$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/epay/sdk/pay/b$3;-><init>(Lcom/netease/epay/sdk/pay/b;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    .line 132
    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->getInstance(Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    const-string v0, "030028"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "030029"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    :cond_3
    new-instance v0, Lcom/netease/epay/sdk/pay/b$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/epay/sdk/pay/b$4;-><init>(Lcom/netease/epay/sdk/pay/b;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    .line 178
    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->getInstance(Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto :goto_0

    .line 181
    :cond_4
    const-string v0, "060022"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 182
    invoke-static {}, Lcom/netease/epay/sdk/pay/ui/o;->c()Lcom/netease/epay/sdk/pay/ui/o;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto :goto_0

    .line 183
    :cond_5
    const-string v0, "024072"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 184
    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->result:Ljava/lang/Object;

    instance-of v0, v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;

    .line 186
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 187
    const-string v2, "amount"

    iget-object v3, v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;->orderAmount:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "bank"

    iget-object v3, v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;->refundPageInfo:Lcom/netease/epay/sdk/pay/model/RefundPageInfo;

    iget-object v3, v3, Lcom/netease/epay/sdk/pay/model/RefundPageInfo;->bankName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "cardNo"

    iget-object v3, v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;->refundPageInfo:Lcom/netease/epay/sdk/pay/model/RefundPageInfo;

    iget-object v3, v3, Lcom/netease/epay/sdk/pay/model/RefundPageInfo;->cardNo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v2, "time"

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;->refundPageInfo:Lcom/netease/epay/sdk/pay/model/RefundPageInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/RefundPageInfo;->refundSec:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "msg"

    iget-object v2, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {v1}, Lcom/netease/epay/sdk/pay/ui/j;->a(Landroid/os/Bundle;)Lcom/netease/epay/sdk/pay/ui/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto :goto_0

    .line 194
    :cond_6
    new-instance v0, Lcom/netease/epay/sdk/pay/a/a;

    invoke-direct {v0}, Lcom/netease/epay/sdk/pay/a/a;-><init>()V

    invoke-virtual {v0, p2, p1}, Lcom/netease/epay/sdk/pay/a/a;->a(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    invoke-virtual {p0, p2, p1}, Lcom/netease/epay/sdk/pay/b;->a(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)V

    goto/16 :goto_0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    .local p0, "this":Lcom/netease/epay/sdk/pay/b;, "Lcom/netease/epay/sdk/pay/b<TT;>;"
    check-cast p2, Lcom/netease/epay/sdk/pay/model/PayingResponse;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/b;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/PayingResponse;)V

    return-void
.end method
