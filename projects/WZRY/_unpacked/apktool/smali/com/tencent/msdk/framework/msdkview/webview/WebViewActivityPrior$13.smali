.class Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$13;
.super Ljava/lang/Object;
.source "WebViewActivityPrior.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->showDownloadQQBrowserDlg()V
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
    .line 1390
    iput-object p1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$13;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1394
    const-string v2, "http://mdc.html5.qq.com/d/directdown.jsp?channel_id=21380"

    .line 1395
    .local v2, "loadQQBrowserUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1396
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1398
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$13;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1402
    :goto_0
    return-void

    .line 1399
    :catch_0
    move-exception v0

    .line 1400
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
