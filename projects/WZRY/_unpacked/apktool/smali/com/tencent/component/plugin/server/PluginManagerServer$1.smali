.class Lcom/tencent/component/plugin/server/PluginManagerServer$1;
.super Lcom/tencent/component/plugin/PluginManageInternalHandler$Stub;
.source "PluginManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/server/PluginManagerServer;->initPluginServiceHandler()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/server/PluginManagerServer;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/server/PluginManagerServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/server/PluginManagerServer;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer$1;->this$0:Lcom/tencent/component/plugin/server/PluginManagerServer;

    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManageInternalHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginNotFound(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginManagerServer$1;->this$0:Lcom/tencent/component/plugin/server/PluginManagerServer;

    invoke-static {v0}, Lcom/tencent/component/plugin/server/PluginManagerServer;->access$000(Lcom/tencent/component/plugin/server/PluginManagerServer;)Lcom/tencent/component/plugin/server/PlatformServerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPluginLoader()Lcom/tencent/component/plugin/server/PluginLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/component/plugin/server/PluginLoader;->load(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginManagerServer$1;->this$0:Lcom/tencent/component/plugin/server/PluginManagerServer;

    invoke-static {v0}, Lcom/tencent/component/plugin/server/PluginManagerServer;->access$000(Lcom/tencent/component/plugin/server/PluginManagerServer;)Lcom/tencent/component/plugin/server/PlatformServerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getBuiltinPluginLoader()Lcom/tencent/component/plugin/server/BuiltinPluginLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->load(Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x1

    return v0
.end method
