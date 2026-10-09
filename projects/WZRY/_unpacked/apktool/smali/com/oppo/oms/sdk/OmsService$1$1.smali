.class Lcom/oppo/oms/sdk/OmsService$1$1;
.super Ljava/lang/Object;
.source "OmsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/oms/sdk/OmsService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/oms/sdk/OmsService$1;

.field final synthetic val$result:Lcom/oppo/oms/sdk/entity/Result;


# direct methods
.method constructor <init>(Lcom/oppo/oms/sdk/OmsService$1;Lcom/oppo/oms/sdk/entity/Result;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oppo/oms/sdk/OmsService$1;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oppo/oms/sdk/OmsService$1$1;->this$1:Lcom/oppo/oms/sdk/OmsService$1;

    iput-object p2, p0, Lcom/oppo/oms/sdk/OmsService$1$1;->val$result:Lcom/oppo/oms/sdk/entity/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oppo/oms/sdk/OmsService$1$1;->this$1:Lcom/oppo/oms/sdk/OmsService$1;

    iget-object v0, v0, Lcom/oppo/oms/sdk/OmsService$1;->val$callBack:Lcom/oppo/oms/sdk/OmsService$CallBack;

    iget-object v1, p0, Lcom/oppo/oms/sdk/OmsService$1$1;->val$result:Lcom/oppo/oms/sdk/entity/Result;

    invoke-interface {v0, v1}, Lcom/oppo/oms/sdk/OmsService$CallBack;->onResult(Ljava/lang/Object;)V

    .line 63
    return-void
.end method
