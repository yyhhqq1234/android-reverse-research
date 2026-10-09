.class Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;
.super Ljava/lang/Object;
.source "WebViewUnityBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->showUrl(IIIILjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$color:Ljava/lang/String;

.field private final synthetic val$height:I

.field private final synthetic val$left:I

.field private final synthetic val$top:I

.field private final synthetic val$url:Ljava/lang/String;

.field private final synthetic val$waitFullyLoaded:Z

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(IIIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$width:I

    iput p2, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$height:I

    iput p3, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$left:I

    iput p4, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$top:I

    iput-object p5, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$url:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$color:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$waitFullyLoaded:Z

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 220
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->access$1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.tencent.pandora.webview"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v9, "intent":Landroid/content/Intent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v8, "b":Landroid/os/Bundle;
    const-string v0, "funkey"

    const-string v1, "showUrl"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v0, "width"

    iget v1, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$width:I

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v0, "height"

    iget v1, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$height:I

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string v0, "left"

    iget v1, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$left:I

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    const-string/jumbo v0, "top"

    iget v1, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$top:I

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    const-string v10, "http://www.fantasylife.cn/rtBroadcast/"

    .line 229
    .local v10, "tempUrl":Ljava/lang/String;
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$url:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "color"

    iget-object v1, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$color:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v0, "waitFullyLoaded"

    iget-boolean v1, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$waitFullyLoaded:Z

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    const-string/jumbo v0, "unityGameObject"

    sget-object v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->gameObjectName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v9, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 234
    const/high16 v0, 0x20000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    const/high16 v0, 0x20000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 236
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 245
    .end local v8    # "b":Landroid/os/Bundle;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "tempUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->helper:Lcom/tencent/pandora/webview/IWebView;

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->helper:Lcom/tencent/pandora/webview/IWebView;

    iget v1, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$width:I

    iget v2, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$height:I

    iget v3, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$left:I

    iget v4, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$top:I

    iget-object v5, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$color:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;->val$waitFullyLoaded:Z

    invoke-interface/range {v0 .. v7}, Lcom/tencent/pandora/webview/IWebView;->showUrl(IIIILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
