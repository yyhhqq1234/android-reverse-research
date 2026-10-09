.class public final Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;
.super Ljava/lang/Object;
.source "NotificationOpenedProcessor.kt"

# interfaces
.implements Lcom/onesignal/notifications/internal/open/INotificationOpenedProcessor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ!\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011J#\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015J\u001a\u0010\u0016\u001a\u00020\u000c2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0003J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J)\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001aH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J!\u0010 \u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010!J!\u0010\"\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010!J/\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;",
        "Lcom/onesignal/notifications/internal/open/INotificationOpenedProcessor;",
        "_summaryManager",
        "Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;",
        "_dataController",
        "Lcom/onesignal/notifications/internal/data/INotificationRepository;",
        "_configModelStore",
        "Lcom/onesignal/core/internal/config/ConfigModelStore;",
        "_lifecycleService",
        "Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;",
        "(Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;Lcom/onesignal/notifications/internal/data/INotificationRepository;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;)V",
        "addChildNotifications",
        "",
        "dataArray",
        "Lorg/json/JSONArray;",
        "summaryGroup",
        "",
        "(Lorg/json/JSONArray;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clearStatusBarNotifications",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleDismissFromActionButtonPress",
        "intent",
        "Landroid/content/Intent;",
        "isOneSignalIntent",
        "",
        "markNotificationsConsumed",
        "dismissed",
        "(Landroid/content/Context;Landroid/content/Intent;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "newContentValuesWithConsumed",
        "Landroid/content/ContentValues;",
        "processFromContext",
        "(Landroid/content/Context;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "processIntent",
        "processToOpenIntent",
        "Lcom/onesignal/notifications/internal/open/impl/NotificationIntentExtras;",
        "(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final _configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

.field private final _dataController:Lcom/onesignal/notifications/internal/data/INotificationRepository;

.field private final _lifecycleService:Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;

.field private final _summaryManager:Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;


# direct methods
.method public constructor <init>(Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;Lcom/onesignal/notifications/internal/data/INotificationRepository;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;)V
    .locals 1

    const-string v0, "_summaryManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_dataController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_configModelStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_lifecycleService"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->_summaryManager:Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;

    .line 52
    iput-object p2, p0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->_dataController:Lcom/onesignal/notifications/internal/data/INotificationRepository;

    .line 53
    iput-object p3, p0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    .line 54
    iput-object p4, p0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->_lifecycleService:Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;

    return-void
.end method

