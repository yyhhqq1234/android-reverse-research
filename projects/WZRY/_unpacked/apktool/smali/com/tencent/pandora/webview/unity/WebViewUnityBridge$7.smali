.class Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$7;
.super Ljava/lang/Object;
.source "WebViewUnityBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->uninitiated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 388
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->access$1()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    sget-boolean v2, Lcom/tencent/pandora/webview/WebViewActivity;->isShow:Z

    if-eqz v2, :cond_0

    .line 390
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.pandora.webview"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 392
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "funkey"

    const-string/jumbo v3, "uninitiated"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string/jumbo v2, "unityGameObject"

    sget-object v3, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->gameObjectName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 395
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 396
    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 397
    sget-object v2, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 404
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->access$2()Lcom/tencent/pandora/webview/IWebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 401
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->access$2()Lcom/tencent/pandora/webview/IWebView;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/pandora/webview/IWebView;->uninitiated()V

    goto :goto_0
.end method
