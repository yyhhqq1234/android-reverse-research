.class Lcom/tencent/component/plugin/PluginProxyReceiver$1;
.super Ljava/lang/Object;
.source "PluginProxyReceiver.java"

# interfaces
.implements Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginProxyReceiver;->notifyPluginAlarm(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginProxyReceiver;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$pluginManager:Lcom/tencent/component/plugin/PluginManager;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginProxyReceiver;Lcom/tencent/component/plugin/PluginManager;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginProxyReceiver;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginProxyReceiver$1;->this$0:Lcom/tencent/component/plugin/PluginProxyReceiver;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginProxyReceiver$1;->val$pluginManager:Lcom/tencent/component/plugin/PluginManager;

    iput-object p3, p0, Lcom/tencent/component/plugin/PluginProxyReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPluginInfo(Lcom/tencent/component/plugin/PluginInfo;)V
    .locals 4
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginProxyReceiver$1;->val$pluginManager:Lcom/tencent/component/plugin/PluginManager;

    invoke-virtual {v2, p1}, Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/Plugin;

    move-result-object v0

    .line 114
    .local v0, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/tencent/component/plugin/Plugin;->getPluginReceiverHandler()Lcom/tencent/component/plugin/PluginReceiverHandler;

    move-result-object v1

    .line 116
    .local v1, "receiver":Lcom/tencent/component/plugin/PluginReceiverHandler;
    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/tencent/component/plugin/Plugin;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginProxyReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/component/plugin/PluginReceiverHandler;->onReceiveAlarm(Landroid/content/Context;Landroid/content/Intent;)V

    .line 121
    .end local v0    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v1    # "receiver":Lcom/tencent/component/plugin/PluginReceiverHandler;
    :cond_0
    return-void
.end method
