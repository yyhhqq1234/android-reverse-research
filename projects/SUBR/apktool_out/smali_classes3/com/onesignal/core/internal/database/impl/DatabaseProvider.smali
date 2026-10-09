.class public final Lcom/onesignal/core/internal/database/impl/DatabaseProvider;
.super Ljava/lang/Object;
.source "DatabaseProvider.kt"

# interfaces
.implements Lcom/onesignal/core/internal/database/IDatabaseProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onesignal/core/internal/database/impl/DatabaseProvider;",
        "Lcom/onesignal/core/internal/database/IDatabaseProvider;",
        "_application",
        "Lcom/onesignal/core/internal/application/IApplicationService;",
        "(Lcom/onesignal/core/internal/application/IApplicationService;)V",
        "lock",
        "",
        "os",
        "Lcom/onesignal/core/internal/database/IDatabase;",
        "getOs",
        "()Lcom/onesignal/core/internal/database/IDatabase;",
        "osDatabase",
        "Lcom/onesignal/core/internal/database/impl/OSDatabase;",
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
.field private final _application:Lcom/onesignal/core/internal/application/IApplicationService;

.field private final lock:Ljava/lang/Object;

.field private osDatabase:Lcom/onesignal/core/internal/database/impl/OSDatabase;


# direct methods
.method public constructor <init>(Lcom/onesignal/core/internal/application/IApplicationService;)V
    .locals 1

    const-string v0, "_application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/onesignal/core/internal/database/impl/DatabaseProvider;->_application:Lcom/onesignal/core/internal/application/IApplicationService;

    .line 11
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onesignal/core/internal/database/impl/DatabaseProvider;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getOs()Lcom/onesignal/core/internal/database/IDatabase;
    .locals 8

    .line 16
    iget-object v0, p0, Lcom/onesignal/core/internal/database/impl/DatabaseProvider;->osDatabase:Lcom/onesignal/core/internal/database/impl/OSDatabase;

    if-nez v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/onesignal/core/internal/database/impl/DatabaseProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/core/internal/database/impl/DatabaseProvider;->osDatabase:Lcom/onesignal/core/internal/database/impl/OSDatabase;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/onesignal/core/internal/database/impl/OSDatabase;

    new-instance v3, Lcom/onesignal/session/internal/outcomes/impl/OutcomeTableProvider;

    invoke-direct {v3}, Lcom/onesignal/session/internal/outcomes/impl/OutcomeTableProvider;-><init>()V

    iget-object v2, p0, Lcom/onesignal/core/internal/database/impl/DatabaseProvider;->_application:Lcom/onesignal/core/internal/application/IApplicationService;

    invoke-interface {v2}, Lcom/onesignal/core/internal/application/IApplicationService;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/onesignal/core/internal/database/impl/OSDatabase;-><init>(Lcom/onesignal/session/internal/outcomes/impl/OutcomeTableProvider;Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/onesignal/core/internal/database/impl/DatabaseProvider;->osDatabase:Lcom/onesignal/core/internal/database/impl/OSDatabase;

    .line 21
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/onesignal/core/internal/database/impl/DatabaseProvider;->osDatabase:Lcom/onesignal/core/internal/database/impl/OSDatabase;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onesignal/core/internal/database/IDatabase;

    return-object v0
.end method
