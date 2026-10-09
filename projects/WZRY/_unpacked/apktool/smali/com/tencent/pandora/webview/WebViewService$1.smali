.class Lcom/tencent/pandora/webview/WebViewService$1;
.super Ljava/lang/Object;
.source "WebViewService.java"

# interfaces
.implements Lcom/tencent/pandora/webview/WebViewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/pandora/webview/WebViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/pandora/webview/WebViewService;


# direct methods
.method constructor <init>(Lcom/tencent/pandora/webview/WebViewService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/pandora/webview/WebViewService$1;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPress(Z)V
    .locals 4
    .param p1, "isDown"    # Z

    .prologue
    .line 116
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewService$1;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    iget-object v1, v1, Lcom/tencent/pandora/webview/WebViewService;->mClient:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "isDown"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewService$1;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewService$1;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    const/4 v3, -0x5

    invoke-static {v2, v3, v0}, Lcom/tencent/pandora/webview/WebViewService;->access$0(Lcom/tencent/pandora/webview/WebViewService;ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/pandora/webview/WebViewService;->access$1(Lcom/tencent/pandora/webview/WebViewService;Landroid/os/Message;)V

    .line 121
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 111
    const-string v0, "Pandora WebView"

    const-string v1, "Low memory notice sent from WebView"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onWebViewLoaded()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService$1;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    iget-object v0, v0, Lcom/tencent/pandora/webview/WebViewService;->mClient:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewService$1;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewService$1;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/tencent/pandora/webview/WebViewService;->access$0(Lcom/tencent/pandora/webview/WebViewService;ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/WebViewService;->access$1(Lcom/tencent/pandora/webview/WebViewService;Landroid/os/Message;)V

    .line 96
    :cond_0
    return-void
.end method

.method public onWebViewMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v1, "Pandora WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "On Web View Message "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewService$1;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    iget-object v1, v1, Lcom/tencent/pandora/webview/WebViewService;->mClient:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "Pandora WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Client Will Send Message "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewService$1;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewService$1;->this$0:Lcom/tencent/pandora/webview/WebViewService;

    const/4 v3, -0x2

    invoke-static {v2, v3, v0}, Lcom/tencent/pandora/webview/WebViewService;->access$0(Lcom/tencent/pandora/webview/WebViewService;ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/pandora/webview/WebViewService;->access$1(Lcom/tencent/pandora/webview/WebViewService;Landroid/os/Message;)V

    .line 107
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
