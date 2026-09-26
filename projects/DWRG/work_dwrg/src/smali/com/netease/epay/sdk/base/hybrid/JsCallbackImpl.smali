.class Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;
.super Ljava/lang/Object;
.source "JsCallbackImpl.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/hybrid/JsCallback;


# static fields
.field private static final OBJECT_CALLBACK:Ljava/lang/String; = "javascript:window.EPNB.callJS(\'%s\',%s)"

.field private static final STRING_CALLBACK:Ljava/lang/String; = "javascript:window.EPNB.callJS(\'%s\',\'%s\')"


# instance fields
.field private callbackId:Ljava/lang/String;

.field private handler:Lcom/netease/epay/sdk/base/hybrid/HybridHandler;

.field private hybrid:Lcom/netease/epay/sdk/base/hybrid/Hybrid;

.field private isExpired:Z

.field private isPermanent:Z

.field private result:Landroid/webkit/JsPromptResult;

.field private webViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/webkit/WebView;Landroid/webkit/JsPromptResult;Lcom/netease/epay/sdk/base/hybrid/Hybrid;Lcom/netease/epay/sdk/base/hybrid/HybridHandler;)V
    .locals 1
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "webView"    # Landroid/webkit/WebView;
    .param p3, "result"    # Landroid/webkit/JsPromptResult;
    .param p4, "hybrid"    # Lcom/netease/epay/sdk/base/hybrid/Hybrid;
    .param p5, "handler"    # Lcom/netease/epay/sdk/base/hybrid/HybridHandler;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->callbackId:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->webViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 36
    iput-object p3, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->result:Landroid/webkit/JsPromptResult;

    .line 37
    iput-object p4, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->hybrid:Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    .line 38
    iput-object p5, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->handler:Lcom/netease/epay/sdk/base/hybrid/HybridHandler;

    .line 39
    return-void
.end method

.method private doCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->result:Landroid/webkit/JsPromptResult;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->result:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0, p2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 76
    iput-object v5, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->result:Landroid/webkit/JsPromptResult;

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->webViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->webViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->callbackId:Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->webViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->callbackId:Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public confirm(Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;)V
    .locals 2
    .param p1, "resp"    # Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->isExpired:Z

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->callbackId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->webViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/hybrid/common/FinanceRep;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "javascript:window.EPNB.callJS(\'%s\',%s)"

    .line 62
    invoke-direct {p0, v1, v0}, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->doCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->isPermanent:Z

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->isExpired:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->webViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 67
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->hybrid:Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->hybrid:Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->handler:Lcom/netease/epay/sdk/base/hybrid/HybridHandler;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->removeHandler(Lcom/netease/epay/sdk/base/hybrid/HybridHandler;)V

    goto :goto_0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->isExpired:Z

    return v0
.end method

.method public isPermanent()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->isPermanent:Z

    return v0
.end method

.method public newInstance(Ljava/lang/String;)Lcom/netease/epay/sdk/base/hybrid/JsCallback;
    .locals 6
    .param p1, "callbackId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->webViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;-><init>(Ljava/lang/String;Landroid/webkit/WebView;Landroid/webkit/JsPromptResult;Lcom/netease/epay/sdk/base/hybrid/Hybrid;Lcom/netease/epay/sdk/base/hybrid/HybridHandler;)V

    return-object v0
.end method

.method public removeJsPromptResult()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->result:Landroid/webkit/JsPromptResult;

    .line 104
    return-void
.end method

.method public setPermanent(Z)V
    .locals 0
    .param p1, "isPermanent"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base/hybrid/JsCallbackImpl;->isPermanent:Z

    .line 95
    return-void
.end method
