.class Lcom/tencent/msdk/lbs/LocationService$1;
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
    .line 261
    iput-object p1, p0, Lcom/tencent/msdk/lbs/LocationService$1;->this$0:Lcom/tencent/msdk/lbs/LocationService;

    iput-object p2, p0, Lcom/tencent/msdk/lbs/LocationService$1;->val$locationManager:Landroid/location/LocationManager;

    iput-object p3, p0, Lcom/tencent/msdk/lbs/LocationService$1;->val$locationListener:Lcom/tencent/msdk/lbs/MyLocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 263
    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationService$1;->val$locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/tencent/msdk/lbs/LocationService$1;->val$locationListener:Lcom/tencent/msdk/lbs/MyLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 266
    return-void
.end method
