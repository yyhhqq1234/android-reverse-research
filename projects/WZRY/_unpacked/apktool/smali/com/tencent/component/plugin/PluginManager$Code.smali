.class public abstract Lcom/tencent/component/plugin/PluginManager$Code;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lcom/tencent/component/utils/thread/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/component/utils/thread/ThreadPool$Job",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;


# direct methods
.method protected constructor <init>(Lcom/tencent/component/plugin/PluginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$Code;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract code()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public run(Lcom/tencent/component/utils/thread/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "jc"    # Lcom/tencent/component/utils/thread/ThreadPool$JobContext;

    .prologue
    .line 1624
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginManager$Code;->code()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1633
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1625
    :catch_0
    move-exception v0

    .line 1626
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v1, "PluginManager"

    const-string v2, "occure DeadObjectException,try to stopService "

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1628
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager$Code;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v1}, Lcom/tencent/component/plugin/PluginManager;->access$2400(Lcom/tencent/component/plugin/PluginManager;)V

    goto :goto_0

    .line 1630
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 1631
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PluginManager"

    const-string v2, "Remote Code Exception : "

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
