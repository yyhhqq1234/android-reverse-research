.class Lcom/tencent/pandora/webview/WebViewServiceConnector$CommandHandler;
.super Landroid/os/Handler;
.source "WebViewServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/pandora/webview/WebViewServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;


# direct methods
.method constructor <init>(Lcom/tencent/pandora/webview/WebViewServiceConnector;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    .local v0, "data":Landroid/os/Bundle;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 52
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 37
    :pswitch_1
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    iget-object v2, v2, Lcom/tencent/pandora/webview/WebViewServiceConnector;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    iget-object v2, v2, Lcom/tencent/pandora/webview/WebViewServiceConnector;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    invoke-interface {v2}, Lcom/tencent/pandora/webview/WebViewEventListener;->onWebViewLoaded()V

    .line 38
    :cond_1
    const-string v2, "Pandora WebView"

    const-string v3, "Connector Got Page Loaded"

    invoke-static {v2, v3}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :pswitch_2
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    iget-object v2, v2, Lcom/tencent/pandora/webview/WebViewServiceConnector;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    iget-object v2, v2, Lcom/tencent/pandora/webview/WebViewServiceConnector;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    invoke-interface {v2, v1}, Lcom/tencent/pandora/webview/WebViewEventListener;->onWebViewMessage(Ljava/lang/String;)V

    .line 43
    :cond_2
    const-string v2, "Pandora WebView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connector Got Message "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    iget-object v2, v2, Lcom/tencent/pandora/webview/WebViewServiceConnector;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    iget-object v2, v2, Lcom/tencent/pandora/webview/WebViewServiceConnector;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    invoke-interface {v2}, Lcom/tencent/pandora/webview/WebViewEventListener;->onLowMemory()V

    goto :goto_0

    .line 49
    :pswitch_4
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    iget-object v2, v2, Lcom/tencent/pandora/webview/WebViewServiceConnector;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$CommandHandler;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    iget-object v2, v2, Lcom/tencent/pandora/webview/WebViewServiceConnector;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    const-string v3, "isDown"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/tencent/pandora/webview/WebViewEventListener;->onBackPress(Z)V

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
