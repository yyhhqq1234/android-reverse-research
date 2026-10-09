.class public final Lcom/onesignal/notifications/NotificationsModule;
.super Ljava/lang/Object;
.source "NotificationsModule.kt"

# interfaces
.implements Lcom/onesignal/common/modules/IModule;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationsModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationsModule.kt\ncom/onesignal/notifications/NotificationsModule\n+ 2 ServiceBuilder.kt\ncom/onesignal/common/services/ServiceBuilder\n+ 3 ServiceRegistration.kt\ncom/onesignal/common/services/ServiceRegistration\n*L\n1#1,151:1\n11#2:152\n11#2:154\n11#2:156\n11#2:158\n11#2:160\n11#2:162\n11#2:164\n11#2:166\n11#2:168\n11#2:170\n11#2:172\n11#2:174\n11#2:176\n11#2:178\n11#2:180\n11#2:182\n11#2:184\n11#2:186\n11#2:188\n11#2:193\n11#2:195\n11#2:197\n11#2:199\n11#2:201\n11#2:203\n11#2:205\n15#3:153\n15#3:155\n15#3:157\n15#3:159\n15#3:161\n15#3:163\n15#3:165\n15#3:167\n15#3:169\n15#3:171\n15#3:173\n15#3:175\n15#3:177\n15#3:179\n15#3:181\n15#3:183\n15#3:185\n15#3:187\n15#3:189\n15#3:190\n15#3:191\n15#3:192\n15#3:194\n15#3:196\n15#3:198\n15#3:200\n15#3:202\n15#3:204\n15#3:206\n15#3:207\n*S KotlinDebug\n*F\n+ 1 NotificationsModule.kt\ncom/onesignal/notifications/NotificationsModule\n*L\n71#1:152\n73#1:154\n74#1:156\n75#1:158\n76#1:160\n77#1:162\n78#1:164\n79#1:166\n80#1:168\n82#1:170\n83#1:172\n84#1:174\n86#1:176\n87#1:178\n88#1:180\n90#1:182\n91#1:184\n93#1:186\n95#1:188\n136#1:193\n137#1:195\n139#1:197\n140#1:199\n143#1:201\n144#1:203\n146#1:205\n71#1:153\n73#1:155\n74#1:157\n75#1:159\n76#1:161\n77#1:163\n78#1:165\n79#1:167\n80#1:169\n82#1:171\n83#1:173\n84#1:175\n86#1:177\n87#1:179\n88#1:181\n90#1:183\n91#1:185\n93#1:187\n96#1:189\n109#1:190\n133#1:191\n134#1:192\n136#1:194\n137#1:196\n139#1:198\n140#1:200\n143#1:202\n144#1:204\n147#1:206\n148#1:207\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onesignal/notifications/NotificationsModule;",
        "Lcom/onesignal/common/modules/IModule;",
        "()V",
        "register",
        "",
        "builder",
        "Lcom/onesignal/common/services/ServiceBuilder;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Lcom/onesignal/common/services/ServiceBuilder;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    const-class v0, Lcom/onesignal/notifications/internal/backend/impl/NotificationBackendService;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 153
    const-class v1, Lcom/onesignal/notifications/internal/backend/INotificationBackendService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 154
    const-class v0, Lcom/onesignal/notifications/internal/restoration/impl/NotificationRestoreWorkManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 155
    const-class v1, Lcom/onesignal/notifications/internal/restoration/INotificationRestoreWorkManager;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 156
    const-class v0, Lcom/onesignal/notifications/internal/data/impl/NotificationQueryHelper;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 157
    const-class v1, Lcom/onesignal/notifications/internal/data/INotificationQueryHelper;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 158
    const-class v0, Lcom/onesignal/notifications/internal/badges/impl/BadgeCountUpdater;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 159
    const-class v1, Lcom/onesignal/notifications/internal/badges/IBadgeCountUpdater;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 160
    const-class v0, Lcom/onesignal/notifications/internal/data/impl/NotificationRepository;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 161
    const-class v1, Lcom/onesignal/notifications/internal/data/INotificationRepository;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 162
    const-class v0, Lcom/onesignal/notifications/internal/generation/impl/NotificationGenerationWorkManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 163
    const-class v1, Lcom/onesignal/notifications/internal/generation/INotificationGenerationWorkManager;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 164
    const-class v0, Lcom/onesignal/notifications/internal/bundle/impl/NotificationBundleProcessor;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 165
    const-class v1, Lcom/onesignal/notifications/internal/bundle/INotificationBundleProcessor;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 166
    const-class v0, Lcom/onesignal/notifications/internal/channels/impl/NotificationChannelManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 167
    const-class v1, Lcom/onesignal/notifications/internal/channels/INotificationChannelManager;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 168
    const-class v0, Lcom/onesignal/notifications/internal/limiting/impl/NotificationLimitManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 169
    const-class v1, Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 170
    const-class v0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 171
    const-class v1, Lcom/onesignal/notifications/internal/display/INotificationDisplayer;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 172
    const-class v0, Lcom/onesignal/notifications/internal/display/impl/SummaryNotificationDisplayer;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 173
    const-class v1, Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 174
    const-class v0, Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 175
    const-class v1, Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 176
    const-class v0, Lcom/onesignal/notifications/internal/generation/impl/NotificationGenerationProcessor;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 177
    const-class v1, Lcom/onesignal/notifications/internal/generation/INotificationGenerationProcessor;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 178
    const-class v0, Lcom/onesignal/notifications/internal/restoration/impl/NotificationRestoreProcessor;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 179
    const-class v1, Lcom/onesignal/notifications/internal/restoration/INotificationRestoreProcessor;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 180
    const-class v0, Lcom/onesignal/notifications/internal/summary/impl/NotificationSummaryManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 181
    const-class v1, Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 182
    const-class v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 183
    const-class v1, Lcom/onesignal/notifications/internal/open/INotificationOpenedProcessor;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 184
    const-class v0, Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessorHMS;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 185
    const-class v1, Lcom/onesignal/notifications/internal/open/INotificationOpenedProcessorHMS;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 186
    const-class v0, Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 187
    const-class v1, Lcom/onesignal/notifications/internal/permissions/INotificationPermissionController;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 188
    const-class v0, Lcom/onesignal/notifications/internal/lifecycle/impl/NotificationLifecycleService;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 189
    const-class v1, Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 98
    sget-object v0, Lcom/onesignal/notifications/NotificationsModule$register$1;->INSTANCE:Lcom/onesignal/notifications/NotificationsModule$register$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Lkotlin/jvm/functions/Function1;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 190
    const-class v1, Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 111
    sget-object v0, Lcom/onesignal/notifications/NotificationsModule$register$2;->INSTANCE:Lcom/onesignal/notifications/NotificationsModule$register$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Lkotlin/jvm/functions/Function1;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 191
    const-class v1, Lcom/onesignal/notifications/internal/registration/IPushRegistrator;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 192
    const-class v1, Lcom/onesignal/notifications/internal/registration/impl/IPushRegistratorCallback;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 193
    const-class v0, Lcom/onesignal/notifications/internal/registration/impl/GooglePlayServicesUpgradePrompt;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 194
    const-class v1, Lcom/onesignal/notifications/internal/registration/impl/GooglePlayServicesUpgradePrompt;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 195
    const-class v0, Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 196
    const-class v1, Lcom/onesignal/notifications/internal/pushtoken/IPushTokenManager;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 197
    const-class v0, Lcom/onesignal/notifications/internal/receivereceipt/impl/ReceiveReceiptWorkManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 198
    const-class v1, Lcom/onesignal/notifications/internal/receivereceipt/IReceiveReceiptWorkManager;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 199
    const-class v0, Lcom/onesignal/notifications/internal/receivereceipt/impl/ReceiveReceiptProcessor;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 200
    const-class v1, Lcom/onesignal/notifications/internal/receivereceipt/IReceiveReceiptProcessor;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 201
    const-class v0, Lcom/onesignal/notifications/internal/listeners/DeviceRegistrationListener;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 202
    const-class v1, Lcom/onesignal/core/internal/startup/IStartableService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 203
    const-class v0, Lcom/onesignal/notifications/internal/listeners/NotificationListener;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 204
    const-class v1, Lcom/onesignal/core/internal/startup/IStartableService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 205
    const-class v0, Lcom/onesignal/notifications/internal/NotificationsManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object p1

    .line 206
    const-class v0, Lcom/onesignal/notifications/INotificationsManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object p1

    .line 207
    const-class v0, Lcom/onesignal/notifications/internal/INotificationActivityOpener;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    return-void
.end method
