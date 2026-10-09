.class public Lcom/tencent/qt/base/net/NetworkEngine;
.super Ljava/lang/Object;
.source "NetworkEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qt/base/net/NetworkEngine$1;,
        Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;,
        Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;,
        Lcom/tencent/qt/base/net/NetworkEngine$InnerWrapHandler;,
        Lcom/tencent/qt/base/net/NetworkEngine$NetworkReportHandler;,
        Lcom/tencent/qt/base/net/NetworkEngine$HelloHandler;,
        Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;,
        Lcom/tencent/qt/base/net/NetworkEngine$HelloMessageHandler;
    }
.end annotation


# static fields
.field public static final CONN_TYPE_DIR:I = 0x1

.field public static final CONN_TYPE_PROXY:I = 0x0

.field private static final DEFAULT_HELLO_TIME_INTERVAL:I = 0x41eb0

.field public static final DEFAULT_TIMEOUT:I = 0x4e20

.field public static final HELLO_ACTION:Ljava/lang/String; = "com.tencent.qt.base.net.HELLO_ACTION"

.field private static final HELLO_MAX_INTERVAL:I = 0xdbba0

.field private static final MAX_PROTOCOL_TIMEOUT:I = 0x3

.field private static final MSG_BROADCAST:I = 0x2

.field private static final PROTOCOL_STAT_TIMEOUT:J = 0x2710L

.field public static final TAG:Ljava/lang/String; = "QTNetwork"

.field private static instance_:Lcom/tencent/qt/base/net/NetworkEngine;

.field private static mInitClienttype:I

.field private static mInitContext:Landroid/content/Context;

.field private static mInitLooper:Landroid/os/Looper;

.field private static mInitVersion:I

.field private static mLoadLibary:Z


# instance fields
.field private isLogin:Z

.field isNeedHello:Z

.field private isSetUinSt:Z

.field mBroadcastHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qt/base/net/BroadcastHandler;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mFlowController:Lcom/tencent/qt/alg/network/NetworkFlowController;

.field mHelloHandler:Landroid/os/Handler;

.field mHelloHelper:Lcom/tencent/qt/base/net/HelloHelper;

.field private mHelloReceiver:Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;

.field mHelloTimeInterval:I

.field private mIPMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;",
            ">;"
        }
    .end annotation
.end field

.field mLastHelloTimestamp:J

.field mLastTimeoutProtocolTime:J

.field mLooper:Landroid/os/Looper;

.field private mMatchedHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qt/base/net/BroadcastHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeInJavaObj:I

.field mNetworkHandler:Lcom/tencent/qt/base/net/NetworkEngine$NetworkReportHandler;

.field mTimeoutRequests:I

.field private mUin:J

.field mVerifyHelper:Lcom/tencent/qt/base/net/VerifyHelper;

