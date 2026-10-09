.class public final Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;
.super Lcom/huawei/hms/location/LocationCallback;
.source "HmsLocationController.kt"

# interfaces
.implements Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/location/internal/controller/impl/HmsLocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationUpdateListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000cH\u0016J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u000eH\u0016J\u0008\u0010\u0015\u001a\u00020\u000eH\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;",
        "Lcom/huawei/hms/location/LocationCallback;",
        "Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;",
        "Ljava/io/Closeable;",
        "_parent",
        "Lcom/onesignal/location/internal/controller/impl/HmsLocationController;",
        "_applicationService",
        "Lcom/onesignal/core/internal/application/IApplicationService;",
        "huaweiFusedLocationProviderClient",
        "Lcom/huawei/hms/location/FusedLocationProviderClient;",
        "(Lcom/onesignal/location/internal/controller/impl/HmsLocationController;Lcom/onesignal/core/internal/application/IApplicationService;Lcom/huawei/hms/location/FusedLocationProviderClient;)V",
        "hasExistingRequest",
        "",
        "close",
        "",
        "onFocus",
        "firedOnSubscribe",
        "onLocationResult",
        "locationResult",
        "Lcom/huawei/hms/location/LocationResult;",
        "onUnfocused",
        "refreshRequest",
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

.field private final _parent:Lcom/onesignal/location/internal/controller/impl/HmsLocationController;

.field private hasExistingRequest:Z

.field private final huaweiFusedLocationProviderClient:Lcom/huawei/hms/location/FusedLocationProviderClient;


# direct methods
.method public constructor <init>(Lcom/onesignal/location/internal/controller/impl/HmsLocationController;Lcom/onesignal/core/internal/application/IApplicationService;Lcom/huawei/hms/location/FusedLocationProviderClient;)V
    .locals 1

    const-string v0, "_parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_applicationService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "huaweiFusedLocationProviderClient"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/huawei/hms/location/LocationCallback;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;->_parent:Lcom/onesignal/location/internal/controller/impl/HmsLocationController;

    .line 154
    iput-object p2, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 155
    iput-object p3, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;->huaweiFusedLocationProviderClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    .line 160
    move-object p1, p0

    check-cast p1, Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;

    invoke-interface {p2, p1}, Lcom/onesignal/core/internal/application/IApplicationService;->addApplicationLifecycleHandler(Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;)V

    .line 161
    invoke-direct {p0}, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;->refreshRequest()V

    return-void
.end method

.method private final refreshRequest()V
    .locals 5

    .line 188
    iget-boolean v0, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;->hasExistingRequest:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;->huaweiFusedLocationProviderClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    move-object v1, p0

    check-cast v1, Lcom/huawei/hms/location/LocationCallback;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/huawei/hms/location/LocationCallback;)Lcom/huawei/hmf/tasks/Task;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v0}, Lcom/onesignal/core/internal/application/IApplicationService;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x41eb0

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x8b290

    .line 198
    :goto_0
    invoke-static {}, Lcom/huawei/hms/location/LocationRequest;->create()Lcom/huawei/hms/location/LocationRequest;

    move-result-object v2

    .line 199
    invoke-virtual {v2, v0, v1}, Lcom/huawei/hms/location/LocationRequest;->setFastestInterval(J)Lcom/huawei/hms/location/LocationRequest;

    move-result-object v2

    .line 200
    invoke-virtual {v2, v0, v1}, Lcom/huawei/hms/location/LocationRequest;->setInterval(J)Lcom/huawei/hms/location/LocationRequest;

    move-result-object v2

    long-to-double v0, v0

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double v0, v0, v3

    double-to-long v0, v0

    .line 201
    invoke-virtual {v2, v0, v1}, Lcom/huawei/hms/location/LocationRequest;->setMaxWaitTime(J)Lcom/huawei/hms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x66

    .line 202
    invoke-virtual {v0, v1}, Lcom/huawei/hms/location/LocationRequest;->setPriority(I)Lcom/huawei/hms/location/LocationRequest;

    move-result-object v0

    const-string v1, "HMSLocationController Huawei LocationServices requestLocationUpdates!"

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 203
    invoke-static {v1, v3, v2, v3}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 204
    iget-object v1, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;->huaweiFusedLocationProviderClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    .line 206
    move-object v2, p0

    check-cast v2, Lcom/huawei/hms/location/LocationCallback;

    .line 207
    iget-object v3, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;->_parent:Lcom/onesignal/location/internal/controller/impl/HmsLocationController;

    invoke-static {v3}, Lcom/onesignal/location/internal/controller/impl/HmsLocationController;->access$getLocationHandlerThread$p(Lcom/onesignal/location/internal/controller/impl/HmsLocationController;)Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationHandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 204
    invoke-virtual {v1, v0, v2, v3}, Lcom/huawei/hms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/huawei/hms/location/LocationRequest;Lcom/huawei/hms/location/LocationCallback;Landroid/os/Looper;)Lcom/huawei/hmf/tasks/Task;

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;->hasExistingRequest:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    move-object v1, p0

    check-cast v1, Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;

    invoke-interface {v0, v1}, Lcom/onesignal/core/internal/application/IApplicationService;->removeApplicationLifecycleHandler(Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;)V

    .line 177
    iget-boolean v0, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;->hasExistingRequest:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;->huaweiFusedLocationProviderClient:Lcom/huawei/hms/location/FusedLocationProviderClient;

    move-object v1, p0

    check-cast v1, Lcom/huawei/hms/location/LocationCallback;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/huawei/hms/location/LocationCallback;)Lcom/huawei/hmf/tasks/Task;

    :cond_0
    return-void
.end method

.method public onFocus(Z)V
    .locals 1

    .line 165
    sget-object p1, Lcom/onesignal/debug/LogLevel;->DEBUG:Lcom/onesignal/debug/LogLevel;

    const-string v0, "LocationUpdateListener.onFocus()"

    invoke-static {p1, v0}, Lcom/onesignal/debug/internal/logging/Logging;->log(Lcom/onesignal/debug/LogLevel;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;->refreshRequest()V

    return-void
.end method

.method public onLocationResult(Lcom/huawei/hms/location/LocationResult;)V
    .locals 3

    const-string v0, "locationResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HMSLocationController onLocationResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;->_parent:Lcom/onesignal/location/internal/controller/impl/HmsLocationController;

    invoke-virtual {p1}, Lcom/huawei/hms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onesignal/location/internal/controller/impl/HmsLocationController;->access$setLastLocation$p(Lcom/onesignal/location/internal/controller/impl/HmsLocationController;Landroid/location/Location;)V

    return-void
.end method

.method public onUnfocused()V
    .locals 2

    .line 170
    sget-object v0, Lcom/onesignal/debug/LogLevel;->DEBUG:Lcom/onesignal/debug/LogLevel;

    const-string v1, "LocationUpdateListener.onUnfocused()"

    invoke-static {v0, v1}, Lcom/onesignal/debug/internal/logging/Logging;->log(Lcom/onesignal/debug/LogLevel;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$LocationUpdateListener;->refreshRequest()V

    return-void
.end method
