.class final Lcom/onesignal/notifications/NotificationsModule$register$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationsModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/notifications/NotificationsModule;->register(Lcom/onesignal/common/services/ServiceBuilder;)V
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
        "Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;",
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
.field public static final INSTANCE:Lcom/onesignal/notifications/NotificationsModule$register$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onesignal/notifications/NotificationsModule$register$1;

    invoke-direct {v0}, Lcom/onesignal/notifications/NotificationsModule$register$1;-><init>()V

    sput-object v0, Lcom/onesignal/notifications/NotificationsModule$register$1;->INSTANCE:Lcom/onesignal/notifications/NotificationsModule$register$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onesignal/common/services/IServiceProvider;)Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/onesignal/notifications/internal/analytics/impl/FirebaseAnalyticsTracker;->Companion:Lcom/onesignal/notifications/internal/analytics/impl/FirebaseAnalyticsTracker$Companion;

    invoke-virtual {v0}, Lcom/onesignal/notifications/internal/analytics/impl/FirebaseAnalyticsTracker$Companion;->canTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/onesignal/notifications/internal/analytics/impl/FirebaseAnalyticsTracker;

    .line 101
    const-class v1, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {p1, v1}, Lcom/onesignal/common/services/IServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/core/internal/application/IApplicationService;

    .line 102
    const-class v2, Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-interface {p1, v2}, Lcom/onesignal/common/services/IServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/core/internal/config/ConfigModelStore;

    .line 103
    const-class v3, Lcom/onesignal/core/internal/time/ITime;

    invoke-interface {p1, v3}, Lcom/onesignal/common/services/IServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/core/internal/time/ITime;

    .line 100
    invoke-direct {v0, v1, v2, p1}, Lcom/onesignal/notifications/internal/analytics/impl/FirebaseAnalyticsTracker;-><init>(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/core/internal/time/ITime;)V

    check-cast v0, Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;

    return-object v0

    .line 106
    :cond_0
    new-instance p1, Lcom/onesignal/notifications/internal/analytics/impl/NoAnalyticsTracker;

    invoke-direct {p1}, Lcom/onesignal/notifications/internal/analytics/impl/NoAnalyticsTracker;-><init>()V

    check-cast p1, Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Lcom/onesignal/common/services/IServiceProvider;

    invoke-virtual {p0, p1}, Lcom/onesignal/notifications/NotificationsModule$register$1;->invoke(Lcom/onesignal/common/services/IServiceProvider;)Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;

    move-result-object p1

    return-object p1
.end method
