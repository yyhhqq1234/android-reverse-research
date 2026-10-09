.class Lcom/tencent/component/plugin/TreeService$1$4;
.super Ljava/lang/Object;
.source "TreeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/TreeService$1;->stopService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/component/plugin/TreeService$1;

.field final synthetic val$leafService:Lcom/tencent/component/plugin/LeafService;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/TreeService$1;Lcom/tencent/component/plugin/LeafService;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/component/plugin/TreeService$1;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/tencent/component/plugin/TreeService$1$4;->this$1:Lcom/tencent/component/plugin/TreeService$1;

    iput-object p2, p0, Lcom/tencent/component/plugin/TreeService$1$4;->val$leafService:Lcom/tencent/component/plugin/LeafService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeService$1$4;->val$leafService:Lcom/tencent/component/plugin/LeafService;

    invoke-virtual {v0}, Lcom/tencent/component/plugin/LeafService;->onDestroy()V

    .line 121
    return-void
.end method
