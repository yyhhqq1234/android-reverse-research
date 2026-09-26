.class public Lcom/netease/download/listener/DownloadListenerCore;
.super Ljava/lang/Object;
.source "DownloadListenerCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadListenerCore"

.field public static volatile mAllSize:J

.field private static mDownloadListenerHandler:Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

.field private static mListener:Lcom/netease/download/listener/DownloadListener;

.field private static mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile mTotalSize:J

.field private static sDownloadListenCore:Lcom/netease/download/listener/DownloadListenerCore;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/netease/download/listener/DownloadListenerCore;->sDownloadListenCore:Lcom/netease/download/listener/DownloadListenerCore;

    .line 41
    sput-object v0, Lcom/netease/download/listener/DownloadListenerCore;->mDownloadListenerHandler:Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    .line 43
    sput-wide v2, Lcom/netease/download/listener/DownloadListenerCore;->mTotalSize:J

    .line 45
    sput-wide v2, Lcom/netease/download/listener/DownloadListenerCore;->mAllSize:J

    .line 47
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/netease/download/listener/DownloadListenerCore;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$0()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/netease/download/listener/DownloadListenerCore;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/netease/download/listener/DownloadListenerCore;->mDownloadListenerHandler:Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    return-object v0
.end method

.method static synthetic access$2()Lcom/netease/download/listener/DownloadListener;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/netease/download/listener/DownloadListenerCore;->mListener:Lcom/netease/download/listener/DownloadListener;

    return-object v0
.end method

.method public static getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/netease/download/listener/DownloadListenerCore;->mDownloadListenerHandler:Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;-><init>(Landroid/os/Looper;Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;)V

    sput-object v0, Lcom/netease/download/listener/DownloadListenerCore;->mDownloadListenerHandler:Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    .line 78
    :cond_0
    sget-object v0, Lcom/netease/download/listener/DownloadListenerCore;->mDownloadListenerHandler:Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    return-object v0
.end method

.method public static getInstances()Lcom/netease/download/listener/DownloadListenerCore;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/netease/download/listener/DownloadListenerCore;->sDownloadListenCore:Lcom/netease/download/listener/DownloadListenerCore;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/netease/download/listener/DownloadListenerCore;

    invoke-direct {v0}, Lcom/netease/download/listener/DownloadListenerCore;-><init>()V

    sput-object v0, Lcom/netease/download/listener/DownloadListenerCore;->sDownloadListenCore:Lcom/netease/download/listener/DownloadListenerCore;

    .line 57
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    .line 60
    :cond_0
    sget-object v0, Lcom/netease/download/listener/DownloadListenerCore;->sDownloadListenCore:Lcom/netease/download/listener/DownloadListenerCore;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 311
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 96
    sput-wide v0, Lcom/netease/download/listener/DownloadListenerCore;->mTotalSize:J

    .line 97
    sput-wide v0, Lcom/netease/download/listener/DownloadListenerCore;->mAllSize:J

    .line 98
    sget-object v0, Lcom/netease/download/listener/DownloadListenerCore;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 99
    return-void
.end method

.method public declared-synchronized getAllSize()J
    .locals 2

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    sget-wide v0, Lcom/netease/download/listener/DownloadListenerCore;->mAllSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDownloadListener()Lcom/netease/download/listener/DownloadListener;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/netease/download/listener/DownloadListenerCore;->mListener:Lcom/netease/download/listener/DownloadListener;

    return-object v0
.end method

.method public declared-synchronized getTotalSize()J
    .locals 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    sget-wide v0, Lcom/netease/download/listener/DownloadListenerCore;->mTotalSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Lcom/netease/download/listener/DownloadListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/netease/download/listener/DownloadListener;

    .prologue
    .line 64
    const-string v0, "DownloadListenerCore"

    const-string v1, "\u521d\u59cb\u5316\u56de\u8c03\u76d1\u542c\u5668"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sput-object p1, Lcom/netease/download/listener/DownloadListenerCore;->mListener:Lcom/netease/download/listener/DownloadListener;

    .line 66
    return-void
.end method

.method public declared-synchronized sendAllSize(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    sget-wide v0, Lcom/netease/download/listener/DownloadListenerCore;->mAllSize:J

    add-long/2addr v0, p1

    sput-wide v0, Lcom/netease/download/listener/DownloadListenerCore;->mAllSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
