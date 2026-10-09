.class Lcom/smoba/webview/WebViewEx$14$1;
.super Ljava/lang/Object;
.source "WebViewEx.java"

# interfaces
.implements Lcom/smoba/webview/ScreenShotListenManager$OnScreenShotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smoba/webview/WebViewEx$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smoba/webview/WebViewEx$14;


# direct methods
.method constructor <init>(Lcom/smoba/webview/WebViewEx$14;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smoba/webview/WebViewEx$14$1;->this$1:Lcom/smoba/webview/WebViewEx$14;

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShot(Ljava/lang/String;)V
    .locals 2
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 1023
    const-string v0, "BootObj/WebViewSys"

    .line 1024
    const-string v1, "CallCapture"

    .line 1023
    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    return-void
.end method
