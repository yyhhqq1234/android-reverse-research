.class public Lcom/netease/epay/sdk/base/hybrid/handle/SetPageClosePromptHandler;
.super Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;
.source "SetPageClosePromptHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler",
        "<",
        "Lcom/netease/epay/sdk/base/hybrid/msg/SetPageClosePromptMsg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic buildMsgFromJson(Lorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/hybrid/handle/SetPageClosePromptHandler;->buildMsgFromJson(Lorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/msg/SetPageClosePromptMsg;

    move-result-object v0

    return-object v0
.end method

.method protected buildMsgFromJson(Lorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/msg/SetPageClosePromptMsg;
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    new-instance v0, Lcom/netease/epay/sdk/base/hybrid/msg/SetPageClosePromptMsg;

    invoke-direct {v0, p1}, Lcom/netease/epay/sdk/base/hybrid/msg/SetPageClosePromptMsg;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method protected bridge synthetic handleRequest(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V
    .locals 0

    .prologue
    .line 18
    check-cast p3, Lcom/netease/epay/sdk/base/hybrid/msg/SetPageClosePromptMsg;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/epay/sdk/base/hybrid/handle/SetPageClosePromptHandler;->handleRequest(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/base/hybrid/msg/SetPageClosePromptMsg;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V

    return-void
.end method

.method protected handleRequest(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/base/hybrid/msg/SetPageClosePromptMsg;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "setPageClosePromptMsg"    # Lcom/netease/epay/sdk/base/hybrid/msg/SetPageClosePromptMsg;
    .param p4, "jsCallback"    # Lcom/netease/epay/sdk/base/hybrid/JsCallback;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/netease/epay/sdk/base/view/BaseWebView;

    if-eqz v2, :cond_0

    .line 22
    check-cast p1, Lcom/netease/epay/sdk/base/view/BaseWebView;

    .end local p1    # "webView":Landroid/webkit/WebView;
    iget v2, p3, Lcom/netease/epay/sdk/base/hybrid/msg/SetPageClosePromptMsg;->status:I

    if-ne v2, v0, :cond_1

    :goto_0
    iget-object v2, p3, Lcom/netease/epay/sdk/base/hybrid/msg/SetPageClosePromptMsg;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/netease/epay/sdk/base/view/BaseWebView;->setPageClosePrompt(ZLjava/lang/String;)V

    .line 24
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/netease/epay/sdk/base/hybrid/handle/SetPageClosePromptHandler;->createRep(ILorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/netease/epay/sdk/base/hybrid/JsCallback;->confirm(Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;)V

    .line 25
    return-void

    :cond_1
    move v0, v1

    .line 22
    goto :goto_0
.end method
