.class Lcom/tencent/gcloud/map/MapLBSService$2;
.super Landroid/os/Handler;
.source "MapLBSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/gcloud/map/MapLBSService;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/gcloud/map/MapLBSService;


# direct methods
.method constructor <init>(Lcom/tencent/gcloud/map/MapLBSService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/gcloud/map/MapLBSService$2;->this$0:Lcom/tencent/gcloud/map/MapLBSService;

    .line 93
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/gcloud/map/MapLBSService$2;)Lcom/tencent/gcloud/map/MapLBSService;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/gcloud/map/MapLBSService$2;->this$0:Lcom/tencent/gcloud/map/MapLBSService;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/gcloud/map/MapLBSService$2;->this$0:Lcom/tencent/gcloud/map/MapLBSService;

    iget-object v2, p0, Lcom/tencent/gcloud/map/MapLBSService$2;->this$0:Lcom/tencent/gcloud/map/MapLBSService;

    invoke-static {v2}, Lcom/tencent/gcloud/map/MapLBSService;->access$2(Lcom/tencent/gcloud/map/MapLBSService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/map/geolocation/TencentLocationManager;->getInstance(Landroid/content/Context;)Lcom/tencent/map/geolocation/TencentLocationManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/gcloud/map/MapLBSService;->access$3(Lcom/tencent/gcloud/map/MapLBSService;Lcom/tencent/map/geolocation/TencentLocationManager;)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v1, p0, Lcom/tencent/gcloud/map/MapLBSService$2;->this$0:Lcom/tencent/gcloud/map/MapLBSService;

    invoke-static {v1}, Lcom/tencent/gcloud/map/MapLBSService;->access$4(Lcom/tencent/gcloud/map/MapLBSService;)Lcom/tencent/map/geolocation/TencentLocationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/gcloud/map/MapLBSService$2;->this$0:Lcom/tencent/gcloud/map/MapLBSService;

    invoke-static {v1}, Lcom/tencent/gcloud/map/MapLBSService;->access$5(Lcom/tencent/gcloud/map/MapLBSService;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/gcloud/map/MapLBSService$2;->this$0:Lcom/tencent/gcloud/map/MapLBSService;

    invoke-static {v1}, Lcom/tencent/gcloud/map/MapLBSService;->access$6(Lcom/tencent/gcloud/map/MapLBSService;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/tencent/gcloud/map/MapLBSService$2;->this$0:Lcom/tencent/gcloud/map/MapLBSService;

    invoke-static {v1}, Lcom/tencent/gcloud/map/MapLBSService;->access$4(Lcom/tencent/gcloud/map/MapLBSService;)Lcom/tencent/map/geolocation/TencentLocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/gcloud/map/MapLBSService$2;->this$0:Lcom/tencent/gcloud/map/MapLBSService;

    invoke-static {v2}, Lcom/tencent/gcloud/map/MapLBSService;->access$5(Lcom/tencent/gcloud/map/MapLBSService;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/gcloud/map/MapLBSService$2;->this$0:Lcom/tencent/gcloud/map/MapLBSService;

    invoke-static {v3}, Lcom/tencent/gcloud/map/MapLBSService;->access$6(Lcom/tencent/gcloud/map/MapLBSService;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v3

    .line 105
    iget-object v4, p0, Lcom/tencent/gcloud/map/MapLBSService$2;->this$0:Lcom/tencent/gcloud/map/MapLBSService;

    invoke-static {v4}, Lcom/tencent/gcloud/map/MapLBSService;->access$7(Lcom/tencent/gcloud/map/MapLBSService;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 104
    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/map/geolocation/TencentLocationManager;->requestLocationUpdates(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    .line 107
    iget-object v1, p0, Lcom/tencent/gcloud/map/MapLBSService$2;->this$0:Lcom/tencent/gcloud/map/MapLBSService;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/tencent/gcloud/map/MapLBSService;->access$8(Lcom/tencent/gcloud/map/MapLBSService;Ljava/util/Timer;)V

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/tencent/gcloud/map/MapLBSService$2;->this$0:Lcom/tencent/gcloud/map/MapLBSService;

    invoke-static {v1}, Lcom/tencent/gcloud/map/MapLBSService;->access$9(Lcom/tencent/gcloud/map/MapLBSService;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/tencent/gcloud/map/MapLBSService$2$1;

    invoke-direct {v2, p0}, Lcom/tencent/gcloud/map/MapLBSService$2$1;-><init>(Lcom/tencent/gcloud/map/MapLBSService$2;)V

    .line 115
    const-wide/16 v4, 0x4e20

    .line 109
    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    const-string v1, "MapLBSService"

    const-string/jumbo v2, "timer has been cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget-object v1, p0, Lcom/tencent/gcloud/map/MapLBSService$2;->this$0:Lcom/tencent/gcloud/map/MapLBSService;

    invoke-static {v1}, Lcom/tencent/gcloud/map/MapLBSService;->access$10(Lcom/tencent/gcloud/map/MapLBSService;)V

    .line 126
    iget-object v1, p0, Lcom/tencent/gcloud/map/MapLBSService$2;->this$0:Lcom/tencent/gcloud/map/MapLBSService;

    invoke-static {v1}, Lcom/tencent/gcloud/map/MapLBSService;->access$9(Lcom/tencent/gcloud/map/MapLBSService;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/tencent/gcloud/map/MapLBSService$2;->this$0:Lcom/tencent/gcloud/map/MapLBSService;

    invoke-static {v1}, Lcom/tencent/gcloud/map/MapLBSService;->access$9(Lcom/tencent/gcloud/map/MapLBSService;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto/16 :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
