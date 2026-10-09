.class public final Lcom/onesignal/location/internal/capture/impl/LocationCapturer;
.super Ljava/lang/Object;
.source "LocationCapturer.kt"

# interfaces
.implements Lcom/onesignal/location/internal/controller/ILocationUpdatedHandler;
.implements Lcom/onesignal/location/internal/capture/ILocationCapturer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0015H\u0016J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onesignal/location/internal/capture/impl/LocationCapturer;",
        "Lcom/onesignal/location/internal/controller/ILocationUpdatedHandler;",
        "Lcom/onesignal/location/internal/capture/ILocationCapturer;",
        "_applicationService",
        "Lcom/onesignal/core/internal/application/IApplicationService;",
        "_time",
        "Lcom/onesignal/core/internal/time/ITime;",
        "_prefs",
        "Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;",
        "_propertiesModelStore",
        "Lcom/onesignal/user/internal/properties/PropertiesModelStore;",
        "_controller",
        "Lcom/onesignal/location/internal/controller/ILocationController;",
        "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/time/ITime;Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;Lcom/onesignal/user/internal/properties/PropertiesModelStore;Lcom/onesignal/location/internal/controller/ILocationController;)V",
        "locationCoarse",
        "",
        "getLocationCoarse",
        "()Z",
        "setLocationCoarse",
        "(Z)V",
        "capture",
        "",
        "location",
        "Landroid/location/Location;",
        "captureLastLocation",
        "onLocationChanged",
        "com.onesignal.location"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

.field private final _controller:Lcom/onesignal/location/internal/controller/ILocationController;

.field private final _prefs:Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;

.field private final _propertiesModelStore:Lcom/onesignal/user/internal/properties/PropertiesModelStore;

.field private final _time:Lcom/onesignal/core/internal/time/ITime;

.field private locationCoarse:Z


# direct methods
.method public constructor <init>(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/time/ITime;Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;Lcom/onesignal/user/internal/properties/PropertiesModelStore;Lcom/onesignal/location/internal/controller/ILocationController;)V
    .locals 1

    const-string v0, "_applicationService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_time"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_prefs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_propertiesModelStore"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_controller"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 18
    iput-object p2, p0, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->_time:Lcom/onesignal/core/internal/time/ITime;

    .line 19
    iput-object p3, p0, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->_prefs:Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;

    .line 20
    iput-object p4, p0, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->_propertiesModelStore:Lcom/onesignal/user/internal/properties/PropertiesModelStore;

    .line 21
    iput-object p5, p0, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->_controller:Lcom/onesignal/location/internal/controller/ILocationController;

    .line 26
    invoke-interface {p5, p0}, Lcom/onesignal/location/internal/controller/ILocationController;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private final capture(Landroid/location/Location;)V
    .locals 6

    .line 45
    new-instance v0, Lcom/onesignal/location/internal/common/LocationPoint;

    invoke-direct {v0}, Lcom/onesignal/location/internal/common/LocationPoint;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/location/internal/common/LocationPoint;->setAccuracy(Ljava/lang/Float;)V

    .line 48
    iget-object v1, p0, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v1}, Lcom/onesignal/core/internal/application/IApplicationService;->isInForeground()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/location/internal/common/LocationPoint;->setBg(Ljava/lang/Boolean;)V

    .line 49
    invoke-virtual {p0}, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->getLocationCoarse()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onesignal/location/internal/common/LocationPoint;->setType(Ljava/lang/Integer;)V

    .line 50
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/location/internal/common/LocationPoint;->setTimeStamp(Ljava/lang/Long;)V

    .line 54
    invoke-virtual {p0}, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->getLocationCoarse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/location/internal/common/LocationPoint;->setLat(Ljava/lang/Double;)V

    .line 56
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v3, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onesignal/location/internal/common/LocationPoint;->setLog(Ljava/lang/Double;)V

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/location/internal/common/LocationPoint;->setLat(Ljava/lang/Double;)V

    .line 59
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onesignal/location/internal/common/LocationPoint;->setLog(Ljava/lang/Double;)V

    .line 62
    :goto_1
    iget-object p1, p0, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->_propertiesModelStore:Lcom/onesignal/user/internal/properties/PropertiesModelStore;

    invoke-virtual {p1}, Lcom/onesignal/user/internal/properties/PropertiesModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object p1

    check-cast p1, Lcom/onesignal/user/internal/properties/PropertiesModel;

    .line 63
    invoke-virtual {v0}, Lcom/onesignal/location/internal/common/LocationPoint;->getLog()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onesignal/user/internal/properties/PropertiesModel;->setLocationLongitude(Ljava/lang/Double;)V

    .line 64
    invoke-virtual {v0}, Lcom/onesignal/location/internal/common/LocationPoint;->getLat()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onesignal/user/internal/properties/PropertiesModel;->setLocationLatitude(Ljava/lang/Double;)V

    .line 65
    invoke-virtual {v0}, Lcom/onesignal/location/internal/common/LocationPoint;->getAccuracy()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onesignal/user/internal/properties/PropertiesModel;->setLocationAccuracy(Ljava/lang/Float;)V

    .line 66
    invoke-virtual {v0}, Lcom/onesignal/location/internal/common/LocationPoint;->getBg()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onesignal/user/internal/properties/PropertiesModel;->setLocationBackground(Ljava/lang/Boolean;)V

    .line 67
    invoke-virtual {v0}, Lcom/onesignal/location/internal/common/LocationPoint;->getType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onesignal/user/internal/properties/PropertiesModel;->setLocationType(Ljava/lang/Integer;)V

    .line 68
    invoke-virtual {v0}, Lcom/onesignal/location/internal/common/LocationPoint;->getTimeStamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onesignal/user/internal/properties/PropertiesModel;->setLocationTimestamp(Ljava/lang/Long;)V

    .line 69
    iget-object p1, p0, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->_prefs:Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;

    iget-object v0, p0, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->_time:Lcom/onesignal/core/internal/time/ITime;

    invoke-interface {v0}, Lcom/onesignal/core/internal/time/ITime;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;->setLastLocationTime(J)V

    return-void
.end method


# virtual methods
.method public captureLastLocation()V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->_controller:Lcom/onesignal/location/internal/controller/ILocationController;

    invoke-interface {v0}, Lcom/onesignal/location/internal/controller/ILocationController;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0, v0}, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->capture(Landroid/location/Location;)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->_prefs:Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;

    iget-object v1, p0, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->_time:Lcom/onesignal/core/internal/time/ITime;

    invoke-interface {v1}, Lcom/onesignal/core/internal/time/ITime;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;->setLastLocationTime(J)V

    :goto_0
    return-void
.end method

.method public getLocationCoarse()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->locationCoarse:Z

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationController fireCompleteForLocation with location: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->capture(Landroid/location/Location;)V

    return-void
.end method

.method public setLocationCoarse(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;->locationCoarse:Z

    return-void
.end method
