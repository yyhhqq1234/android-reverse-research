.class public final Lcom/onesignal/location/internal/permissions/LocationPermissionController;
.super Ljava/lang/Object;
.source "LocationPermissionController.kt"

# interfaces
.implements Lcom/onesignal/core/internal/permissions/IRequestPermissionService$PermissionCallback;
.implements Lcom/onesignal/core/internal/startup/IStartableService;
.implements Lcom/onesignal/common/events/IEventNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/location/internal/permissions/LocationPermissionController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/onesignal/core/internal/permissions/IRequestPermissionService$PermissionCallback;",
        "Lcom/onesignal/core/internal/startup/IStartableService;",
        "Lcom/onesignal/common/events/IEventNotifier<",
        "Lcom/onesignal/location/internal/permissions/ILocationPermissionChangedHandler;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000  2\u00020\u00012\u00020\u00022\u0008\u0012\u0004\u0012\u00020\u00040\u0003:\u0001 B\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u000fH\u0016J!\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u000bH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aJ\u0008\u0010\u001b\u001a\u00020\u000fH\u0002J\u0008\u0010\u001c\u001a\u00020\u0015H\u0016J\u0010\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0004H\u0016J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0004H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onesignal/location/internal/permissions/LocationPermissionController;",
        "Lcom/onesignal/core/internal/permissions/IRequestPermissionService$PermissionCallback;",
        "Lcom/onesignal/core/internal/startup/IStartableService;",
        "Lcom/onesignal/common/events/IEventNotifier;",
        "Lcom/onesignal/location/internal/permissions/ILocationPermissionChangedHandler;",
        "_requestPermission",
        "Lcom/onesignal/core/internal/permissions/IRequestPermissionService;",
        "_applicationService",
        "Lcom/onesignal/core/internal/application/IApplicationService;",
        "(Lcom/onesignal/core/internal/permissions/IRequestPermissionService;Lcom/onesignal/core/internal/application/IApplicationService;)V",
        "currPermission",
        "",
        "events",
        "Lcom/onesignal/common/events/EventProducer;",
        "hasSubscribers",
        "",
        "getHasSubscribers",
        "()Z",
        "waiter",
        "Lcom/onesignal/common/threading/WaiterWithValue;",
        "onAccept",
        "",
        "onReject",
        "fallbackToSettings",
        "prompt",
        "androidPermissionString",
        "(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "showFallbackAlertDialog",
        "start",
        "subscribe",
        "handler",
        "unsubscribe",
        "Companion",
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
.field public static final Companion:Lcom/onesignal/location/internal/permissions/LocationPermissionController$Companion;

.field private static final PERMISSION_TYPE:Ljava/lang/String; = "LOCATION"


# instance fields
.field private final _applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

.field private final _requestPermission:Lcom/onesignal/core/internal/permissions/IRequestPermissionService;

.field private currPermission:Ljava/lang/String;

.field private final events:Lcom/onesignal/common/events/EventProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/common/events/EventProducer<",
            "Lcom/onesignal/location/internal/permissions/ILocationPermissionChangedHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final waiter:Lcom/onesignal/common/threading/WaiterWithValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/common/threading/WaiterWithValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onesignal/location/internal/permissions/LocationPermissionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/location/internal/permissions/LocationPermissionController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->Companion:Lcom/onesignal/location/internal/permissions/LocationPermissionController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onesignal/core/internal/permissions/IRequestPermissionService;Lcom/onesignal/core/internal/application/IApplicationService;)V
    .locals 1

    const-string v0, "_requestPermission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_applicationService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->_requestPermission:Lcom/onesignal/core/internal/permissions/IRequestPermissionService;

    .line 47
    iput-object p2, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 55
    new-instance p1, Lcom/onesignal/common/threading/WaiterWithValue;

    invoke-direct {p1}, Lcom/onesignal/common/threading/WaiterWithValue;-><init>()V

    iput-object p1, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->waiter:Lcom/onesignal/common/threading/WaiterWithValue;

    .line 56
    new-instance p1, Lcom/onesignal/common/events/EventProducer;

    invoke-direct {p1}, Lcom/onesignal/common/events/EventProducer;-><init>()V

    iput-object p1, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->events:Lcom/onesignal/common/events/EventProducer;

    const-string p1, ""

    .line 57
    iput-object p1, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->currPermission:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCurrPermission$p(Lcom/onesignal/location/internal/permissions/LocationPermissionController;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->currPermission:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getEvents$p(Lcom/onesignal/location/internal/permissions/LocationPermissionController;)Lcom/onesignal/common/events/EventProducer;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->events:Lcom/onesignal/common/events/EventProducer;

    return-object p0
.end method

.method public static final synthetic access$getWaiter$p(Lcom/onesignal/location/internal/permissions/LocationPermissionController;)Lcom/onesignal/common/threading/WaiterWithValue;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->waiter:Lcom/onesignal/common/threading/WaiterWithValue;

    return-object p0
.end method

.method public static final synthetic access$get_applicationService$p(Lcom/onesignal/location/internal/permissions/LocationPermissionController;)Lcom/onesignal/core/internal/application/IApplicationService;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    return-object p0
.end method

.method private final showFallbackAlertDialog()Z
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v0}, Lcom/onesignal/core/internal/application/IApplicationService;->getCurrent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 101
    :cond_0
    sget-object v1, Lcom/onesignal/core/internal/permissions/AlertDialogPrepromptForAndroidSettings;->INSTANCE:Lcom/onesignal/core/internal/permissions/AlertDialogPrepromptForAndroidSettings;

    .line 103
    sget v2, Lcom/onesignal/location/R$string;->location_permission_name_for_title:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "activity.getString(R.str\u2026ermission_name_for_title)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget v3, Lcom/onesignal/location/R$string;->location_permission_settings_message:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "activity.getString(R.str\u2026mission_settings_message)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v4, Lcom/onesignal/location/internal/permissions/LocationPermissionController$showFallbackAlertDialog$1;

    invoke-direct {v4, p0, v0}, Lcom/onesignal/location/internal/permissions/LocationPermissionController$showFallbackAlertDialog$1;-><init>(Lcom/onesignal/location/internal/permissions/LocationPermissionController;Landroid/app/Activity;)V

    check-cast v4, Lcom/onesignal/core/internal/permissions/AlertDialogPrepromptForAndroidSettings$Callback;

    .line 101
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/onesignal/core/internal/permissions/AlertDialogPrepromptForAndroidSettings;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/core/internal/permissions/AlertDialogPrepromptForAndroidSettings$Callback;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getHasSubscribers()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->events:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0}, Lcom/onesignal/common/events/EventProducer;->getHasSubscribers()Z

    move-result v0

    return v0
