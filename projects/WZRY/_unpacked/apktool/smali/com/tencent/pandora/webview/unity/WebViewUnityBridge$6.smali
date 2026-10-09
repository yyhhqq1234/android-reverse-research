.class Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$6;
.super Ljava/lang/Object;
.source "WebViewUnityBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->writeMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$6;->val$message:Ljava/lang/String;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 358
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->access$1()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    sget-boolean v2, Lcom/tencent/pandora/webview/WebViewActivity;->isShow:Z

    if-eqz v2, :cond_0

    .line 360
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.pandora.webview"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 362
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "funkey"

    const-string/jumbo v3, "writeMessage"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v2, "message"

    iget-object v3, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$6;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string/jumbo v2, "unityGameObject"

    sget-object v3, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->gameObjectName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 366
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 367
    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    sget-object v2, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 375
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->access$2()Lcom/tencent/pandora/webview/IWebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 372
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->access$2()Lcom/tencent/pandora/webview/IWebView;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$6;->val$message:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/tencent/pandora/webview/IWebView;->writeMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
