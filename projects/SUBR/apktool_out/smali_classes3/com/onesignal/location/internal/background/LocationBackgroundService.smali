.class public final Lcom/onesignal/location/internal/background/LocationBackgroundService;
.super Ljava/lang/Object;
.source "LocationBackgroundService.kt"

# interfaces
.implements Lcom/onesignal/core/internal/background/IBackgroundService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0011\u0010\u0011\u001a\u00020\u0012H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onesignal/location/internal/background/LocationBackgroundService;",
        "Lcom/onesignal/core/internal/background/IBackgroundService;",
        "_applicationService",
        "Lcom/onesignal/core/internal/application/IApplicationService;",
        "_locationManager",
        "Lcom/onesignal/location/ILocationManager;",
        "_prefs",
        "Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;",
        "_capturer",
        "Lcom/onesignal/location/internal/capture/ILocationCapturer;",
        "_time",
        "Lcom/onesignal/core/internal/time/ITime;",
        "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/location/ILocationManager;Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;Lcom/onesignal/location/internal/capture/ILocationCapturer;Lcom/onesignal/core/internal/time/ITime;)V",
        "scheduleBackgroundRunIn",
        "",
        "getScheduleBackgroundRunIn",
        "()Ljava/lang/Long;",
        "backgroundRun",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.field private final _capturer:Lcom/onesignal/location/internal/capture/ILocationCapturer;

.field private final _locationManager:Lcom/onesignal/location/ILocationManager;

.field private final _prefs:Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;

.field private final _time:Lcom/onesignal/core/internal/time/ITime;


# direct methods
.method public constructor <init>(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/location/ILocationManager;Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;Lcom/onesignal/location/internal/capture/ILocationCapturer;Lcom/onesignal/core/internal/time/ITime;)V
    .locals 1

    const-string v0, "_applicationService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_locationManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_prefs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_capturer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_time"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/onesignal/location/internal/background/LocationBackgroundService;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 15
    iput-object p2, p0, Lcom/onesignal/location/internal/background/LocationBackgroundService;->_locationManager:Lcom/onesignal/location/ILocationManager;

    .line 16
    iput-object p3, p0, Lcom/onesignal/location/internal/background/LocationBackgroundService;->_prefs:Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;

    .line 17
    iput-object p4, p0, Lcom/onesignal/location/internal/background/LocationBackgroundService;->_capturer:Lcom/onesignal/location/internal/capture/ILocationCapturer;

    .line 18
    iput-object p5, p0, Lcom/onesignal/location/internal/background/LocationBackgroundService;->_time:Lcom/onesignal/core/internal/time/ITime;

    return-void
.end method


# virtual methods
.method public backgroundRun(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 43
    iget-object p1, p0, Lcom/onesignal/location/internal/background/LocationBackgroundService;->_capturer:Lcom/onesignal/location/internal/capture/ILocationCapturer;

    invoke-interface {p1}, Lcom/onesignal/location/internal/capture/ILocationCapturer;->captureLastLocation()V

    .line 44
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getScheduleBackgroundRunIn()Ljava/lang/Long;
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/onesignal/location/internal/background/LocationBackgroundService;->_locationManager:Lcom/onesignal/location/ILocationManager;

    invoke-interface {v0}, Lcom/onesignal/location/ILocationManager;->isShared()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "LocationController scheduleUpdate not possible, location shared not enabled"

    .line 23
    invoke-static {v0, v2, v1, v2}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v2

    .line 27
    :cond_0
    sget-object v0, Lcom/onesignal/location/internal/common/LocationUtils;->INSTANCE:Lcom/onesignal/location/internal/common/LocationUtils;

    iget-object v3, p0, Lcom/onesignal/location/internal/background/LocationBackgroundService;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v3}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onesignal/location/internal/common/LocationUtils;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LocationController scheduleUpdate not possible, location permission not enabled"

    .line 28
    invoke-static {v0, v2, v1, v2}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v2

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/onesignal/location/internal/background/LocationBackgroundService;->_time:Lcom/onesignal/core/internal/time/ITime;

    invoke-interface {v0}, Lcom/onesignal/core/internal/time/ITime;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/onesignal/location/internal/background/LocationBackgroundService;->_prefs:Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;

    invoke-interface {v2}, Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;->getLastLocationTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    sub-long/2addr v2, v0

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
