.class Lcom/tencent/component/plugin/PluginManager$12;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager;->uninstall(Ljava/lang/String;Lcom/tencent/component/plugin/UninstallPluginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;

.field final synthetic val$listener:Lcom/tencent/component/plugin/UninstallPluginListener;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/UninstallPluginListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$12;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$12;->val$listener:Lcom/tencent/component/plugin/UninstallPluginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPluginInfo(Lcom/tencent/component/plugin/PluginInfo;)V
    .locals 2
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$12;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager$12;->val$listener:Lcom/tencent/component/plugin/UninstallPluginListener;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/component/plugin/PluginManager;->uninstall(Lcom/tencent/component/plugin/PluginInfo;Lcom/tencent/component/plugin/UninstallPluginListener;)V

    .line 581
    return-void
.end method
