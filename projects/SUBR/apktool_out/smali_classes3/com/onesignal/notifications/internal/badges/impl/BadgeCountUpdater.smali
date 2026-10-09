.class public final Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;
.super Ljava/lang/Object;
.source "BadgeCountUpdater.kt"

# interfaces
.implements Lcom/onesignal/notifications/internal/badges/IBadgeCountUpdater;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0008\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\nH\u0016J\u0008\u0010\u0012\u001a\u00020\u000fH\u0002J\u0008\u0010\u0013\u001a\u00020\u000fH\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;",
        "Lcom/onesignal/notifications/internal/badges/IBadgeCountUpdater;",
        "_applicationService",
        "Lcom/onesignal/core/internal/application/IApplicationService;",
        "_queryHelper",
        "Lcom/onesignal/notifications/internal/data/INotificationQueryHelper;",
        "_databaseProvider",
        "Lcom/onesignal/core/internal/database/IDatabaseProvider;",
        "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/data/INotificationQueryHelper;Lcom/onesignal/core/internal/database/IDatabaseProvider;)V",
        "badgesEnabled",
        "",
        "areBadgeSettingsEnabled",
        "",
        "areBadgesEnabled",
        "update",
        "",
        "updateCount",
        "count",
        "updateFallback",
        "updateStandard",
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

.field private final _databaseProvider:Lcom/onesignal/core/internal/database/IDatabaseProvider;

.field private final _queryHelper:Lcom/onesignal/notifications/internal/data/INotificationQueryHelper;

.field private badgesEnabled:I


# direct methods
.method public constructor <init>(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/data/INotificationQueryHelper;Lcom/onesignal/core/internal/database/IDatabaseProvider;)V
    .locals 1

    const-string v0, "_applicationService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_queryHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_databaseProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 19
    iput-object p2, p0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->_queryHelper:Lcom/onesignal/notifications/internal/data/INotificationQueryHelper;

    .line 20
    iput-object p3, p0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->_databaseProvider:Lcom/onesignal/core/internal/database/IDatabaseProvider;

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->badgesEnabled:I

    return-void
.end method

.method private final areBadgeSettingsEnabled()Z
    .locals 5

    .line 26
    iget v0, p0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->badgesEnabled:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 29
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v0}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v1}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x80

    .line 29
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string v1, "_applicationService.appC\u2026A_DATA,\n                )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    const-string v1, "com.onesignal.BadgeCount"

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DISABLE"

    .line 36
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->badgesEnabled:I

    goto :goto_1

    .line 38
    :cond_3
    iput v3, p0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->badgesEnabled:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 41
    iput v2, p0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->badgesEnabled:I

    const-string v1, "Error reading meta-data tag \'com.onesignal.BadgeCount\'. Disabling badge setting."

    .line 42
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v0}, Lcom/onesignal/debug/internal/logging/Logging;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    :goto_1
    iget v0, p0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->badgesEnabled:I

    if-ne v0, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method private final areBadgesEnabled()Z
    .locals 4

    .line 48
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->areBadgeSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    iget-object v1, p0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v1}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->areNotificationsEnabled$default(Lcom/onesignal/notifications/internal/common/NotificationHelper;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final updateFallback()V
    .locals 14

    .line 72
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->_databaseProvider:Lcom/onesignal/core/internal/database/IDatabaseProvider;

    invoke-interface {v1}, Lcom/onesignal/core/internal/database/IDatabaseProvider;->getOs()Lcom/onesignal/core/internal/database/IDatabase;

    move-result-object v2

    const-string v3, "notification"

    const/4 v4, 0x0

    .line 76
    iget-object v1, p0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->_queryHelper:Lcom/onesignal/notifications/internal/data/INotificationQueryHelper;

    invoke-interface {v1}, Lcom/onesignal/notifications/internal/data/INotificationQueryHelper;->recentUninteractedWithNotificationsWhere()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 77
    sget-object v1, Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager$Constants;->INSTANCE:Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager$Constants;

    invoke-virtual {v1}, Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager$Constants;->getMaxNumberOfNotifications()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 74
    new-instance v1, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater$updateFallback$1;

    invoke-direct {v1, v0}, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater$updateFallback$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/16 v12, 0x7a

    const/4 v13, 0x0

    invoke-static/range {v2 .. v13}, Lcom/onesignal/core/internal/database/IDatabase$DefaultImpls;->query$default(Lcom/onesignal/core/internal/database/IDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 81
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p0, v0}, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->updateCount(I)V

    return-void
.end method

.method private final updateStandard()V
    .locals 6

    .line 62
    sget-object v0, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    iget-object v1, p0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v1}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->getActiveNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 64
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 65
    sget-object v5, Lcom/onesignal/notifications/internal/common/NotificationHelper;->INSTANCE:Lcom/onesignal/notifications/internal/common/NotificationHelper;

    invoke-virtual {v5, v4}, Lcom/onesignal/notifications/internal/common/NotificationHelper;->isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0, v3}, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->updateCount(I)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->areBadgesEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->updateStandard()V

    goto :goto_0

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->updateFallback()V

    :goto_0
    return-void
.end method

.method public updateCount(I)V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->areBadgeSettingsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;->_applicationService:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v0}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/onesignal/notifications/internal/badges/impl/shortcutbadger/ShortcutBadger;->applyCountOrThrow(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/onesignal/notifications/internal/badges/impl/shortcutbadger/ShortcutBadgeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
