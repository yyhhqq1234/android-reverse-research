.class public Lcom/tencent/qqgamemi/QmiPluginTreeReceiver;
.super Lcom/tencent/component/plugin/PluginProxyReceiver;
.source "QmiPluginTreeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginProxyReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->init(Landroid/content/Context;)V

    .line 15
    invoke-super {p0, p1, p2}, Lcom/tencent/component/plugin/PluginProxyReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 16
    return-void
.end method

.method protected startPlatform(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.simulateStartQmi"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/qqgamemi/SDKApiHelper;->invokeQmiWriteCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    const/4 v0, 0x1

    return v0
.end method
