.class public Lcom/tencent/tmdownloader/internal/b/a/b;
.super Lcom/tencent/tmdownloader/internal/b/a/c;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/tmdownloader/internal/b/a/c;

.field private static final b:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/internal/b/a/b;->a:Lcom/tencent/tmdownloader/internal/b/a/c;

    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/tencent/tmdownloader/internal/b/c/f;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/tencent/tmdownloader/internal/b/c/i;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/tencent/tmdownloader/internal/b/c/d;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/tencent/tmdownloader/internal/b/c/g;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/tencent/tmdownloader/internal/b/c/c;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/tencent/tmdownloader/internal/b/c/k;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/tencent/tmdownloader/internal/b/c/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/tencent/tmdownloader/internal/b/c/h;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tmdownloader/internal/b/a/b;->b:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/tmdownloader/internal/b/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 20
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/tmdownloader/internal/b/a/c;
    .locals 6

    .prologue
    .line 48
    const-class v1, Lcom/tencent/tmdownloader/internal/b/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/b/a/b;->a:Lcom/tencent/tmdownloader/internal/b/a/c;

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    new-instance v2, Lcom/tencent/tmdownloader/internal/b/a/b;

    const-string/jumbo v3, "tmassistant_sdk_v2.db"

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/tencent/tmdownloader/internal/b/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v2, Lcom/tencent/tmdownloader/internal/b/a/b;->a:Lcom/tencent/tmdownloader/internal/b/a/c;

    .line 55
    :cond_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/b/a/b;->a:Lcom/tencent/tmdownloader/internal/b/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x3

    return v0
.end method

.method public c()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/tencent/tmdownloader/internal/b/a/b;->b:[Ljava/lang/Class;

    return-object v0
.end method
