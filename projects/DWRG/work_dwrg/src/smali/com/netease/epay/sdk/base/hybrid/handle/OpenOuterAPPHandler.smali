.class public Lcom/netease/epay/sdk/base/hybrid/handle/OpenOuterAPPHandler;
.super Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;
.source "OpenOuterAPPHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler",
        "<",
        "Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic buildMsgFromJson(Lorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/hybrid/handle/OpenOuterAPPHandler;->buildMsgFromJson(Lorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;

    move-result-object v0

    return-object v0
.end method

.method protected buildMsgFromJson(Lorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    new-instance v0, Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;

    invoke-direct {v0, p1}, Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method protected bridge synthetic handleRequest(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/base/hybrid/common/BaseMsg;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V
    .locals 0

    .prologue
    .line 21
    check-cast p3, Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netease/epay/sdk/base/hybrid/handle/OpenOuterAPPHandler;->handleRequest(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V

    return-void
.end method

.method protected handleRequest(Landroid/webkit/WebView;Landroid/content/Context;Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;Lcom/netease/epay/sdk/base/hybrid/JsCallback;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "openOuterAPPMsg"    # Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;
    .param p4, "jsCallback"    # Lcom/netease/epay/sdk/base/hybrid/JsCallback;

    .prologue
    .line 25
    iget-object v0, p3, Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;->packageName:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/netease/epay/sdk/base/util/AppUtils;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;->openURL:Ljava/lang/String;

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p3, Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;->openURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 28
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netease/epay/sdk/base/hybrid/handle/OpenOuterAPPHandler;->createRep(ILorg/json/JSONObject;)Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/netease/epay/sdk/base/hybrid/JsCallback;->confirm(Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;)V

    .line 34
    return-void

    .line 29
    :cond_1
    iget-object v0, p3, Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;->backupURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p3, Lcom/netease/epay/sdk/base/hybrid/msg/OpenOuterAPPMsg;->backupURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 31
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
