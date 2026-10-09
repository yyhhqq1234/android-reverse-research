.class public final Lcom/onesignal/location/internal/controller/impl/GmsLocationController;
.super Ljava/lang/Object;
.source "GmsLocationController.kt"

# interfaces
.implements Lcom/onesignal/location/internal/controller/ILocationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/location/internal/controller/impl/GmsLocationController$GoogleApiClientListener;,
        Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationUpdateListener;,
        Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;,
        Lcom/onesignal/location/internal/controller/impl/GmsLocationController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGmsLocationController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GmsLocationController.kt\ncom/onesignal/location/internal/controller/impl/GmsLocationController\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,244:1\n107#2,10:245\n*S KotlinDebug\n*F\n+ 1 GmsLocationController.kt\ncom/onesignal/location/internal/controller/impl/GmsLocationController\n*L\n107#1:245,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 \"2\u00020\u0001:\u0004\"#$%B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0011H\u0002J\u0011\u0010\u001c\u001a\u00020\rH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJ\u0011\u0010\u001e\u001a\u00020\u001aH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJ\u0010\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\tH\u0016J\u0010\u0010!\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onesignal/location/internal/controller/impl/GmsLocationController;",
        "Lcom/onesignal/location/internal/controller/ILocationController;",
        "_applicationService",
        "Lcom/onesignal/core/internal/application/IApplicationService;",
        "_fusedLocationApiWrapper",
        "Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;",
        "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;)V",
        "event",
        "Lcom/onesignal/common/events/EventProducer;",
        "Lcom/onesignal/location/internal/controller/ILocationUpdatedHandler;",
        "googleApiClient",
        "Lcom/onesignal/location/internal/controller/impl/GoogleApiClientCompatProxy;",
        "hasSubscribers",
        "",
        "getHasSubscribers",
        "()Z",
        "lastLocation",
        "Landroid/location/Location;",
        "locationHandlerThread",
        "Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;",
        "locationUpdateListener",
        "Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationUpdateListener;",
        "startStopMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "getLastLocation",
        "setLocationAndFire",
        "",
        "location",
        "start",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "stop",
        "subscribe",
        "handler",
        "unsubscribe",
        "Companion",
        "GoogleApiClientListener",
        "LocationHandlerThread",
        "LocationUpdateListener",
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


# static fields
.field private static final API_FALLBACK_TIME:I

.field public static final Companion:Lcom/onesignal/location/internal/controller/impl/GmsLocationController$Companion;


# instance fields
.field private final _applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

.field private final _fusedLocationApiWrapper:Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;

.field private final event:Lcom/onesignal/common/events/EventProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/common/events/EventProducer<",
            "Lcom/onesignal/location/internal/controller/ILocationUpdatedHandler;",
            ">;"
        }
    .end annotation
.end field

.field private googleApiClient:Lcom/onesignal/location/internal/controller/impl/GoogleApiClientCompatProxy;

.field private lastLocation:Landroid/location/Location;

.field private final locationHandlerThread:Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;

.field private locationUpdateListener:Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationUpdateListener;

.field private final startStopMutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->Companion:Lcom/onesignal/location/internal/controller/impl/GmsLocationController$Companion;

    const/16 v0, 0x7530

    .line 241
    sput v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->API_FALLBACK_TIME:I

    return-void
.end method

.method public constructor <init>(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;)V
    .locals 1

    const-string v0, "_applicationService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_fusedLocationApiWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 31
    iput-object p2, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->_fusedLocationApiWrapper:Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;

    .line 33
    new-instance p1, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;

    invoke-direct {p1}, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;-><init>()V

    iput-object p1, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->locationHandlerThread:Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->startStopMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 35
    new-instance p1, Lcom/onesignal/common/events/EventProducer;

    invoke-direct {p1}, Lcom/onesignal/common/events/EventProducer;-><init>()V

    iput-object p1, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->event:Lcom/onesignal/common/events/EventProducer;

    return-void
.end method

.method public static final synthetic access$getAPI_FALLBACK_TIME$cp()I
    .locals 1

    .line 29
    sget v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->API_FALLBACK_TIME:I

    return v0
.end method

.method public static final synthetic access$getEvent$p(Lcom/onesignal/location/internal/controller/impl/GmsLocationController;)Lcom/onesignal/common/events/EventProducer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->event:Lcom/onesignal/common/events/EventProducer;

    return-object p0
.end method

.method public static final synthetic access$getGoogleApiClient$p(Lcom/onesignal/location/internal/controller/impl/GmsLocationController;)Lcom/onesignal/location/internal/controller/impl/GoogleApiClientCompatProxy;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->googleApiClient:Lcom/onesignal/location/internal/controller/impl/GoogleApiClientCompatProxy;

    return-object p0
.end method

.method public static final synthetic access$getLastLocation$p(Lcom/onesignal/location/internal/controller/impl/GmsLocationController;)Landroid/location/Location;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->lastLocation:Landroid/location/Location;

    return-object p0
.end method

.method public static final synthetic access$getLocationHandlerThread$p(Lcom/onesignal/location/internal/controller/impl/GmsLocationController;)Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->locationHandlerThread:Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationHandlerThread;

    return-object p0
.end method

