.class public Lcom/tencent/tmassistantsdk/internal/c/h;
.super Lcom/tencent/tmassistantsdk/internal/c/a;
.source "ProGuard"


# static fields
.field protected static d:Lcom/tencent/tmassistantsdk/internal/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/c/h;->d:Lcom/tencent/tmassistantsdk/internal/c/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/tmassistantsdk/internal/c/a;-><init>()V

    .line 27
    return-void
.end method

.method public static declared-synchronized h()Lcom/tencent/tmassistantsdk/internal/c/h;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/tencent/tmassistantsdk/internal/c/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/c/h;->d:Lcom/tencent/tmassistantsdk/internal/c/h;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/c/h;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/internal/c/h;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantsdk/internal/c/h;->d:Lcom/tencent/tmassistantsdk/internal/c/h;

    .line 40
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantsdk/internal/c/h;->d:Lcom/tencent/tmassistantsdk/internal/c/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;
    .locals 2

    .prologue
    .line 49
    const-string v0, "TipsInfoReportManager"

    const-string v1, "createTipsInfoLog"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-nez p1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 54
    :cond_0
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;

    invoke-direct {v0}, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;-><init>()V

    .line 55
    iget-object v1, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userId:Ljava/lang/String;

    .line 56
    iget-object v1, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->userIdType:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->userIdType:Ljava/lang/String;

    .line 57
    iget-object v1, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->gamePackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gamePackageName:Ljava/lang/String;

    .line 58
    iget-object v1, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->gameVersionCode:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameVersionCode:I

    .line 59
    iget-object v1, p1, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->gameChannelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/tmassistantsdk/internal/protocol/jce/TipsInfoLog;->gameChannelId:Ljava/lang/String;

    goto :goto_0
.end method

.method protected e()Lcom/tencent/tmassistantsdk/internal/e/b/a;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/e/b/e;->g()Lcom/tencent/tmassistantsdk/internal/e/b/e;

    move-result-object v0

    return-object v0
.end method

.method protected f()B
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method
