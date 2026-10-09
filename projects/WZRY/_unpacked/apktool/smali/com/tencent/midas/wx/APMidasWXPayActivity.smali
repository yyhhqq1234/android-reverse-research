.class public Lcom/tencent/midas/wx/APMidasWXPayActivity;
.super Landroid/app/Activity;
.source "APMidasWXPayActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "APMidasWXPayActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    const-string v1, "APMidasWXPayActivity"

    const-string v2, "handleIntent get called!"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :try_start_0
    sget-object v1, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_PLUGIN_NAME:Ljava/lang/String;

    sget-object v2, Lcom/tencent/midas/control/APMidasPayHelper;->PKG_DISTRIBUTE:Ljava/lang/String;

    sget-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_HANDLE_WX_INTENT:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {p0, v1, v2, v3, v4}, Lcom/tencent/midas/plugin/APPluginInterfaceManager;->initPluginInterface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "APMidasWXPayActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIntent got exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/midas/wx/APMidasWXPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "wxpay"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/tencent/midas/wx/APMidasWXPayActivity;->requestWindowFeature(I)Z

    .line 37
    invoke-virtual {p0}, Lcom/tencent/midas/wx/APMidasWXPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/midas/wx/APMidasWXPayActivity;->handleIntent(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0}, Lcom/tencent/midas/wx/APMidasWXPayActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    invoke-virtual {p0}, Lcom/tencent/midas/wx/APMidasWXPayActivity;->finish()V

    goto :goto_0

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    invoke-virtual {p0}, Lcom/tencent/midas/wx/APMidasWXPayActivity;->finish()V

    goto :goto_0
.end method
