.class final Lcom/onesignal/location/LocationModule$register$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LocationModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/location/LocationModule;->register(Lcom/onesignal/common/services/ServiceBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onesignal/common/services/IServiceProvider;",
        "Lcom/onesignal/location/internal/controller/ILocationController;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onesignal/location/internal/controller/ILocationController;",
        "it",
        "Lcom/onesignal/common/services/IServiceProvider;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onesignal/location/LocationModule$register$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onesignal/location/LocationModule$register$1;

    invoke-direct {v0}, Lcom/onesignal/location/LocationModule$register$1;-><init>()V

    sput-object v0, Lcom/onesignal/location/LocationModule$register$1;->INSTANCE:Lcom/onesignal/location/LocationModule$register$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onesignal/common/services/IServiceProvider;)Lcom/onesignal/location/internal/controller/ILocationController;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-class v0, Lcom/onesignal/core/internal/device/IDeviceService;

    invoke-interface {p1, v0}, Lcom/onesignal/common/services/IServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/core/internal/device/IDeviceService;

    .line 34
    invoke-interface {v0}, Lcom/onesignal/core/internal/device/IDeviceService;->isAndroidDeviceType()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onesignal/location/internal/common/LocationUtils;->INSTANCE:Lcom/onesignal/location/internal/common/LocationUtils;

    invoke-virtual {v1}, Lcom/onesignal/location/internal/common/LocationUtils;->hasGMSLocationLibrary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    new-instance v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;

    .line 36
    const-class v1, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {p1, v1}, Lcom/onesignal/common/services/IServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/core/internal/application/IApplicationService;

    .line 37
    const-class v2, Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;

    invoke-interface {p1, v2}, Lcom/onesignal/common/services/IServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;

    .line 35
    invoke-direct {v0, v1, p1}, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;-><init>(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;)V

    check-cast v0, Lcom/onesignal/location/internal/controller/ILocationController;

    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {v0}, Lcom/onesignal/core/internal/device/IDeviceService;->isHuaweiDeviceType()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onesignal/location/internal/common/LocationUtils;->INSTANCE:Lcom/onesignal/location/internal/common/LocationUtils;

    invoke-virtual {v0}, Lcom/onesignal/location/internal/common/LocationUtils;->hasHMSLocationLibrary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    new-instance v0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController;

    const-class v1, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {p1, v1}, Lcom/onesignal/common/services/IServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-direct {v0, p1}, Lcom/onesignal/location/internal/controller/impl/HmsLocationController;-><init>(Lcom/onesignal/core/internal/application/IApplicationService;)V

    check-cast v0, Lcom/onesignal/location/internal/controller/ILocationController;

    goto :goto_0

    .line 42
    :cond_1
    new-instance p1, Lcom/onesignal/location/internal/controller/impl/NullLocationController;

    invoke-direct {p1}, Lcom/onesignal/location/internal/controller/impl/NullLocationController;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/onesignal/location/internal/controller/ILocationController;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Lcom/onesignal/common/services/IServiceProvider;

    invoke-virtual {p0, p1}, Lcom/onesignal/location/LocationModule$register$1;->invoke(Lcom/onesignal/common/services/IServiceProvider;)Lcom/onesignal/location/internal/controller/ILocationController;

    move-result-object p1

    return-object p1
.end method
