.class Lcom/smoba/webview/WebViewEx$3;
.super Ljava/lang/Object;
.source "WebViewEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smoba/webview/WebViewEx;->InitToolBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smoba/webview/WebViewEx;


# direct methods
.method constructor <init>(Lcom/smoba/webview/WebViewEx;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smoba/webview/WebViewEx$3;->this$0:Lcom/smoba/webview/WebViewEx;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx$3;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->access$0(Lcom/smoba/webview/WebViewEx;)Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx$3;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->access$0(Lcom/smoba/webview/WebViewEx;)Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v0

    const-string v1, "BtnBackClick"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/smoba/webview/SmobaJsBridge;->SendToJS(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx$3;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->access$0(Lcom/smoba/webview/WebViewEx;)Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v0

    const-string v1, "PlayAudio"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/smoba/webview/SmobaJsBridge;->JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx$3;->this$0:Lcom/smoba/webview/WebViewEx;

    iget-boolean v0, v0, Lcom/smoba/webview/WebViewEx;->m_bUseLocalClose:Z

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx$3;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v0}, Lcom/smoba/webview/WebViewEx;->closeWebUI()V

    .line 428
    :cond_0
    return-void
.end method
