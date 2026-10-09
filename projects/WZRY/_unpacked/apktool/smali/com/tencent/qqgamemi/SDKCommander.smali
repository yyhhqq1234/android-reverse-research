.class public abstract Lcom/tencent/qqgamemi/SDKCommander;
.super Ljava/lang/Object;
.source "SDKCommander.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;
    }
.end annotation


# static fields
.field private static mLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private static mPendingCmds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/tencent/qqgamemi/SDKCommander;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqgamemi/SDKCommander;->mPendingCmds:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "SDKCommander"

    iput-object v0, p0, Lcom/tencent/qqgamemi/SDKCommander;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected invokeQmiReadCmd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/qqgamemi/SDKCommander;->invokeQmiReadCmd(Ljava/lang/String;Ljava/lang/Object;Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected invokeQmiReadCmd(Ljava/lang/String;Ljava/lang/Object;Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;)Ljava/lang/Object;
    .locals 9
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;
    .param p3, "readDataCallback"    # Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;

    .prologue
    const/4 v8, 0x0

    .line 25
    :try_start_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getInstance()Lcom/tencent/qqgamemi/QmiCorePluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->isPlatformInitialFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKCommander;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeQmiReadCmd:[cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|args:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getInstance()Lcom/tencent/qqgamemi/QmiCorePluginManager;

    move-result-object v0

    const-string v1, "com.tencent.qqgamemi.plugin.dpsrp"

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->readDataFromPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const/4 v7, 0x0

    .line 34
    .local v7, "platformInit":Z
    :try_start_1
    sget-object v0, Lcom/tencent/qqgamemi/SDKCommander;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 35
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getInstance()Lcom/tencent/qqgamemi/QmiCorePluginManager;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->isPlatformInitialFinish()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKCommander;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add read cmd to pending list:[cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|args:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/tencent/qqgamemi/SDKCommander;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;

    invoke-direct {v1, p1, p2, p3}, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :goto_1
    :try_start_2
    sget-object v0, Lcom/tencent/qqgamemi/SDKCommander;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 47
    if-eqz v7, :cond_2

    .line 48
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKCommander;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeQmiReadCmd:[cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|args:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] when platformInit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getInstance()Lcom/tencent/qqgamemi/QmiCorePluginManager;

    move-result-object v0

    const-string v1, "com.tencent.qqgamemi.plugin.dpsrp"

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->readDataFromPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 42
    :cond_1
    const/4 v7, 0x1

    goto :goto_1

    .line 45
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/qqgamemi/SDKCommander;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    .end local v7    # "platformInit":Z
    :catch_0
    move-exception v6

    .line 57
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKCommander;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v0, v8

    .line 59
    goto/16 :goto_0
.end method

.method protected invokeQmiWriteCmd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;

    .prologue
    .line 64
    :try_start_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getInstance()Lcom/tencent/qqgamemi/QmiCorePluginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->isPlatformInitialFinish()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    const-string v2, "qmi.onUpdateVideoFrame"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/tencent/qqgamemi/SDKCommander;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeQmiWriteCmd:[cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|args:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getInstance()Lcom/tencent/qqgamemi/QmiCorePluginManager;

    move-result-object v2

    const-string v3, "com.tencent.qqgamemi.plugin.dpsrp"

    invoke-virtual {v2, v3, p1, p2}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->writeCommandToPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    const/4 v1, 0x0

    .line 75
    .local v1, "platformInit":Z
    :try_start_1
    sget-object v2, Lcom/tencent/qqgamemi/SDKCommander;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 76
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getInstance()Lcom/tencent/qqgamemi/QmiCorePluginManager;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->isPlatformInitialFinish()Z

    move-result v2

    if-nez v2, :cond_4

    .line 78
    iget-object v2, p0, Lcom/tencent/qqgamemi/SDKCommander;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add write cmd to pending list:[cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|args:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "qmi.initQmi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    sget-object v2, Lcom/tencent/qqgamemi/SDKCommander;->mPendingCmds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-instance v4, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;

    invoke-direct {v4, p1, p2}, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :goto_1
    :try_start_2
    sget-object v2, Lcom/tencent/qqgamemi/SDKCommander;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 92
    if-eqz v1, :cond_1

    .line 93
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getInstance()Lcom/tencent/qqgamemi/QmiCorePluginManager;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->deletePluginLoadingDialog()V

    .line 95
    iget-object v2, p0, Lcom/tencent/qqgamemi/SDKCommander;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeQmiWriteCmd:[cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|args:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] when platformInit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getInstance()Lcom/tencent/qqgamemi/QmiCorePluginManager;

    move-result-object v2

    const-string v3, "com.tencent.qqgamemi.plugin.dpsrp"

    invoke-virtual {v2, v3, p1, p2}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->writeCommandToPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 101
    .end local v1    # "platformInit":Z
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    iget-object v2, p0, Lcom/tencent/qqgamemi/SDKCommander;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "platformInit":Z
    :cond_3
    :try_start_3
    sget-object v2, Lcom/tencent/qqgamemi/SDKCommander;->mPendingCmds:Ljava/util/ArrayList;

    new-instance v3, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;

    invoke-direct {v3, p1, p2}, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 90
    :catchall_0
    move-exception v2

    :try_start_4
    sget-object v3, Lcom/tencent/qqgamemi/SDKCommander;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 86
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public readCmdSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "defaultParam":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/qqgamemi/SDKCommander;->readCmdSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readCmdSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 154
    .local p3, "defaultParam":Ljava/lang/Object;, "TT;"
    move-object v2, p3

    .line 156
    .local v2, "returnObject":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qqgamemi/SDKCommander;->invokeQmiReadCmd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 157
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 158
    move-object v2, v1

    .line 165
    .end local v1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v2

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/tencent/qqgamemi/SDKCommander;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fail :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    move-object v2, p3

    goto :goto_0
.end method

.method public sendPendingCmds()V
    .locals 9

    .prologue
    .line 110
    :try_start_0
    sget-object v0, Lcom/tencent/qqgamemi/SDKCommander;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 111
    new-instance v7, Ljava/util/ArrayList;

    sget-object v0, Lcom/tencent/qqgamemi/SDKCommander;->mPendingCmds:Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    .local v7, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;>;"
    sget-object v0, Lcom/tencent/qqgamemi/SDKCommander;->mPendingCmds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    sget-object v0, Lcom/tencent/qqgamemi/SDKCommander;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 116
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;

    .line 117
    .local v6, "command":Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKCommander;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send pending cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;->cmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | isReadCommand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v6, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;->readCommand:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-boolean v0, v6, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;->readCommand:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getInstance()Lcom/tencent/qqgamemi/QmiCorePluginManager;

    move-result-object v0

    const-string v1, "com.tencent.qqgamemi.plugin.dpsrp"

    iget-object v2, v6, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;->cmd:Ljava/lang/String;

    iget-object v3, v6, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;->args:Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v6, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;->readDataCallback:Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->readDataFromPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;)Ljava/lang/Object;

    goto :goto_0

    .line 114
    .end local v6    # "command":Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;
    .end local v7    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;>;"
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/qqgamemi/SDKCommander;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 124
    .restart local v6    # "command":Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;
    .restart local v7    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;>;"
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getInstance()Lcom/tencent/qqgamemi/QmiCorePluginManager;

    move-result-object v0

    const-string v1, "com.tencent.qqgamemi.plugin.dpsrp"

    iget-object v2, v6, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;->cmd:Ljava/lang/String;

    iget-object v3, v6, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;->args:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->writeCommandToPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    .end local v6    # "command":Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;
    :cond_1
    return-void
.end method
