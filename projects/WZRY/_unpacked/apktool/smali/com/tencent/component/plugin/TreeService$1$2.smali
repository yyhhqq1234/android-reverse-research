.class Lcom/tencent/component/plugin/TreeService$1$2;
.super Ljava/lang/Object;
.source "TreeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/TreeService$1;->unbindService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/service/ILeafServiceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/component/plugin/TreeService$1;

.field final synthetic val$leafService:Lcom/tencent/component/plugin/LeafService;

.field final synthetic val$leafServiceClassName:Ljava/lang/String;

.field final synthetic val$platformId:Ljava/lang/String;

.field final synthetic val$pluginId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/TreeService$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/component/plugin/TreeService$1;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/tencent/component/plugin/TreeService$1$2;->this$1:Lcom/tencent/component/plugin/TreeService$1;

    iput-object p2, p0, Lcom/tencent/component/plugin/TreeService$1$2;->val$platformId:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/component/plugin/TreeService$1$2;->val$pluginId:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/component/plugin/TreeService$1$2;->val$leafServiceClassName:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/component/plugin/TreeService$1$2;->val$leafService:Lcom/tencent/component/plugin/LeafService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 86
    iget-object v1, p0, Lcom/tencent/component/plugin/TreeService$1$2;->this$1:Lcom/tencent/component/plugin/TreeService$1;

    iget-object v1, v1, Lcom/tencent/component/plugin/TreeService$1;->this$0:Lcom/tencent/component/plugin/TreeService;

    iget-object v2, p0, Lcom/tencent/component/plugin/TreeService$1$2;->val$platformId:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/component/plugin/TreeService$1$2;->val$pluginId:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/component/plugin/TreeService$1$2;->val$leafServiceClassName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/component/plugin/TreeService;->access$600(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tencent/component/plugin/TreeService$1$2;->val$leafService:Lcom/tencent/component/plugin/LeafService;

    invoke-virtual {v1, v0}, Lcom/tencent/component/plugin/LeafService;->onUnbind(Landroid/content/Intent;)Z

    .line 88
    iget-object v1, p0, Lcom/tencent/component/plugin/TreeService$1$2;->this$1:Lcom/tencent/component/plugin/TreeService$1;

    iget-object v1, v1, Lcom/tencent/component/plugin/TreeService$1;->this$0:Lcom/tencent/component/plugin/TreeService;

    iget-object v2, p0, Lcom/tencent/component/plugin/TreeService$1$2;->val$platformId:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/component/plugin/TreeService$1$2;->val$pluginId:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/component/plugin/TreeService$1$2;->val$leafServiceClassName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/component/plugin/TreeService;->access$500(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
