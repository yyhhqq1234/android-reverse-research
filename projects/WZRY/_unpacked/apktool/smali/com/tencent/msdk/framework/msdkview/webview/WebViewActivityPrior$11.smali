.class Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$11;
.super Ljava/lang/Object;
.source "WebViewActivityPrior.java"

# interfaces
.implements Lcom/tencent/smtt/sdk/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 858
    iput-object p1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$11;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 863
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 864
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 865
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$11;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "default browser is uninstalled!"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
