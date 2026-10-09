.class public interface abstract Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;
.super Ljava/lang/Object;
.source "IAPX5WebViewCallback.java"


# virtual methods
.method public abstract WebChromeClientJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
.end method

.method public abstract WebChromeClientJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z
.end method

.method public abstract WebViewClientPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
.end method

.method public abstract WebViewClientPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract WebViewClientReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end method
