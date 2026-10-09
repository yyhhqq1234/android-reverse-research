.class public final Lcom/onesignal/notifications/internal/listeners/NotificationListener;
.super Ljava/lang/Object;
.source "NotificationListener.kt"

# interfaces
.implements Lcom/onesignal/core/internal/startup/IStartableService;
.implements Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleEventHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B]\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0002\u0010\u0019J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J!\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u001e\u001a\u00020\u001fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010$J\u0019\u0010%\u001a\u00020!2\u0006\u0010&\u001a\u00020\'H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(J\u0010\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020#H\u0002J\u0008\u0010,\u001a\u00020!H\u0016R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/listeners/NotificationListener;",
        "Lcom/onesignal/core/internal/startup/IStartableService;",
        "Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleEventHandler;",
        "_applicationService",
        "Lcom/onesignal/core/internal/application/IApplicationService;",
        "_notificationLifecycleService",
        "Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;",
        "_configModelStore",
        "Lcom/onesignal/core/internal/config/ConfigModelStore;",
        "_influenceManager",
        "Lcom/onesignal/session/internal/influence/IInfluenceManager;",
        "_subscriptionManager",
        "Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;",
        "_deviceService",
        "Lcom/onesignal/core/internal/device/IDeviceService;",
        "_backend",
        "Lcom/onesignal/notifications/internal/backend/INotificationBackendService;",
        "_receiveReceiptWorkManager",
        "Lcom/onesignal/notifications/internal/receivereceipt/IReceiveReceiptWorkManager;",
        "_activityOpener",
        "Lcom/onesignal/notifications/internal/INotificationActivityOpener;",
        "_analyticsTracker",
        "Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;",
        "_time",
        "Lcom/onesignal/core/internal/time/ITime;",
        "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/session/internal/influence/IInfluenceManager;Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;Lcom/onesignal/core/internal/device/IDeviceService;Lcom/onesignal/notifications/internal/backend/INotificationBackendService;Lcom/onesignal/notifications/internal/receivereceipt/IReceiveReceiptWorkManager;Lcom/onesignal/notifications/internal/INotificationActivityOpener;Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;Lcom/onesignal/core/internal/time/ITime;)V",
        "postedOpenedNotifIds",
        "",
        "",
        "getLatestNotificationId",
        "data",
        "Lorg/json/JSONArray;",
        "onNotificationOpened",
        "",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;Lorg/json/JSONArray;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onNotificationReceived",
        "notificationJob",
        "Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;",
        "(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "shouldInitDirectSessionFromNotificationOpen",
        "",
        "context",
        "start",
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
.field private final _activityOpener:Lcom/onesignal/notifications/internal/INotificationActivityOpener;

.field private final _analyticsTracker:Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;

.field private final _applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

.field private final _backend:Lcom/onesignal/notifications/internal/backend/INotificationBackendService;

.field private final _configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

.field private final _deviceService:Lcom/onesignal/core/internal/device/IDeviceService;

.field private final _influenceManager:Lcom/onesignal/session/internal/influence/IInfluenceManager;

.field private final _notificationLifecycleService:Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;

.field private final _receiveReceiptWorkManager:Lcom/onesignal/notifications/internal/receivereceipt/IReceiveReceiptWorkManager;

.field private final _subscriptionManager:Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;

.field private final _time:Lcom/onesignal/core/internal/time/ITime;

