.class Lcom/tencent/component/plugin/PluginManager$22$5;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager$22;->onPendingInstallFinish(ZZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/component/plugin/PluginManager$22;

.field final synthetic val$corePlugin:Z

.field final synthetic val$errorMsg:Ljava/lang/String;

.field final synthetic val$extraInfo:Ljava/lang/String;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager$22;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/component/plugin/PluginManager$22;

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$22$5;->this$1:Lcom/tencent/component/plugin/PluginManager$22;

    iput-boolean p2, p0, Lcom/tencent/component/plugin/PluginManager$22$5;->val$success:Z

    iput-boolean p3, p0, Lcom/tencent/component/plugin/PluginManager$22$5;->val$corePlugin:Z

    iput-object p4, p0, Lcom/tencent/component/plugin/PluginManager$22$5;->val$extraInfo:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/component/plugin/PluginManager$22$5;->val$errorMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$22$5;->this$1:Lcom/tencent/component/plugin/PluginManager$22;

    iget-object v0, v0, Lcom/tencent/component/plugin/PluginManager$22;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-boolean v1, p0, Lcom/tencent/component/plugin/PluginManager$22$5;->val$success:Z

    iget-boolean v2, p0, Lcom/tencent/component/plugin/PluginManager$22$5;->val$corePlugin:Z

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$22$5;->val$extraInfo:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$22$5;->val$errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/component/plugin/PluginManager;->access$2200(Lcom/tencent/component/plugin/PluginManager;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 1228
    return-void
.end method
