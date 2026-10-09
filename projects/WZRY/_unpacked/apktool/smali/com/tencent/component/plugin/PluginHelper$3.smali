.class Lcom/tencent/component/plugin/PluginHelper$3;
.super Ljava/lang/Object;
.source "PluginHelper.java"

# interfaces
.implements Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginHelper;->startLeafService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginHelper;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$leafServiceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginHelper;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginHelper;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginHelper$3;->this$0:Lcom/tencent/component/plugin/PluginHelper;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginHelper$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/component/plugin/PluginHelper$3;->val$leafServiceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/component/plugin/PluginHelper$3;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPluginInfo(Lcom/tencent/component/plugin/PluginInfo;)V
    .locals 4
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginHelper$3;->this$0:Lcom/tencent/component/plugin/PluginHelper;

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginHelper$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginHelper$3;->val$leafServiceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginHelper$3;->val$args:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/tencent/component/plugin/PluginHelper;->startLeafService(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 283
    :cond_0
    return-void
.end method