.field private final postedOpenedNotifIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/session/internal/influence/IInfluenceManager;Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;Lcom/onesignal/core/internal/device/IDeviceService;Lcom/onesignal/notifications/internal/backend/INotificationBackendService;Lcom/onesignal/notifications/internal/receivereceipt/IReceiveReceiptWorkManager;Lcom/onesignal/notifications/internal/INotificationActivityOpener;Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;Lcom/onesignal/core/internal/time/ITime;)V
    .locals 1

    const-string v0, "_applicationService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_notificationLifecycleService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_configModelStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_influenceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_subscriptionManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_deviceService"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_backend"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_receiveReceiptWorkManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_activityOpener"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_analyticsTracker"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_time"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 32
    iput-object p2, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_notificationLifecycleService:Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;

    .line 33
    iput-object p3, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    .line 34
    iput-object p4, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_influenceManager:Lcom/onesignal/session/internal/influence/IInfluenceManager;

    .line 35
    iput-object p5, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_subscriptionManager:Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;

    .line 36
    iput-object p6, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_deviceService:Lcom/onesignal/core/internal/device/IDeviceService;

    .line 37
    iput-object p7, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_backend:Lcom/onesignal/notifications/internal/backend/INotificationBackendService;

    .line 38
    iput-object p8, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_receiveReceiptWorkManager:Lcom/onesignal/notifications/internal/receivereceipt/IReceiveReceiptWorkManager;

    .line 39
    iput-object p9, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_activityOpener:Lcom/onesignal/notifications/internal/INotificationActivityOpener;

    .line 40
    iput-object p10, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_analyticsTracker:Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;

    .line 41
    iput-object p11, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_time:Lcom/onesignal/core/internal/time/ITime;

    .line 43
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->postedOpenedNotifIds:Ljava/util/Set;

    return-void
.end method

