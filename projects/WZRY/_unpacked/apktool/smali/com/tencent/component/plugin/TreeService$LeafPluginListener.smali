.class Lcom/tencent/component/plugin/TreeService$LeafPluginListener;
.super Ljava/lang/Object;
.source "TreeService.java"

# interfaces
.implements Lcom/tencent/component/plugin/PluginManager$PluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/TreeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeafPluginListener"
.end annotation


# instance fields
.field private platformId:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/component/plugin/TreeService;


# direct methods
.method public constructor <init>(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;)V
    .locals 0
    .param p2, "platformId"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/tencent/component/plugin/TreeService$LeafPluginListener;->this$0:Lcom/tencent/component/plugin/TreeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p2, p0, Lcom/tencent/component/plugin/TreeService$LeafPluginListener;->platformId:Ljava/lang/String;

    .line 302
    return-void
.end method

.method static synthetic access$700(Lcom/tencent/component/plugin/TreeService$LeafPluginListener;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/TreeService$LeafPluginListener;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeService$LeafPluginListener;->platformId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onPendingInstallFinish(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "corePlugin"    # Z
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 362
    return-void
.end method

.method public onPlatformInitialFinish()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public onPlatformInitialStart()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public onPluginChanged(Ljava/lang/String;II)V
    .locals 2
    .param p1, "pluginId"    # Ljava/lang/String;
    .param p2, "changeFlags"    # I
    .param p3, "statusFlags"    # I

    .prologue
    .line 306
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 307
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeService$LeafPluginListener;->platformId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeService$LeafPluginListener;->this$0:Lcom/tencent/component/plugin/TreeService;

    invoke-static {v0}, Lcom/tencent/component/plugin/TreeService;->access$900(Lcom/tencent/component/plugin/TreeService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/component/plugin/TreeService$LeafPluginListener$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/component/plugin/TreeService$LeafPluginListener$1;-><init>(Lcom/tencent/component/plugin/TreeService$LeafPluginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    :cond_0
    return-void
.end method

.method public onPluginInstalled(Ljava/lang/String;II)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "lastVersion"    # I
    .param p3, "version"    # I

    .prologue
    .line 352
    return-void
.end method

.method public onPluginUninstall(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 357
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
    .line 337
    .local p1, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    return-void
.end method
