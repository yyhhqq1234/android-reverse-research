.class Lcom/tencent/component/plugin/PluginManager$22$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager$22;->onPlatformInitialStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/component/plugin/PluginManager$22;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager$22;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/component/plugin/PluginManager$22;

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$22$1;->this$1:Lcom/tencent/component/plugin/PluginManager$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$22$1;->this$1:Lcom/tencent/component/plugin/PluginManager$22;

    iget-object v0, v0, Lcom/tencent/component/plugin/PluginManager$22;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v0}, Lcom/tencent/component/plugin/PluginManager;->access$1800(Lcom/tencent/component/plugin/PluginManager;)V

    .line 1182
    return-void
.end method
