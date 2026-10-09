.class public Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# static fields
.field private static final ACCESS_HOST_ADDR:Ljava/lang/String; = "mgamevideo.serviceproxy.qq.com"

.field private static final ACCESS_HOST_PORT1:I = 0x50

.field private static final ACCESS_HOST_PORT2:I = 0x1f40

.field private static final ACCESS_HOST_PORT3:I = 0x1bb

.field private static final ACCESS_HOST_RESERVER1:Ljava/lang/String; = "180.153.162.111"

.field private static final ACCESS_HOST_RESERVER2:Ljava/lang/String; = "111.161.54.47"

.field static final LOG_TAG:Ljava/lang/String; = "ConnectionManager"

.field private static final QTX_DEFAULT_KEY:Ljava/lang/String; = "19ai^R*p*-l#_,L<"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProtocolFlowMonitor:Lcom/tencent/qqgamemi/mgc/connection/ProtocolFlowMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private buildAccessHosts()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v13, 0x3

    new-array v1, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "mgamevideo.serviceproxy.qq.com"

    aput-object v14, v1, v13

    const/4 v13, 0x1

    const-string v14, "180.153.162.111"

    aput-object v14, v1, v13

    const/4 v13, 0x2

    const-string v14, "111.161.54.47"

    aput-object v14, v1, v13

    .line 139
    .local v1, "backupIps":[Ljava/lang/String;
    array-length v2, v1

    .line 140
    .local v2, "backupIpsLength":I
    const/4 v13, 0x3

    new-array v9, v13, [I

    fill-array-data v9, :array_0

    .line 141
    .local v9, "ports":[I
    array-length v10, v9

    .line 142
    .local v10, "portsLength":I
    new-instance v11, Ljava/util/Random;

    invoke-direct {v11}, Ljava/util/Random;-><init>()V

    .line 143
    .local v11, "random":Ljava/util/Random;
    invoke-virtual {v11, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 144
    .local v12, "randomIndex":I
    aget v6, v9, v12

    .line 145
    .local v6, "port0":I
    add-int/lit8 v12, v12, 0x1

    rem-int v13, v12, v10

    aget v7, v9, v13

    .line 146
    .local v7, "port1":I
    add-int/lit8 v12, v12, 0x1

    rem-int v13, v12, v10

    aget v8, v9, v13

    .line 148
    .local v8, "port2":I
    const-string v13, "ConnectionManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "buildAccessHosts: port0="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", port1="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", port2="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v10, :cond_1

    .line 151
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 152
    new-instance v0, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;

    aget-object v13, v1, v4

    aget v14, v9, v3

    invoke-direct {v0, v13, v14}, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;-><init>(Ljava/lang/String;I)V

    .line 153
    .local v0, "address":Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 150
    .end local v0    # "address":Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v4    # "j":I
    :cond_1
    return-object v5

    .line 140
    nop

    :array_0
    .array-data 4
        0x50
        0x1f40
        0x1bb
    .end array-data
.end method

.method private initLogUtilTrace()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->setLogEnable()V

    .line 107
    invoke-direct {p0}, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->setLogLevel()V

    .line 108
    return-void
.end method

.method private initNetworkEngine()V
    .locals 12

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "isDebug":Z
    if-eqz v1, :cond_1

    const/4 v3, 0x0

    .line 61
    .local v3, "logLevel":I
    :goto_0
    iget-object v9, p0, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/tencent/qqgamemi/mgc/core/MGCEnvironment;->getMgcExternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 62
    .local v5, "rootLogFile":Ljava/io/File;
    if-eqz v5, :cond_0

    .line 63
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/qqgamemi/mgc/core/MGCEnvironment;->getMgcExternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    const-string v11, "sdk-log"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "logDirectory":Ljava/lang/String;
    if-eqz v1, :cond_2

    sget-object v8, Lcom/tencent/qt/base/net/PLog$TraceMode;->all:Lcom/tencent/qt/base/net/PLog$TraceMode;

    .line 65
    .local v8, "traceMode":Lcom/tencent/qt/base/net/PLog$TraceMode;
    :goto_1
    if-eqz v1, :cond_3

    sget-object v7, Lcom/tencent/qt/base/net/PLog$StoreMode;->fixed:Lcom/tencent/qt/base/net/PLog$StoreMode;

    .line 66
    .local v7, "storeMode":Lcom/tencent/qt/base/net/PLog$StoreMode;
    :goto_2
    const/4 v9, 0x1

    invoke-static {v9, v3}, Lcom/tencent/qt/base/net/NetworkEngine;->enableLogging(ZI)V

    .line 67
    invoke-static {v8, v7, v2}, Lcom/tencent/qt/base/net/NetworkEngine;->traceLogging(Lcom/tencent/qt/base/net/PLog$TraceMode;Lcom/tencent/qt/base/net/PLog$StoreMode;Ljava/lang/String;)Z

    .line 69
    .end local v2    # "logDirectory":Ljava/lang/String;
    .end local v7    # "storeMode":Lcom/tencent/qt/base/net/PLog$StoreMode;
    .end local v8    # "traceMode":Lcom/tencent/qt/base/net/PLog$TraceMode;
    :cond_0
    invoke-direct {p0}, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->initLogUtilTrace()V

    .line 70
    const/16 v6, 0xaf1

    .line 71
    .local v6, "sdkVersionCode":I
    invoke-static {}, Lcom/tencent/qqgamemi/QMiConfig;->getInstance()Lcom/tencent/qqgamemi/QMiConfig;

    move-result-object v9

    iget-object v10, p0, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/tencent/qqgamemi/QMiConfig;->getClientType(Landroid/content/Context;)I

    move-result v0

    .line 72
    .local v0, "clientType":I
    const-string v9, "ConnectionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "clientTypte:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",sdkVersionCode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v9, p0, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v0, v6}, Lcom/tencent/qt/base/net/NetworkEngine;->init(Landroid/content/Context;Landroid/os/Looper;II)Z

    move-result v4

    .line 76
    .local v4, "ret":Z
    const-string v9, "ConnectionManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "networkEngine ret: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/tencent/qt/base/net/NetworkEngine;->shareEngine()Lcom/tencent/qt/base/net/NetworkEngine;

    move-result-object v9

    new-instance v10, Lcom/tencent/qqgamemi/mgc/core/ChannelEventDispatcher;

    invoke-direct {v10}, Lcom/tencent/qqgamemi/mgc/core/ChannelEventDispatcher;-><init>()V

    invoke-virtual {v9, v10}, Lcom/tencent/qt/base/net/NetworkEngine;->addBroadcastHandler(Lcom/tencent/qt/base/net/BroadcastHandler;)V

    .line 79
    new-instance v9, Lcom/tencent/qqgamemi/mgc/connection/ProtocolFlowMonitor;

    invoke-direct {v9}, Lcom/tencent/qqgamemi/mgc/connection/ProtocolFlowMonitor;-><init>()V

    iput-object v9, p0, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->mProtocolFlowMonitor:Lcom/tencent/qqgamemi/mgc/connection/ProtocolFlowMonitor;

    .line 80
    invoke-static {}, Lcom/tencent/qt/base/net/NetworkEngine;->shareEngine()Lcom/tencent/qt/base/net/NetworkEngine;

    move-result-object v9

    iget-object v10, p0, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->mProtocolFlowMonitor:Lcom/tencent/qqgamemi/mgc/connection/ProtocolFlowMonitor;

    invoke-virtual {v9, v10}, Lcom/tencent/qt/base/net/NetworkEngine;->setFlowController(Lcom/tencent/qt/alg/network/NetworkFlowController;)V

    .line 81
    invoke-static {}, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->getInstance()Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/qqgamemi/protocol/pbproxy/PBProxyManager;->connectionSuccessNotify()V

    .line 82
    return-void

    .line 60
    .end local v0    # "clientType":I
    .end local v3    # "logLevel":I
    .end local v4    # "ret":Z
    .end local v5    # "rootLogFile":Ljava/io/File;
    .end local v6    # "sdkVersionCode":I
    :cond_1
    const/4 v3, 0x2

    goto/16 :goto_0

    .line 64
    .restart local v2    # "logDirectory":Ljava/lang/String;
    .restart local v3    # "logLevel":I
    .restart local v5    # "rootLogFile":Ljava/io/File;
    :cond_2
    sget-object v8, Lcom/tencent/qt/base/net/PLog$TraceMode;->offline:Lcom/tencent/qt/base/net/PLog$TraceMode;

    goto/16 :goto_1

    .line 65
    .restart local v8    # "traceMode":Lcom/tencent/qt/base/net/PLog$TraceMode;
    :cond_3
    sget-object v7, Lcom/tencent/qt/base/net/PLog$StoreMode;->fixed:Lcom/tencent/qt/base/net/PLog$StoreMode;

    goto/16 :goto_2
.end method

.method private setLogEnable()V
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->getDebugConfig()Lcom/tencent/qqgamemi/mgc/core/DebugConfig;

    move-result-object v1

    const-string v2, "log_enable"

    invoke-virtual {v1, v2}, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "logEnable":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "ConnectionManager"

    const-string v2, "setLogEnable is true"

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/component/utils/log/LogUtil;->setLogcatEnable(Z)V

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v1, "ConnectionManager"

    const-string v2, "setLogEnable is false"

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/component/utils/log/LogUtil;->setLogcatEnable(Z)V

    goto :goto_0
.end method

.method private setLogLevel()V
    .locals 6

    .prologue
    .line 123
    invoke-static {}, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->getDebugConfig()Lcom/tencent/qqgamemi/mgc/core/DebugConfig;

    move-result-object v3

    const-string v4, "log_level"

    invoke-virtual {v3, v4}, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "logLevel":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 126
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 127
    .local v1, "level":I
    const-string v3, "ConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLogLevel :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {v1}, Lcom/tencent/component/utils/log/LogUtil;->setTraceLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "level":I
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLogLevel erro:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAccessHosts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->getDebugConfig()Lcom/tencent/qqgamemi/mgc/core/DebugConfig;

    move-result-object v2

    const-string v3, "access_host"

    invoke-virtual {v2, v3}, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "debugHost":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 94
    const-string v2, "ConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "use debug access host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;>;"
    new-instance v2, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;

    const/16 v3, 0x1f40

    invoke-direct {v2, v0, v3}, Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/mgc/connection/NetworkAddress;>;"
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->buildAccessHosts()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultKey()[B
    .locals 1

    .prologue
    .line 86
    const-string v0, "19ai^R*p*-l#_,L<"

    invoke-static {v0}, Lcom/tencent/qqgamemi/util/StringUtils;->getUtf8(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;->initNetworkEngine()V

    .line 50
    return-void
.end method
