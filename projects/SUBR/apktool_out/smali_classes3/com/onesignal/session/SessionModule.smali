.class public final Lcom/onesignal/session/SessionModule;
.super Ljava/lang/Object;
.source "SessionModule.kt"

# interfaces
.implements Lcom/onesignal/common/modules/IModule;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSessionModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionModule.kt\ncom/onesignal/session/SessionModule\n+ 2 ServiceBuilder.kt\ncom/onesignal/common/services/ServiceBuilder\n+ 3 ServiceRegistration.kt\ncom/onesignal/common/services/ServiceRegistration\n*L\n1#1,46:1\n11#2:47\n11#2:49\n11#2:51\n11#2:53\n11#2:56\n11#2:58\n11#2:60\n11#2:64\n11#2:66\n15#3:48\n15#3:50\n15#3:52\n15#3:54\n15#3:55\n15#3:57\n15#3:59\n15#3:61\n15#3:62\n15#3:63\n15#3:65\n15#3:67\n*S KotlinDebug\n*F\n+ 1 SessionModule.kt\ncom/onesignal/session/SessionModule\n*L\n26#1:47\n27#1:49\n28#1:51\n29#1:53\n34#1:56\n37#1:58\n38#1:60\n42#1:64\n43#1:66\n26#1:48\n27#1:50\n28#1:52\n30#1:54\n31#1:55\n34#1:57\n37#1:59\n39#1:61\n40#1:62\n41#1:63\n42#1:65\n43#1:67\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onesignal/session/SessionModule;",
        "Lcom/onesignal/common/modules/IModule;",
        "()V",
        "register",
        "",
        "builder",
        "Lcom/onesignal/common/services/ServiceBuilder;",
        "com.onesignal.core"
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Lcom/onesignal/common/services/ServiceBuilder;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const-class v0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventsPreferences;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 48
    const-class v1, Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsPreferences;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 49
    const-class v0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventsRepository;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 50
    const-class v1, Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsRepository;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 51
    const-class v0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventsBackendService;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 52
    const-class v1, Lcom/onesignal/session/internal/outcomes/impl/IOutcomeEventsBackendService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 53
    const-class v0, Lcom/onesignal/session/internal/outcomes/impl/OutcomeEventsController;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 54
    const-class v1, Lcom/onesignal/session/internal/outcomes/IOutcomeEventsController;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 55
    const-class v1, Lcom/onesignal/core/internal/startup/IStartableService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 56
    const-class v0, Lcom/onesignal/session/internal/influence/impl/InfluenceManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 57
    const-class v1, Lcom/onesignal/session/internal/influence/IInfluenceManager;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 58
    const-class v0, Lcom/onesignal/session/internal/session/SessionModelStore;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 59
    const-class v1, Lcom/onesignal/session/internal/session/SessionModelStore;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 60
    const-class v0, Lcom/onesignal/session/internal/session/impl/SessionService;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 61
    const-class v1, Lcom/onesignal/session/internal/session/ISessionService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 62
    const-class v1, Lcom/onesignal/core/internal/startup/IStartableService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 63
    const-class v1, Lcom/onesignal/core/internal/background/IBackgroundService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 64
    const-class v0, Lcom/onesignal/session/internal/session/impl/SessionListener;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 65
    const-class v1, Lcom/onesignal/core/internal/startup/IStartableService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 66
    const-class v0, Lcom/onesignal/session/internal/SessionManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object p1

    .line 67
    const-class v0, Lcom/onesignal/session/ISessionManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    return-void
.end method
