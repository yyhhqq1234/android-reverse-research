.class Lcom/smoba/webview/WebViewEx$14;
.super Ljava/lang/Object;
.source "WebViewEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smoba/webview/WebViewEx;->startScreenShotListen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1013
    sget-boolean v0, Lcom/smoba/webview/WebViewEx;->isHasScreenShotListener:Z

    if-nez v0, :cond_1

    .line 1015
    const-string v0, "CaptureScreen"

    const-string v1, "open capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    sget-object v0, Lcom/smoba/webview/WebViewEx;->screenShotListenHelper:Lcom/smoba/webview/ScreenShotListenManager;

    if-nez v0, :cond_0

    .line 1018
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/smoba/webview/ScreenShotListenManager;->newInstance(Landroid/content/Context;)Lcom/smoba/webview/ScreenShotListenManager;

    move-result-object v0

    sput-object v0, Lcom/smoba/webview/WebViewEx;->screenShotListenHelper:Lcom/smoba/webview/ScreenShotListenManager;

    .line 1020
    :cond_0
    sget-object v0, Lcom/smoba/webview/WebViewEx;->screenShotListenHelper:Lcom/smoba/webview/ScreenShotListenManager;

    new-instance v1, Lcom/smoba/webview/WebViewEx$14$1;

    invoke-direct {v1, p0}, Lcom/smoba/webview/WebViewEx$14$1;-><init>(Lcom/smoba/webview/WebViewEx$14;)V

    invoke-virtual {v0, v1}, Lcom/smoba/webview/ScreenShotListenManager;->setListener(Lcom/smoba/webview/ScreenShotListenManager$OnScreenShotListener;)V

    .line 1027
    sget-object v0, Lcom/smoba/webview/WebViewEx;->screenShotListenHelper:Lcom/smoba/webview/ScreenShotListenManager;

    invoke-virtual {v0}, Lcom/smoba/webview/ScreenShotListenManager;->startListen()V

    .line 1028
    const/4 v0, 0x1

    sput-boolean v0, Lcom/smoba/webview/WebViewEx;->isHasScreenShotListener:Z

    .line 1031
    :cond_1
    return-void
.end method
