.class public final Lcom/onesignal/inAppMessages/InAppMessagesModule;
.super Ljava/lang/Object;
.source "InAppMessagesModule.kt"

# interfaces
.implements Lcom/onesignal/common/modules/IModule;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInAppMessagesModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppMessagesModule.kt\ncom/onesignal/inAppMessages/InAppMessagesModule\n+ 2 ServiceBuilder.kt\ncom/onesignal/common/services/ServiceBuilder\n+ 3 ServiceRegistration.kt\ncom/onesignal/common/services/ServiceRegistration\n*L\n1#1,64:1\n11#2:65\n11#2:67\n11#2:69\n11#2:71\n11#2:73\n11#2:75\n11#2:77\n11#2:79\n11#2:81\n11#2:83\n11#2:85\n11#2:87\n11#2:89\n11#2:91\n15#3:66\n15#3:68\n15#3:70\n15#3:72\n15#3:74\n15#3:76\n15#3:78\n15#3:80\n15#3:82\n15#3:84\n15#3:86\n15#3:88\n15#3:90\n15#3:92\n15#3:93\n*S KotlinDebug\n*F\n+ 1 InAppMessagesModule.kt\ncom/onesignal/inAppMessages/InAppMessagesModule\n*L\n33#1:65\n36#1:67\n37#1:69\n38#1:71\n39#1:73\n40#1:75\n41#1:77\n44#1:79\n45#1:81\n46#1:83\n50#1:85\n53#1:87\n56#1:89\n58#1:91\n33#1:66\n36#1:68\n37#1:70\n38#1:72\n39#1:74\n40#1:76\n41#1:78\n44#1:80\n45#1:82\n47#1:84\n50#1:86\n53#1:88\n56#1:90\n59#1:92\n60#1:93\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onesignal/inAppMessages/InAppMessagesModule;",
        "Lcom/onesignal/common/modules/IModule;",
        "()V",
        "register",
        "",
        "builder",
        "Lcom/onesignal/common/services/ServiceBuilder;",
        "com.onesignal.inAppMessages"
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Lcom/onesignal/common/services/ServiceBuilder;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const-class v0, Lcom/onesignal/inAppMessages/internal/state/InAppStateService;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 68
    const-class v1, Lcom/onesignal/inAppMessages/internal/state/InAppStateService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 69
    const-class v0, Lcom/onesignal/inAppMessages/internal/hydrators/InAppHydrator;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 70
    const-class v1, Lcom/onesignal/inAppMessages/internal/hydrators/InAppHydrator;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 71
    const-class v0, Lcom/onesignal/inAppMessages/internal/preferences/impl/InAppPreferencesController;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 72
    const-class v1, Lcom/onesignal/inAppMessages/internal/preferences/IInAppPreferencesController;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 73
    const-class v0, Lcom/onesignal/inAppMessages/internal/repositories/impl/InAppRepository;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 74
    const-class v1, Lcom/onesignal/inAppMessages/internal/repositories/IInAppRepository;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 75
    const-class v0, Lcom/onesignal/inAppMessages/internal/backend/impl/InAppBackendService;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 76
    const-class v1, Lcom/onesignal/inAppMessages/internal/backend/IInAppBackendService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 77
    const-class v0, Lcom/onesignal/inAppMessages/internal/lifecycle/impl/IAMLifecycleService;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 78
    const-class v1, Lcom/onesignal/inAppMessages/internal/lifecycle/IInAppLifecycleService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 79
    const-class v0, Lcom/onesignal/inAppMessages/internal/triggers/TriggerModelStore;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 80
    const-class v1, Lcom/onesignal/inAppMessages/internal/triggers/TriggerModelStore;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 81
    const-class v0, Lcom/onesignal/inAppMessages/internal/triggers/impl/TriggerController;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 82
    const-class v1, Lcom/onesignal/inAppMessages/internal/triggers/ITriggerController;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 83
    const-class v0, Lcom/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerController;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 84
    const-class v1, Lcom/onesignal/inAppMessages/internal/triggers/impl/DynamicTriggerController;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 85
    const-class v0, Lcom/onesignal/inAppMessages/internal/display/impl/InAppDisplayer;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 86
    const-class v1, Lcom/onesignal/inAppMessages/internal/display/IInAppDisplayer;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 87
    const-class v0, Lcom/onesignal/inAppMessages/internal/preview/InAppMessagePreviewHandler;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 88
    const-class v1, Lcom/onesignal/core/internal/startup/IStartableService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 89
    const-class v0, Lcom/onesignal/inAppMessages/internal/prompt/impl/InAppMessagePromptFactory;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object v0

    .line 90
    const-class v1, Lcom/onesignal/inAppMessages/internal/prompt/IInAppMessagePromptFactory;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    .line 91
    const-class v0, Lcom/onesignal/inAppMessages/internal/InAppMessagesManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceBuilder;->register(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object p1

    .line 92
    const-class v0, Lcom/onesignal/inAppMessages/IInAppMessagesManager;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    move-result-object p1

    .line 93
    const-class v0, Lcom/onesignal/core/internal/startup/IStartableService;

    invoke-virtual {p1, v0}, Lcom/onesignal/common/services/ServiceRegistration;->provides(Ljava/lang/Class;)Lcom/onesignal/common/services/ServiceRegistration;

    return-void
.end method
