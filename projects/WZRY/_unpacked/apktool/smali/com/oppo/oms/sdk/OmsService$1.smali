.class Lcom/oppo/oms/sdk/OmsService$1;
.super Ljava/lang/Object;
.source "OmsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/oms/sdk/OmsService;->requestFeature(Landroid/content/Context;Lcom/oppo/oms/sdk/entity/FeatureRequest;Lcom/oppo/oms/sdk/OmsService$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/oms/sdk/OmsService;

.field final synthetic val$callBack:Lcom/oppo/oms/sdk/OmsService$CallBack;

.field final synthetic val$request:Lcom/oppo/oms/sdk/entity/FeatureRequest;


# direct methods
.method constructor <init>(Lcom/oppo/oms/sdk/OmsService;Lcom/oppo/oms/sdk/entity/FeatureRequest;Lcom/oppo/oms/sdk/OmsService$CallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oppo/oms/sdk/OmsService;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/oppo/oms/sdk/OmsService$1;->this$0:Lcom/oppo/oms/sdk/OmsService;

    iput-object p2, p0, Lcom/oppo/oms/sdk/OmsService$1;->val$request:Lcom/oppo/oms/sdk/entity/FeatureRequest;

    iput-object p3, p0, Lcom/oppo/oms/sdk/OmsService$1;->val$callBack:Lcom/oppo/oms/sdk/OmsService$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lcom/oppo/oms/sdk/OmsService$1;->this$0:Lcom/oppo/oms/sdk/OmsService;

    invoke-static {v1}, Lcom/oppo/oms/sdk/OmsService;->access$000(Lcom/oppo/oms/sdk/OmsService;)Lcom/oppo/oms/sdk/OmsServiceHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/oms/sdk/OmsService$1;->val$request:Lcom/oppo/oms/sdk/entity/FeatureRequest;

    invoke-virtual {v1, v2}, Lcom/oppo/oms/sdk/OmsServiceHelper;->requestFeature(Lcom/oppo/oms/sdk/entity/FeatureRequest;)Lcom/oppo/oms/sdk/entity/Result;

    move-result-object v0

    .line 58
    .local v0, "result":Lcom/oppo/oms/sdk/entity/Result;, "Lcom/oppo/oms/sdk/entity/Result<Lcom/oppo/oms/sdk/entity/ErrorEntity;Lcom/oppo/oms/sdk/entity/FeatureEntity;>;"
    iget-object v1, p0, Lcom/oppo/oms/sdk/OmsService$1;->this$0:Lcom/oppo/oms/sdk/OmsService;

    invoke-static {v1}, Lcom/oppo/oms/sdk/OmsService;->access$100(Lcom/oppo/oms/sdk/OmsService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/oppo/oms/sdk/OmsService$1;->this$0:Lcom/oppo/oms/sdk/OmsService;

    invoke-static {v1}, Lcom/oppo/oms/sdk/OmsService;->access$100(Lcom/oppo/oms/sdk/OmsService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oppo/oms/sdk/OmsService$1$1;

    invoke-direct {v2, p0, v0}, Lcom/oppo/oms/sdk/OmsService$1$1;-><init>(Lcom/oppo/oms/sdk/OmsService$1;Lcom/oppo/oms/sdk/entity/Result;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/oppo/oms/sdk/OmsService$1;->val$callBack:Lcom/oppo/oms/sdk/OmsService$CallBack;

    invoke-interface {v1, v0}, Lcom/oppo/oms/sdk/OmsService$CallBack;->onResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
