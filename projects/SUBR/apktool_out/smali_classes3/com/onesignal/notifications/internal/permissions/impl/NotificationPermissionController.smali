.class public final Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;
.super Ljava/lang/Object;
.source "NotificationPermissionController.kt"

# interfaces
.implements Lcom/onesignal/core/internal/permissions/IRequestPermissionService$PermissionCallback;
.implements Lcom/onesignal/notifications/internal/permissions/INotificationPermissionController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000e\u0008\u0000\u0018\u0000 02\u00020\u00012\u00020\u0002:\u00010B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010!\u001a\u00020\u000eH\u0002J\u0008\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u000eH\u0016J\u0010\u0010&\u001a\u00020#2\u0006\u0010\u0013\u001a\u00020\u000eH\u0002J\u0011\u0010\'\u001a\u00020#H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(J\u0019\u0010)\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000eH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010*J\u0008\u0010+\u001a\u00020#H\u0002J\u0008\u0010,\u001a\u00020\u000eH\u0002J\u0010\u0010-\u001a\u00020#2\u0006\u0010.\u001a\u00020\u0016H\u0016J\u0010\u0010/\u001a\u00020#2\u0006\u0010.\u001a\u00020\u0016H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0010R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001d\u001a\u00020\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0010R\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0 X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00061"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;",
        "Lcom/onesignal/core/internal/permissions/IRequestPermissionService$PermissionCallback;",
        "Lcom/onesignal/notifications/internal/permissions/INotificationPermissionController;",
        "_application",
        "Lcom/onesignal/core/internal/application/IApplicationService;",
        "_requestPermission",
        "Lcom/onesignal/core/internal/permissions/IRequestPermissionService;",
        "_applicationService",
        "_preferenceService",
        "Lcom/onesignal/core/internal/preferences/IPreferencesService;",
        "_configModelStore",
        "Lcom/onesignal/core/internal/config/ConfigModelStore;",
        "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/permissions/IRequestPermissionService;Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/preferences/IPreferencesService;Lcom/onesignal/core/internal/config/ConfigModelStore;)V",
        "canRequestPermission",
        "",
        "getCanRequestPermission",
        "()Z",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "enabled",
        "events",
        "Lcom/onesignal/common/events/EventProducer;",
        "Lcom/onesignal/notifications/internal/permissions/INotificationPermissionChangedHandler;",
        "hasSubscribers",
        "getHasSubscribers",
        "pollingWaitInterval",
        "",
        "pollingWaiter",
        "Lcom/onesignal/common/threading/Waiter;",
        "supportsNativePrompt",
        "getSupportsNativePrompt",
        "waiter",
        "Lcom/onesignal/common/threading/WaiterWithValue;",
        "notificationsEnabled",
        "onAccept",
        "",
        "onReject",
        "fallbackToSettings",
        "permissionPromptCompleted",
        "pollForPermission",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "prompt",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerPollingLifecycleListener",
        "showFallbackAlertDialog",
        "subscribe",
        "handler",
        "unsubscribe",
        "Companion",
        "com.onesignal.notifications"
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
.field private static final ANDROID_PERMISSION_STRING:Ljava/lang/String; = "android.permission.POST_NOTIFICATIONS"

.field public static final Companion:Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$Companion;

.field private static final PERMISSION_TYPE:Ljava/lang/String; = "NOTIFICATION"


# instance fields
.field private final _application:Lcom/onesignal/core/internal/application/IApplicationService;

.field private final _applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

.field private final _configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

.field private final _preferenceService:Lcom/onesignal/core/internal/preferences/IPreferencesService;

.field private final _requestPermission:Lcom/onesignal/core/internal/permissions/IRequestPermissionService;

.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private enabled:Z

.field private final events:Lcom/onesignal/common/events/EventProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/common/events/EventProducer<",
            "Lcom/onesignal/notifications/internal/permissions/INotificationPermissionChangedHandler;",
            ">;"
        }
    .end annotation
.end field

.field private pollingWaitInterval:J

.field private final pollingWaiter:Lcom/onesignal/common/threading/Waiter;