.method public static final synthetic access$addChildNotifications(Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;Lorg/json/JSONArray;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->addChildNotifications(Lorg/json/JSONArray;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$clearStatusBarNotifications(Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->clearStatusBarNotifications(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$markNotificationsConsumed(Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;Landroid/content/Context;Landroid/content/Intent;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->markNotificationsConsumed(Landroid/content/Context;Landroid/content/Intent;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processIntent(Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;Landroid/content/Context;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->processIntent(Landroid/content/Context;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processToOpenIntent(Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->processToOpenIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final addChildNotifications(Lorg/json/JSONArray;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$addChildNotifications$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$addChildNotifications$1;

    iget v1, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$addChildNotifications$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$addChildNotifications$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$addChildNotifications$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$addChildNotifications$1;

    invoke-direct {v0, p0, p3}, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$addChildNotifications$1;-><init>(Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$addChildNotifications$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 175
    iget v2, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$addChildNotifications$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$addChildNotifications$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 182
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 179
    iget-object p3, p0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->_dataController:Lcom/onesignal/notifications/internal/data/INotificationRepository;

    iput-object p1, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$addChildNotifications$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$addChildNotifications$1;->label:I

    invoke-interface {p3, p2, v0}, Lcom/onesignal/notifications/internal/data/INotificationRepository;->listNotificationsForGroup(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 175
    :cond_3
    :goto_1
    check-cast p3, Ljava/util/List;

    .line 180
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;

    .line 181
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;->getFullData()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 182
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final clearStatusBarNotifications(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 209
    iget-object p1, p0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->_summaryManager:Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;

    invoke-interface {p1, p2, p3}, Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;->clearNotificationOnSummaryClick(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 211
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_2

    .line 214
    sget-object p2, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    invoke-virtual {p2, p1}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->getGrouplessNotifsCount(Landroid/content/Context;)I

    move-result p2

    const/4 p3, 0x1

    if-ge p2, p3, :cond_2

    .line 218
    sget-object p2, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    invoke-virtual {p2, p1}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    const p2, -0x2ad2e222

    .line 219
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 223
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final handleDismissFromActionButtonPress(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "action_button"

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const-string v2, "androidNotificationId"

    .line 85
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 84
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 93
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-ge p2, v0, :cond_0

    .line 94
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final isOneSignalIntent(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "onesignalData"

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "summary"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "androidNotificationId"

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final markNotificationsConsumed(Landroid/content/Context;Landroid/content/Intent;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;

    iget v1, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;

    invoke-direct {v0, p0, p4}, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;-><init>(Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p4, v6, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 184
    iget v1, v6, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 198
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 184
    :cond_2
    iget-boolean p3, v6, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->Z$0:Z

    iget-object p1, v6, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v6, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->L$1:Ljava/lang/Object;

    check-cast p2, Landroid/content/Intent;

    iget-object v1, v6, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p1

    move v3, p3

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-string p4, "summary"

    .line 189
    invoke-virtual {p2, p4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 191
    iput-object p0, v6, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->L$0:Ljava/lang/Object;

    iput-object p2, v6, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->L$1:Ljava/lang/Object;

    iput-object p4, v6, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->L$2:Ljava/lang/Object;

    iput-boolean p3, v6, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->Z$0:Z

    iput v3, v6, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->label:I

    invoke-direct {p0, p1, p4, v6}, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->clearStatusBarNotifications(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, p0

    move v3, p3

    move-object v4, p4

    .line 192
    :goto_1
    iget-object p1, v1, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->_dataController:Lcom/onesignal/notifications/internal/data/INotificationRepository;

    const-string p3, "androidNotificationId"

    const/4 p4, 0x0

    .line 193
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 196
    iget-object p3, v1, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {p3}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object p3

    check-cast p3, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {p3}, Lcom/onesignal/core/internal/config/ConfigModel;->getClearGroupOnSummaryClick()Z

    move-result v5

    const/4 p3, 0x0

    .line 192
    iput-object p3, v6, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->L$0:Ljava/lang/Object;

    iput-object p3, v6, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->L$1:Ljava/lang/Object;

    iput-object p3, v6, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->L$2:Ljava/lang/Object;

    iput v2, v6, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$markNotificationsConsumed$1;->label:I

    move-object v1, p1

    move v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/onesignal/notifications/internal/data/INotificationRepository;->markAsConsumed(IZLjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 198
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final newContentValuesWithConsumed(Landroid/content/Intent;)Landroid/content/ContentValues;
    .locals 3

    .line 226
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    const-string v2, "dismissed"

    .line 227
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x1

    .line 236
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const-string p1, "opened"

    .line 234
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    return-object v0
.end method

.method private final processIntent(Landroid/content/Context;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;

    iget v1, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;

    invoke-direct {v0, p0, p3}, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;-><init>(Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 99
    iget v2, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 136
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_2
    iget-boolean p1, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->Z$0:Z

    iget-object p2, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$3:Ljava/lang/Object;

    check-cast p2, Lcom/onesignal/notifications/internal/open/impl/NotificationIntentExtras;

    iget-object v2, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget-object v4, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$1:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    iget-object v5, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-boolean p1, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->Z$0:Z

    iget-object p2, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$4:Ljava/lang/Object;

    check-cast p2, Lcom/onesignal/notifications/internal/open/impl/NotificationIntentExtras;

    iget-object v2, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$2:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    iget-object v8, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$1:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    iget-object v9, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    iget-boolean p1, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->Z$0:Z

    iget-object p2, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$3:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object v2, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget-object v5, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$1:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    iget-object v8, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v2

    move v2, p1

    move-object p1, v5

    move-object v5, p3

    move-object p3, p2

    move-object p2, v10

    goto :goto_1

    :cond_5
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-string p3, "summary"

    .line 103
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "dismissed"

    const/4 v8, 0x0

    .line 104
    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 105
    move-object v8, v7

    check-cast v8, Lcom/onesignal/notifications/internal/open/impl/NotificationIntentExtras;

    if-nez v2, :cond_7

    .line 107
    iput-object p0, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$3:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->Z$0:Z

    iput v5, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->label:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->processToOpenIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_6

    return-object v1

    :cond_6
    move-object v8, p0

    .line 99
    :goto_1
    check-cast v5, Lcom/onesignal/notifications/internal/open/impl/NotificationIntentExtras;

    if-nez v5, :cond_8

    .line 109
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_7
    move-object v8, p0

    move-object v5, v7

    .line 113
    :cond_8
    iput-object v8, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$4:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->Z$0:Z

    iput v6, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->label:I

    invoke-direct {v8, p1, p2, v2, v0}, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->markNotificationsConsumed(Landroid/content/Context;Landroid/content/Intent;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_9

    return-object v1

    :cond_9
    move-object v9, v8

    move-object v8, p1

    move p1, v2

    move-object v2, p3

    move-object v10, v5

    move-object v5, p2

    move-object p2, v10

    :goto_2
    if-nez v2, :cond_b

    const-string p3, "grp"

    .line 117
    invoke-virtual {v5, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 119
    iget-object v2, v9, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->_summaryManager:Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;

    iput-object v9, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$3:Ljava/lang/Object;

    iput-object v7, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$4:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->Z$0:Z

    iput v4, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->label:I

    invoke-interface {v2, p3, p1, v0}, Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;->updateSummaryNotificationAfterChildRemoved(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_a

    return-object v1

    :cond_a
    move-object v2, v5

    move-object v4, v8

    move-object v5, v9

    :goto_3
    move-object v8, v4

    move-object v9, v5

    move-object v5, v2

    .line 122
    :cond_b
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "processIntent from context: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and intent: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v7, v6, v7}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 123
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 124
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "processIntent intent extras: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v7, v6, v7}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_c
    if-nez p1, :cond_f

    .line 127
    instance-of p1, v8, Landroid/app/Activity;

    if-nez p1, :cond_d

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "NotificationOpenedProcessor processIntent from an non Activity context: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7, v6, v7}, Lcom/onesignal/debug/internal/logging/Logging;->error$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_5

    .line 130
    :cond_d
    iget-object p1, v9, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->_lifecycleService:Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;

    .line 131
    check-cast v8, Landroid/app/Activity;

    .line 132
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onesignal/notifications/internal/open/impl/NotificationIntentExtras;->getDataArray()Lorg/json/JSONArray;

    move-result-object p2

    .line 130
    iput-object v7, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$3:Ljava/lang/Object;

    iput-object v7, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processIntent$1;->label:I

    invoke-interface {p1, v8, p2, v0}, Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;->notificationOpened(Landroid/app/Activity;Lorg/json/JSONArray;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_e

    return-object v1

    .line 136
    :cond_e
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_f
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final processToOpenIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/onesignal/notifications/internal/open/impl/NotificationIntentExtras;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "androidNotificationId"

    const-string v1, "NotificationOpenedProcessor processIntent from an non Activity context: "

    instance-of v2, p4, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;

    if-eqz v2, :cond_0

    move-object v2, p4

    check-cast v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;

    iget v3, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget p4, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->label:I

    sub-int/2addr p4, v4

    iput p4, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;

    invoke-direct {v2, p0, p4}, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;-><init>(Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 138
    iget v4, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->label:I

    const/4 v5, 0x1

    const-string v6, "onesignalData"

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v5, :cond_2

    if-ne v4, v7, :cond_1

    iget-object p1, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    iget-object p2, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lorg/json/JSONArray;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 172
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_2
    iget-object p1, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    iget-object p2, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->L$2:Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Ljava/lang/String;

    iget-object p2, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->L$1:Ljava/lang/Object;

    check-cast p2, Landroid/content/Intent;

    iget-object v1, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto/16 :goto_3

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 143
    move-object p4, v8

    check-cast p4, Lorg/json/JSONArray;

    .line 144
    move-object p4, v8

    check-cast p4, Lorg/json/JSONObject;

    .line 146
    :try_start_1
    new-instance p4, Lorg/json/JSONObject;

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p4, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 148
    :try_start_2
    instance-of v4, p1, Landroid/app/Activity;

    if-nez v4, :cond_4

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8, v7, v8}, Lcom/onesignal/debug/internal/logging/Logging;->error$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move-object v1, p0

    move-object p1, p4

    goto :goto_2

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->_lifecycleService:Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;

    check-cast p1, Landroid/app/Activity;

    iput-object p0, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->L$0:Ljava/lang/Object;

    iput-object p2, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->L$1:Ljava/lang/Object;

    iput-object p3, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->L$2:Ljava/lang/Object;

    iput-object p4, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->L$3:Ljava/lang/Object;

    iput v5, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->label:I

    invoke-interface {v1, p1, p4, v2}, Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;->canOpenNotification(Landroid/app/Activity;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne p1, v3, :cond_5

    return-object v3

    :cond_5
    move-object v1, p0

    move-object v9, p4

    move-object p4, p1

    move-object p1, v9

    :goto_1
    :try_start_3
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_6

    return-object v8

    :cond_6
    :goto_2
    const/4 p4, 0x0

    .line 156
    invoke-virtual {p2, v0, p4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p4

    .line 154
    invoke-virtual {p1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    sget-object p4, Lcom/onesignal/common/JSONUtils;->INSTANCE:Lcom/onesignal/common/JSONUtils;

    .line 161
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p4, v0}, Lcom/onesignal/common/JSONUtils;->wrapInJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v1, p0

    move-object p1, p4

    goto :goto_3

    :catch_2
    move-exception p2

    move-object v1, p0

    move-object p1, v8

    .line 164
    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    move-object p2, v8

    :goto_4
    if-eqz p3, :cond_7

    .line 169
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p2, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->L$0:Ljava/lang/Object;

    iput-object p1, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->L$1:Ljava/lang/Object;

    iput-object v8, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->L$2:Ljava/lang/Object;

    iput-object v8, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->L$3:Ljava/lang/Object;

    iput v7, v2, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor$processToOpenIntent$1;->label:I

    invoke-direct {v1, p2, p3, v2}, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->addChildNotifications(Lorg/json/JSONArray;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v3, :cond_7

    return-object v3

    .line 172
    :cond_7
    :goto_5
    new-instance p3, Lcom/onesignal/notifications/internal/open/impl/NotificationIntentExtras;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p3, p2, p1}, Lcom/onesignal/notifications/internal/open/impl/NotificationIntentExtras;-><init>(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    return-object p3
.end method


# virtual methods
.method public processFromContext(Landroid/content/Context;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p2}, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->isOneSignalIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 64
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->handleDismissFromActionButtonPress(Landroid/content/Context;Landroid/content/Intent;)V

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;->processIntent(Landroid/content/Context;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
