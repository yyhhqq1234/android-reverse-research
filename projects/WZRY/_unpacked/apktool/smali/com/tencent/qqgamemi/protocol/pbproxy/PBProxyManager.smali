.class public Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;
.super Ljava/lang/Object;
.source "PBProxyManager.java"


# static fields
.field private static mVideoRecordManager:Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;


# instance fields
.field private final EVENT_SOURCE_NAME:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private final WHAT_CONNECTION_SUCCESS:I

.field private isInitConnect:Z

.field private observer:Lcom/tencent/component/event/Observer;

.field private proxyCaches:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "PBProxyManager"

    iput-object v0, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->proxyCaches:Ljava/util/HashSet;

    .line 54
    const-string v0, "connectionMoitor"

    iput-object v0, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->EVENT_SOURCE_NAME:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->WHAT_CONNECTION_SUCCESS:I

    .line 56
    iput-boolean v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->isInitConnect:Z

    .line 58
    new-instance v0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager$1;-><init>(Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;)V

    iput-object v0, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->observer:Lcom/tencent/component/event/Observer;

    .line 21
    invoke-virtual {p0}, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->registerEvent()V

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->isInitConnect:Z

    return v0
.end method

.method static synthetic access$002(Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->isInitConnect:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->proxyCaches:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->mVideoRecordManager:Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->mVideoRecordManager:Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;-><init>()V

    sput-object v0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->mVideoRecordManager:Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->mVideoRecordManager:Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public connectionSuccessNotify()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    iget-object v0, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->TAG:Ljava/lang/String;

    const-string v1, "notifySuccess is called:"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/tencent/component/event/EventCenter;->getInstance()Lcom/tencent/component/event/EventCenter;

    move-result-object v0

    new-instance v1, Lcom/tencent/component/event/EventSource;

    const-string v2, "connectionMoitor"

    invoke-direct {v1, v2}, Lcom/tencent/component/event/EventSource;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/component/event/Event$EventRank;->NORMAL:Lcom/tencent/component/event/Event$EventRank;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/tencent/component/event/EventCenter;->notify(Lcom/tencent/component/event/EventSource;ILcom/tencent/component/event/Event$EventRank;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public registerEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    iget-object v0, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->TAG:Ljava/lang/String;

    const-string v1, "registerEvent is called!"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/tencent/component/event/EventCenter;->getInstance()Lcom/tencent/component/event/EventCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->observer:Lcom/tencent/component/event/Observer;

    const-string v2, "connectionMoitor"

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v4, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/component/event/EventCenter;->addObserver(Lcom/tencent/component/event/Observer;Ljava/lang/String;[I)V

    .line 78
    return-void
.end method

.method public requestWhiteListInfo(ILcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;)V
    .locals 4
    .param p1, "plugin_version"    # I
    .param p2, "listener"    # Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;

    .prologue
    .line 42
    new-instance v0, Lcom/tencent/qqgamemi/protocol/pbproxy/WhiteListInfoProxyEx;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, p2, v1}, Lcom/tencent/qqgamemi/protocol/pbproxy/WhiteListInfoProxyEx;-><init>(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;[Ljava/lang/Object;)V

    .line 43
    .local v0, "mWhiteListInfoProxyEx":Lcom/tencent/qqgamemi/protocol/pbproxy/WhiteListInfoProxyEx;
    if-eqz v0, :cond_0

    .line 44
    iget-boolean v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->isInitConnect:Z

    if-nez v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->proxyCaches:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->TAG:Ljava/lang/String;

    const-string v2, "requestWhiteListInfo is send!"

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Lcom/tencent/qqgamemi/protocol/pbproxy/WhiteListInfoProxyEx;->sendRequest()V

    goto :goto_0
.end method
