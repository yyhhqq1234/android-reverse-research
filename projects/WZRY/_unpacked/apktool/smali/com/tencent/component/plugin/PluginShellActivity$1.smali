.class Lcom/tencent/component/plugin/PluginShellActivity$1;
.super Ljava/lang/Object;
.source "PluginShellActivity.java"

# interfaces
.implements Lcom/tencent/component/plugin/PluginManager$PluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginShellActivity;->registerPluginListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginShellActivity;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginShellActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginShellActivity;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginShellActivity$1;->this$0:Lcom/tencent/component/plugin/PluginShellActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPendingInstallFinish(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "corePlugin"    # Z
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 336
    return-void
.end method

.method public onPlatformInitialFinish()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public onPlatformInitialStart()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public onPluginChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "changeFlags"    # I
    .param p3, "statusFlags"    # I

    .prologue
    .line 292
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity$1;->this$0:Lcom/tencent/component/plugin/PluginShellActivity;

    invoke-static {v0}, Lcom/tencent/component/plugin/PluginShellActivity;->access$000(Lcom/tencent/component/plugin/PluginShellActivity;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 298
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity$1;->this$0:Lcom/tencent/component/plugin/PluginShellActivity;

    invoke-virtual {v0}, Lcom/tencent/component/plugin/PluginShellActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity$1;->this$0:Lcom/tencent/component/plugin/PluginShellActivity;

    invoke-virtual {v0}, Lcom/tencent/component/plugin/PluginShellActivity;->finish()V

    goto :goto_0
.end method

.method public onPluginInstalled(Ljava/lang/String;II)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "lastVersion"    # I
    .param p3, "version"    # I

    .prologue
    .line 326
    return-void
.end method

.method public onPluginUninstall(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 331
    return-void
.end method

.method public onStartCheckPluginSurvive(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    return-void
.end method
