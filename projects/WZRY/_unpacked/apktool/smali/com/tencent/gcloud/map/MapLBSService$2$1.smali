.class Lcom/tencent/gcloud/map/MapLBSService$2$1;
.super Ljava/util/TimerTask;
.source "MapLBSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/map/MapLBSService$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/gcloud/map/MapLBSService$2;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/map/MapLBSService$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/gcloud/map/MapLBSService$2$1;->this$1:Lcom/tencent/gcloud/map/MapLBSService$2;

    .line 109
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "MapLBSService"

    const-string/jumbo v1, "time out remove listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService$2$1;->this$1:Lcom/tencent/gcloud/map/MapLBSService$2;

    invoke-static {v0}, Lcom/tencent/gcloud/map/MapLBSService$2;->access$0(Lcom/tencent/gcloud/map/MapLBSService$2;)Lcom/tencent/gcloud/map/MapLBSService;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/gcloud/map/MapLBSService;->access$10(Lcom/tencent/gcloud/map/MapLBSService;)V

    .line 114
    return-void
.end method
