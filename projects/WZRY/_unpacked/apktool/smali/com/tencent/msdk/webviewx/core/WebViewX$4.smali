.class Lcom/tencent/msdk/webviewx/core/WebViewX$4;
.super Lcom/tencent/smtt/sdk/WebChromeClient;
.source "WebViewX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/webviewx/core/WebViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webviewx/core/WebViewX;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$4;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z
    .locals 8
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;

    .prologue
    .line 786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 787
    .local v2, "time":J
    const-string v1, "WebViewX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$4;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v1}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$900(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/msdk/webviewx/core/JsBridge;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 789
    const-string v0, ""

    .line 790
    .local v0, "returnjs":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 791
    const-string v1, "WebViewX"

    const-string v4, "receive js null object"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string p3, ""

    .line 794
    :cond_0
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$4;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v1}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$900(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/msdk/webviewx/core/JsBridge;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/tencent/msdk/webviewx/core/JsBridge;->canResolved(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$4;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v1}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$900(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/msdk/webviewx/core/JsBridge;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/tencent/msdk/webviewx/core/JsBridge;->parseMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 800
    invoke-interface {p5}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm()V

    .line 807
    .end local v0    # "returnjs":Ljava/lang/String;
    :goto_1
    const-string v1, "WebViewX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exec time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/4 v1, 0x1

    return v1

    .line 797
    .restart local v0    # "returnjs":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$4;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v1}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$900(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/msdk/webviewx/core/JsBridge;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/tencent/msdk/webviewx/core/JsBridge;->onJsPrompt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 802
    :cond_2
    invoke-interface {p5, v0}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_1

    .line 805
    .end local v0    # "returnjs":Ljava/lang/String;
    :cond_3
    const-string v1, "WebViewX"

    const-string v4, "JsBridge is null!!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V
    .locals 0
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 836
    return-void
.end method
