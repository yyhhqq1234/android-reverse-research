.class Lcom/tencent/component/plugin/PluginManager$22;
.super Lcom/tencent/component/plugin/server/PluginServerBroadcast$Stub;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginManager;
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
    .line 1174
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$22;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-direct {p0}, Lcom/tencent/component/plugin/server/PluginServerBroadcast$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPendingInstallFinish(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "success"    # Z
    .param p2, "corePlugin"    # Z
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1224
    iget-object v6, p0, Lcom/tencent/component/plugin/PluginManager$22;->this$0:Lcom/tencent/component/plugin/PluginManager;

    new-instance v0, Lcom/tencent/component/plugin/PluginManager$22$5;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/plugin/PluginManager$22$5;-><init>(Lcom/tencent/component/plugin/PluginManager$22;ZZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/tencent/component/plugin/PluginManager;->access$1700(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/Runnable;)V

    .line 1230
    return-void
.end method

.method public onPlatformInitialFinish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$22;->this$0:Lcom/tencent/component/plugin/PluginManager;

    new-instance v1, Lcom/tencent/component/plugin/PluginManager$22$2;

    invoke-direct {v1, p0}, Lcom/tencent/component/plugin/PluginManager$22$2;-><init>(Lcom/tencent/component/plugin/PluginManager$22;)V

    invoke-static {v0, v1}, Lcom/tencent/component/plugin/PluginManager;->access$1700(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/Runnable;)V

    .line 1194
    return-void
.end method

.method public onPlatformInitialStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$22;->this$0:Lcom/tencent/component/plugin/PluginManager;

    new-instance v1, Lcom/tencent/component/plugin/PluginManager$22$1;

    invoke-direct {v1, p0}, Lcom/tencent/component/plugin/PluginManager$22$1;-><init>(Lcom/tencent/component/plugin/PluginManager$22;)V

    invoke-static {v0, v1}, Lcom/tencent/component/plugin/PluginManager;->access$1700(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/Runnable;)V

    .line 1184
    return-void
.end method

.method public onPluginInstalled(Ljava/lang/String;II)V
    .locals 2
    .param p1, "pluginId"    # Ljava/lang/String;
    .param p2, "oldVersion"    # I
    .param p3, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$22;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v0, p1}, Lcom/tencent/component/plugin/PluginManager;->access$1400(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;)V

    .line 1200
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$22;->this$0:Lcom/tencent/component/plugin/PluginManager;

    new-instance v1, Lcom/tencent/component/plugin/PluginManager$22$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/component/plugin/PluginManager$22$3;-><init>(Lcom/tencent/component/plugin/PluginManager$22;Ljava/lang/String;II)V

    invoke-static {v0, v1}, Lcom/tencent/component/plugin/PluginManager;->access$1700(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/Runnable;)V

    .line 1207
    :cond_0
    return-void
.end method

.method public onPluginStateChange(Ljava/lang/String;II)V
    .locals 2
    .param p1, "pluginId"    # Ljava/lang/String;
    .param p2, "changeFlags"    # I
    .param p3, "statusFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1235
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$22;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v0, p1}, Lcom/tencent/component/plugin/PluginManager;->access$1400(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;)V

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$22;->this$0:Lcom/tencent/component/plugin/PluginManager;

    new-instance v1, Lcom/tencent/component/plugin/PluginManager$22$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/component/plugin/PluginManager$22$6;-><init>(Lcom/tencent/component/plugin/PluginManager$22;Ljava/lang/String;II)V

    invoke-static {v0, v1}, Lcom/tencent/component/plugin/PluginManager;->access$1700(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/Runnable;)V

    .line 1246
    :cond_1
    return-void
.end method

.method public onPluginUninstalled(Ljava/lang/String;)V
    .locals 2
    .param p1, "pluginId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$22;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v0, p1}, Lcom/tencent/component/plugin/PluginManager;->access$1400(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$22;->this$0:Lcom/tencent/component/plugin/PluginManager;

    new-instance v1, Lcom/tencent/component/plugin/PluginManager$22$4;

    invoke-direct {v1, p0, p1}, Lcom/tencent/component/plugin/PluginManager$22$4;-><init>(Lcom/tencent/component/plugin/PluginManager$22;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tencent/component/plugin/PluginManager;->access$1700(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/Runnable;)V

    .line 1220
    :cond_0
    return-void
.end method
