.class public Lcom/netease/epay/sdk/base/hybrid/handle/ShowToastHandler;
.super Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;
.source "ShowToastHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler",
        "<",
        "Lcom/netease/epay/sdk/base/hybrid/msg/ShowToastMsg;",
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
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/hybrid/handle/ShowToastHandler;->buildMsgFromJson(Lorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/msg/ShowToastMsg;

    move-result-object v0

    return-object v0
.end method

.method protected buildMsgFromJson(Lorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/msg/ShowToastMsg;
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    new-instance v0, Lcom/netease/epay/sdk/base/hybrid/msg/ShowToastMsg;

    invoke-direct {v0, p1}, Lcom/netease/epay/sdk/base/hybrid/msg/ShowToastMsg;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method protected bridge synthetic handleRequest(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V
    .locals 0

    .prologue
    .line 18
    check-cast p3, Lcom/netease/epay/sdk/base/hybrid/msg/ShowToastMsg;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/epay/sdk/base/hybrid/handle/ShowToastHandler;->handleRequest(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/base/hybrid/msg/ShowToastMsg;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V

    return-void
.end method

.method protected handleRequest(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/base/hybrid/msg/ShowToastMsg;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "setClipboardMsg"    # Lcom/netease/epay/sdk/base/hybrid/msg/ShowToastMsg;
    .param p4, "jsCallback"    # Lcom/netease/epay/sdk/base/hybrid/JsCallback;

    .prologue
    .line 22
    iget-object v0, p3, Lcom/netease/epay/sdk/base/hybrid/msg/ShowToastMsg;->title:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netease/epay/sdk/base/hybrid/handle/ShowToastHandler;->createRep(ILorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/netease/epay/sdk/base/hybrid/JsCallback;->confirm(Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;)V

    .line 24
    return-void
.end method
