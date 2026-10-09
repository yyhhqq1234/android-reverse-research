.class public final Lcom/onesignal/session/internal/outcomes/migrations/RemoveZeroSessionTimeRecords;
.super Ljava/lang/Object;
.source "RemoveZeroSessionTimeRecords.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onesignal/session/internal/outcomes/migrations/RemoveZeroSessionTimeRecords;",
        "",
        "()V",
        "run",
        "",
        "databaseProvider",
        "Lcom/onesignal/core/internal/database/IDatabaseProvider;",
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
.field public static final INSTANCE:Lcom/onesignal/session/internal/outcomes/migrations/RemoveZeroSessionTimeRecords;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onesignal/session/internal/outcomes/migrations/RemoveZeroSessionTimeRecords;

    invoke-direct {v0}, Lcom/onesignal/session/internal/outcomes/migrations/RemoveZeroSessionTimeRecords;-><init>()V

    sput-object v0, Lcom/onesignal/session/internal/outcomes/migrations/RemoveZeroSessionTimeRecords;->INSTANCE:Lcom/onesignal/session/internal/outcomes/migrations/RemoveZeroSessionTimeRecords;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lcom/onesignal/core/internal/database/IDatabaseProvider;)V
    .locals 3

    const-string v0, "databaseProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {p1}, Lcom/onesignal/core/internal/database/IDatabaseProvider;->getOs()Lcom/onesignal/core/internal/database/IDatabase;

    move-result-object p1

    const-string v0, "name = \"os__session_duration\" AND session_time = 0"

    const/4 v1, 0x0

    const-string v2, "outcome"

    invoke-interface {p1, v2, v0, v1}, Lcom/onesignal/core/internal/database/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
