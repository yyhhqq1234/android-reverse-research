.class public final Lcom/onesignal/location/LocationModule;
.super Ljava/lang/Object;
.source "LocationModule.kt"

# interfaces
.implements Lcom/onesignal/common/modules/IModule;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocationModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocationModule.kt\ncom/onesignal/location/LocationModule\n+ 2 ServiceBuilder.kt\ncom/onesignal/common/services/ServiceBuilder\n+ 3 ServiceRegistration.kt\ncom/onesignal/common/services/ServiceRegistration\n*L\n1#1,55:1\n11#2:56\n11#2:59\n11#2:62\n11#2:64\n11#2:66\n11#2:68\n15#3:57\n15#3:58\n15#3:60\n15#3:61\n15#3:63\n15#3:65\n15#3:67\n15#3:69\n15#3:70\n*S KotlinDebug\n*F\n+ 1 LocationModule.kt\ncom/onesignal/location/LocationModule\n*L\n26#1:56\n30#1:59\n47#1:62\n48#1:64\n49#1:66\n50#1:68\n27#1:57\n28#1:58\n30#1:60\n45#1:61\n47#1:63\n48#1:65\n49#1:67\n51#1:69\n52#1:70\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onesignal/location/LocationModule;",
        "Lcom/onesignal/common/modules/IModule;",
        "()V",
        "register",
        "",
        "builder",
        "Lcom/onesignal/common/services/ServiceBuilder;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Lcom/onesignal/common/services/ServiceBuilder;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    const-class v0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 57
    const-class v1, Lcom/onesignal/location/internal/permissions/LocationPermissionController;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 58
    const-class v1, Lcom/onesignal/core/internal/startup/IStartableService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 59
    const-class v0, Lcom/onesignal/location/internal/controller/impl/FusedLocationApiWrapperImpl;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 60
    const-class v1, Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 31
    sget-object v0, Lcom/onesignal/location/LocationModule$register$1;->INSTANCE:Lcom/onesignal/location/LocationModule$register$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Lkotlin/jvm/functions/Function1;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 61
    const-class v1, Lcom/onesignal/location/internal/controller/ILocationController;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 62
    const-class v0, Lcom/onesignal/location/internal/preferences/impl/LocationPreferencesService;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 63
    const-class v1, Lcom/onesignal/location/internal/preferences/ILocationPreferencesService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 64
    const-class v0, Lcom/onesignal/location/internal/capture/impl/LocationCapturer;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 65
    const-class v1, Lcom/onesignal/location/internal/capture/ILocationCapturer;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 66
    const-class v0, Lcom/onesignal/location/internal/background/LocationBackgroundService;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 67
    const-class v1, Lcom/onesignal/core/internal/background/IBackgroundService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 68
    const-class v0, Lcom/onesignal/location/internal/LocationManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object p1

    .line 69
    const-class v0, Lcom/onesignal/location/ILocationManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object p1

    .line 70
    const-class v0, Lcom/onesignal/core/internal/startup/IStartableService;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    return-void
.end method
