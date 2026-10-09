.class Lcom/tencent/component/plugin/PluginManager$9;
.super Lcom/tencent/component/plugin/PluginManager$Code;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager;->addPendingInstallPlugin(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;

.field final synthetic val$corePlugin:Z

.field final synthetic val$extraInfo:Ljava/lang/String;

.field final synthetic val$pluginLocation:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$9;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$9;->val$pluginLocation:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tencent/component/plugin/PluginManager$9;->val$corePlugin:Z

    iput-object p4, p0, Lcom/tencent/component/plugin/PluginManager$9;->val$extraInfo:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginManager$Code;-><init>(Lcom/tencent/component/plugin/PluginManager;)V

    return-void
.end method


# virtual methods
.method public code()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 480
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$9;->val$pluginLocation:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 481
    .local v1, "downLoadPluginFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$9;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$9;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v3}, Lcom/tencent/component/plugin/PluginManager;->access$600(Lcom/tencent/component/plugin/PluginManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/plugin/PluginManager;->access$1500(Lcom/tencent/component/plugin/PluginManager;Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 483
    .local v0, "destFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$9;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$9;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v4}, Lcom/tencent/component/plugin/PluginManager;->access$600(Lcom/tencent/component/plugin/PluginManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/plugin/PluginManager;->access$1500(Lcom/tencent/component/plugin/PluginManager;Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tencent/component/utils/FileUtil;->copyFiles(Ljava/io/File;Ljava/io/File;)Z

    .line 484
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$9;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v2}, Lcom/tencent/component/plugin/PluginManager;->access$600(Lcom/tencent/component/plugin/PluginManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/tencent/component/plugin/PluginManager$9;->val$corePlugin:Z

    iget-object v5, p0, Lcom/tencent/component/plugin/PluginManager$9;->val$extraInfo:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/component/plugin/server/PluginConstant;->setPendingInstallInfo(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 486
    .end local v0    # "destFile":Ljava/io/File;
    :cond_0
    return-void
.end method
