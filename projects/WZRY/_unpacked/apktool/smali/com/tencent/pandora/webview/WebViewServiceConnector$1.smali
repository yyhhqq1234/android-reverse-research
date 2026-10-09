.class Lcom/tencent/pandora/webview/WebViewServiceConnector$1;
.super Ljava/lang/Object;
.source "WebViewServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/pandora/webview/WebViewServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;


# direct methods
.method constructor <init>(Lcom/tencent/pandora/webview/WebViewServiceConnector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$1;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$1;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mService:Landroid/os/Messenger;

    .line 69
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$1;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mBound:Z

    .line 70
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$1;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    iget-object v0, v0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->userInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$1;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    iget-object v0, v0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->userInfo:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$1;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$1;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    iget-object v1, v1, Lcom/tencent/pandora/webview/WebViewServiceConnector;->userInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->setInfo(Ljava/lang/String;)V

    .line 73
    :cond_0
    const-string v0, "Pandora WebView"

    const-string v1, "Service Bound"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$1;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    invoke-static {v0}, Lcom/tencent/pandora/webview/WebViewServiceConnector;->access$0(Lcom/tencent/pandora/webview/WebViewServiceConnector;)V

    .line 75
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$1;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mService:Landroid/os/Messenger;

    .line 80
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewServiceConnector$1;->this$0:Lcom/tencent/pandora/webview/WebViewServiceConnector;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/pandora/webview/WebViewServiceConnector;->mBound:Z

    .line 81
    const-string v0, "Pandora WebView"

    const-string v1, "Service Unbound"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method
