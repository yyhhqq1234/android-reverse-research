.class public Lcom/netease/dwrg/NeoXLocationManager;
.super Ljava/lang/Object;
.source "NeoXLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/dwrg/NeoXLocationManager$NeoXLocationListener;
    }
.end annotation


# instance fields
.field gps_enabled:Z

.field private final locationListenerGps:Lcom/netease/dwrg/NeoXLocationManager$NeoXLocationListener;

.field private final locationListenerNetwork:Lcom/netease/dwrg/NeoXLocationManager$NeoXLocationListener;

.field locationManager:Landroid/location/LocationManager;

.field network_enabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    .line 19
    iput-boolean v1, p0, Lcom/netease/dwrg/NeoXLocationManager;->gps_enabled:Z

    .line 21
    iput-boolean v1, p0, Lcom/netease/dwrg/NeoXLocationManager;->network_enabled:Z

    .line 34
    new-instance v0, Lcom/netease/dwrg/NeoXLocationManager$NeoXLocationListener;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/NeoXLocationManager$NeoXLocationListener;-><init>(Lcom/netease/dwrg/NeoXLocationManager;)V

    iput-object v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->locationListenerGps:Lcom/netease/dwrg/NeoXLocationManager$NeoXLocationListener;

    .line 35
    new-instance v0, Lcom/netease/dwrg/NeoXLocationManager$NeoXLocationListener;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/NeoXLocationManager$NeoXLocationListener;-><init>(Lcom/netease/dwrg/NeoXLocationManager;)V

    iput-object v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->locationListenerNetwork:Lcom/netease/dwrg/NeoXLocationManager$NeoXLocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/dwrg/NeoXLocationManager;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/NeoXLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/netease/dwrg/NeoXLocationManager;->locationChanged(Landroid/location/Location;)V

    return-void
.end method

.method private locationChanged(Landroid/location/Location;)V
    .locals 8
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    .line 86
    .local v0, "longitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 87
    .local v2, "latitude":D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static/range {v0 .. v5}, Lcom/netease/neox/NativeInterface;->NativeOnLocationUpdated(DDD)V

    goto :goto_0
.end method


# virtual methods
.method public openLocationSetting(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method public startUpdatingLocation(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 39
    iget-object v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 40
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    .line 43
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->gps_enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 44
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->network_enabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    :goto_1
    iget-boolean v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->gps_enabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->network_enabled:Z

    if-nez v0, :cond_1

    move v0, v8

    .line 57
    :goto_2
    return v0

    .line 50
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->gps_enabled:Z

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netease/dwrg/NeoXLocationManager;->locationListenerGps:Lcom/netease/dwrg/NeoXLocationManager$NeoXLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 52
    :cond_2
    iget-boolean v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->network_enabled:Z

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netease/dwrg/NeoXLocationManager;->locationListenerNetwork:Lcom/netease/dwrg/NeoXLocationManager$NeoXLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 54
    :catch_0
    move-exception v7

    .local v7, "ex":Ljava/lang/Exception;
    move v0, v8

    .line 55
    goto :goto_2

    .line 44
    .end local v7    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    .line 43
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public stopUpdatingLocation(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-boolean v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->gps_enabled:Z

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/netease/dwrg/NeoXLocationManager;->locationListenerGps:Lcom/netease/dwrg/NeoXLocationManager$NeoXLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 70
    :cond_2
    iget-boolean v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->network_enabled:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/netease/dwrg/NeoXLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/netease/dwrg/NeoXLocationManager;->locationListenerNetwork:Lcom/netease/dwrg/NeoXLocationManager$NeoXLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method
