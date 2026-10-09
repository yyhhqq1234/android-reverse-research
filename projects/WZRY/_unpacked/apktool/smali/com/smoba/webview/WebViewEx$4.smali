.class Lcom/smoba/webview/WebViewEx$4;
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
    iput-object p1, p0, Lcom/smoba/webview/WebViewEx$4;->this$0:Lcom/smoba/webview/WebViewEx;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx$4;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->access$0(Lcom/smoba/webview/WebViewEx;)Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx$4;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->access$0(Lcom/smoba/webview/WebViewEx;)Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v0

    const-string v1, "PlayAudio"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/smoba/webview/SmobaJsBridge;->JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx$4;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->access$1(Lcom/smoba/webview/WebViewEx;)V

    .line 443
    :cond_0
    return-void
.end method
