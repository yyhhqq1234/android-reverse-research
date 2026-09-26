.class public Lcom/netease/epay/sdk/pay/b/b;
.super Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;
.source "PayResultHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler",
        "<",
        "Lcom/netease/epay/sdk/pay/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Lcom/netease/epay/sdk/pay/b/a;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/netease/epay/sdk/pay/b/a;

    invoke-direct {v0, p1}, Lcom/netease/epay/sdk/pay/b/a;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method protected a(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/pay/b/a;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 26
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 27
    instance-of v2, p2, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    if-eqz v2, :cond_1

    check-cast p2, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    .line 28
    :goto_0
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p3}, Lcom/netease/epay/sdk/pay/b/a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    new-instance v2, Lcom/netease/epay/sdk/base/event/BaseEvent;

    const-string v3, "000000"

    invoke-direct {v2, v3, v1, p2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/pay/PayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 35
    :cond_0
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netease/epay/sdk/pay/b/b;->createRep(ILorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/netease/epay/sdk/base/hybrid/JsCallback;->confirm(Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;)V

    .line 36
    return-void

    :cond_1
    move-object p2, v1

    .line 27
    goto :goto_0

    .line 32
    :cond_2
    new-instance v2, Lcom/netease/epay/sdk/base/event/BaseEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Lcom/netease/epay/sdk/pay/b/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p3, Lcom/netease/epay/sdk/pay/b/a;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/pay/PayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    goto :goto_1
.end method

.method protected synthetic buildMsgFromJson(Lorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/pay/b/b;->a(Lorg/json/JSONObject;)Lcom/netease/epay/sdk/pay/b/a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic handleRequest(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V
    .locals 0

    .prologue
    .line 22
    check-cast p3, Lcom/netease/epay/sdk/pay/b/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/epay/sdk/pay/b/b;->a(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/pay/b/a;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V

    return-void
.end method
