.class public Lcom/tencent/tmassistantsdk/internal/e/a/a;
.super Lcom/tencent/tmassistantsdk/internal/e/a/c;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/tmassistantsdk/internal/e/a/c;

.field protected static final b:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/e/a/a;->a:Lcom/tencent/tmassistantsdk/internal/e/a/c;

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/tencent/tmassistantsdk/internal/e/b/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/e/a/a;->b:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "tmassistant_sdk.db"

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/tencent/tmassistantsdk/internal/e/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 25
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/tmassistantsdk/internal/e/a/c;
    .locals 6

    .prologue
    .line 35
    const-class v1, Lcom/tencent/tmassistantsdk/internal/e/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/e/a/a;->a:Lcom/tencent/tmassistantsdk/internal/e/a/c;

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    new-instance v2, Lcom/tencent/tmassistantsdk/internal/e/a/a;

    const-string/jumbo v3, "tmassistant_sdk.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/tencent/tmassistantsdk/internal/e/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v2, Lcom/tencent/tmassistantsdk/internal/e/a/a;->a:Lcom/tencent/tmassistantsdk/internal/e/a/c;

    .line 42
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/e/a/a;->a:Lcom/tencent/tmassistantsdk/internal/e/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public c()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/e/a/a;->b:[Ljava/lang/Class;

    return-object v0
.end method