.field private mstDefaultKey:[B

.field private mstNormalKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qt/base/net/NetworkEngine;->mLoadLibary:Z

    .line 65
    invoke-static {}, Lcom/tencent/qt/base/net/GlobalPref;->getInstant()Lcom/tencent/qt/base/net/GlobalPref;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qt/base/net/GlobalPref;->loadLibary()V

    .line 66
    invoke-static {}, Lcom/tencent/qt/base/net/GlobalPref;->getInstant()Lcom/tencent/qt/base/net/GlobalPref;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qt/base/net/GlobalPref;->isLoadLibary()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/qt/base/net/NetworkEngine;->mLoadLibary:Z

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "clienttype"    # I
    .param p4, "version"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide v2, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLastHelloTimestamp:J

    .line 55
    const v0, 0x41eb0

    iput v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloTimeInterval:I

    .line 56
    iput-wide v2, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLastTimeoutProtocolTime:J

    .line 57
    iput v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mTimeoutRequests:I

    .line 58
    iput-boolean v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->isLogin:Z

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mIPMaps:Ljava/util/Map;

    .line 317
    iput-boolean v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->isSetUinSt:Z

    .line 318
    iput-wide v2, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mUin:J

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mBroadcastHandlers:Ljava/util/List;

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mMatchedHandlers:Ljava/util/List;

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloReceiver:Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;

    .line 199
    iput-object p1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mContext:Landroid/content/Context;

    .line 200
    iput-object p2, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLooper:Landroid/os/Looper;

    .line 201
    if-nez p2, :cond_0

    .line 202
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLooper:Landroid/os/Looper;

    .line 205
    :cond_0
    new-instance v0, Lcom/tencent/qt/base/net/NetworkEngine$HelloHandler;

    iget-object v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/tencent/qt/base/net/NetworkEngine$HelloHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloHandler:Landroid/os/Handler;

    .line 206
    new-instance v0, Lcom/tencent/qt/base/net/NetworkEngine$NetworkReportHandler;

    iget-object v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/tencent/qt/base/net/NetworkEngine$NetworkReportHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mNetworkHandler:Lcom/tencent/qt/base/net/NetworkEngine$NetworkReportHandler;

    .line 207
    return-void
.end method

.method static synthetic access$1000(Lcom/tencent/qt/base/net/NetworkEngine;ILcom/tencent/qt/base/net/Request;Lcom/tencent/qt/base/net/MessageHandler;I)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qt/base/net/NetworkEngine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/tencent/qt/base/net/Request;
    .param p3, "x3"    # Lcom/tencent/qt/base/net/MessageHandler;
    .param p4, "x4"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qt/base/net/NetworkEngine;->native_send_request(ILcom/tencent/qt/base/net/Request;Lcom/tencent/qt/base/net/MessageHandler;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/qt/base/net/NetworkEngine;)J
    .locals 2
    .param p0, "x0"    # Lcom/tencent/qt/base/net/NetworkEngine;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mUin:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/tencent/qt/base/net/NetworkEngine;)[B
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qt/base/net/NetworkEngine;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mstDefaultKey:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qt/base/net/NetworkEngine;)[B
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qt/base/net/NetworkEngine;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mstNormalKey:[B

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qt/base/net/NetworkEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qt/base/net/NetworkEngine;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->onRequestRespond()V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/qt/base/net/NetworkEngine;IIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qt/base/net/NetworkEngine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/tencent/qt/base/net/NetworkEngine;->callRequestFail(IIIII)V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/qt/base/net/NetworkEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qt/base/net/NetworkEngine;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->onRequestTimeout()V

    return-void
.end method

.method static synthetic access$800(Lcom/tencent/qt/base/net/NetworkEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qt/base/net/NetworkEngine;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->native_reconnect()V

    return-void
.end method

.method private broadcastChannelEvent(II)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "subcmd"    # I

    .prologue
    .line 709
    const-string v2, "QTNetwork"

    const-string v3, "broadcastChannelEvent type = %d, subcmd = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    const v2, 0xffff

    invoke-direct {p0, v2, p2}, Lcom/tencent/qt/base/net/NetworkEngine;->getMatchedBroadcastHandler(II)Ljava/util/List;

    move-result-object v1

    .line 712
    .local v1, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    if-eqz v1, :cond_0

    .line 713
    new-instance v0, Lcom/tencent/qt/base/net/ChannelBroadcast;

    invoke-direct {v0, p1}, Lcom/tencent/qt/base/net/ChannelBroadcast;-><init>(I)V

    .line 714
    .local v0, "cb":Lcom/tencent/qt/base/net/ChannelBroadcast;
    iput p2, v0, Lcom/tencent/qt/base/net/ChannelBroadcast;->subcmd:I

    .line 715
    invoke-direct {p0, v0, v1}, Lcom/tencent/qt/base/net/NetworkEngine;->broadcastTo(Lcom/tencent/qt/base/net/Message;Ljava/util/List;)V

    .line 718
    .end local v0    # "cb":Lcom/tencent/qt/base/net/ChannelBroadcast;
    :cond_0
    return-void
.end method

.method private broadcastNetworkEvent(I)V
    .locals 6
    .param p1, "subcmd"    # I

    .prologue
    .line 700
    const-string v1, "QTNetwork"

    const-string v2, "broadcastNetworkEvent subcmd = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/qt/base/net/PLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    const/high16 v1, 0x10000

    invoke-direct {p0, v1, p1}, Lcom/tencent/qt/base/net/NetworkEngine;->getMatchedBroadcastHandler(II)Ljava/util/List;

    move-result-object v0

    .line 702
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    if-eqz v0, :cond_0

    .line 703
    new-instance v1, Lcom/tencent/qt/base/net/NetworkBroadcast;

    invoke-direct {v1, p1}, Lcom/tencent/qt/base/net/NetworkBroadcast;-><init>(I)V

    invoke-direct {p0, v1, v0}, Lcom/tencent/qt/base/net/NetworkEngine;->broadcastTo(Lcom/tencent/qt/base/net/Message;Ljava/util/List;)V

    .line 705
    :cond_0
    return-void
.end method

.method private broadcastTo(Lcom/tencent/qt/base/net/Message;Ljava/util/List;)V
    .locals 4
    .param p1, "msg"    # Lcom/tencent/qt/base/net/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qt/base/net/Message;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qt/base/net/BroadcastHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 776
    .local p2, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    new-instance v0, Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;-><init>(Lcom/tencent/qt/base/net/NetworkEngine$1;)V

    .line 780
    .local v0, "data":Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;
    iput-object p1, v0, Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;->message:Lcom/tencent/qt/base/net/Message;

    .line 781
    iput-object p2, v0, Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;->handlers:Ljava/util/List;

    .line 782
    iget-object v2, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 783
    .local v1, "omsg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private callRequestFail(IIIII)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "command"    # I
    .param p3, "subcmd"    # I
    .param p4, "seq"    # I
    .param p5, "err"    # I

    .prologue
    const/4 v8, 0x0

    .line 939
    const-string v1, "QTNetwork"

    const-string/jumbo v4, "t %04x,%02x,%d, error=%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/tencent/qt/base/net/PLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mFlowController:Lcom/tencent/qt/alg/network/NetworkFlowController;

    .line 945
    .local v0, "controller":Lcom/tencent/qt/alg/network/NetworkFlowController;
    if-eqz v0, :cond_0

    .line 947
    iget-object v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mIPMaps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;

    .line 948
    .local v9, "adr":Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;
    if-eqz v9, :cond_1

    iget-object v2, v9, Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;->host:Ljava/lang/String;

    .line 949
    .local v2, "host":Ljava/lang/String;
    :goto_0
    if-eqz v9, :cond_2

    iget v3, v9, Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;->port:I

    .line 950
    .local v3, "port":I
    :goto_1
    iget-boolean v8, p0, Lcom/tencent/qt/base/net/NetworkEngine;->isLogin:Z

    move v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v8}, Lcom/tencent/qt/alg/network/NetworkFlowController;->onRequestFail(ILjava/lang/String;IIIIIZ)V

    .line 952
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v9    # "adr":Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;
    :cond_0
    return-void

    .line 948
    .restart local v9    # "adr":Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 949
    .restart local v2    # "host":Ljava/lang/String;
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private clearTimeout()V
    .locals 2

    .prologue
    .line 899
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLastTimeoutProtocolTime:J

    .line 900
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mTimeoutRequests:I

    .line 901
    return-void
.end method

.method public static enableLogging(ZI)V
    .locals 0
    .param p0, "enabled"    # Z
    .param p1, "level"    # I

    .prologue
    .line 180
    invoke-static {p0, p1}, Lcom/tencent/qt/base/net/PLog;->enableLog(ZI)V

    .line 181
    return-void
.end method

.method private static declared-synchronized ensureInit()V
    .locals 6

    .prologue
    .line 132
    const-class v1, Lcom/tencent/qt/base/net/NetworkEngine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qt/base/net/NetworkEngine;->instance_:Lcom/tencent/qt/base/net/NetworkEngine;

    if-nez v0, :cond_0

    .line 133
    const-string v0, "QTNetwork"

    const-string v2, "inited !"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-static {}, Lcom/tencent/qt/base/net/NetworkHelper;->sharedHelper()Lcom/tencent/qt/base/net/NetworkHelper;

    move-result-object v0

    sget-object v2, Lcom/tencent/qt/base/net/NetworkEngine;->mInitContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/qt/base/net/NetworkHelper;->registerNetworkSensor(Landroid/content/Context;)V

    .line 135
    new-instance v0, Lcom/tencent/qt/base/net/NetworkEngine;

    sget-object v2, Lcom/tencent/qt/base/net/NetworkEngine;->mInitContext:Landroid/content/Context;

    sget-object v3, Lcom/tencent/qt/base/net/NetworkEngine;->mInitLooper:Landroid/os/Looper;

    sget v4, Lcom/tencent/qt/base/net/NetworkEngine;->mInitClienttype:I

    sget v5, Lcom/tencent/qt/base/net/NetworkEngine;->mInitVersion:I

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/tencent/qt/base/net/NetworkEngine;-><init>(Landroid/content/Context;Landroid/os/Looper;II)V

    sput-object v0, Lcom/tencent/qt/base/net/NetworkEngine;->instance_:Lcom/tencent/qt/base/net/NetworkEngine;

    .line 136
    sget-object v0, Lcom/tencent/qt/base/net/NetworkEngine;->instance_:Lcom/tencent/qt/base/net/NetworkEngine;

    sget v2, Lcom/tencent/qt/base/net/NetworkEngine;->mInitClienttype:I

    sget v3, Lcom/tencent/qt/base/net/NetworkEngine;->mInitVersion:I

    invoke-virtual {v0, v2, v3}, Lcom/tencent/qt/base/net/NetworkEngine;->create(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit v1

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMatchedBroadcastHandler(II)Ljava/util/List;
    .locals 7
    .param p1, "cmd"    # I
    .param p2, "subcmd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qt/base/net/BroadcastHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 752
    const/4 v0, 0x0

    .line 753
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    const/4 v3, 0x0

    .line 755
    .local v3, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    monitor-enter p0

    .line 756
    :try_start_0
    iget-object v5, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mBroadcastHandlers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 757
    const/4 v5, 0x0

    monitor-exit p0

    move-object v4, v3

    .line 771
    .end local v3    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    .local v4, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    :goto_0
    return-object v5

    .line 759
    .end local v4    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    .restart local v3    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mBroadcastHandlers:Ljava/util/List;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    .local v1, "all":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 762
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qt/base/net/BroadcastHandler;

    .line 763
    .local v2, "handler":Lcom/tencent/qt/base/net/BroadcastHandler;
    const/4 v6, 0x0

    invoke-interface {v2, p1, p2, v6}, Lcom/tencent/qt/base/net/BroadcastHandler;->match(III)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 764
    if-nez v3, :cond_2

    .line 765
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .restart local v3    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 760
    .end local v1    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    .end local v2    # "handler":Lcom/tencent/qt/base/net/BroadcastHandler;
    .restart local v0    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    :catchall_0
    move-exception v5

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    .restart local v1    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    :cond_3
    move-object v4, v3

    .end local v3    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    .restart local v4    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    move-object v0, v1

    .end local v1    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    .restart local v0    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    move-object v5, v3

    .line 771
    goto :goto_0

    .line 760
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    .end local v4    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    .restart local v1    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    .restart local v3    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    .restart local v0    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    goto :goto_2
.end method

.method public static declared-synchronized init(Landroid/content/Context;Landroid/os/Looper;II)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "clienttype"    # I
    .param p3, "version"    # I

    .prologue
    .line 71
    const-class v1, Lcom/tencent/qt/base/net/NetworkEngine;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/tencent/qt/base/net/NetworkEngine;->mInitContext:Landroid/content/Context;

    .line 72
    sput-object p1, Lcom/tencent/qt/base/net/NetworkEngine;->mInitLooper:Landroid/os/Looper;

    .line 73
    sput p2, Lcom/tencent/qt/base/net/NetworkEngine;->mInitClienttype:I

    .line 74
    sput p3, Lcom/tencent/qt/base/net/NetworkEngine;->mInitVersion:I

    .line 76
    sget-boolean v0, Lcom/tencent/qt/base/net/NetworkEngine;->mLoadLibary:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 82
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized judgeLibiaryExist()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 96
    const-class v5, Lcom/tencent/qt/base/net/NetworkEngine;

    monitor-enter v5

    :try_start_0
    sget-boolean v6, Lcom/tencent/qt/base/net/NetworkEngine;->mLoadLibary:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 125
    .local v2, "sopath":Ljava/lang/String;
    :goto_0
    monitor-exit v5

    return v3

    .line 103
    .end local v2    # "sopath":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/tencent/qt/base/net/NetworkEngine;->mInitContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .restart local v2    # "sopath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    const-string v1, "libnetworkhelper.so"

    .line 110
    .local v1, "soFileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v0, "soFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 114
    const-string v6, "QTNetwork"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    .end local v0    # "soFile":Ljava/io/File;
    .end local v1    # "soFileName":Ljava/lang/String;
    :catch_0
    move-exception v3

    :goto_1
    move v3, v4

    .line 125
    goto :goto_0

    .line 118
    .restart local v0    # "soFile":Ljava/io/File;
    .restart local v1    # "soFileName":Ljava/lang/String;
    :cond_1
    const-string v3, "QTNetwork"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 96
    .end local v0    # "soFile":Ljava/io/File;
    .end local v1    # "soFileName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3
.end method

.method private native native_close()V
.end method

.method private native native_create_engine(II)I
.end method

.method private native native_reconnect()V
.end method

.method private native native_release_engine()V
.end method

.method private native native_send_request(ILcom/tencent/qt/base/net/Request;Lcom/tencent/qt/base/net/MessageHandler;I)I
.end method

.method private native native_set_hosts(I[Ljava/lang/String;[I)V
.end method

.method private native native_set_support_64_uin(Z)V
.end method

.method private native native_set_uin_default_normalkey(J[B[B)V
.end method

.method private native native_set_uin_defaultkey(J[B)V
.end method

.method private onRequestRespond()V
    .locals 0

    .prologue
    .line 934
    invoke-direct {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->clearTimeout()V

    .line 935
    return-void
.end method

.method private onRequestTimeout()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 906
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 907
    .local v0, "current":J
    iget-wide v2, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLastTimeoutProtocolTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 908
    iput-wide v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLastTimeoutProtocolTime:J

    .line 909
    iget v2, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mTimeoutRequests:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mTimeoutRequests:I

    .line 918
    :cond_0
    :goto_0
    iget v2, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mTimeoutRequests:I

    if-lt v2, v6, :cond_1

    .line 919
    const-string v2, "QTNetwork"

    const-string v3, "protocol response lost exceed %d times, maybe connection break down"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/qt/base/net/PLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 920
    invoke-virtual {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->stopHello()V

    .line 923
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->native_reconnect()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    :cond_1
    :goto_1
    return-void

    .line 912
    :cond_2
    iget-wide v2, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLastTimeoutProtocolTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 913
    iput-wide v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLastTimeoutProtocolTime:J

    .line 914
    iget v2, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mTimeoutRequests:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mTimeoutRequests:I

    goto :goto_0

    .line 925
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static send(II[BLcom/tencent/qt/base/net/MessageHandler;)I
    .locals 2
    .param p0, "command"    # I
    .param p1, "subcmd"    # I
    .param p2, "payload"    # [B
    .param p3, "handler"    # Lcom/tencent/qt/base/net/MessageHandler;

    .prologue
    .line 161
    invoke-static {}, Lcom/tencent/qt/base/net/NetworkEngine;->shareEngine()Lcom/tencent/qt/base/net/NetworkEngine;

    move-result-object v0

    .line 162
    .local v0, "networkEngine":Lcom/tencent/qt/base/net/NetworkEngine;
    if-nez v0, :cond_0

    .line 164
    const/4 v1, -0x1

    .line 167
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/qt/base/net/NetworkEngine;->sendRequest(II[BLcom/tencent/qt/base/net/MessageHandler;)I

    move-result v1

    goto :goto_0
.end method

.method public static shareEngine()Lcom/tencent/qt/base/net/NetworkEngine;
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lcom/tencent/qt/base/net/NetworkEngine;->ensureInit()V

    .line 156
    sget-object v0, Lcom/tencent/qt/base/net/NetworkEngine;->instance_:Lcom/tencent/qt/base/net/NetworkEngine;

    return-object v0
.end method

.method public static traceLogging(Lcom/tencent/qt/base/net/PLog$TraceMode;Lcom/tencent/qt/base/net/PLog$StoreMode;Ljava/lang/String;)Z
    .locals 1
    .param p0, "mode"    # Lcom/tencent/qt/base/net/PLog$TraceMode;
    .param p1, "sm"    # Lcom/tencent/qt/base/net/PLog$StoreMode;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p0, p1, p2}, Lcom/tencent/qt/base/net/PLog;->trace(Lcom/tencent/qt/base/net/PLog$TraceMode;Lcom/tencent/qt/base/net/PLog$StoreMode;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized unInit()V
    .locals 2

    .prologue
    .line 148
    const-class v1, Lcom/tencent/qt/base/net/NetworkEngine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qt/base/net/NetworkEngine;->instance_:Lcom/tencent/qt/base/net/NetworkEngine;

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/tencent/qt/base/net/NetworkEngine;->instance_:Lcom/tencent/qt/base/net/NetworkEngine;

    invoke-virtual {v0}, Lcom/tencent/qt/base/net/NetworkEngine;->stopHello()V

    .line 150
    sget-object v0, Lcom/tencent/qt/base/net/NetworkEngine;->instance_:Lcom/tencent/qt/base/net/NetworkEngine;

    invoke-virtual {v0}, Lcom/tencent/qt/base/net/NetworkEngine;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    monitor-exit v1

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addBroadcastHandler(Lcom/tencent/qt/base/net/BroadcastHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/tencent/qt/base/net/BroadcastHandler;

    .prologue
    .line 520
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mBroadcastHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mBroadcastHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    :cond_0
    monitor-exit p0

    return-void

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->isSetUinSt:Z

    if-nez v0, :cond_0

    .line 1045
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1050
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->native_reconnect()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    :goto_0
    return-void

    .line 1052
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected create(II)Z
    .locals 5
    .param p1, "clienttype"    # I
    .param p2, "version"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->isReleased()Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    :goto_0
    return v2

    .line 230
    :cond_0
    invoke-static {}, Lcom/tencent/qt/base/net/NetworkHelper;->sharedHelper()Lcom/tencent/qt/base/net/NetworkHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/tencent/qt/base/net/NetworkHelper;->registerNetworkSensor(Landroid/content/Context;)V

    .line 232
    const/4 v0, -0x1

    .line 236
    .local v0, "ret":I
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/qt/base/net/NetworkEngine;->native_create_engine(II)I

    move-result v0

    .line 239
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/tencent/qt/base/net/NetworkEngine;->native_set_support_64_uin(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_1
    if-nez v0, :cond_1

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 241
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected destroy()V
    .locals 1

    .prologue
    .line 213
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->native_release_engine()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected didConnectToHost(ILjava/lang/String;I)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 634
    new-instance v0, Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;-><init>(Lcom/tencent/qt/base/net/NetworkEngine$1;)V

    .line 635
    .local v0, "adress":Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;
    iput-object p2, v0, Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;->host:Ljava/lang/String;

    .line 636
    iput p3, v0, Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;->port:I

    .line 637
    iget-object v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mIPMaps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    if-nez p1, :cond_1

    .line 639
    const-string v1, "QTNetwork"

    const-string v2, "proxy didConnectToHost host = %s, port = %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    invoke-virtual {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->startHello()V

    .line 646
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v5}, Lcom/tencent/qt/base/net/NetworkEngine;->broadcastChannelEvent(II)V

    .line 647
    return-void

    .line 642
    :cond_1
    if-ne p1, v5, :cond_0

    .line 643
    const-string v1, "QTNetwork"

    const-string v2, "dir didConnectToHost host = %s, port = %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected didDisconnect(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 650
    iput-boolean v2, p0, Lcom/tencent/qt/base/net/NetworkEngine;->isLogin:Z

    .line 652
    if-nez p1, :cond_1

    .line 653
    const-string v0, "QTNetwork"

    const-string v1, "proxy didDisconnect"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    invoke-virtual {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->stopHello()V

    .line 660
    :cond_0
    :goto_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/tencent/qt/base/net/NetworkEngine;->broadcastChannelEvent(II)V

    .line 661
    return-void

    .line 656
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 657
    const-string v0, "QTNetwork"

    const-string v1, "dir didDisconnect"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getSTRequest(Z)Lcom/tencent/qt/base/net/Request;
    .locals 2
    .param p1, "withLogin"    # Z

    .prologue
    .line 734
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mVerifyHelper:Lcom/tencent/qt/base/net/VerifyHelper;

    .line 735
    .local v0, "helper":Lcom/tencent/qt/base/net/VerifyHelper;
    if-eqz v0, :cond_0

    .line 736
    invoke-interface {v0, p1}, Lcom/tencent/qt/base/net/VerifyHelper;->getSTRequest(Z)Lcom/tencent/qt/base/net/Request;

    move-result-object v1

    .line 737
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLogin()Z
    .locals 1

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->isLogin:Z

    return v0
.end method

.method protected isReleased()Z
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mNativeInJavaObj:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected matchBroadcast(II)Z
    .locals 5
    .param p1, "cmd"    # I
    .param p2, "subcmd"    # I

    .prologue
    const/4 v1, 0x0

    .line 787
    const-string v2, "QTNetwork"

    const-string v3, "matchBroadcast "

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/qt/base/net/PLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    invoke-direct {p0, p1, p2}, Lcom/tencent/qt/base/net/NetworkEngine;->getMatchedBroadcastHandler(II)Ljava/util/List;

    move-result-object v0

    .line 790
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    if-nez v0, :cond_0

    .line 796
    :goto_0
    return v1

    .line 793
    :cond_0
    const-string v2, "QTNetwork"

    const-string v3, "matchBroadcast addAll"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/tencent/qt/base/net/PLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 795
    iget-object v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mMatchedHandlers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 796
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onBroadcast(Lcom/tencent/qt/base/net/Message;)V
    .locals 6
    .param p1, "msg"    # Lcom/tencent/qt/base/net/Message;

    .prologue
    .line 800
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mMatchedHandlers:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 801
    .local v1, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qt/base/net/BroadcastHandler;>;"
    iget-object v3, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mMatchedHandlers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 802
    new-instance v0, Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;-><init>(Lcom/tencent/qt/base/net/NetworkEngine$1;)V

    .line 803
    .local v0, "data":Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;
    iput-object p1, v0, Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;->message:Lcom/tencent/qt/base/net/Message;

    .line 804
    iput-object v1, v0, Lcom/tencent/qt/base/net/NetworkEngine$BroadcastData;->handlers:Ljava/util/List;

    .line 805
    iget-object v3, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 806
    .local v2, "omsg":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 807
    const-string v3, "QTNetwork"

    const-string v4, "onBroadcast"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/tencent/qt/base/net/PLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 808
    return-void
.end method

.method protected onConnectionFailure(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 721
    if-nez p1, :cond_1

    .line 722
    const-string v0, "QTNetwork"

    const-string v1, "proxy onConnectionFailure"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/qt/base/net/PLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    invoke-virtual {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->stopHello()V

    .line 729
    :cond_0
    :goto_0
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/tencent/qt/base/net/NetworkEngine;->broadcastChannelEvent(II)V

    .line 730
    return-void

    .line 725
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 726
    const-string v0, "QTNetwork"

    const-string v1, "dir onConnectionFailure"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/qt/base/net/PLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onHostResolveFailure(ILjava/lang/String;I)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "error"    # I

    .prologue
    .line 692
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mFlowController:Lcom/tencent/qt/alg/network/NetworkFlowController;

    .line 693
    .local v0, "controller":Lcom/tencent/qt/alg/network/NetworkFlowController;
    if-eqz v0, :cond_0

    .line 694
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/qt/alg/network/NetworkFlowController;->onHostResloveFailure(ILjava/lang/String;I)V

    .line 696
    :cond_0
    return-void
.end method

.method protected onHostResolveSuccess(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "ip"    # Ljava/lang/String;
    .param p4, "time"    # I

    .prologue
    .line 684
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mFlowController:Lcom/tencent/qt/alg/network/NetworkFlowController;

    .line 685
    .local v0, "controller":Lcom/tencent/qt/alg/network/NetworkFlowController;
    if-eqz v0, :cond_0

    .line 686
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/qt/alg/network/NetworkFlowController;->onHostResolveSuccess(ILjava/lang/String;Ljava/lang/String;I)V

    .line 688
    :cond_0
    return-void
.end method

.method public onLogin(J[B[B)V
    .locals 3
    .param p1, "uin"    # J
    .param p3, "stDefaultkey"    # [B
    .param p4, "stNormalkey"    # [B

    .prologue
    .line 324
    const-string v0, "QTNetwork"

    const-string v1, "onLogin"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/qt/base/net/PLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    invoke-virtual {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 330
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qt/base/net/NetworkEngine;->native_set_uin_default_normalkey(J[B[B)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->isSetUinSt:Z

    .line 339
    iput-wide p1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mUin:J

    .line 340
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mstDefaultKey:[B

    .line 341
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mstNormalKey:[B

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onLogout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 373
    const-string v0, "_login_QTNetwork"

    const-string v1, "onLogout"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/qt/base/net/PLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    const-string v0, "QTNetwork"

    const-string v1, "onLogout"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/qt/base/net/PLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    invoke-virtual {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->stopHello()V

    .line 380
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->native_close()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onNetworkReceived(IIIIII)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "command"    # I
    .param p3, "subcmd"    # I
    .param p4, "seq"    # I
    .param p5, "len"    # I
    .param p6, "elapsed"    # I

    .prologue
    .line 664
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mFlowController:Lcom/tencent/qt/alg/network/NetworkFlowController;

    .line 668
    .local v0, "controller":Lcom/tencent/qt/alg/network/NetworkFlowController;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 669
    invoke-interface/range {v0 .. v6}, Lcom/tencent/qt/alg/network/NetworkFlowController;->onPacketReceived(IIIIII)V

    .line 671
    :cond_0
    return-void
.end method

.method protected onNetworkSended(IIIII)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "command"    # I
    .param p3, "subcmd"    # I
    .param p4, "seq"    # I
    .param p5, "len"    # I

    .prologue
    .line 674
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mFlowController:Lcom/tencent/qt/alg/network/NetworkFlowController;

    .line 678
    .local v0, "controller":Lcom/tencent/qt/alg/network/NetworkFlowController;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 679
    invoke-interface/range {v0 .. v5}, Lcom/tencent/qt/alg/network/NetworkFlowController;->onPacketSended(IIIII)V

    .line 681
    :cond_0
    return-void
.end method

.method protected onSTResponse(Lcom/tencent/qt/base/net/Message;)I
    .locals 2
    .param p1, "msg"    # Lcom/tencent/qt/base/net/Message;

    .prologue
    .line 742
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mVerifyHelper:Lcom/tencent/qt/base/net/VerifyHelper;

    .line 744
    .local v0, "helper":Lcom/tencent/qt/base/net/VerifyHelper;
    if-eqz v0, :cond_0

    .line 745
    invoke-interface {v0, p1}, Lcom/tencent/qt/base/net/VerifyHelper;->onSTReponse(Lcom/tencent/qt/base/net/Message;)I

    move-result v1

    .line 747
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onStatConnFailure(ILjava/lang/String;IIZ)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "err"    # I
    .param p5, "isRetry"    # Z

    .prologue
    .line 620
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->isLogin:Z

    .line 621
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mFlowController:Lcom/tencent/qt/alg/network/NetworkFlowController;

    .line 622
    .local v0, "controller":Lcom/tencent/qt/alg/network/NetworkFlowController;
    if-eqz v0, :cond_1

    .line 623
    invoke-static {}, Lcom/tencent/qt/base/net/NetworkHelper;->sharedHelper()Lcom/tencent/qt/base/net/NetworkHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qt/base/net/NetworkHelper;->getNetworkStatus()Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    move-result-object v1

    sget-object v2, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->NetworkNotReachable:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    invoke-virtual {v1, v2}, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    const/4 p4, -0x5

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 625
    invoke-interface/range {v0 .. v5}, Lcom/tencent/qt/alg/network/NetworkFlowController;->onConnectionFail(ILjava/lang/String;IIZ)V

    .line 627
    :cond_1
    return-void
.end method

.method protected onStatConnected(ILjava/lang/String;IIZ)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "elapsed"    # I
    .param p5, "isRetry"    # Z

    .prologue
    .line 608
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mFlowController:Lcom/tencent/qt/alg/network/NetworkFlowController;

    .line 609
    .local v0, "controller":Lcom/tencent/qt/alg/network/NetworkFlowController;
    new-instance v6, Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;-><init>(Lcom/tencent/qt/base/net/NetworkEngine$1;)V

    .line 610
    .local v6, "adress":Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;
    iput-object p2, v6, Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;->host:Ljava/lang/String;

    .line 611
    iput p3, v6, Lcom/tencent/qt/base/net/NetworkEngine$IPAdress;->port:I

    .line 612
    iget-object v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mIPMaps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 614
    invoke-interface/range {v0 .. v5}, Lcom/tencent/qt/alg/network/NetworkFlowController;->onConnectionSuccess(ILjava/lang/String;IIZ)V

    .line 616
    :cond_0
    return-void
.end method

.method protected onStatVerityTimeout(IIIII)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "command"    # I
    .param p3, "subcmd"    # I
    .param p4, "seq"    # I
    .param p5, "times"    # I

    .prologue
    .line 630
    const/4 v5, -0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qt/base/net/NetworkEngine;->callRequestFail(IIIII)V

    .line 631
    return-void
.end method

.method public declared-synchronized removeBroadcastHandler(Lcom/tencent/qt/base/net/BroadcastHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/tencent/qt/base/net/BroadcastHandler;

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mBroadcastHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    monitor-exit p0

    return-void

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendRequest(III[BLcom/tencent/qt/base/net/MessageHandler;)I
    .locals 9
    .param p1, "type"    # I
    .param p2, "command"    # I
    .param p3, "subcmd"    # I
    .param p4, "payload"    # [B
    .param p5, "handler"    # Lcom/tencent/qt/base/net/MessageHandler;

    .prologue
    const/4 v5, 0x0

    .line 421
    const/16 v8, 0x4e20

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/qt/base/net/NetworkEngine;->sendRequest(III[B[B[BLcom/tencent/qt/base/net/MessageHandler;I)I

    move-result v0

    return v0
.end method

.method public sendRequest(III[BLcom/tencent/qt/base/net/MessageHandler;Lcom/tencent/qt/base/net/NetworkUIHandler;)I
    .locals 10
    .param p1, "type"    # I
    .param p2, "command"    # I
    .param p3, "subcmd"    # I
    .param p4, "payload"    # [B
    .param p5, "handler"    # Lcom/tencent/qt/base/net/MessageHandler;
    .param p6, "networkErrorHandler"    # Lcom/tencent/qt/base/net/NetworkUIHandler;

    .prologue
    .line 426
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x4e20

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/qt/base/net/NetworkEngine;->sendRequest(III[B[B[BLcom/tencent/qt/base/net/MessageHandler;Lcom/tencent/qt/base/net/NetworkUIHandler;I)I

    move-result v0

    return v0
.end method

.method public sendRequest(III[B[BLcom/tencent/qt/base/net/MessageHandler;)I
    .locals 9
    .param p1, "type"    # I
    .param p2, "command"    # I
    .param p3, "subcmd"    # I
    .param p4, "payload"    # [B
    .param p5, "extra"    # [B
    .param p6, "handler"    # Lcom/tencent/qt/base/net/MessageHandler;

    .prologue
    .line 431
    const/4 v5, 0x0

    const/16 v8, 0x4e20

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/qt/base/net/NetworkEngine;->sendRequest(III[B[B[BLcom/tencent/qt/base/net/MessageHandler;I)I

    move-result v0

    return v0
.end method

.method public sendRequest(III[B[BLcom/tencent/qt/base/net/MessageHandler;I)I
    .locals 9
    .param p1, "type"    # I
    .param p2, "command"    # I
    .param p3, "subcmd"    # I
    .param p4, "payload"    # [B
    .param p5, "extra"    # [B
    .param p6, "handler"    # Lcom/tencent/qt/base/net/MessageHandler;
    .param p7, "expiredTime"    # I

    .prologue
    .line 441
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/qt/base/net/NetworkEngine;->sendRequest(III[B[B[BLcom/tencent/qt/base/net/MessageHandler;I)I

    move-result v0

    return v0
.end method

.method public sendRequest(III[B[BLcom/tencent/qt/base/net/MessageHandler;Lcom/tencent/qt/base/net/NetworkUIHandler;)I
    .locals 10
    .param p1, "type"    # I
    .param p2, "command"    # I
    .param p3, "subcmd"    # I
    .param p4, "payload"    # [B
    .param p5, "extra"    # [B
    .param p6, "handler"    # Lcom/tencent/qt/base/net/MessageHandler;
    .param p7, "networkHandler"    # Lcom/tencent/qt/base/net/NetworkUIHandler;

    .prologue
    .line 436
    const/4 v5, 0x0

    const/16 v9, 0x4e20

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/qt/base/net/NetworkEngine;->sendRequest(III[B[B[BLcom/tencent/qt/base/net/MessageHandler;Lcom/tencent/qt/base/net/NetworkUIHandler;I)I

    move-result v0

    return v0
.end method

.method public sendRequest(III[B[B[BLcom/tencent/qt/base/net/MessageHandler;)I
    .locals 9
    .param p1, "type"    # I
    .param p2, "command"    # I
    .param p3, "subcmd"    # I
    .param p4, "payload"    # [B
    .param p5, "reserve"    # [B
    .param p6, "extra"    # [B
    .param p7, "handler"    # Lcom/tencent/qt/base/net/MessageHandler;

    .prologue
    .line 446
    const/16 v8, 0x4e20

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/qt/base/net/NetworkEngine;->sendRequest(III[B[B[BLcom/tencent/qt/base/net/MessageHandler;I)I

    move-result v0

    return v0
.end method

.method public sendRequest(III[B[B[BLcom/tencent/qt/base/net/MessageHandler;I)I
    .locals 10
    .param p1, "type"    # I
    .param p2, "command"    # I
    .param p3, "subcmd"    # I
    .param p4, "payload"    # [B
    .param p5, "reserve"    # [B
    .param p6, "extra"    # [B
    .param p7, "handler"    # Lcom/tencent/qt/base/net/MessageHandler;
    .param p8, "expiredTime"    # I

    .prologue
    .line 451
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/qt/base/net/NetworkEngine;->sendRequest(III[B[B[BLcom/tencent/qt/base/net/MessageHandler;Lcom/tencent/qt/base/net/NetworkUIHandler;I)I

    move-result v0

    return v0
.end method

.method public sendRequest(III[B[B[BLcom/tencent/qt/base/net/MessageHandler;Lcom/tencent/qt/base/net/NetworkUIHandler;I)I
    .locals 11
    .param p1, "type"    # I
    .param p2, "command"    # I
    .param p3, "subcmd"    # I
    .param p4, "payload"    # [B
    .param p5, "reserve"    # [B
    .param p6, "extra"    # [B
    .param p7, "handler"    # Lcom/tencent/qt/base/net/MessageHandler;
    .param p8, "networkHandler"    # Lcom/tencent/qt/base/net/NetworkUIHandler;
    .param p9, "expiredTime"    # I

    .prologue
    .line 479
    const-string v1, "QTNetwork"

    const-string v2, "sendRequest: %04x,%02x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    invoke-static {}, Lcom/tencent/qt/base/net/NetworkHelper;->sharedHelper()Lcom/tencent/qt/base/net/NetworkHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qt/base/net/NetworkHelper;->getNetworkStatus()Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    move-result-object v1

    sget-object v2, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->NetworkNotReachable:Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;

    invoke-virtual {v1, v2}, Lcom/tencent/qt/base/net/NetworkHelper$NetworkStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qt/base/net/NetworkEngine;->callRequestFail(IIIII)V

    .line 485
    if-eqz p8, :cond_0

    .line 486
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 487
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p8

    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 488
    iput p2, v8, Landroid/os/Message;->arg1:I

    .line 489
    iput p3, v8, Landroid/os/Message;->arg2:I

    .line 490
    iget-object v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mNetworkHandler:Lcom/tencent/qt/base/net/NetworkEngine$NetworkReportHandler;

    invoke-virtual {v1, v8}, Lcom/tencent/qt/base/net/NetworkEngine$NetworkReportHandler;->sendMessage(Landroid/os/Message;)Z

    .line 491
    const/4 v10, -0x1

    .line 513
    .end local v8    # "msg":Landroid/os/Message;
    :goto_0
    return v10

    .line 494
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/tencent/qt/base/net/NetworkEngine;->broadcastNetworkEvent(I)V

    .line 496
    const-string v1, "QTNetwork"

    const-string v2, "%04x,%02x(net error)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/qt/base/net/PLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    const/4 v10, -0x1

    goto :goto_0

    .line 500
    :cond_1
    invoke-static/range {p2 .. p6}, Lcom/tencent/qt/base/net/Request;->createEncryptRequest(II[B[B[B)Lcom/tencent/qt/base/net/Request;

    move-result-object v9

    .line 501
    .local v9, "request":Lcom/tencent/qt/base/net/Request;
    const/4 v10, -0x1

    .line 504
    .local v10, "seq":I
    :try_start_0
    new-instance v1, Lcom/tencent/qt/base/net/NetworkEngine$InnerWrapHandler;

    iget-object v2, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLooper:Landroid/os/Looper;

    move-object/from16 v0, p7

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/tencent/qt/base/net/NetworkEngine$InnerWrapHandler;-><init>(Lcom/tencent/qt/base/net/NetworkEngine;Lcom/tencent/qt/base/net/MessageHandler;Landroid/os/Looper;I)V

    move/from16 v0, p9

    invoke-direct {p0, p1, v9, v1, v0}, Lcom/tencent/qt/base/net/NetworkEngine;->native_send_request(ILcom/tencent/qt/base/net/Request;Lcom/tencent/qt/base/net/MessageHandler;I)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 511
    :goto_1
    iput v10, v9, Lcom/tencent/qt/base/net/Request;->sequenceNumber:I

    .line 512
    const-string v1, "QTNetwork"

    const-string v2, "after sendRequest: %04x,%02x,%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 506
    :catch_0
    move-exception v7

    .line 508
    .local v7, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "QTNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find native .so library file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/qt/base/net/PLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public sendRequest(II[BLcom/tencent/qt/base/net/MessageHandler;)I
    .locals 9
    .param p1, "command"    # I
    .param p2, "subcmd"    # I
    .param p3, "payload"    # [B
    .param p4, "handler"    # Lcom/tencent/qt/base/net/MessageHandler;

    .prologue
    const/4 v5, 0x0

    .line 390
    const/4 v1, 0x0

    const/16 v8, 0x4e20

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/qt/base/net/NetworkEngine;->sendRequest(III[B[B[BLcom/tencent/qt/base/net/MessageHandler;I)I

    move-result v0

    return v0
.end method

.method public sendRequest(II[BLcom/tencent/qt/base/net/MessageHandler;I)I
    .locals 9
    .param p1, "command"    # I
    .param p2, "subcmd"    # I
    .param p3, "payload"    # [B
    .param p4, "handler"    # Lcom/tencent/qt/base/net/MessageHandler;
    .param p5, "expiredTime"    # I

    .prologue
    const/4 v5, 0x0

    .line 410
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/qt/base/net/NetworkEngine;->sendRequest(III[B[B[BLcom/tencent/qt/base/net/MessageHandler;I)I

    move-result v0

    return v0
.end method

.method public sendRequest(II[BLcom/tencent/qt/base/net/MessageHandler;Lcom/tencent/qt/base/net/NetworkUIHandler;)I
    .locals 10
    .param p1, "command"    # I
    .param p2, "subcmd"    # I
    .param p3, "payload"    # [B
    .param p4, "handler"    # Lcom/tencent/qt/base/net/MessageHandler;
    .param p5, "networkErrorHandler"    # Lcom/tencent/qt/base/net/NetworkUIHandler;

    .prologue
    const/4 v5, 0x0

    .line 405
    const/4 v1, 0x0

    const/16 v9, 0x4e20

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/qt/base/net/NetworkEngine;->sendRequest(III[B[B[BLcom/tencent/qt/base/net/MessageHandler;Lcom/tencent/qt/base/net/NetworkUIHandler;I)I

    move-result v0

    return v0
.end method

.method public sendRequest(II[BLcom/tencent/qt/base/net/MessageHandler;Lcom/tencent/qt/base/net/NetworkUIHandler;I)I
    .locals 10
    .param p1, "command"    # I
    .param p2, "subcmd"    # I
    .param p3, "payload"    # [B
    .param p4, "handler"    # Lcom/tencent/qt/base/net/MessageHandler;
    .param p5, "networkErrorHandler"    # Lcom/tencent/qt/base/net/NetworkUIHandler;
    .param p6, "expiredTime"    # I

    .prologue
    .line 415
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/qt/base/net/NetworkEngine;->sendRequest(III[B[B[BLcom/tencent/qt/base/net/MessageHandler;Lcom/tencent/qt/base/net/NetworkUIHandler;I)I

    move-result v0

    return v0
.end method

.method public setDefultkey(J[B)V
    .locals 1
    .param p1, "uin"    # J
    .param p3, "stdefaultKey"    # [B

    .prologue
    .line 349
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qt/base/net/NetworkEngine;->native_set_uin_defaultkey(J[B)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setFlowController(Lcom/tencent/qt/alg/network/NetworkFlowController;)V
    .locals 0
    .param p1, "controller"    # Lcom/tencent/qt/alg/network/NetworkFlowController;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mFlowController:Lcom/tencent/qt/alg/network/NetworkFlowController;

    .line 315
    return-void
.end method

.method public setHelloHelper(Lcom/tencent/qt/base/net/HelloHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/tencent/qt/base/net/HelloHelper;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloHelper:Lcom/tencent/qt/base/net/HelloHelper;

    .line 291
    if-nez p1, :cond_0

    .line 292
    const v1, 0x41eb0

    iput v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloTimeInterval:I

    .line 307
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-interface {p1}, Lcom/tencent/qt/base/net/HelloHelper;->getHelloInterval()I

    move-result v0

    .line 296
    .local v0, "interval":I
    const v1, 0xdb7b8

    if-le v0, v1, :cond_2

    .line 297
    const v0, 0xdb7b8

    .line 303
    :cond_1
    :goto_1
    iput v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloTimeInterval:I

    goto :goto_0

    .line 300
    :cond_2
    if-gtz v0, :cond_1

    .line 301
    const v0, 0x41eb0

    goto :goto_1
.end method

.method public setHelloInterval(I)V
    .locals 5
    .param p1, "timeInterval"    # I

    .prologue
    const/4 v4, 0x0

    .line 279
    iget v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloTimeInterval:I

    if-eq p1, v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->stopHello()V

    .line 283
    iput p1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloTimeInterval:I

    .line 284
    const-string v0, "QTNetwork"

    const-string v1, "HelloTimeInterval:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloTimeInterval:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/qt/base/net/PLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    invoke-virtual {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->startHello()V

    .line 287
    :cond_0
    return-void
.end method

.method public setHosts(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "hosts"    # [Ljava/lang/String;
    .param p3, "ports"    # [I

    .prologue
    .line 362
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qt/base/net/NetworkEngine;->native_set_hosts(I[Ljava/lang/String;[I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setLooper(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLooper:Landroid/os/Looper;

    .line 270
    if-nez p1, :cond_0

    .line 271
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLooper:Landroid/os/Looper;

    .line 273
    :cond_0
    new-instance v0, Lcom/tencent/qt/base/net/NetworkEngine$NetworkReportHandler;

    iget-object v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/tencent/qt/base/net/NetworkEngine$NetworkReportHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mNetworkHandler:Lcom/tencent/qt/base/net/NetworkEngine$NetworkReportHandler;

    .line 274
    new-instance v0, Lcom/tencent/qt/base/net/NetworkEngine$HelloHandler;

    iget-object v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/tencent/qt/base/net/NetworkEngine$HelloHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloHandler:Landroid/os/Handler;

    .line 275
    return-void
.end method

.method public setSupportUIN64(Z)V
    .locals 1
    .param p1, "s"    # Z

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/tencent/qt/base/net/NetworkEngine;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 257
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/qt/base/net/NetworkEngine;->native_set_support_64_uin(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setVerifyHelper(Lcom/tencent/qt/base/net/VerifyHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/tencent/qt/base/net/VerifyHelper;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mVerifyHelper:Lcom/tencent/qt/base/net/VerifyHelper;

    .line 311
    return-void
.end method

.method public startHello()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    .line 538
    iput-boolean v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->isLogin:Z

    .line 539
    iget-object v7, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mContext:Landroid/content/Context;

    .line 540
    .local v7, "context":Landroid/content/Context;
    if-nez v7, :cond_0

    .line 566
    :goto_0
    return-void

    .line 542
    :cond_0
    iput-boolean v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->isNeedHello:Z

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mLastHelloTimestamp:J

    .line 545
    const-string v1, "alarm"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 547
    .local v0, "manager":Landroid/app/AlarmManager;
    monitor-enter p0

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloReceiver:Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;

    if-nez v1, :cond_1

    .line 549
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 550
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.tencent.qt.base.net.HELLO_ACTION"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    new-instance v1, Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;-><init>(Lcom/tencent/qt/base/net/NetworkEngine;)V

    iput-object v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloReceiver:Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;

    .line 552
    iget-object v1, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloReceiver:Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;

    invoke-virtual {v7, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 555
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.tencent.qt.base.net.HELLO_ACTION"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v9, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v7, v1, v9, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 559
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 560
    .local v2, "triggerAtTime":J
    const/4 v1, 0x1

    iget v4, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloTimeInterval:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 561
    const-string v1, "QTNetwork"

    const-string v4, "startHello interval:%d,%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x1

    iget v11, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloTimeInterval:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/tencent/qt/base/net/PLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    .end local v2    # "triggerAtTime":J
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v8    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopHello()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 574
    iput-boolean v7, p0, Lcom/tencent/qt/base/net/NetworkEngine;->isLogin:Z

    .line 575
    iget-object v0, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mContext:Landroid/content/Context;

    .line 576
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 600
    :goto_0
    return-void

    .line 579
    :cond_0
    const-string v4, "QTNetwork"

    const-string v5, "=> hello stop!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/tencent/qt/base/net/PLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    iput-boolean v7, p0, Lcom/tencent/qt/base/net/NetworkEngine;->isNeedHello:Z

    .line 583
    monitor-enter p0

    .line 584
    :try_start_0
    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloReceiver:Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 586
    :try_start_1
    iget-object v4, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloReceiver:Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;

    invoke-virtual {v0, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    :goto_1
    const/4 v4, 0x0

    :try_start_2
    iput-object v4, p0, Lcom/tencent/qt/base/net/NetworkEngine;->mHelloReceiver:Lcom/tencent/qt/base/net/NetworkEngine$HelloBroadcastReceiver;

    .line 591
    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 592
    .local v2, "manager":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.tencent.qt.base.net.HELLO_ACTION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v1, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 595
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 597
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "manager":Landroid/app/AlarmManager;
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 587
    :catch_0
    move-exception v4

    goto :goto_1
.end method
