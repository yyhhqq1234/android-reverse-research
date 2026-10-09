.class Lcom/tencent/component/plugin/PluginHelper$1;
.super Ljava/lang/Object;
.source "PluginHelper.java"

# interfaces
.implements Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginHelper;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginHelper;

.field final synthetic val$args:Landroid/content/Intent;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fragmentClassName:Ljava/lang/String;

.field final synthetic val$pluginId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginHelper;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginHelper;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginHelper$1;->this$0:Lcom/tencent/component/plugin/PluginHelper;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginHelper$1;->val$pluginId:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/component/plugin/PluginHelper$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/tencent/component/plugin/PluginHelper$1;->val$fragmentClassName:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/component/plugin/PluginHelper$1;->val$args:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPluginInfo(Lcom/tencent/component/plugin/PluginInfo;)V
    .locals 5
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Plugin(pluginId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginHelper$1;->val$pluginId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not prepared"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginHelper$1;->this$0:Lcom/tencent/component/plugin/PluginHelper;

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginHelper$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginHelper$1;->val$fragmentClassName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/component/plugin/PluginHelper$1;->val$args:Landroid/content/Intent;

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/tencent/component/plugin/PluginHelper;->generateInnerIntent(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 221
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