.end method

.method public onAccept()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->waiter:Lcom/onesignal/common/threading/WaiterWithValue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/common/threading/WaiterWithValue;->wake(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->events:Lcom/onesignal/common/events/EventProducer;

    sget-object v1, Lcom/onesignal/location/internal/permissions/LocationPermissionController$onAccept$1;->INSTANCE:Lcom/onesignal/location/internal/permissions/LocationPermissionController$onAccept$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/events/EventProducer;->fire(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onReject(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->showFallbackAlertDialog()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->waiter:Lcom/onesignal/common/threading/WaiterWithValue;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onesignal/common/threading/WaiterWithValue;->wake(Ljava/lang/Object;)V

    .line 95
    iget-object p1, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->events:Lcom/onesignal/common/events/EventProducer;

    sget-object v0, Lcom/onesignal/location/internal/permissions/LocationPermissionController$onReject$1;->INSTANCE:Lcom/onesignal/location/internal/permissions/LocationPermissionController$onReject$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/events/EventProducer;->fire(Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method

.method public final prompt(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 67
    iput-object p2, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->currPermission:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->_requestPermission:Lcom/onesignal/core/internal/permissions/IRequestPermissionService;

    const-string v1, "LOCATION"

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 68
    invoke-interface {v0, p1, v1, p2, v2}, Lcom/onesignal/core/internal/permissions/IRequestPermissionService;->startPrompt(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 77
    iget-object p1, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->waiter:Lcom/onesignal/common/threading/WaiterWithValue;

    invoke-virtual {p1, p3}, Lcom/onesignal/common/threading/WaiterWithValue;->waitForWake(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public start()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->_requestPermission:Lcom/onesignal/core/internal/permissions/IRequestPermissionService;

    const-string v1, "LOCATION"

    move-object v2, p0

    check-cast v2, Lcom/onesignal/core/internal/permissions/IRequestPermissionService$PermissionCallback;

    invoke-interface {v0, v1, v2}, Lcom/onesignal/core/internal/permissions/IRequestPermissionService;->registerAsCallback(Ljava/lang/String;Lcom/onesignal/core/internal/permissions/IRequestPermissionService$PermissionCallback;)V

    return-void
.end method

.method public subscribe(Lcom/onesignal/location/internal/permissions/ILocationPermissionChangedHandler;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->events:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/events/EventProducer;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic subscribe(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/onesignal/location/internal/permissions/ILocationPermissionChangedHandler;

    invoke-virtual {p0, p1}, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->subscribe(Lcom/onesignal/location/internal/permissions/ILocationPermissionChangedHandler;)V

    return-void
.end method

.method public unsubscribe(Lcom/onesignal/location/internal/permissions/ILocationPermissionChangedHandler;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->events:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/events/EventProducer;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic unsubscribe(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/onesignal/location/internal/permissions/ILocationPermissionChangedHandler;

    invoke-virtual {p0, p1}, Lcom/onesignal/location/internal/permissions/LocationPermissionController;->unsubscribe(Lcom/onesignal/location/internal/permissions/ILocationPermissionChangedHandler;)V

    return-void
.end method