.method private final getLatestNotificationId(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 1

    .line 132
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 133
    :goto_0
    sget-object v0, Lcom/onesignal/notifications/internal/common/NotificationFormatHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationFormatHelper;

    invoke-virtual {v0, p1}, Lcom/onesignal/notifications/internal/common/NotificationFormatHelper;->getOSNotificationIdFromJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final shouldInitDirectSessionFromNotificationOpen(Landroid/app/Activity;)Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v0}, Lcom/onesignal/core/internal/application/IApplicationService;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 124
    :cond_0
    :try_start_0
    sget-object v0, Lcom/onesignal/notifications/internal/common/OSNotificationOpenAppSettings;->INSTANCE:Lcom/onesignal/notifications/internal/common/OSNotificationOpenAppSettings;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/onesignal/notifications/internal/common/OSNotificationOpenAppSettings;->getShouldOpenActivity(Landroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onNotificationOpened(Landroid/app/Activity;Lorg/json/JSONArray;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
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

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;

    iget v3, v2, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;

    invoke-direct {v2, v1, v0}, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;-><init>(Lcom/onesignal/notifications/internal/listeners/NotificationListener;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 68
    iget v4, v2, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2
    iget v4, v2, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->I$1:I

    iget v8, v2, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->I$0:I

    iget-object v9, v2, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$5:Ljava/lang/Object;

    check-cast v9, Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    iget-object v10, v2, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$4:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lorg/json/JSONArray;

    iget-object v13, v2, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$1:Ljava/lang/Object;

    check-cast v13, Landroid/app/Activity;

    iget-object v14, v2, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/onesignal/notifications/internal/listeners/NotificationListener;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/onesignal/common/exceptions/BackendException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    iget-object v0, v1, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v0

    check-cast v0, Lcom/onesignal/core/internal/config/ConfigModel;

    .line 73
    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    .line 74
    :cond_4
    iget-object v4, v1, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_subscriptionManager:Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;

    invoke-interface {v4}, Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;->getSubscriptions()Lcom/onesignal/user/internal/subscriptions/SubscriptionList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/user/internal/subscriptions/SubscriptionList;->getPush()Lcom/onesignal/user/subscriptions/IPushSubscription;

    move-result-object v4

    invoke-interface {v4}, Lcom/onesignal/user/subscriptions/IPushSubscription;->getId()Ljava/lang/String;

    move-result-object v4

    .line 75
    iget-object v8, v1, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_deviceService:Lcom/onesignal/core/internal/device/IDeviceService;

    invoke-interface {v8}, Lcom/onesignal/core/internal/device/IDeviceService;->getDeviceType()Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;

    move-result-object v8

    .line 77
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x0

    move-object v10, v0

    move-object v14, v3

    move-object v11, v4

    move-object v12, v8

    move v15, v9

    const/4 v13, 0x0

    move-object/from16 v3, p2

    move-object v9, v1

    move-object v4, v2

    move-object/from16 v2, p1

    :goto_1
    if-ge v13, v15, :cond_8

    .line 78
    sget-object v0, Lcom/onesignal/notifications/internal/common/NotificationFormatHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationFormatHelper;

    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    invoke-virtual {v0, v8}, Lcom/onesignal/notifications/internal/common/NotificationFormatHelper;->getOSNotificationIdFromJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto/16 :goto_6

    .line 80
    :cond_5
    iget-object v8, v9, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->postedOpenedNotifIds:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto/16 :goto_6

    .line 84
    :cond_6
    iget-object v8, v9, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->postedOpenedNotifIds:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    :try_start_1
    iget-object v8, v9, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_backend:Lcom/onesignal/notifications/internal/backend/INotificationBackendService;

    iput-object v9, v4, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$1:Ljava/lang/Object;

    iput-object v3, v4, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$2:Ljava/lang/Object;

    iput-object v10, v4, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$3:Ljava/lang/Object;

    iput-object v11, v4, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$4:Ljava/lang/Object;

    iput-object v12, v4, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$5:Ljava/lang/Object;

    iput v13, v4, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->I$0:I

    iput v15, v4, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->I$1:I

    iput v6, v4, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->label:I
    :try_end_1
    .catch Lcom/onesignal/common/exceptions/BackendException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v16, v9

    move-object v9, v10

    move-object/from16 v17, v10

    move-object v10, v0

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move/from16 v20, v13

    move-object v13, v4

    :try_start_2
    invoke-interface/range {v8 .. v13}, Lcom/onesignal/notifications/internal/backend/INotificationBackendService;->updateNotificationAsOpened(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Lcom/onesignal/common/exceptions/BackendException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v0, v14, :cond_7

    return-object v14

    :cond_7
    move-object v13, v2

    move-object v12, v3

    move-object v2, v4

    move-object v3, v14

    move v4, v15

    move-object/from16 v14, v16

    move-object/from16 v11, v17

    move-object/from16 v10, v18

    move-object/from16 v9, v19

    move/from16 v8, v20

    :goto_2
    move v15, v4

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move/from16 v20, v13

    :goto_3
    move-object v13, v2

    move-object v12, v3

    move-object v2, v4

    move-object v3, v14

    move v4, v15

    move-object/from16 v14, v16

    move-object/from16 v11, v17

    move-object/from16 v10, v18

    move-object/from16 v9, v19

    move/from16 v8, v20

    .line 94
    :goto_4
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v6, "Notification opened confirmation failed with statusCode: "

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onesignal/common/exceptions/BackendException;->getStatusCode()I

    move-result v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " response: "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onesignal/common/exceptions/BackendException;->getResponse()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7, v5, v7}, Lcom/onesignal/debug/internal/logging/Logging;->error$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move v15, v4

    const/4 v6, 0x1

    :goto_5
    move-object v4, v2

    move-object v2, v13

    move v13, v8

    move-object/from16 v21, v14

    move-object v14, v3

    move-object v3, v12

    move-object v12, v9

    move-object/from16 v9, v21

    move-object/from16 v22, v11

    move-object v11, v10

    move-object/from16 v10, v22

    :goto_6
    add-int/2addr v13, v6

    goto/16 :goto_1

    :cond_8
    move-object/from16 v16, v9

    .line 98
    sget-object v0, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    iget-object v6, v9, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_time:Lcom/onesignal/core/internal/time/ITime;

    invoke-virtual {v0, v3, v6}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->generateNotificationOpenedResult$com_onesignal_notifications(Lorg/json/JSONArray;Lcom/onesignal/core/internal/time/ITime;)Lcom/onesignal/notifications/internal/NotificationClickEvent;

    move-result-object v0

    .line 99
    iget-object v6, v9, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_analyticsTracker:Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;

    .line 100
    invoke-virtual {v0}, Lcom/onesignal/notifications/internal/NotificationClickEvent;->getNotification()Lcom/onesignal/notifications/INotification;

    move-result-object v8

    invoke-interface {v8}, Lcom/onesignal/notifications/INotification;->getNotificationId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 101
    sget-object v10, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    invoke-virtual {v0}, Lcom/onesignal/notifications/internal/NotificationClickEvent;->getNotification()Lcom/onesignal/notifications/INotification;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->getCampaignNameFromNotification(Lcom/onesignal/notifications/INotification;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-interface {v6, v8, v0}, Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;->trackOpenedEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct {v9, v3}, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->getLatestNotificationId(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-direct {v9, v2}, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->shouldInitDirectSessionFromNotificationOpen(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 109
    iget-object v6, v9, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    sget-object v8, Lcom/onesignal/core/internal/application/AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/core/internal/application/AppEntryAction;

    invoke-interface {v6, v8}, Lcom/onesignal/core/internal/application/IApplicationService;->setEntryState(Lcom/onesignal/core/internal/application/AppEntryAction;)V

    if-eqz v0, :cond_9

    .line 111
    iget-object v6, v9, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_influenceManager:Lcom/onesignal/session/internal/influence/IInfluenceManager;

    invoke-interface {v6, v0}, Lcom/onesignal/session/internal/influence/IInfluenceManager;->onDirectInfluenceFromNotification(Ljava/lang/String;)V

    .line 115
    :cond_9
    iget-object v0, v9, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_activityOpener:Lcom/onesignal/notifications/internal/INotificationActivityOpener;

    iput-object v7, v4, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$0:Ljava/lang/Object;

    iput-object v7, v4, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$1:Ljava/lang/Object;

    iput-object v7, v4, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$2:Ljava/lang/Object;

    iput-object v7, v4, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$3:Ljava/lang/Object;

    iput-object v7, v4, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$4:Ljava/lang/Object;

    iput-object v7, v4, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->L$5:Ljava/lang/Object;

    iput v5, v4, Lcom/onesignal/notifications/internal/listeners/NotificationListener$onNotificationOpened$1;->label:I

    invoke-interface {v0, v2, v3, v4}, Lcom/onesignal/notifications/internal/INotificationActivityOpener;->openDestinationActivity(Landroid/app/Activity;Lorg/json/JSONArray;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_a

    return-object v14

    .line 116
    :cond_a
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public onNotificationReceived(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 50
    iget-object p2, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_receiveReceiptWorkManager:Lcom/onesignal/notifications/internal/receivereceipt/IReceiveReceiptWorkManager;

    invoke-virtual {p1}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->getApiNotificationId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/onesignal/notifications/internal/receivereceipt/IReceiveReceiptWorkManager;->enqueueReceiveReceipt(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_influenceManager:Lcom/onesignal/session/internal/influence/IInfluenceManager;

    invoke-virtual {p1}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->getApiNotificationId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/onesignal/session/internal/influence/IInfluenceManager;->onNotificationReceived(Ljava/lang/String;)V

    .line 55
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->getJsonPayload()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "androidNotificationId"

    .line 56
    invoke-virtual {p1}, Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;->getAndroidId()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    sget-object p1, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    sget-object v0, Lcom/onesignal/common/JSONUtils;->INSTANCE:Lcom/onesignal/common/JSONUtils;

    invoke-virtual {v0, p2}, Lcom/onesignal/common/JSONUtils;->wrapInJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p2

    iget-object v0, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_time:Lcom/onesignal/core/internal/time/ITime;

    invoke-virtual {p1, p2, v0}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->generateNotificationOpenedResult$com_onesignal_notifications(Lorg/json/JSONArray;Lcom/onesignal/core/internal/time/ITime;)Lcom/onesignal/notifications/internal/NotificationClickEvent;

    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_analyticsTracker:Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;

    .line 60
    invoke-virtual {p1}, Lcom/onesignal/notifications/internal/NotificationClickEvent;->getNotification()Lcom/onesignal/notifications/INotification;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/notifications/INotification;->getNotificationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    sget-object v1, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    invoke-virtual {p1}, Lcom/onesignal/notifications/internal/NotificationClickEvent;->getNotification()Lcom/onesignal/notifications/INotification;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->getCampaignNameFromNotification(Lcom/onesignal/notifications/INotification;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-interface {p2, v0, p1}, Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;->trackReceivedEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 66
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public start()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;->_notificationLifecycleService:Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;

    move-object v1, p0

    check-cast v1, Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleEventHandler;

    invoke-interface {v0, v1}, Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;->addInternalNotificationLifecycleEventHandler(Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleEventHandler;)V

    return-void
.end method
