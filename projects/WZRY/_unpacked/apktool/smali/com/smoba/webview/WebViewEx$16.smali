.class Lcom/smoba/webview/WebViewEx$16;
.super Ljava/lang/Object;
.source "WebViewEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smoba/webview/WebViewEx;->OpenX5WebEx(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1076
    const-string v1, "OpenX5WebEx in java"

    invoke-static {v1}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 1077
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1078
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-class v2, Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1079
    const-string/jumbo v1, "url"

    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v2

    iget-object v2, v2, Lcom/smoba/webview/WebViewEx;->m_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1082
    return-void
.end method
