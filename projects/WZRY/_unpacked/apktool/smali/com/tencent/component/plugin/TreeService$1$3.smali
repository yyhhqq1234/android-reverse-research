.class Lcom/tencent/component/plugin/TreeService$1$3;
.super Ljava/lang/Object;
.source "TreeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/TreeService$1;->startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/component/plugin/TreeService$1;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$leafServiceClassName:Ljava/lang/String;

.field final synthetic val$platformId:Ljava/lang/String;

.field final synthetic val$pluginId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/TreeService$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/component/plugin/TreeService$1;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tencent/component/plugin/TreeService$1$3;->this$1:Lcom/tencent/component/plugin/TreeService$1;

    iput-object p2, p0, Lcom/tencent/component/plugin/TreeService$1$3;->val$platformId:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/component/plugin/TreeService$1$3;->val$pluginId:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/component/plugin/TreeService$1$3;->val$leafServiceClassName:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/component/plugin/TreeService$1$3;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 100
    iget-object v2, p0, Lcom/tencent/component/plugin/TreeService$1$3;->this$1:Lcom/tencent/component/plugin/TreeService$1;

    iget-object v2, v2, Lcom/tencent/component/plugin/TreeService$1;->this$0:Lcom/tencent/component/plugin/TreeService;

    iget-object v3, p0, Lcom/tencent/component/plugin/TreeService$1$3;->val$platformId:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/component/plugin/TreeService$1$3;->val$pluginId:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/component/plugin/TreeService$1$3;->val$leafServiceClassName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/component/plugin/TreeService;->access$100(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/LeafService;

    move-result-object v1

    .line 101
    .local v1, "leafService":Lcom/tencent/component/plugin/LeafService;
    if-eqz v1, :cond_1

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/tencent/component/plugin/TreeService$1$3;->val$args:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/tencent/component/plugin/TreeService$1$3;->val$args:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 106
    :cond_0
    invoke-virtual {v1, v0, v6, v6}, Lcom/tencent/component/plugin/LeafService;->onStartCommand(Landroid/content/Intent;II)I

    .line 108
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
