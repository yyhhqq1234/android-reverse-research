.class Lcom/smoba/webview/SmobaWebViewClient$2;
.super Ljava/util/TimerTask;
.source "SmobaWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smoba/webview/SmobaWebViewClient;->StartLaodingUrlTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smoba/webview/SmobaWebViewClient;


# direct methods
.method constructor <init>(Lcom/smoba/webview/SmobaWebViewClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smoba/webview/SmobaWebViewClient$2;->this$0:Lcom/smoba/webview/SmobaWebViewClient;

    .line 65
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/smoba/webview/SmobaWebViewClient$2;->this$0:Lcom/smoba/webview/SmobaWebViewClient;

    iget-wide v4, v1, Lcom/smoba/webview/SmobaWebViewClient;->m_StartUrlTime:J

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/smoba/webview/SmobaWebViewClient$2;->this$0:Lcom/smoba/webview/SmobaWebViewClient;

    iget-object v1, v1, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    iget v1, v1, Lcom/smoba/webview/WebViewEx;->m_TimeoutTime:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/smoba/webview/SmobaWebViewClient$2;->this$0:Lcom/smoba/webview/SmobaWebViewClient;

    iget-object v1, v1, Lcom/smoba/webview/SmobaWebViewClient;->m_Timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 72
    iget-object v1, p0, Lcom/smoba/webview/SmobaWebViewClient$2;->this$0:Lcom/smoba/webview/SmobaWebViewClient;

    iget-object v1, v1, Lcom/smoba/webview/SmobaWebViewClient;->m_Timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 74
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 75
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 76
    iget-object v1, p0, Lcom/smoba/webview/SmobaWebViewClient$2;->this$0:Lcom/smoba/webview/SmobaWebViewClient;

    iget-object v1, v1, Lcom/smoba/webview/SmobaWebViewClient;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method
