.class public Lcom/tencent/msdk/sdkwrapper/prajna/PrajnaWrapper;
.super Ljava/lang/Object;
.source "PrajnaWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OpenFullScreenWebViewWithJson(Ljava/lang/String;)V
    .locals 2
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string v1, "MSDKPrajnaWrapper java OpenFullScreenWebViewWithJson"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v0, v1, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    .line 18
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->init(Landroid/app/Activity;)V

    .line 19
    invoke-static {}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->openWebWithJson(Ljava/lang/String;)I

    .line 20
    return-void
.end method
