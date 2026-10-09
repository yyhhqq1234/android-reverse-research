.class Lcom/smoba/webview/WebViewEx$10;
.super Ljava/lang/Object;
.source "WebViewEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smoba/webview/WebViewEx;->GetUserInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 835
    const-string v0, "openwebex in thread"

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 836
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->access$0(Lcom/smoba/webview/WebViewEx;)Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 837
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->access$0(Lcom/smoba/webview/WebViewEx;)Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v0

    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v1

    iget-object v1, v1, Lcom/smoba/webview/WebViewEx;->m_TokeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smoba/webview/SmobaJsBridge;->GetUserInfo_CallBack(Ljava/lang/String;)V

    .line 839
    :cond_0
    return-void
.end method
