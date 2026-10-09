.class public Lcom/tencent/tmdownloader/internal/logreport/i;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/tmdownloader/internal/logreport/i;

.field protected static final b:[Ljava/lang/Class;


# instance fields
.field private final c:Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/internal/logreport/i;->a:Lcom/tencent/tmdownloader/internal/logreport/i;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/tencent/tmdownloader/internal/logreport/c;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/tencent/tmdownloader/internal/logreport/g;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/tencent/tmdownloader/internal/logreport/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/tmdownloader/internal/logreport/i;->b:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lcom/tencent/tmdownloader/internal/logreport/j;

    invoke-direct {v0, p0}, Lcom/tencent/tmdownloader/internal/logreport/j;-><init>(Lcom/tencent/tmdownloader/internal/logreport/i;)V

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/i;->c:Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;

    .line 43
    invoke-static {}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->getInstance()Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/logreport/i;->c:Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->addNetworkChangedObserver(Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;)V

    .line 44
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/tmdownloader/internal/logreport/i;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcom/tencent/tmdownloader/internal/logreport/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/logreport/i;->a:Lcom/tencent/tmdownloader/internal/logreport/i;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/tencent/tmdownloader/internal/logreport/i;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/logreport/i;-><init>()V

    sput-object v0, Lcom/tencent/tmdownloader/internal/logreport/i;->a:Lcom/tencent/tmdownloader/internal/logreport/i;

    .line 38
    :cond_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/logreport/i;->a:Lcom/tencent/tmdownloader/internal/logreport/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public b()V
    .locals 6

    .prologue
    .line 51
    sget-object v2, Lcom/tencent/tmdownloader/internal/logreport/i;->b:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 53
    :try_start_0
    const-class v4, Lcom/tencent/tmdownloader/internal/logreport/e;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/c;->h()Lcom/tencent/tmdownloader/internal/logreport/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tmdownloader/internal/logreport/c;->a()V

    .line 56
    :cond_0
    const-class v4, Lcom/tencent/tmdownloader/internal/logreport/g;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/g;->h()Lcom/tencent/tmdownloader/internal/logreport/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tmdownloader/internal/logreport/g;->a()V

    .line 59
    :cond_1
    const-class v4, Lcom/tencent/tmdownloader/internal/logreport/d;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/logreport/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const-string v4, "LogReportManager"

    const-string v5, "exception:"

    invoke-static {v4, v5, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 69
    :cond_3
    invoke-static {}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->getInstance()Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmdownloader/internal/logreport/i;->c:Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->removeNetworkChangedObserver(Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;)V

    .line 70
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    .line 80
    sget-object v2, Lcom/tencent/tmdownloader/internal/logreport/i;->b:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 82
    :try_start_0
    const-class v4, Lcom/tencent/tmdownloader/internal/logreport/c;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/c;->h()Lcom/tencent/tmdownloader/internal/logreport/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tmdownloader/internal/logreport/c;->c()V

    .line 85
    :cond_0
    const-class v4, Lcom/tencent/tmdownloader/internal/logreport/g;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/g;->h()Lcom/tencent/tmdownloader/internal/logreport/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/logreport/g;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    const-string v4, "LogReportManager"

    const-string v5, "exception:"

    invoke-static {v4, v5, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 94
    :cond_2
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    .line 101
    sget-object v2, Lcom/tencent/tmdownloader/internal/logreport/i;->b:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 103
    :try_start_0
    const-class v4, Lcom/tencent/tmdownloader/internal/logreport/c;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/c;->h()Lcom/tencent/tmdownloader/internal/logreport/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tmdownloader/internal/logreport/c;->b()V

    .line 106
    :cond_0
    const-class v4, Lcom/tencent/tmdownloader/internal/logreport/g;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/g;->h()Lcom/tencent/tmdownloader/internal/logreport/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/tmdownloader/internal/logreport/g;->b()V

    .line 109
    :cond_1
    const-class v4, Lcom/tencent/tmdownloader/internal/logreport/d;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/d;->h()Lcom/tencent/tmdownloader/internal/logreport/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/logreport/d;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v4, "LogReportManager"

    const-string v5, "exception:"

    invoke-static {v4, v5, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 118
    :cond_3
    return-void
.end method
