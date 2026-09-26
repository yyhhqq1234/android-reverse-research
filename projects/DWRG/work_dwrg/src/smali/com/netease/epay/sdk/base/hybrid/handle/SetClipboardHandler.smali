.class public Lcom/netease/epay/sdk/base/hybrid/handle/SetClipboardHandler;
.super Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;
.source "SetClipboardHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler",
        "<",
        "Lcom/netease/epay/sdk/base/hybrid/msg/SetClipboardMsg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic buildMsgFromJson(Lorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/hybrid/handle/SetClipboardHandler;->buildMsgFromJson(Lorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/msg/SetClipboardMsg;

    move-result-object v0

    return-object v0
.end method

.method protected buildMsgFromJson(Lorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/msg/SetClipboardMsg;
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    new-instance v0, Lcom/netease/epay/sdk/base/hybrid/msg/SetClipboardMsg;

    invoke-direct {v0, p1}, Lcom/netease/epay/sdk/base/hybrid/msg/SetClipboardMsg;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method protected bridge synthetic handleRequest(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V
    .locals 0

    .prologue
    .line 19
    check-cast p3, Lcom/netease/epay/sdk/base/hybrid/msg/SetClipboardMsg;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/epay/sdk/base/hybrid/handle/SetClipboardHandler;->handleRequest(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/base/hybrid/msg/SetClipboardMsg;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V

    return-void
.end method

.method protected handleRequest(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/base/hybrid/msg/SetClipboardMsg;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "setClipboardMsg"    # Lcom/netease/epay/sdk/base/hybrid/msg/SetClipboardMsg;
    .param p4, "jsCallback"    # Lcom/netease/epay/sdk/base/hybrid/JsCallback;

    .prologue
    .line 23
    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 24
    const-string v1, "Clipboard"

    iget-object v2, p3, Lcom/netease/epay/sdk/base/hybrid/msg/SetClipboardMsg;->data:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netease/epay/sdk/base/hybrid/handle/SetClipboardHandler;->createRep(ILorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/netease/epay/sdk/base/hybrid/JsCallback;->confirm(Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;)V

    .line 27
    return-void
.end method
