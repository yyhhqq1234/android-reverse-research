.class Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$10;
.super Ljava/lang/Object;
.source "WebViewUnityBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$function:Ljava/lang/String;

.field private final synthetic val$payload:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$10;->val$function:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$10;->val$payload:Ljava/lang/String;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 461
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->gameObjectName:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$10;->val$function:Ljava/lang/String;

    .line 462
    iget-object v2, p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$10;->val$payload:Ljava/lang/String;

    .line 461
    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-void
.end method
