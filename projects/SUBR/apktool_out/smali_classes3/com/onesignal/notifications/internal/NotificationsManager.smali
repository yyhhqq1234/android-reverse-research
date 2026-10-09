.class public final Lcom/onesignal/notifications/internal/NotificationsManager;
.super Ljava/lang/Object;
.source "NotificationsManager.kt"

# interfaces
.implements Lcom/onesignal/notifications/INotificationsManager;
.implements Lcom/onesignal/notifications/internal/INotificationActivityOpener;
.implements Lcom/onesignal/notifications/internal/permissions/INotificationPermissionChangedHandler;
.implements Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B5\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010!\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u001cH\u0016J\u0008\u0010%\u001a\u00020\u001eH\u0016J\u0010\u0010&\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020\u0013H\u0016J\u0010\u0010(\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020\u0013H\u0016J\u0008\u0010*\u001a\u00020\u001eH\u0016J!\u0010+\u001a\u00020\u001e2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00100J\u0008\u00101\u001a\u00020\u001eH\u0002J\u0010\u00102\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u00103\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\"H\u0016J\u0010\u00104\u001a\u00020\u001e2\u0006\u00105\u001a\u000206H\u0016J\u0010\u00107\u001a\u00020\u001e2\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010:\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u001cH\u0016J\u0019\u0010;\u001a\u00020\u00132\u0006\u0010<\u001a\u00020\u0013H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010=J\u0010\u0010>\u001a\u00020\u001e2\u0006\u0010?\u001a\u00020\u0013H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0013X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015\"\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006@"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/NotificationsManager;",
        "Lcom/onesignal/notifications/INotificationsManager;",
        "Lcom/onesignal/notifications/internal/INotificationActivityOpener;",
        "Lcom/onesignal/notifications/internal/permissions/INotificationPermissionChangedHandler;",
        "Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;",
        "_applicationService",
        "Lcom/onesignal/core/internal/application/IApplicationService;",
        "_notificationPermissionController",
        "Lcom/onesignal/notifications/internal/permissions/INotificationPermissionController;",
        "_notificationRestoreWorkManager",
        "Lcom/onesignal/notifications/internal/restoration/INotificationRestoreWorkManager;",
        "_notificationLifecycleService",
        "Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;",
        "_notificationDataController",
        "Lcom/onesignal/notifications/internal/data/INotificationRepository;",
        "_summaryManager",
        "Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;",
        "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/permissions/INotificationPermissionController;Lcom/onesignal/notifications/internal/restoration/INotificationRestoreWorkManager;Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;Lcom/onesignal/notifications/internal/data/INotificationRepository;Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;)V",
        "canRequestPermission",
        "",
        "getCanRequestPermission",
        "()Z",
        "permission",
        "getPermission",
        "setPermission",
        "(Z)V",
        "permissionChangedNotifier",
        "Lcom/onesignal/common/events/EventProducer;",
        "Lcom/onesignal/notifications/IPermissionObserver;",
        "addClickListener",
        "",
        "listener",
        "Lcom/onesignal/notifications/INotificationClickListener;",
        "addForegroundLifecycleListener",
        "Lcom/onesignal/notifications/INotificationLifecycleListener;",
        "addPermissionObserver",
        "observer",
        "clearAllNotifications",
        "onFocus",
        "firedOnSubscribe",
        "onNotificationPermissionChanged",
        "enabled",
        "onUnfocused",
        "openDestinationActivity",
        "activity",
        "Landroid/app/Activity;",
        "pushPayloads",
        "Lorg/json/JSONArray;",
        "(Landroid/app/Activity;Lorg/json/JSONArray;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "refreshNotificationState",
        "removeClickListener",
        "removeForegroundLifecycleListener",
        "removeGroupedNotifications",
        "group",
        "",
        "removeNotification",
        "id",
        "",
        "removePermissionObserver",
        "requestPermission",
        "fallbackToSettings",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setPermissionStatusAndFire",
        "isEnabled",
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


# instance fields
.field private final _applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

.field private final _notificationDataController:Lcom/onesignal/notifications/internal/data/INotificationRepository;

.field private final _notificationLifecycleService:Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;

.field private final _notificationPermissionController:Lcom/onesignal/notifications/internal/permissions/INotificationPermissionController;

.field private final _notificationRestoreWorkManager:Lcom/onesignal/notifications/internal/restoration/INotificationRestoreWorkManager;

.field private final _summaryManager:Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;

.field private permission:Z

.field private final permissionChangedNotifier:Lcom/onesignal/common/events/EventProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/common/events/EventProducer<",
            "Lcom/onesignal/notifications/IPermissionObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/permissions/INotificationPermissionController;Lcom/onesignal/notifications/internal/restoration/INotificationRestoreWorkManager;Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;Lcom/onesignal/notifications/internal/data/INotificationRepository;Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;)V
    .locals 1

    const-string v0, "_applicationService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_notificationPermissionController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_notificationRestoreWorkManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_notificationLifecycleService"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_notificationDataController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_summaryManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 39
    iput-object p2, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_notificationPermissionController:Lcom/onesignal/notifications/internal/permissions/INotificationPermissionController;

    .line 40
    iput-object p3, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_notificationRestoreWorkManager:Lcom/onesignal/notifications/internal/restoration/INotificationRestoreWorkManager;

    .line 41
    iput-object p4, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_notificationLifecycleService:Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;

    .line 42
    iput-object p5, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_notificationDataController:Lcom/onesignal/notifications/internal/data/INotificationRepository;

    .line 43
    iput-object p6, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_summaryManager:Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;

    .line 48
    sget-object p3, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    invoke-interface {p1}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object p4

    const/4 p5, 0x2

    const/4 p6, 0x0

    invoke-static {p3, p4, p6, p5, p6}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->areNotificationsEnabled$default(Lcom/onesignal/notifications/internal/common/NotificationHelper;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->permission:Z

    .line 53
    new-instance p3, Lcom/onesignal/common/events/EventProducer;

    invoke-direct {p3}, Lcom/onesignal/common/events/EventProducer;-><init>()V

    iput-object p3, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->permissionChangedNotifier:Lcom/onesignal/common/events/EventProducer;

    .line 56
    move-object p3, p0

    check-cast p3, Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;

    invoke-interface {p1, p3}, Lcom/onesignal/core/internal/application/IApplicationService;->addApplicationLifecycleHandler(Lcom/onesignal/core/internal/application/IApplicationLifecycleHandler;)V

    .line 57
    invoke-interface {p2, p0}, Lcom/onesignal/notifications/internal/permissions/INotificationPermissionController;->subscribe(Ljava/lang/Object;)V

    .line 59
    new-instance p1, Lcom/onesignal/notifications/internal/NotificationsManager$1;

    invoke-direct {p1, p0, p6}, Lcom/onesignal/notifications/internal/NotificationsManager$1;-><init>(Lcom/onesignal/notifications/internal/NotificationsManager;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-static {p3, p1, p2, p6}, Lcom/onesignal/common/threading/ThreadUtilsKt;->suspendifyOnThread$default(ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$get_notificationDataController$p(Lcom/onesignal/notifications/internal/NotificationsManager;)Lcom/onesignal/notifications/internal/data/INotificationRepository;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_notificationDataController:Lcom/onesignal/notifications/internal/data/INotificationRepository;

    return-object p0
.end method

.method public static final synthetic access$get_notificationPermissionController$p(Lcom/onesignal/notifications/internal/NotificationsManager;)Lcom/onesignal/notifications/internal/permissions/INotificationPermissionController;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_notificationPermissionController:Lcom/onesignal/notifications/internal/permissions/INotificationPermissionController;

    return-object p0
.end method

.method public static final synthetic access$get_summaryManager$p(Lcom/onesignal/notifications/internal/NotificationsManager;)Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_summaryManager:Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;

    return-object p0
.end method

.method private final refreshNotificationState()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_notificationRestoreWorkManager:Lcom/onesignal/notifications/internal/restoration/INotificationRestoreWorkManager;

    iget-object v1, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v1}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/onesignal/notifications/internal/restoration/INotificationRestoreWorkManager;->beginEnqueueingWork(Landroid/content/Context;Z)V

    .line 85
    sget-object v0, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    iget-object v1, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v1}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->areNotificationsEnabled$default(Lcom/onesignal/notifications/internal/common/NotificationHelper;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    .line 86
    invoke-direct {p0, v0}, Lcom/onesignal/notifications/internal/NotificationsManager;->setPermissionStatusAndFire(Z)V

    return-void
.end method

.method private final setPermissionStatusAndFire(Z)V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/onesignal/notifications/internal/NotificationsManager;->getPermission()Z

    move-result v0

    .line 99
    invoke-virtual {p0, p1}, Lcom/onesignal/notifications/internal/NotificationsManager;->setPermission(Z)V

    if-eq v0, p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->permissionChangedNotifier:Lcom/onesignal/common/events/EventProducer;

    new-instance v1, Lcom/onesignal/notifications/internal/NotificationsManager$setPermissionStatusAndFire$1;

    invoke-direct {v1, p1}, Lcom/onesignal/notifications/internal/NotificationsManager$setPermissionStatusAndFire$1;-><init>(Z)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/events/EventProducer;->fireOnMain(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addClickListener(Lcom/onesignal/notifications/INotificationClickListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationsManager.addClickListener(handler: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_notificationLifecycleService:Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;

    invoke-interface {v0, p1}, Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;->addExternalClickListener(Lcom/onesignal/notifications/INotificationClickListener;)V

    return-void
.end method

.method public addForegroundLifecycleListener(Lcom/onesignal/notifications/INotificationLifecycleListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationsManager.addForegroundLifecycleListener(listener: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_notificationLifecycleService:Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;

    invoke-interface {v0, p1}, Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;->addExternalForegroundLifecycleListener(Lcom/onesignal/notifications/INotificationLifecycleListener;)V

    return-void
.end method

.method public addPermissionObserver(Lcom/onesignal/notifications/IPermissionObserver;)V
    .locals 3

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationsManager.addPermissionObserver(observer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->permissionChangedNotifier:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/events/EventProducer;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public clearAllNotifications()V
    .locals 4

    const/4 v0, 0x2

    const-string v1, "NotificationsManager.clearAllNotifications()"

    const/4 v2, 0x0

    .line 126
    invoke-static {v1, v2, v0, v2}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 128
    new-instance v0, Lcom/onesignal/notifications/internal/NotificationsManager$clearAllNotifications$1;

    invoke-direct {v0, p0, v2}, Lcom/onesignal/notifications/internal/NotificationsManager$clearAllNotifications$1;-><init>(Lcom/onesignal/notifications/internal/NotificationsManager;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lcom/onesignal/common/threading/ThreadUtilsKt;->suspendifyOnThread$default(ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public getCanRequestPermission()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_notificationPermissionController:Lcom/onesignal/notifications/internal/permissions/INotificationPermissionController;

    invoke-interface {v0}, Lcom/onesignal/notifications/internal/permissions/INotificationPermissionController;->getCanRequestPermission()Z

    move-result v0

    return v0
.end method

.method public getPermission()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->permission:Z

    return v0
.end method

.method public onFocus(Z)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/NotificationsManager;->refreshNotificationState()V

    return-void
.end method

.method public onNotificationPermissionChanged(Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/onesignal/notifications/internal/NotificationsManager;->setPermissionStatusAndFire(Z)V

    return-void
.end method

.method public onUnfocused()V
    .locals 0

    return-void
.end method

.method public openDestinationActivity(Landroid/app/Activity;Lorg/json/JSONArray;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lorg/json/JSONArray;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string p3, "SDK running startActivity with Intent: "

    const/4 v0, 0x0

    .line 169
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    .line 171
    sget-object v0, Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntentFromPushPayload;->INSTANCE:Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntentFromPushPayload;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const-string v2, "firstPayloadItem"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntentFromPushPayload;->create(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntent;

    move-result-object p2

    .line 173
    invoke-virtual {p2}, Lcom/onesignal/notifications/internal/common/GenerateNotificationOpenIntent;->getIntentVisible()Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1, v0, v1}, Lcom/onesignal/debug/internal/logging/Logging;->info$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 176
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "SDK not showing an Activity automatically due to it\'s settings."

    .line 178
    invoke-static {p1, v1, v0, v1}, Lcom/onesignal/debug/internal/logging/Logging;->info$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 183
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public removeClickListener(Lcom/onesignal/notifications/INotificationClickListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationsManager.removeClickListener(listener: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_notificationLifecycleService:Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;

    invoke-interface {v0, p1}, Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;->removeExternalClickListener(Lcom/onesignal/notifications/INotificationClickListener;)V

    return-void
.end method

.method public removeForegroundLifecycleListener(Lcom/onesignal/notifications/INotificationLifecycleListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationsManager.removeForegroundLifecycleListener(listener: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->_notificationLifecycleService:Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;

    invoke-interface {v0, p1}, Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;->removeExternalForegroundLifecycleListener(Lcom/onesignal/notifications/INotificationLifecycleListener;)V

    return-void
.end method

.method public removeGroupedNotifications(Ljava/lang/String;)V
    .locals 3

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationsManager.removeGroupedNotifications(group: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 120
    new-instance v0, Lcom/onesignal/notifications/internal/NotificationsManager$removeGroupedNotifications$1;

    invoke-direct {v0, p0, p1, v2}, Lcom/onesignal/notifications/internal/NotificationsManager$removeGroupedNotifications$1;-><init>(Lcom/onesignal/notifications/internal/NotificationsManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/onesignal/common/threading/ThreadUtilsKt;->suspendifyOnThread$default(ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public removeNotification(I)V
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationsManager.removeNotification(id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 110
    new-instance v0, Lcom/onesignal/notifications/internal/NotificationsManager$removeNotification$1;

    invoke-direct {v0, p0, p1, v2}, Lcom/onesignal/notifications/internal/NotificationsManager$removeNotification$1;-><init>(Lcom/onesignal/notifications/internal/NotificationsManager;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/onesignal/common/threading/ThreadUtilsKt;->suspendifyOnThread$default(ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public removePermissionObserver(Lcom/onesignal/notifications/IPermissionObserver;)V
    .locals 3

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationsManager.removePermissionObserver(observer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->permissionChangedNotifier:Lcom/onesignal/common/events/EventProducer;

    invoke-virtual {v0, p1}, Lcom/onesignal/common/events/EventProducer;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public requestPermission(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    const/4 v0, 0x2

    const-string v1, "NotificationsManager.requestPermission()"

    const/4 v2, 0x0

    .line 90
    invoke-static {v1, v2, v0, v2}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 92
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/onesignal/notifications/internal/NotificationsManager$requestPermission$2;

    invoke-direct {v1, p0, p1, v2}, Lcom/onesignal/notifications/internal/NotificationsManager$requestPermission$2;-><init>(Lcom/onesignal/notifications/internal/NotificationsManager;ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setPermission(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/onesignal/notifications/internal/NotificationsManager;->permission:Z

    return-void
.end method
