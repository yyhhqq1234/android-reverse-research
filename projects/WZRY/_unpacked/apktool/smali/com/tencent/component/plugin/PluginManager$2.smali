.class Lcom/tencent/component/plugin/PluginManager$2;
.super Lcom/tencent/component/plugin/PluginManager$Code;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager;->sayHello()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$2;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginManager$Code;-><init>(Lcom/tencent/component/plugin/PluginManager;)V

    return-void
.end method


# virtual methods
.method public code()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 174
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$2;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v2}, Lcom/tencent/component/plugin/PluginManager;->access$400(Lcom/tencent/component/plugin/PluginManager;)Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v1

    .line 175
    .local v1, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v1, :cond_0

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$2;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v2, v2, Lcom/tencent/component/plugin/PluginManager;->pluginPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$2;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v3}, Lcom/tencent/component/plugin/PluginManager;->access$500(Lcom/tencent/component/plugin/PluginManager;)Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/component/plugin/IPluginManager;->hello(Lcom/tencent/component/plugin/PluginPlatformConfig;Lcom/tencent/component/plugin/server/PluginServerBroadcast;)V

    .line 178
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$2;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v2}, Lcom/tencent/component/plugin/PluginManager;->access$600(Lcom/tencent/component/plugin/PluginManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/component/plugin/PluginPlatform;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$2;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v2, v4}, Lcom/tencent/component/plugin/PluginManager;->access$202(Lcom/tencent/component/plugin/PluginManager;Z)Z

    .line 181
    const-string v2, "PluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "say hello failed by exception (platformId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$2;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v4}, Lcom/tencent/component/plugin/PluginManager;->access$700(Lcom/tencent/component/plugin/PluginManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$2;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v2, v4}, Lcom/tencent/component/plugin/PluginManager;->access$202(Lcom/tencent/component/plugin/PluginManager;Z)Z

    .line 185
    const-string v2, "PluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "say hello failed as pluginManager binder is null (platformId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$2;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v4}, Lcom/tencent/component/plugin/PluginManager;->access$700(Lcom/tencent/component/plugin/PluginManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
