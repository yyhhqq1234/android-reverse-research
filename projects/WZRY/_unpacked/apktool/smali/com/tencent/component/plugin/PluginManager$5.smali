.class Lcom/tencent/component/plugin/PluginManager$5;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager;->launchSurviveDetector(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginInfo;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$5;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iput-object p3, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 290
    :try_start_0
    const-string v4, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start to check plugin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget-object v6, v6, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is surviveable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$5;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v5, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    invoke-virtual {v4, v5}, Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/Plugin;

    move-result-object v3

    .line 292
    .local v3, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v3, :cond_0

    .line 293
    invoke-virtual {v3}, Lcom/tencent/component/plugin/Plugin;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    invoke-static {v4, v5}, Lcom/tencent/component/plugin/PluginSurviveDetector;->instantiate(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/PluginSurviveDetector;

    move-result-object v0

    .line 294
    .local v0, "detector":Lcom/tencent/component/plugin/PluginSurviveDetector;
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/tencent/component/plugin/PluginSurviveDetector;->isSurvivable()Z

    move-result v2

    .line 296
    .local v2, "isSuviveable":Z
    if-nez v2, :cond_1

    .line 297
    const-string v4, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pluginId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget-object v6, v6, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not surviveable."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$5;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v5, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget-object v5, v5, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/tencent/component/plugin/PluginManager;->markPluginSurviveable(Ljava/lang/String;Z)V

    .line 300
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/tencent/component/plugin/PluginInfo;->bootCompleteReceiver:Ljava/lang/String;

    .line 301
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget-object v4, v4, Lcom/tencent/component/plugin/PluginInfo;->extraInfo:Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->autoLoad:Z

    .line 303
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$5;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v5, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget-object v5, v5, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/tencent/component/plugin/PluginManager;->access$1400(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .end local v0    # "detector":Lcom/tencent/component/plugin/PluginSurviveDetector;
    .end local v2    # "isSuviveable":Z
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 313
    const-string v4, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget-object v6, v6, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " check survive countDown."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .end local v3    # "plugin":Lcom/tencent/component/plugin/Plugin;
    :goto_1
    return-void

    .line 305
    .restart local v0    # "detector":Lcom/tencent/component/plugin/PluginSurviveDetector;
    .restart local v2    # "isSuviveable":Z
    .restart local v3    # "plugin":Lcom/tencent/component/plugin/Plugin;
    :cond_1
    :try_start_1
    const-string v4, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pluginId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget-object v6, v6, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " can survive."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 309
    .end local v0    # "detector":Lcom/tencent/component/plugin/PluginSurviveDetector;
    .end local v2    # "isSuviveable":Z
    .end local v3    # "plugin":Lcom/tencent/component/plugin/Plugin;
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "PluginManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 313
    const-string v4, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget-object v6, v6, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " check survive countDown."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 312
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 313
    const-string v5, "PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugin:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/component/plugin/PluginManager$5;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget-object v7, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " check survive countDown."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method
