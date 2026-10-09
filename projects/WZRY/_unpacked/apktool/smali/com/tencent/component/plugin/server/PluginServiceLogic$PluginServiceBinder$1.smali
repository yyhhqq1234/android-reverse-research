.class Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder$1;
.super Ljava/lang/Object;
.source "PluginServiceLogic.java"

# interfaces
.implements Lcom/tencent/component/utils/thread/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->hello(Lcom/tencent/component/plugin/PluginPlatformConfig;Lcom/tencent/component/plugin/server/PluginServerBroadcast;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/component/utils/thread/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;

.field final synthetic val$broadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

.field final synthetic val$platformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;Lcom/tencent/component/plugin/PluginPlatformConfig;Lcom/tencent/component/plugin/server/PluginServerBroadcast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder$1;->this$0:Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;

    iput-object p2, p0, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder$1;->val$platformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    iput-object p3, p0, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder$1;->val$broadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/tencent/component/utils/thread/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder$1;->run(Lcom/tencent/component/utils/thread/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/tencent/component/utils/thread/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 5
    .param p1, "jc"    # Lcom/tencent/component/utils/thread/ThreadPool$JobContext;

    .prologue
    .line 151
    iget-object v2, p0, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder$1;->val$platformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    iget-object v0, v2, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformId:Ljava/lang/String;

    .line 152
    .local v0, "platformId":Ljava/lang/String;
    const-string v2, "PlguinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive hello from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder$1;->this$0:Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;

    invoke-static {v2}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->access$000(Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/server/PlatformServerContext;

    move-result-object v1

    .line 155
    .local v1, "platformServerContext":Lcom/tencent/component/plugin/server/PlatformServerContext;
    iget-object v2, p0, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder$1;->val$platformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    invoke-virtual {v1, v2}, Lcom/tencent/component/plugin/server/PlatformServerContext;->setPlatformConfig(Lcom/tencent/component/plugin/PluginPlatformConfig;)V

    .line 156
    iget-object v2, p0, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder$1;->val$broadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    invoke-virtual {v1, v2}, Lcom/tencent/component/plugin/server/PlatformServerContext;->setPluginServerBroadcast(Lcom/tencent/component/plugin/server/PluginServerBroadcast;)V

    .line 158
    invoke-virtual {v1}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPluginManagerServer()Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/component/plugin/server/PluginManagerServer;->init()V

    .line 159
    const/4 v2, 0x0

    return-object v2
.end method
