.class public interface abstract Lcom/tencent/midas/jsbridge/IAPWebViewCallback;
.super Ljava/lang/Object;
.source "IAPWebViewCallback.java"


# virtual methods
.method public abstract WebChromeClientJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end method

.method public abstract WebChromeClientJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end method

.method public abstract WebViewClientPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract WebViewClientPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract WebViewClientReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end method
