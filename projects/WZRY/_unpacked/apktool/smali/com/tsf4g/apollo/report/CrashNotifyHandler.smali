.class public Lcom/tsf4g/apollo/report/CrashNotifyHandler;
.super Ljava/lang/Object;
.source "CrashNotifyHandler.java"


# static fields
.field private static LOGTAG:Ljava/lang/String;

.field private static _instance:Lcom/tsf4g/apollo/report/CrashNotifyHandler;

.field private static _listener:Lcom/tsf4g/apollo/report/ICrashListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "ApolloTag"

    sput-object v0, Lcom/tsf4g/apollo/report/CrashNotifyHandler;->LOGTAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static declared-synchronized Instance()Lcom/tsf4g/apollo/report/CrashNotifyHandler;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/tsf4g/apollo/report/CrashNotifyHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tsf4g/apollo/report/CrashNotifyHandler;->_instance:Lcom/tsf4g/apollo/report/CrashNotifyHandler;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/tsf4g/apollo/report/CrashNotifyHandler;

    invoke-direct {v0}, Lcom/tsf4g/apollo/report/CrashNotifyHandler;-><init>()V

    sput-object v0, Lcom/tsf4g/apollo/report/CrashNotifyHandler;->_instance:Lcom/tsf4g/apollo/report/CrashNotifyHandler;

    .line 31
    :cond_0
    sget-object v0, Lcom/tsf4g/apollo/report/CrashNotifyHandler;->_instance:Lcom/tsf4g/apollo/report/CrashNotifyHandler;
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

.method public static OnCrashExtMessageNotify()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/tsf4g/apollo/report/CrashNotifyHandler;->_listener:Lcom/tsf4g/apollo/report/ICrashListener;

    if-nez v0, :cond_0

    .line 16
    sget-object v0, Lcom/tsf4g/apollo/report/CrashNotifyHandler;->LOGTAG:Ljava/lang/String;

    const-string v1, "listener is nil"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const-string v0, ""

    .line 19
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tsf4g/apollo/report/CrashNotifyHandler;->_listener:Lcom/tsf4g/apollo/report/ICrashListener;

    invoke-interface {v0}, Lcom/tsf4g/apollo/report/ICrashListener;->OnCrashExtMessageNotify()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public SetListener(Lcom/tsf4g/apollo/report/ICrashListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tsf4g/apollo/report/ICrashListener;

    .prologue
    .line 10
    sput-object p1, Lcom/tsf4g/apollo/report/CrashNotifyHandler;->_listener:Lcom/tsf4g/apollo/report/ICrashListener;

    .line 11
    return-void
.end method
