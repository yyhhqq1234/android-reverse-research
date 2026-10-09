.class public Lcom/tencent/tmdownloader/internal/b/c/k;
.super Lcom/tencent/tmdownloader/internal/b/c/a;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/tmdownloader/internal/b/c/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/internal/b/c/k;->a:Lcom/tencent/tmdownloader/internal/b/c/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tencent/tmdownloader/internal/b/c/a;-><init>()V

    return-void
.end method

.method public static declared-synchronized g()Lcom/tencent/tmdownloader/internal/b/c/k;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/tencent/tmdownloader/internal/b/c/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/b/c/k;->a:Lcom/tencent/tmdownloader/internal/b/c/k;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/tencent/tmdownloader/internal/b/c/k;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/b/c/k;-><init>()V

    sput-object v0, Lcom/tencent/tmdownloader/internal/b/c/k;->a:Lcom/tencent/tmdownloader/internal/b/c/k;

    .line 31
    :cond_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/b/c/k;->a:Lcom/tencent/tmdownloader/internal/b/c/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected b(I)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/c/k;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "InstallLogData"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "CREATE TABLE if not exists InstallLogData( _id INTEGER PRIMARY KEY AUTOINCREMENT, logData BLOB );"

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "INSERT INTO InstallLogData logData = ?"

    return-object v0
.end method
