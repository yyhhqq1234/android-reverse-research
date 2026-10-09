.class public Lcom/tencent/tmdownloader/internal/b/c/h;
.super Lcom/tencent/tmdownloader/internal/b/c/a;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/tmdownloader/internal/b/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/internal/b/c/h;->a:Lcom/tencent/tmdownloader/internal/b/c/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/tencent/tmdownloader/internal/b/c/a;-><init>()V

    return-void
.end method

.method public static declared-synchronized g()Lcom/tencent/tmdownloader/internal/b/c/h;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/tencent/tmdownloader/internal/b/c/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/b/c/h;->a:Lcom/tencent/tmdownloader/internal/b/c/h;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/tencent/tmdownloader/internal/b/c/h;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/b/c/h;-><init>()V

    sput-object v0, Lcom/tencent/tmdownloader/internal/b/c/h;->a:Lcom/tencent/tmdownloader/internal/b/c/h;

    .line 29
    :cond_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/b/c/h;->a:Lcom/tencent/tmdownloader/internal/b/c/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected b(I)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/c/h;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "downloadQualityLogData"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "CREATE TABLE if not exists downloadQualityLogData( _id INTEGER PRIMARY KEY AUTOINCREMENT, logData BLOB );"

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "INSERT INTO downloadQualityLogData logData = ?"

    return-object v0
.end method
