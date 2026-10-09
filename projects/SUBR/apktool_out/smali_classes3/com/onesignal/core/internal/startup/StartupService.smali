.class public final Lcom/onesignal/core/internal/startup/StartupService;
.super Ljava/lang/Object;
.source "StartupService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStartupService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartupService.kt\ncom/onesignal/core/internal/startup/StartupService\n+ 2 ServiceProvider.kt\ncom/onesignal/common/services/ServiceProvider\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,19:1\n31#2:20\n31#2:23\n1851#3,2:21\n1851#3,2:24\n*S KotlinDebug\n*F\n+ 1 StartupService.kt\ncom/onesignal/core/internal/startup/StartupService\n*L\n9#1:20\n15#1:23\n9#1:21,2\n15#1:24,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onesignal/core/internal/startup/StartupService;",
        "",
        "services",
        "Lcom/onesignal/common/services/ServiceProvider;",
        "(Lcom/onesignal/common/services/ServiceProvider;)V",
        "bootstrap",
        "",
        "scheduleStart",
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


# instance fields
.field private final services:Lcom/onesignal/common/services/ServiceProvider;


# direct methods
.method public static synthetic $r8$lambda$cro7h_2EV5IY51eJYpdt680twSQ(Lcom/onesignal/core/internal/startup/StartupService;)V
    .locals 0

    invoke-static {p0}, Lcom/onesignal/core/internal/startup/StartupService;->scheduleStart$lambda-2(Lcom/onesignal/core/internal/startup/StartupService;)V

    return-void
.end method

.method public constructor <init>(Lcom/onesignal/common/services/ServiceProvider;)V
    .locals 1

    const-string v0, "services"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/onesignal/core/internal/startup/StartupService;->services:Lcom/onesignal/common/services/ServiceProvider;

    return-void
.end method

.method private static final scheduleStart$lambda-2(Lcom/onesignal/core/internal/startup/StartupService;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object p0, p0, Lcom/onesignal/core/internal/startup/StartupService;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 23
    const-class v0, Lcom/onesignal/core/internal/startup/IStartableService;

    invoke-virtual {p0, v0}, Lcom/onesignal/common/services/ServiceProvider;->getAllServices(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 24
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/core/internal/startup/IStartableService;

    .line 15
    invoke-interface {v0}, Lcom/onesignal/core/internal/startup/IStartableService;->start()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final bootstrap()V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/onesignal/core/internal/startup/StartupService;->services:Lcom/onesignal/common/services/ServiceProvider;

    .line 20
    const-class v1, Lcom/onesignal/core/internal/startup/IBootstrapService;

    invoke-virtual {v0, v1}, Lcom/onesignal/common/services/ServiceProvider;->getAllServices(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/core/internal/startup/IBootstrapService;

    .line 9
    invoke-interface {v1}, Lcom/onesignal/core/internal/startup/IBootstrapService;->bootstrap()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final scheduleStart()V
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/Thread;

    .line 16
    new-instance v1, Lcom/onesignal/core/internal/startup/StartupService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/onesignal/core/internal/startup/StartupService$$ExternalSyntheticLambda0;-><init>(Lcom/onesignal/core/internal/startup/StartupService;)V

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
