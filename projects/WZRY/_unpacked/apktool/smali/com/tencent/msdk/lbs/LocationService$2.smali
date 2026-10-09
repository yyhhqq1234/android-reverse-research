.class Lcom/tencent/msdk/lbs/LocationService$2;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/lbs/LocationService;->GPSLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/lbs/LocationService;

.field final synthetic val$locationListener:Lcom/tencent/msdk/lbs/MyLocationListener;

.field final synthetic val$locationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/lbs/LocationService;Landroid/location/LocationManager;Lcom/tencent/msdk/lbs/MyLocationListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/lbs/LocationService;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/tencent/msdk/lbs/LocationService$2;->this$0:Lcom/tencent/msdk/lbs/LocationService;

    iput-object p2, p0, Lcom/tencent/msdk/lbs/LocationService$2;->val$locationManager:Landroid/location/LocationManager;

    iput-object p3, p0, Lcom/tencent/msdk/lbs/LocationService$2;->val$locationListener:Lcom/tencent/msdk/lbs/MyLocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 271
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 272
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/tencent/msdk/lbs/LocationService$2$1;

    invoke-direct {v1, p0, v0}, Lcom/tencent/msdk/lbs/LocationService$2$1;-><init>(Lcom/tencent/msdk/lbs/LocationService$2;Landroid/os/Handler;)V

    .line 293
    .local v1, "runnable":Ljava/lang/Runnable;
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    return-void
.end method
