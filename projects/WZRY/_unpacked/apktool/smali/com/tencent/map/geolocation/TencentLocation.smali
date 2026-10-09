.class public interface abstract Lcom/tencent/map/geolocation/TencentLocation;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field public static final CELL_PROVIDER:Ljava/lang/String; = "cell"

.field public static final ERROR_BAD_JSON:I = 0x2

.field public static final ERROR_NETWORK:I = 0x1

.field public static final ERROR_OK:I = 0x0

.field public static final ERROR_UNKNOWN:I = 0x194

.field public static final ERROR_WGS84:I = 0x4

.field public static final EXTRA_ADDRDESP_LANDMARK:Ljava/lang/String; = "addrdesp.landmark"

.field public static final EXTRA_ADDRDESP_OTHERS_RESULTS:Ljava/lang/String; = "addrdesp.results"

.field public static final EXTRA_ADDRDESP_SECOND_LANDMARK:Ljava/lang/String; = "addrdesp.second_landmark"

.field public static final EXTRA_DIRECTION:Ljava/lang/String; = "direction"

.field public static final EXTRA_RESP_JSON:Ljava/lang/String; = "resp_json"

.field public static final FAKE:Ljava/lang/String; = "fake"

.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field public static final PEDESTRIAN_MODE:Ljava/lang/String; = "pedestrian"

.field public static final RUN_MODE:Ljava/lang/String; = "run"

.field public static final STATIC_MODE:Ljava/lang/String; = "static"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final VEHICLE_MODE:Ljava/lang/String; = "vehicle"

.field public static final VERIFYKEY_ERROR_NETWORK:I = 0x5

.field public static final WIFI_PROVIDER:Ljava/lang/String; = "wifi"


# virtual methods
.method public abstract getAccuracy()F
.end method

.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getAltitude()D
.end method

.method public abstract getAreaStat()Ljava/lang/Integer;
.end method

.method public abstract getBearing()F
.end method

.method public abstract getCity()Ljava/lang/String;
.end method

.method public abstract getCityCode()Ljava/lang/String;
.end method

.method public abstract getCoordinateType()I
.end method

.method public abstract getDirection()D
.end method

.method public abstract getDistrict()Ljava/lang/String;
.end method

.method public abstract getElapsedRealtime()J
.end method

.method public abstract getExtra()Landroid/os/Bundle;
.end method

.method public abstract getFakeReason()I
.end method

.method public abstract getLatitude()D
.end method

.method public abstract getLongitude()D
.end method

.method public abstract getMotion()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNation()Ljava/lang/String;
.end method

.method public abstract getPoiList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/map/geolocation/TencentPoi;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProvider()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getProvince()Ljava/lang/String;
.end method

.method public abstract getRawData()Ljava/lang/String;
.end method

.method public abstract getRssi()I
.end method

.method public abstract getSourceProvider()Ljava/lang/String;
.end method

.method public abstract getSpeed()F
.end method

.method public abstract getStreet()Ljava/lang/String;
.end method

.method public abstract getStreetNo()Ljava/lang/String;
.end method

.method public abstract getTime()J
.end method

.method public abstract getTown()Ljava/lang/String;
.end method

.method public abstract getVerifyKey()Ljava/lang/String;
.end method

.method public abstract getVillage()Ljava/lang/String;
.end method

.method public abstract isMockGps()I
.end method
