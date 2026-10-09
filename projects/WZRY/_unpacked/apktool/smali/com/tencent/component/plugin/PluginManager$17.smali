.class Lcom/tencent/component/plugin/PluginManager$17;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lcom/tencent/component/plugin/PluginManager$LoadPluginInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager;->startPlugin(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;

.field final synthetic val$args:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 831
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$17;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$17;->val$args:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadPluginInfo(Lcom/tencent/component/plugin/PluginInfo;)V
    .locals 2
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 835
    if-eqz p1, :cond_0

    .line 836
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$17;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager$17;->val$args:Landroid/content/Intent;

    invoke-static {v0, p1, v1}, Lcom/tencent/component/plugin/PluginManager;->access$1600(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginInfo;Landroid/content/Intent;)V

    .line 838
    :cond_0
    return-void
.end method
