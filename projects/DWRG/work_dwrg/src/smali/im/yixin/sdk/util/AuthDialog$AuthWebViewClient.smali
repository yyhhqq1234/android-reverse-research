.class Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/yixin/sdk/util/AuthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthWebViewClient"
.end annotation


# instance fields
.field private isCallBacked:Z

.field final synthetic this$0:Lim/yixin/sdk/util/AuthDialog;


# direct methods
.method private constructor <init>(Lim/yixin/sdk/util/AuthDialog;)V
    .locals 1

    .prologue
    .line 73
    iput-object p1, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->isCallBacked:Z

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Lim/yixin/sdk/util/AuthDialog;Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;-><init>(Lim/yixin/sdk/util/AuthDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-static {v0}, Lim/yixin/sdk/util/AuthDialog;->access$4(Lim/yixin/sdk/util/AuthDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-static {v0}, Lim/yixin/sdk/util/AuthDialog;->access$5(Lim/yixin/sdk/util/AuthDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-static {v0}, Lim/yixin/sdk/util/AuthDialog;->access$5(Lim/yixin/sdk/util/AuthDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 68
    :cond_0
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-static {v0}, Lim/yixin/sdk/util/AuthDialog;->access$6(Lim/yixin/sdk/util/AuthDialog;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 69
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    const-class v0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-static {v0}, Lim/yixin/sdk/util/AuthDialog;->access$1(Lim/yixin/sdk/util/AuthDialog;)Lim/yixin/sdk/api/SendAuthToYX$Req;

    move-result-object v0

    iget-object v0, v0, Lim/yixin/sdk/api/SendAuthToYX$Req;->redirectUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->isCallBacked:Z

    if-nez v0, :cond_1

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->isCallBacked:Z

    .line 51
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-static {v0, p2}, Lim/yixin/sdk/util/AuthDialog;->access$3(Lim/yixin/sdk/util/AuthDialog;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 53
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-virtual {v0}, Lim/yixin/sdk/util/AuthDialog;->dismiss()V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 57
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-static {v0}, Lim/yixin/sdk/util/AuthDialog;->access$4(Lim/yixin/sdk/util/AuthDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-static {v0}, Lim/yixin/sdk/util/AuthDialog;->access$5(Lim/yixin/sdk/util/AuthDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-static {v0}, Lim/yixin/sdk/util/AuthDialog;->access$5(Lim/yixin/sdk/util/AuthDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-static {v0}, Lim/yixin/sdk/util/AuthDialog;->access$5(Lim/yixin/sdk/util/AuthDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedError: errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failingUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-static {v0}, Lim/yixin/sdk/util/AuthDialog;->access$0(Lim/yixin/sdk/util/AuthDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-static {v1}, Lim/yixin/sdk/util/AuthDialog;->access$1(Lim/yixin/sdk/util/AuthDialog;)Lim/yixin/sdk/api/SendAuthToYX$Req;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lim/yixin/sdk/util/AuthDialog;->access$2(Landroid/content/Context;Lim/yixin/sdk/api/SendAuthToYX$Req;ILjava/lang/String;)V

    .line 44
    iget-object v0, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-virtual {v0}, Lim/yixin/sdk/util/AuthDialog;->dismiss()V

    .line 45
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v1, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 28
    const-string v1, "sms:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string v1, "address"

    const-string v2, "sms:"

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    iget-object v1, p0, Lim/yixin/sdk/util/AuthDialog$AuthWebViewClient;->this$0:Lim/yixin/sdk/util/AuthDialog;

    invoke-virtual {v1}, Lim/yixin/sdk/util/AuthDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    const/4 v1, 0x1

    .line 35
    .end local v0    # "sendIntent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
