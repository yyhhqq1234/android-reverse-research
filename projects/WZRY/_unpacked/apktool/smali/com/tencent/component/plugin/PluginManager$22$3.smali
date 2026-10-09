.class Lcom/tencent/component/plugin/PluginManager$22$3;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager$22;->onPluginInstalled(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/component/plugin/PluginManager$22;

.field final synthetic val$oldVersion:I

.field final synthetic val$pluginId:Ljava/lang/String;

.field final synthetic val$version:I


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager$22;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/component/plugin/PluginManager$22;

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$22$3;->this$1:Lcom/tencent/component/plugin/PluginManager$22;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$22$3;->val$pluginId:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/component/plugin/PluginManager$22$3;->val$oldVersion:I

    iput p4, p0, Lcom/tencent/component/plugin/PluginManager$22$3;->val$version:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$22$3;->this$1:Lcom/tencent/component/plugin/PluginManager$22;

    iget-object v0, v0, Lcom/tencent/component/plugin/PluginManager$22;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager$22$3;->val$pluginId:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/component/plugin/PluginManager$22$3;->val$oldVersion:I

    iget v3, p0, Lcom/tencent/component/plugin/PluginManager$22$3;->val$version:I

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/component/plugin/PluginManager;->access$2000(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;II)V

    .line 1204
    return-void
.end method