.method public static final synthetic access$getStartStopMutex$p(Lcom/onesignal/location/internal/controller/impl/GmsLocationController;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->startStopMutex:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$get_applicationService$p(Lcom/onesignal/location/internal/controller/impl/GmsLocationController;)Lcom/onesignal/core/internal/application/IApplicationService;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    return-object p0
.end method

.method public static final synthetic access$get_fusedLocationApiWrapper$p(Lcom/onesignal/location/internal/controller/impl/GmsLocationController;)Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->_fusedLocationApiWrapper:Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;

    return-object p0
.end method

.method public static final synthetic access$setGoogleApiClient$p(Lcom/onesignal/location/internal/controller/impl/GmsLocationController;Lcom/onesignal/location/internal/controller/impl/GoogleApiClientCompatProxy;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->googleApiClient:Lcom/onesignal/location/internal/controller/impl/GoogleApiClientCompatProxy;

    return-void
.end method

.method public static final synthetic access$setLocationAndFire(Lcom/onesignal/location/internal/controller/impl/GmsLocationController;Landroid/location/Location;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->setLocationAndFire(Landroid/location/Location;)V

    return-void
.end method

.method public static final synthetic access$setLocationUpdateListener$p(Lcom/onesignal/location/internal/controller/impl/GmsLocationController;Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationUpdateListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->locationUpdateListener:Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationUpdateListener;

    return-void
.end method

.method private final setLocationAndFire(Landroid/location/Location;)V
    .locals 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GMSLocationController lastLocation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 137
    iput-object p1, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->lastLocation:Landroid/location/Location;

    .line 139
    iget-object v0, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->event:Lcom/onesignal/common/events/EventProducer;

    new-instance v1, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$setLocationAndFire$1;

    invoke-direct {v1, p1}, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$setLocationAndFire$1;-><init>(Landroid/location/Location;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/events/EventProducer;->fire(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public getHasSubscribers()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->event:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0}, Lcom/onesignal/common/events/EventProducer;->getHasSubscribers()Z

    move-result v0

    return v0
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->googleApiClient:Lcom/onesignal/location/internal/controller/impl/GoogleApiClientCompatProxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onesignal/location/internal/controller/impl/GoogleApiClientCompatProxy;->getRealInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->_fusedLocationApiWrapper:Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;

    invoke-interface {v1, v0}, Lcom/onesignal/location/internal/controller/impl/IFusedLocationApiWrapper;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public start(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$start$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$start$1;

    iget v1, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$start$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$start$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$start$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$start$1;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$start$1;-><init>(Lcom/onesignal/location/internal/controller/impl/GmsLocationController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$start$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 44
    iget v2, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$start$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$start$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 103
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 46
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 48
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$start$2;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v2, p1, v6}, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$start$2;-><init>(Lcom/onesignal/location/internal/controller/impl/GmsLocationController;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v2, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$start$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$start$1;->label:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, v2

    .line 103
    :goto_1
    iget-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public stop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$stop$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$stop$1;

    iget v1, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$stop$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$stop$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$stop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$stop$1;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$stop$1;-><init>(Lcom/onesignal/location/internal/controller/impl/GmsLocationController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$stop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 106
    iget v2, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$stop$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$stop$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$stop$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 120
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 107
    iget-object p1, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->startStopMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 250
    iput-object p0, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$stop$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$stop$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$stop$1;->label:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    .line 108
    :goto_1
    :try_start_0
    iget-object p1, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->locationUpdateListener:Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationUpdateListener;

    if-eqz p1, :cond_4

    .line 109
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationUpdateListener;->close()V

    .line 110
    iput-object v4, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->locationUpdateListener:Lcom/onesignal/location/internal/controller/impl/GmsLocationController$LocationUpdateListener;

    .line 113
    :cond_4
    iget-object p1, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->googleApiClient:Lcom/onesignal/location/internal/controller/impl/GoogleApiClientCompatProxy;

    if-eqz p1, :cond_5

    .line 114
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onesignal/location/internal/controller/impl/GoogleApiClientCompatProxy;->disconnect()V

    .line 115
    iput-object v4, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->googleApiClient:Lcom/onesignal/location/internal/controller/impl/GoogleApiClientCompatProxy;

    .line 118
    :cond_5
    iput-object v4, v0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->lastLocation:Landroid/location/Location;

    .line 119
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public subscribe(Lcom/onesignal/location/internal/controller/ILocationUpdatedHandler;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->event:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/events/EventProducer;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic subscribe(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/onesignal/location/internal/controller/ILocationUpdatedHandler;

    invoke-virtual {p0, p1}, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->subscribe(Lcom/onesignal/location/internal/controller/ILocationUpdatedHandler;)V

    return-void
.end method

.method public unsubscribe(Lcom/onesignal/location/internal/controller/ILocationUpdatedHandler;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->event:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/events/EventProducer;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic unsubscribe(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/onesignal/location/internal/controller/ILocationUpdatedHandler;

    invoke-virtual {p0, p1}, Lcom/onesignal/location/internal/controller/impl/GmsLocationController;->unsubscribe(Lcom/onesignal/location/internal/controller/ILocationUpdatedHandler;)V

    return-void
.end method
