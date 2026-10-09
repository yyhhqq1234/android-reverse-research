.class Lcom/tencent/msdk/lbs/MyLocationListener;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationService:Lcom/tencent/msdk/lbs/LocationService;


# direct methods
.method public constructor <init>(Lcom/tencent/msdk/lbs/LocationService;Landroid/location/LocationManager;)V
    .locals 0
    .param p1, "locationService"    # Lcom/tencent/msdk/lbs/LocationService;
    .param p2, "locationManager"    # Landroid/location/LocationManager;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/tencent/msdk/lbs/MyLocationListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    .line 64
    iput-object p2, p0, Lcom/tencent/msdk/lbs/MyLocationListener;->mLocationManager:Landroid/location/LocationManager;

    .line 65
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 83
    const-string v0, "LocationService"

    const-string v1, "GPS\u83b7\u53d6\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v0, "LocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u7ecf\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v0, "LocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u7eac\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/tencent/msdk/lbs/MyLocationListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/msdk/lbs/LocationService;->setLongitude(D)V

    .line 87
    iget-object v0, p0, Lcom/tencent/msdk/lbs/MyLocationListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/msdk/lbs/LocationService;->setLatitude(D)V

    .line 88
    iget-object v0, p0, Lcom/tencent/msdk/lbs/MyLocationListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/lbs/LocationService;->onSuccess(I)V

    .line 89
    iget-object v0, p0, Lcom/tencent/msdk/lbs/MyLocationListener;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 90
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "LocationService"

    const-string v1, "onProviderDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, "LocationService"

    const-string v1, "onProviderEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 69
    return-void
.end method
