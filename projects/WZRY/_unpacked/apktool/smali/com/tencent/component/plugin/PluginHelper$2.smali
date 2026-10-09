.class Lcom/tencent/component/plugin/PluginHelper$2;
.super Ljava/lang/Object;
.source "PluginHelper.java"

# interfaces
.implements Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginHelper;->bindLeafService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/ServiceConnection;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginHelper;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$flags:I

.field final synthetic val$leafServiceName:Ljava/lang/String;

.field final synthetic val$sc:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginHelper;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/ServiceConnection;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginHelper;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginHelper$2;->this$0:Lcom/tencent/component/plugin/PluginHelper;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginHelper$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/component/plugin/PluginHelper$2;->val$leafServiceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/component/plugin/PluginHelper$2;->val$args:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/tencent/component/plugin/PluginHelper$2;->val$sc:Landroid/content/ServiceConnection;

    iput p6, p0, Lcom/tencent/component/plugin/PluginHelper$2;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPluginInfo(Lcom/tencent/component/plugin/PluginInfo;)V
    .locals 7
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginHelper$2;->this$0:Lcom/tencent/component/plugin/PluginHelper;

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginHelper$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginHelper$2;->val$leafServiceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/component/plugin/PluginHelper$2;->val$args:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/tencent/component/plugin/PluginHelper$2;->val$sc:Landroid/content/ServiceConnection;

    iget v6, p0, Lcom/tencent/component/plugin/PluginHelper$2;->val$flags:I

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/component/plugin/PluginHelper;->bindLeafService(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/ServiceConnection;I)V

    .line 242
    :cond_0
    return-void
.end method
