.class public final Lcom/onesignal/session/internal/session/impl/SessionListener;
.super Ljava/lang/Object;
.source "SessionListener.kt"

# interfaces
.implements Lcom/onesignal/core/internal/startup/IStartableService;
.implements Lcom/onesignal/session/internal/session/ISessionLifecycleHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/session/internal/session/impl/SessionListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00152\u00020\u00012\u00020\u0002:\u0001\u0015B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u000fH\u0016J\u0008\u0010\u0014\u001a\u00020\u000fH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onesignal/session/internal/session/impl/SessionListener;",
        "Lcom/onesignal/core/internal/startup/IStartableService;",
        "Lcom/onesignal/session/internal/session/ISessionLifecycleHandler;",
        "_operationRepo",
        "Lcom/onesignal/core/internal/operations/IOperationRepo;",
        "_sessionService",
        "Lcom/onesignal/session/internal/session/ISessionService;",
        "_configModelStore",
        "Lcom/onesignal/core/internal/config/ConfigModelStore;",
        "_identityModelStore",
        "Lcom/onesignal/user/internal/identity/IdentityModelStore;",
        "_outcomeEventsController",
        "Lcom/onesignal/session/internal/outcomes/IOutcomeEventsController;",
        "(Lcom/onesignal/core/internal/operations/IOperationRepo;Lcom/onesignal/session/internal/session/ISessionService;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/user/internal/identity/IdentityModelStore;Lcom/onesignal/session/internal/outcomes/IOutcomeEventsController;)V",
        "onSessionActive",
        "",
        "onSessionEnded",
        "duration",
        "",
        "onSessionStarted",
        "start",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onesignal/session/internal/session/impl/SessionListener$Companion;

.field public static final SECONDS_IN_A_DAY:J = 0x15180L


# instance fields
.field private final _configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

.field private final _identityModelStore:Lcom/onesignal/user/internal/identity/IdentityModelStore;

.field private final _operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

.field private final _outcomeEventsController:Lcom/onesignal/session/internal/outcomes/IOutcomeEventsController;

.field private final _sessionService:Lcom/onesignal/session/internal/session/ISessionService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onesignal/session/internal/session/impl/SessionListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/session/internal/session/impl/SessionListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/session/internal/session/impl/SessionListener;->Companion:Lcom/onesignal/session/internal/session/impl/SessionListener$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onesignal/core/internal/operations/IOperationRepo;Lcom/onesignal/session/internal/session/ISessionService;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/user/internal/identity/IdentityModelStore;Lcom/onesignal/session/internal/outcomes/IOutcomeEventsController;)V
    .locals 1

    const-string v0, "_operationRepo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_sessionService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_configModelStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_identityModelStore"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_outcomeEventsController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/onesignal/session/internal/session/impl/SessionListener;->_operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

    .line 33
    iput-object p2, p0, Lcom/onesignal/session/internal/session/impl/SessionListener;->_sessionService:Lcom/onesignal/session/internal/session/ISessionService;

    .line 34
    iput-object p3, p0, Lcom/onesignal/session/internal/session/impl/SessionListener;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    .line 35
    iput-object p4, p0, Lcom/onesignal/session/internal/session/impl/SessionListener;->_identityModelStore:Lcom/onesignal/user/internal/identity/IdentityModelStore;

    .line 36
    iput-object p5, p0, Lcom/onesignal/session/internal/session/impl/SessionListener;->_outcomeEventsController:Lcom/onesignal/session/internal/outcomes/IOutcomeEventsController;

    return-void
.end method

.method public static final synthetic access$get_outcomeEventsController$p(Lcom/onesignal/session/internal/session/impl/SessionListener;)Lcom/onesignal/session/internal/outcomes/IOutcomeEventsController;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/onesignal/session/internal/session/impl/SessionListener;->_outcomeEventsController:Lcom/onesignal/session/internal/outcomes/IOutcomeEventsController;

    return-object p0
.end method


# virtual methods
.method public onSessionActive()V
    .locals 0

    return-void
.end method

.method public onSessionEnded(J)V
    .locals 6

    const/16 v0, 0x3e8

    int-to-long v0, v0

    .line 50
    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_0

    const-wide/32 v0, 0x15180

    cmp-long v4, p1, v0

    if-lez v4, :cond_1

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionListener.onSessionEnded sending duration of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v2, v3}, Lcom/onesignal/debug/internal/logging/Logging;->error$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/onesignal/session/internal/session/impl/SessionListener;->_operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

    .line 58
    new-instance v1, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;

    iget-object v4, p0, Lcom/onesignal/session/internal/session/impl/SessionListener;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {v4}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v4

    check-cast v4, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {v4}, Lcom/onesignal/core/internal/config/ConfigModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/onesignal/session/internal/session/impl/SessionListener;->_identityModelStore:Lcom/onesignal/user/internal/identity/IdentityModelStore;

    invoke-virtual {v5}, Lcom/onesignal/user/internal/identity/IdentityModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v5

    check-cast v5, Lcom/onesignal/user/internal/identity/IdentityModel;

    invoke-virtual {v5}, Lcom/onesignal/user/internal/identity/IdentityModel;->getOnesignalId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, p1, p2}, Lcom/onesignal/user/internal/operations/TrackSessionEndOperation;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    check-cast v1, Lcom/onesignal/core/internal/operations/Operation;

    const/4 v4, 0x0

    .line 57
    invoke-static {v0, v1, v4, v2, v3}, Lcom/onesignal/core/internal/operations/IOperationRepo$DefaultImpls;->enqueue$default(Lcom/onesignal/core/internal/operations/IOperationRepo;Lcom/onesignal/core/internal/operations/Operation;ZILjava/lang/Object;)V

    .line 61
    new-instance v0, Lcom/onesignal/session/internal/session/impl/SessionListener$onSessionEnded$1;

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/onesignal/session/internal/session/impl/SessionListener$onSessionEnded$1;-><init>(Lcom/onesignal/session/internal/session/impl/SessionListener;JLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-static {v4, v0, p1, v3}, Lcom/onesignal/common/threading/ThreadUtilsKt;->suspendifyOnThread$default(ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public onSessionStarted()V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/onesignal/session/internal/session/impl/SessionListener;->_operationRepo:Lcom/onesignal/core/internal/operations/IOperationRepo;

    new-instance v1, Lcom/onesignal/user/internal/operations/TrackSessionStartOperation;

    iget-object v2, p0, Lcom/onesignal/session/internal/session/impl/SessionListener;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {v2}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v2

    check-cast v2, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {v2}, Lcom/onesignal/core/internal/config/ConfigModel;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onesignal/session/internal/session/impl/SessionListener;->_identityModelStore:Lcom/onesignal/user/internal/identity/IdentityModelStore;

    invoke-virtual {v3}, Lcom/onesignal/user/internal/identity/IdentityModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v3

    check-cast v3, Lcom/onesignal/user/internal/identity/IdentityModel;

    invoke-virtual {v3}, Lcom/onesignal/user/internal/identity/IdentityModel;->getOnesignalId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/onesignal/user/internal/operations/TrackSessionStartOperation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/onesignal/core/internal/operations/Operation;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/onesignal/core/internal/operations/IOperationRepo;->enqueue(Lcom/onesignal/core/internal/operations/Operation;Z)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/onesignal/session/internal/session/impl/SessionListener;->_sessionService:Lcom/onesignal/session/internal/session/ISessionService;

    invoke-interface {v0, p0}, Lcom/onesignal/session/internal/session/ISessionService;->subscribe(Ljava/lang/Object;)V

    return-void
.end method
