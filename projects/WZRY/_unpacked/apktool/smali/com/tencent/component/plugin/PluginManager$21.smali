.class Lcom/tencent/component/plugin/PluginManager$21;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;Z)Lcom/tencent/component/plugin/Plugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;

.field final synthetic val$tempPlugin:Lcom/tencent/component/plugin/Plugin;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/Plugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$21;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$21;->val$tempPlugin:Lcom/tencent/component/plugin/Plugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$21;->val$tempPlugin:Lcom/tencent/component/plugin/Plugin;

    invoke-virtual {v0}, Lcom/tencent/component/plugin/Plugin;->performCreate()V

    .line 1097
    return-void
.end method
