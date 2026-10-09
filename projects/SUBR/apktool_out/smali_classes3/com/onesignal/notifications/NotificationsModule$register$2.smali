.class final Lcom/onesignal/notifications/NotificationsModule$register$2;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field public static final INSTANCE:Lcom/onesignal/notifications/NotificationsModule$register$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onesignal/notifications/NotificationsModule$register$2;

    invoke-direct {v0}, Lcom/onesignal/notifications/NotificationsModule$register$2;-><init>()V

    sput-object v0, Lcom/onesignal/notifications/NotificationsModule$register$2;->INSTANCE:Lcom/onesignal/notifications/NotificationsModule$register$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onesignal/common/services/IServiceProvider;)Ljava/lang/Object;
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    const-class v0, Lcom/onesignal/core/internal/device/IDeviceService;

    invoke-interface {p1, v0}, Lcom/onesignal/common/services/IServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/core/internal/device/IDeviceService;

    .line 114
    invoke-interface {v0}, Lcom/onesignal/core/internal/device/IDeviceService;->isFireOSDeviceType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    new-instance v0, Lcom/onesignal/notifications/internal/registration/impl/PushRegistratorADM;

    const-class v1, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {p1, v1}, Lcom/onesignal/common/services/IServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-direct {v0, p1}, Lcom/onesignal/notifications/internal/registration/impl/PushRegistratorADM;-><init>(Lcom/onesignal/core/internal/application/IApplicationService;)V

    goto :goto_1

    .line 116
    :cond_0
    invoke-interface {v0}, Lcom/onesignal/core/internal/device/IDeviceService;->isAndroidDeviceType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    invoke-interface {v0}, Lcom/onesignal/core/internal/device/IDeviceService;->getHasFCMLibrary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    new-instance v1, Lcom/onesignal/notifications/internal/registration/impl/PushRegistratorFCM;

    .line 119
    const-class v2, Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-interface {p1, v2}, Lcom/onesignal/common/services/IServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/core/internal/config/ConfigModelStore;

    .line 120
    const-class v3, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {p1, v3}, Lcom/onesignal/common/services/IServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/core/internal/application/IApplicationService;

    .line 123
    const-class v4, Lcom/onesignal/notifications/internal/registration/impl/GooglePlayServicesUpgradePrompt;

    invoke-interface {p1, v4}, Lcom/onesignal/common/services/IServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/notifications/internal/registration/impl/GooglePlayServicesUpgradePrompt;

    .line 118
    invoke-direct {v1, v2, v3, p1, v0}, Lcom/onesignal/notifications/internal/registration/impl/PushRegistratorFCM;-><init>(Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/registration/impl/GooglePlayServicesUpgradePrompt;Lcom/onesignal/core/internal/device/IDeviceService;)V

    goto :goto_0

    .line 127
    :cond_1
    new-instance v0, Lcom/onesignal/notifications/internal/registration/impl/PushRegistratorNone;

    invoke-direct {v0}, Lcom/onesignal/notifications/internal/registration/impl/PushRegistratorNone;-><init>()V

    goto :goto_1

    .line 130
    :cond_2
    new-instance v1, Lcom/onesignal/notifications/internal/registration/impl/PushRegistratorHMS;

    const-class v2, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {p1, v2}, Lcom/onesignal/common/services/IServiceProvider;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-direct {v1, v0, p1}, Lcom/onesignal/notifications/internal/registration/impl/PushRegistratorHMS;-><init>(Lcom/onesignal/core/internal/device/IDeviceService;Lcom/onesignal/core/internal/application/IApplicationService;)V

    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 111
    check-cast p1, Lcom/onesignal/common/services/IServiceProvider;

    invoke-virtual {p0, p1}, Lcom/onesignal/notifications/NotificationsModule$register$2;->invoke(Lcom/onesignal/common/services/IServiceProvider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
