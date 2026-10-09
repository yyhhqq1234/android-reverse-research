.class Lcom/smoba/webview/WebViewEx$13;
.super Ljava/lang/Object;
.source "WebViewEx.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smoba/webview/WebViewEx;->AddKeyboardWebViewScroll()V
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
    iput-object p1, p0, Lcom/smoba/webview/WebViewEx$13;->this$0:Lcom/smoba/webview/WebViewEx;

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 932
    iget-object v5, p0, Lcom/smoba/webview/WebViewEx$13;->this$0:Lcom/smoba/webview/WebViewEx;

    iget v3, v5, Lcom/smoba/webview/WebViewEx;->m_screenHeight:I

    .line 934
    .local v3, "screenHeight":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 935
    .local v2, "r":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/smoba/webview/WebViewEx$13;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->access$3(Lcom/smoba/webview/WebViewEx;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 936
    invoke-virtual {v5, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 938
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    sub-int v0, v3, v5

    .line 939
    .local v0, "heightDifference":I
    div-int/lit8 v5, v3, 0x3

    if-le v0, v5, :cond_3

    const/4 v1, 0x1

    .line 942
    .local v1, "isKeyboardShowing":Z
    :goto_0
    iget-object v5, p0, Lcom/smoba/webview/WebViewEx$13;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->access$4(Lcom/smoba/webview/WebViewEx;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v1, :cond_1

    .line 943
    :cond_0
    iget-object v5, p0, Lcom/smoba/webview/WebViewEx$13;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->access$4(Lcom/smoba/webview/WebViewEx;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    .line 944
    :cond_1
    iget-object v5, p0, Lcom/smoba/webview/WebViewEx$13;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v5, v1}, Lcom/smoba/webview/WebViewEx;->access$5(Lcom/smoba/webview/WebViewEx;Z)V

    .line 946
    const-string v5, "smobawebview"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " diffheright "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v5, p0, Lcom/smoba/webview/WebViewEx$13;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->access$6(Lcom/smoba/webview/WebViewEx;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 949
    if-lez v0, :cond_4

    .line 950
    iget-object v5, p0, Lcom/smoba/webview/WebViewEx$13;->this$0:Lcom/smoba/webview/WebViewEx;

    iput v0, v5, Lcom/smoba/webview/WebViewEx;->m_lastHeightDiff:I

    .line 951
    iget-object v5, p0, Lcom/smoba/webview/WebViewEx$13;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->access$6(Lcom/smoba/webview/WebViewEx;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v5

    iget-object v6, p0, Lcom/smoba/webview/WebViewEx$13;->this$0:Lcom/smoba/webview/WebViewEx;

    iget v6, v6, Lcom/smoba/webview/WebViewEx;->m_lastHeightDiff:I

    invoke-virtual {v5, v4, v6}, Lcom/tencent/smtt/sdk/WebView;->scrollBy(II)V

    .line 952
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx$13;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v4}, Lcom/smoba/webview/WebViewEx;->access$0(Lcom/smoba/webview/WebViewEx;)Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 954
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx$13;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v4}, Lcom/smoba/webview/WebViewEx;->access$0(Lcom/smoba/webview/WebViewEx;)Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v4

    const-string v5, "OpenKeyBoard"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Lcom/smoba/webview/SmobaJsBridge;->SendToJS(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    :cond_2
    :goto_1
    return-void

    .end local v1    # "isKeyboardShowing":Z
    :cond_3
    move v1, v4

    .line 939
    goto :goto_0

    .line 957
    .restart local v1    # "isKeyboardShowing":Z
    :cond_4
    iget-object v5, p0, Lcom/smoba/webview/WebViewEx$13;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v5}, Lcom/smoba/webview/WebViewEx;->access$6(Lcom/smoba/webview/WebViewEx;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v5

    iget-object v6, p0, Lcom/smoba/webview/WebViewEx$13;->this$0:Lcom/smoba/webview/WebViewEx;

    iget v6, v6, Lcom/smoba/webview/WebViewEx;->m_lastHeightDiff:I

    neg-int v6, v6

    invoke-virtual {v5, v4, v6}, Lcom/tencent/smtt/sdk/WebView;->scrollBy(II)V

    .line 958
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx$13;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v4}, Lcom/smoba/webview/WebViewEx;->access$0(Lcom/smoba/webview/WebViewEx;)Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 960
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx$13;->this$0:Lcom/smoba/webview/WebViewEx;

    invoke-static {v4}, Lcom/smoba/webview/WebViewEx;->access$0(Lcom/smoba/webview/WebViewEx;)Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v4

    const-string v5, "OpenKeyBoard"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Lcom/smoba/webview/SmobaJsBridge;->SendToJS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
