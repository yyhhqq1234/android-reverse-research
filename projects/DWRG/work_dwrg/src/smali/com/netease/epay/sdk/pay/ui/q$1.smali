.class Lcom/netease/epay/sdk/pay/ui/q$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "WebPayFullFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/q;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/q;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/q;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/q$1;->a:Lcom/netease/epay/sdk/pay/ui/q;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method

.method private a(Lcom/netease/epay/sdk/base/event/BaseEvent;)V
    .locals 2

    .prologue
    .line 71
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/pay/PayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/q$1;->a:Lcom/netease/epay/sdk/pay/ui/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/pay/ui/q;->a(Lcom/netease/epay/sdk/pay/ui/q;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 76
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/q$1;->a:Lcom/netease/epay/sdk/pay/ui/q;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/q$1;->a:Lcom/netease/epay/sdk/pay/ui/q;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    .line 52
    :goto_0
    invoke-virtual {p2}, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;->isPaySuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    new-instance v2, Lcom/netease/epay/sdk/base/event/BaseEvent;

    const-string v3, "000000"

    invoke-direct {v2, v3, v1, v0}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    move-object v0, v2

    .line 57
    :goto_1
    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/pay/ui/q$1;->a(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 58
    return-void

    .line 55
    :cond_0
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    sget-object v2, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->USER_ABORT:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-direct {v1, v2, v0}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Landroid/support/v4/app/FragmentActivity;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 2
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/q$1;->a:Lcom/netease/epay/sdk/pay/ui/q;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/pay/ui/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    if-eqz v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/q$1;->a:Lcom/netease/epay/sdk/pay/ui/q;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    .line 66
    :cond_0
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    invoke-direct {v1, p1, v0}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)V

    invoke-direct {p0, v1}, Lcom/netease/epay/sdk/pay/ui/q$1;->a(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p2, Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/ui/q$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/QueryOrderInfo;)V

    return-void
.end method
