.class Lcom/smoba/webview/WebViewEx$15;
.super Ljava/lang/Object;
.source "WebViewEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smoba/webview/WebViewEx;->stopScreenShotListen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1047
    const-string v0, "CaptureScreen"

    const-string v1, "stop capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    sget-boolean v0, Lcom/smoba/webview/WebViewEx;->isHasScreenShotListener:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smoba/webview/WebViewEx;->screenShotListenHelper:Lcom/smoba/webview/ScreenShotListenManager;

    if-eqz v0, :cond_0

    .line 1049
    sget-object v0, Lcom/smoba/webview/WebViewEx;->screenShotListenHelper:Lcom/smoba/webview/ScreenShotListenManager;

    invoke-virtual {v0}, Lcom/smoba/webview/ScreenShotListenManager;->stopListen()V

    .line 1051
    const/4 v0, 0x0

    sput-boolean v0, Lcom/smoba/webview/WebViewEx;->isHasScreenShotListener:Z

    .line 1054
    :cond_0
    return-void
.end method
