.class Lcom/tencent/component/plugin/PluginManager$18;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lcom/tencent/component/plugin/PluginManager$LoadPluginInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager;->writeCommandToPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;

.field final synthetic val$args:Ljava/lang/Object;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 858
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$18;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$18;->val$cmd:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/component/plugin/PluginManager$18;->val$args:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadPluginInfo(Lcom/tencent/component/plugin/PluginInfo;)V
    .locals 2
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$18;->this$0:Lcom/tencent/component/plugin/PluginManager;

    new-instance v1, Lcom/tencent/component/plugin/PluginManager$18$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/component/plugin/PluginManager$18$1;-><init>(Lcom/tencent/component/plugin/PluginManager$18;Lcom/tencent/component/plugin/PluginInfo;)V

    invoke-static {v0, v1}, Lcom/tencent/component/plugin/PluginManager;->access$1700(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/Runnable;)V

    .line 882
    return-void
.end method
