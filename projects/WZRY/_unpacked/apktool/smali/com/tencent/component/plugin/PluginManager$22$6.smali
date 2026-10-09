.class Lcom/tencent/component/plugin/PluginManager$22$6;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager$22;->onPluginStateChange(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/component/plugin/PluginManager$22;

.field final synthetic val$changeFlags:I

.field final synthetic val$pluginId:Ljava/lang/String;

.field final synthetic val$statusFlags:I


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager$22;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/component/plugin/PluginManager$22;

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$22$6;->this$1:Lcom/tencent/component/plugin/PluginManager$22;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$22$6;->val$pluginId:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/component/plugin/PluginManager$22$6;->val$changeFlags:I

    iput p4, p0, Lcom/tencent/component/plugin/PluginManager$22$6;->val$statusFlags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$22$6;->this$1:Lcom/tencent/component/plugin/PluginManager$22;

    iget-object v0, v0, Lcom/tencent/component/plugin/PluginManager$22;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager$22$6;->val$pluginId:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/component/plugin/PluginManager$22$6;->val$changeFlags:I

    iget v3, p0, Lcom/tencent/component/plugin/PluginManager$22$6;->val$statusFlags:I

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/component/plugin/PluginManager;->access$2300(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;II)V

    .line 1243
    return-void
.end method
