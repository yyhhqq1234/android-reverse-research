.class final Lcom/tencent/midas/control/APMidasPayHelper$3;
.super Ljava/lang/Object;
.source "APMidasPayHelper.java"

# interfaces
.implements Lcom/tencent/midas/control/IAPInitCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/control/APMidasPayHelper;->h5Init(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/tencent/smtt/sdk/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/tencent/midas/control/APMidasPayHelper$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "ret"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 280
    const-string v3, "APMidasPayHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v3

    const-string v4, "init"

    invoke-virtual {v3, v4}, Lcom/tencent/midas/data/APPluginReportManager;->dataReport(Ljava/lang/String;)V

    .line 284
    if-nez p1, :cond_2

    .line 286
    const-string v1, ""

    .line 288
    .local v1, "jsContent":Ljava/lang/String;
    new-instance v2, Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-direct {v2}, Lcom/tencent/midas/control/APMidasPayHelper;-><init>()V

    .line 291
    .local v2, "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    iget-object v3, p0, Lcom/tencent/midas/control/APMidasPayHelper$3;->val$activity:Landroid/app/Activity;

    const-string v4, "getH5JS"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tencent/midas/control/APMidasPayHelper$3;->val$activity:Landroid/app/Activity;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/midas/control/APMidasPayHelper;->call(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "jsContent":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 294
    .restart local v1    # "jsContent":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 296
    :try_start_0
    sget-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->webview:Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    .line 297
    sget-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->webview:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 300
    :cond_0
    sget-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->x5Webview:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v3, :cond_1

    .line 301
    sget-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->x5Webview:Lcom/tencent/smtt/sdk/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_1
    :goto_0
    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$508()I

    .line 310
    .end local v1    # "jsContent":Ljava/lang/String;
    .end local v2    # "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    :cond_2
    return-void

    .line 303
    .restart local v1    # "jsContent":Ljava/lang/String;
    .restart local v2    # "payHelper":Lcom/tencent/midas/control/APMidasPayHelper;
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "APMidasPayHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "h5Init loadJS error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
