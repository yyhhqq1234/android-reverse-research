.class Lcom/tencent/component/plugin/PluginManager$22$4;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager$22;->onPluginUninstalled(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/component/plugin/PluginManager$22;

.field final synthetic val$pluginId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager$22;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/component/plugin/PluginManager$22;

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$22$4;->this$1:Lcom/tencent/component/plugin/PluginManager$22;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$22$4;->val$pluginId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$22$4;->this$1:Lcom/tencent/component/plugin/PluginManager$22;

    iget-object v0, v0, Lcom/tencent/component/plugin/PluginManager$22;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager$22$4;->val$pluginId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/component/plugin/PluginManager;->access$2100(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;)V

    .line 1217
    return-void
.end method
