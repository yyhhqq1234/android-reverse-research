.class Lcom/tencent/msdk/lbs/LocationService$2$1;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/lbs/LocationService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/msdk/lbs/LocationService$2;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/lbs/LocationService$2;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/msdk/lbs/LocationService$2;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/tencent/msdk/lbs/LocationService$2$1;->this$1:Lcom/tencent/msdk/lbs/LocationService$2;

    iput-object p2, p0, Lcom/tencent/msdk/lbs/LocationService$2$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 275
    const-string/jumbo v0, "\u83b7\u53d6GPS\u8d85\u65f6"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationService$2$1;->this$1:Lcom/tencent/msdk/lbs/LocationService$2;

    iget-object v0, v0, Lcom/tencent/msdk/lbs/LocationService$2;->this$0:Lcom/tencent/msdk/lbs/LocationService;

    iput v2, v0, Lcom/tencent/msdk/lbs/LocationService;->gpsStatus:I

    .line 277
    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationService$2$1;->this$1:Lcom/tencent/msdk/lbs/LocationService$2;

    iget-object v0, v0, Lcom/tencent/msdk/lbs/LocationService$2;->val$locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tencent/msdk/lbs/LocationService$2$1;->this$1:Lcom/tencent/msdk/lbs/LocationService$2;

    iget-object v1, v1, Lcom/tencent/msdk/lbs/LocationService$2;->val$locationListener:Lcom/tencent/msdk/lbs/MyLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 278
    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationService$2$1;->this$1:Lcom/tencent/msdk/lbs/LocationService$2;

    iget-object v0, v0, Lcom/tencent/msdk/lbs/LocationService$2;->this$0:Lcom/tencent/msdk/lbs/LocationService;

    iget v0, v0, Lcom/tencent/msdk/lbs/LocationService;->wifiStatus:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationService$2$1;->this$1:Lcom/tencent/msdk/lbs/LocationService$2;

    iget-object v0, v0, Lcom/tencent/msdk/lbs/LocationService$2;->this$0:Lcom/tencent/msdk/lbs/LocationService;

    iget v0, v0, Lcom/tencent/msdk/lbs/LocationService;->cellInfoStatus:I

    if-nez v0, :cond_2

    .line 280
    :cond_0
    const-string/jumbo v0, "\u6210\u529f\u83b7\u53d6\u4f4d\u7f6e\u4fe1\u606f\uff0c\u4f46\u6ca1\u6709GPS\u6570\u636e"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/tencent/msdk/lbs/LocationService;->access$000()Lcom/tencent/msdk/lbs/LocationService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/lbs/LocationService;->onSuccess(I)V

    .line 287
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationService$2$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 290
    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationService$2$1;->this$1:Lcom/tencent/msdk/lbs/LocationService$2;

    iget-object v0, v0, Lcom/tencent/msdk/lbs/LocationService$2;->val$locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tencent/msdk/lbs/LocationService$2$1;->this$1:Lcom/tencent/msdk/lbs/LocationService$2;

    iget-object v1, v1, Lcom/tencent/msdk/lbs/LocationService$2;->val$locationListener:Lcom/tencent/msdk/lbs/MyLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 291
    return-void

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationService$2$1;->this$1:Lcom/tencent/msdk/lbs/LocationService$2;

    iget-object v0, v0, Lcom/tencent/msdk/lbs/LocationService$2;->this$0:Lcom/tencent/msdk/lbs/LocationService;

    iget v0, v0, Lcom/tencent/msdk/lbs/LocationService;->wifiStatus:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationService$2$1;->this$1:Lcom/tencent/msdk/lbs/LocationService$2;

    iget-object v0, v0, Lcom/tencent/msdk/lbs/LocationService$2;->this$0:Lcom/tencent/msdk/lbs/LocationService;

    iget v0, v0, Lcom/tencent/msdk/lbs/LocationService;->cellInfoStatus:I

    if-ne v0, v2, :cond_1

    .line 284
    const-string/jumbo v0, "\u83b7\u53d6\u4f4d\u7f6e\u4fe1\u606f\u5931\u8d25\uff0cGPS\u6570\u636e\u8d85\u65f6"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/tencent/msdk/lbs/LocationService;->access$000()Lcom/tencent/msdk/lbs/LocationService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/msdk/lbs/LocationService;->onFail(I)V

    goto :goto_0
.end method