.field private final supportsNativePrompt:Z

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

    new-instance v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->Companion:Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/permissions/IRequestPermissionService;Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/preferences/IPreferencesService;Lcom/onesignal/core/internal/config/ConfigModelStore;)V
    .locals 6

    const-string v0, "_application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_requestPermission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_applicationService"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_preferenceService"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_configModelStore"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->_application:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 56
    iput-object p2, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->_requestPermission:Lcom/onesignal/core/internal/permissions/IRequestPermissionService;

    .line 57
    iput-object p3, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 58
    iput-object p4, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->_preferenceService:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    .line 59
    iput-object p5, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    .line 62
    new-instance p3, Lcom/onesignal/common/threading/WaiterWithValue;

    invoke-direct {p3}, Lcom/onesignal/common/threading/WaiterWithValue;-><init>()V

    iput-object p3, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->waiter:Lcom/onesignal/common/threading/WaiterWithValue;

    .line 63
    new-instance p3, Lcom/onesignal/common/threading/Waiter;

    invoke-direct {p3}, Lcom/onesignal/common/threading/Waiter;-><init>()V

    iput-object p3, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->pollingWaiter:Lcom/onesignal/common/threading/Waiter;

    .line 65
    new-instance p3, Lcom/onesignal/common/events/EventProducer;

    invoke-direct {p3}, Lcom/onesignal/common/events/EventProducer;-><init>()V

    iput-object p3, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->events:Lcom/onesignal/common/events/EventProducer;

    const-string p3, "NotificationPermissionController"

    .line 67
    invoke-static {p3}, Lkotlinx/coroutines/ThreadPoolDispatcherKt;->newSingleThreadContext(Ljava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object p3

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 78
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->notificationsEnabled()Z

    move-result p3

    iput-boolean p3, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->enabled:Z

    const-string p3, "NOTIFICATION"

    .line 79
    move-object p4, p0

    check-cast p4, Lcom/onesignal/core/internal/permissions/IRequestPermissionService$PermissionCallback;

    invoke-interface {p2, p3, p4}, Lcom/onesignal/core/internal/permissions/IRequestPermissionService;->registerAsCallback(Ljava/lang/String;Lcom/onesignal/core/internal/permissions/IRequestPermissionService$PermissionCallback;)V

    .line 80
    invoke-virtual {p5}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object p2

    check-cast p2, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {p2}, Lcom/onesignal/core/internal/config/ConfigModel;->getBackgroundFetchNotificationPermissionInterval()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->pollingWaitInterval:J

    .line 81
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->registerPollingLifecycleListener()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 82
    new-instance p2, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$1;-><init>(Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 120
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x20

    if-le p2, p3, :cond_0

    .line 121
    sget-object p2, Lcom/onesignal/common/AndroidUtils;->INSTANCE:Lcom/onesignal/common/AndroidUtils;

    invoke-interface {p1}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onesignal/common/AndroidUtils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result p1

    if-le p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 120
    :goto_0
    iput-boolean p1, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->supportsNativePrompt:Z

    return-void
.end method

.method public static final synthetic access$getPollingWaiter$p(Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;)Lcom/onesignal/common/threading/Waiter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->pollingWaiter:Lcom/onesignal/common/threading/Waiter;

    return-object p0
.end method

.method public static final synthetic access$get_applicationService$p(Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;)Lcom/onesignal/core/internal/application/IApplicationService;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    return-object p0
.end method

.method public static final synthetic access$get_configModelStore$p(Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;)Lcom/onesignal/core/internal/config/ConfigModelStore;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    return-object p0
.end method

.method public static final synthetic access$permissionPromptCompleted(Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->permissionPromptCompleted(Z)V

    return-void
.end method

.method public static final synthetic access$pollForPermission(Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->pollForPermission(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setPollingWaitInterval$p(Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->pollingWaitInterval:J

    return-void
.end method

.method private final notificationsEnabled()Z
    .locals 4

    .line 228
    sget-object v0, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    iget-object v1, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->_application:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v1}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->areNotificationsEnabled$default(Lcom/onesignal/notifications/internal/common/NotificationHelper;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final permissionPromptCompleted(Z)V
    .locals 2

    .line 124
    iput-boolean p1, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->enabled:Z

    .line 125
    iget-object v0, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->waiter:Lcom/onesignal/common/threading/WaiterWithValue;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/common/threading/WaiterWithValue;->wake(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->events:Lcom/onesignal/common/events/EventProducer;

    new-instance v1, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$permissionPromptCompleted$1;

    invoke-direct {v1, p1}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$permissionPromptCompleted$1;-><init>(Z)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/events/EventProducer;->fire(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final pollForPermission(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p1, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$pollForPermission$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$pollForPermission$1;

    iget v1, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$pollForPermission$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$pollForPermission$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$pollForPermission$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$pollForPermission$1;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$pollForPermission$1;-><init>(Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$pollForPermission$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 105
    iget v2, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$pollForPermission$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$pollForPermission$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 112
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 107
    :cond_3
    :goto_1
    invoke-direct {v2}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->notificationsEnabled()Z

    move-result p1

    .line 108
    iget-boolean v4, v2, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->enabled:Z

    if-eq v4, p1, :cond_4

    .line 109
    iput-boolean p1, v2, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->enabled:Z

    .line 110
    iget-object v4, v2, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->events:Lcom/onesignal/common/events/EventProducer;

    new-instance v5, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$pollForPermission$2;

    invoke-direct {v5, p1}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$pollForPermission$2;-><init>(Z)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v5}, Lcom/onesignal/common/events/EventProducer;->fire(Lkotlin/jvm/functions/Function1;)V

    .line 112
    :cond_4
    iget-wide v4, v2, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->pollingWaitInterval:J

    new-instance p1, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$pollForPermission$3;

    const/4 v6, 0x0

    invoke-direct {p1, v2, v6}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$pollForPermission$3;-><init>(Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object v2, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$pollForPermission$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$pollForPermission$1;->label:I

    invoke-static {v4, v5, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1
.end method

.method private final registerPollingLifecycleListener()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 89
    new-instance v1, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$registerPollingLifecycleListener$1;

    invoke-direct {v1, p0}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$registerPollingLifecycleListener$1;-><init>(Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;)V

    check-cast v1, Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;

    .line 88
    invoke-interface {v0, v1}, Lcom/onesignal/core/internal/application/IApplicationService;->addApplicationLifecycleHandler(Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;)V

    return-void
.end method

.method private final showFallbackAlertDialog()Z
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->_application:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v0}, Lcom/onesignal/core/internal/application/IApplicationService;->getCurrent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 196
    :cond_0
    sget-object v1, Lcom/onesignal/core/internal/permissions/AlertDialogPrepromptForAndroidSettings;->INSTANCE:Lcom/onesignal/core/internal/permissions/AlertDialogPrepromptForAndroidSettings;

    .line 198
    sget v2, Lcom/onesignal/notifications/R$string;->notification_permission_name_for_title:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "activity.getString(R.str\u2026ermission_name_for_title)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    sget v3, Lcom/onesignal/notifications/R$string;->notification_permission_settings_message:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "activity.getString(R.str\u2026mission_settings_message)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    new-instance v4, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$showFallbackAlertDialog$1;

    invoke-direct {v4, p0, v0}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$showFallbackAlertDialog$1;-><init>(Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;Landroid/app/Activity;)V

    check-cast v4, Lcom/onesignal/core/internal/permissions/AlertDialogPrepromptForAndroidSettings$Callback;

    .line 196
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/onesignal/core/internal/permissions/AlertDialogPrepromptForAndroidSettings;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/core/internal/permissions/AlertDialogPrepromptForAndroidSettings$Callback;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getCanRequestPermission()Z
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->_preferenceService:Lcom/onesignal/core/internal/preferences/IPreferencesService;

    const/4 v1, 0x0

    .line 74
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "OneSignal"

    const-string v3, "USER_RESOLVED_PERMISSION_android.permission.POST_NOTIFICATIONS"

    .line 71
    invoke-interface {v0, v2, v3, v1}, Lcom/onesignal/core/internal/preferences/IPreferencesService;->getBool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getHasSubscribers()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->events:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0}, Lcom/onesignal/common/events/EventProducer;->getHasSubscribers()Z

    move-result v0

    return v0
.end method

.method public final getSupportsNativePrompt()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->supportsNativePrompt:Z

    return v0
.end method

.method public onAccept()V
    .locals 1

    const/4 v0, 0x1

    .line 176
    invoke-direct {p0, v0}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->permissionPromptCompleted(Z)V

    return-void
.end method

.method public onReject(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->showFallbackAlertDialog()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 188
    invoke-direct {p0, v0}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->permissionPromptCompleted(Z)V

    :cond_1
    return-void
.end method

.method public prompt(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;

    iget v1, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;

    invoke-direct {v0, p0, p2}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;-><init>(Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 141
    iget v2, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    .line 165
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_2
    iget-boolean p1, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->Z$0:Z

    iget-object v2, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 144
    iput-object p0, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->Z$0:Z

    iput v4, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->label:I

    invoke-static {v0}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 146
    :goto_1
    invoke-direct {v2}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->notificationsEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 147
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 150
    :cond_5
    iget-boolean p2, v2, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->supportsNativePrompt:Z

    if-eqz p2, :cond_6

    .line 151
    iget-object p2, v2, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->_requestPermission:Lcom/onesignal/core/internal/permissions/IRequestPermissionService;

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    .line 155
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "NOTIFICATION"

    .line 151
    invoke-interface {p2, p1, v6, v4, v5}, Lcom/onesignal/core/internal/permissions/IRequestPermissionService;->startPrompt(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_8

    .line 158
    invoke-direct {v2}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->showFallbackAlertDialog()Z

    .line 165
    :goto_2
    iget-object p1, v2, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->waiter:Lcom/onesignal/common/threading/WaiterWithValue;

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController$prompt$1;->label:I

    invoke-virtual {p1, v0}, Lcom/onesignal/common/threading/WaiterWithValue;->waitForWake(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    return-object p2

    :cond_8
    const/4 p1, 0x0

    .line 160
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Lcom/onesignal/notifications/internal/permissions/INotificationPermissionChangedHandler;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->events:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/events/EventProducer;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic subscribe(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/onesignal/notifications/internal/permissions/INotificationPermissionChangedHandler;

    invoke-virtual {p0, p1}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->subscribe(Lcom/onesignal/notifications/internal/permissions/INotificationPermissionChangedHandler;)V

    return-void
.end method

.method public unsubscribe(Lcom/onesignal/notifications/internal/permissions/INotificationPermissionChangedHandler;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->events:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/events/EventProducer;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic unsubscribe(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/onesignal/notifications/internal/permissions/INotificationPermissionChangedHandler;

    invoke-virtual {p0, p1}, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;->unsubscribe(Lcom/onesignal/notifications/internal/permissions/INotificationPermissionChangedHandler;)V

    return-void
.end method
