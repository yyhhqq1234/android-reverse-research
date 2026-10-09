.class Lcom/tencent/pandora/webview/WebViewActivity$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/tencent/pandora/webview/WebViewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/pandora/webview/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/pandora/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tencent/pandora/webview/WebViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/pandora/webview/WebViewActivity$1;->this$0:Lcom/tencent/pandora/webview/WebViewActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPress(Z)V
    .locals 3
    .param p1, "isDown"    # Z

    .prologue
    .line 125
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewActivity$1;->this$0:Lcom/tencent/pandora/webview/WebViewActivity;

    const-string v2, "OnBackPress"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/tencent/pandora/webview/WebViewActivity;->access$0(Lcom/tencent/pandora/webview/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 125
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewActivity$1;->this$0:Lcom/tencent/pandora/webview/WebViewActivity;

    const-string v1, "OnLowMemory"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/pandora/webview/WebViewActivity;->access$0(Lcom/tencent/pandora/webview/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onWebViewLoaded()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewActivity$1;->this$0:Lcom/tencent/pandora/webview/WebViewActivity;

    const-string v1, "OnPageLoaded"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/pandora/webview/WebViewActivity;->access$0(Lcom/tencent/pandora/webview/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onWebViewMessage(Ljava/lang/String;)V
    .locals 10
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v7, "Pandora WebView"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "On WebView Message "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v7, p0, Lcom/tencent/pandora/webview/WebViewActivity$1;->this$0:Lcom/tencent/pandora/webview/WebViewActivity;

    const-string v8, "OnPageMessage"

    invoke-static {v7, v8, p1}, Lcom/tencent/pandora/webview/WebViewActivity;->access$0(Lcom/tencent/pandora/webview/WebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v3, 0x0

    .line 95
    .local v3, "jo":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "jo":Lorg/json/JSONObject;
    .local v4, "jo":Lorg/json/JSONObject;
    move-object v3, v4

    .line 101
    .end local v4    # "jo":Lorg/json/JSONObject;
    .restart local v3    # "jo":Lorg/json/JSONObject;
    :goto_0
    if-eqz v3, :cond_0

    .line 102
    :try_start_1
    const-string v7, "msgContent"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 103
    .local v5, "msgJSONObj":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 104
    const-string/jumbo v7, "type"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "type":Ljava/lang/String;
    const-string v7, "content"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "content":Ljava/lang/String;
    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    const-string v7, "close"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 107
    const-string/jumbo v7, "webview"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 108
    iget-object v7, p0, Lcom/tencent/pandora/webview/WebViewActivity$1;->this$0:Lcom/tencent/pandora/webview/WebViewActivity;

    invoke-virtual {v7}, Lcom/tencent/pandora/webview/WebViewActivity;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    .end local v0    # "content":Ljava/lang/String;
    .end local v5    # "msgJSONObj":Lorg/json/JSONObject;
    .end local v6    # "type":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 114
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
