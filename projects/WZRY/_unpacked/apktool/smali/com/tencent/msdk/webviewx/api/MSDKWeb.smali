.class public Lcom/tencent/msdk/webviewx/api/MSDKWeb;
.super Ljava/lang/Object;
.source "MSDKWeb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeWeb()I
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->closeWeb()I

    move-result v0

    return v0
.end method

.method public static getCloseMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getCloseMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->init(Landroid/app/Activity;)V

    .line 23
    return-void
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->onDestroy()V

    .line 41
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->onResume()V

    .line 29
    return-void
.end method

.method public static onStop()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->onStop()V

    .line 35
    return-void
.end method

.method public static openWeb(Ljava/lang/String;)I
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->openWeb(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static openWebWithConfig(Ljava/lang/String;Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;)I
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "config"    # Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;
    .param p2, "lisenter"    # Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;

    .prologue
    .line 51
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/msdk/webviewx/core/WebViewX;->openWebWithConfig(Ljava/lang/String;Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;)I

    move-result v0

    return v0
.end method

.method public static openWebWithData(Ljava/lang/String;[B)I
    .locals 1
    .param p0, "charset"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 70
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/msdk/webviewx/core/WebViewX;->openWebWithData(Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public static openWebWithJson(Ljava/lang/String;)I
    .locals 1
    .param p0, "webJson"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->openWebWithJson(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static sendToWebJs(Ljava/lang/String;)V
    .locals 1
    .param p0, "params"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->sendToWebJs(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static setCloseMsg(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->setCloseMsg(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static setWebViewBackground([B)Z
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 77
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->setWebViewBackground([B)Z

    move-result v0

    return v0
.end method
