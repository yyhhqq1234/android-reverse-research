.class public Lcom/tencent/trbt/videosdk/jni/VideoApi;
.super Ljava/lang/Object;
.source "VideoApi.java"


# static fields
.field private static final CFG_GAME_SWITCH:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/tencent/trbt/videosdk/jni/VideoApi;


# instance fields
.field private volatile gameSwitchOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/tencent/trbt/videosdk/jni/VideoApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/trbt/videosdk/jni/VideoApi;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/trbt/videosdk/jni/VideoApi;->gameSwitchOn:Z

    .line 20
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/tencent/trbt/videosdk/jni/VideoApi;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tencent/trbt/videosdk/jni/VideoApi;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/trbt/videosdk/jni/VideoApi;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/tencent/trbt/videosdk/jni/VideoApi;->gameSwitchOn:Z

    return p1
.end method

.method public static getInstance()Lcom/tencent/trbt/videosdk/jni/VideoApi;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/tencent/trbt/videosdk/jni/VideoApi;->instance:Lcom/tencent/trbt/videosdk/jni/VideoApi;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/tencent/trbt/videosdk/jni/VideoApi;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/jni/VideoApi;-><init>()V

    sput-object v0, Lcom/tencent/trbt/videosdk/jni/VideoApi;->instance:Lcom/tencent/trbt/videosdk/jni/VideoApi;

    .line 26
    :cond_0
    sget-object v0, Lcom/tencent/trbt/videosdk/jni/VideoApi;->instance:Lcom/tencent/trbt/videosdk/jni/VideoApi;

    return-object v0
.end method


# virtual methods
.method public getGameSwitch()Z
    .locals 3

    .prologue
    .line 70
    sget-object v0, Lcom/tencent/trbt/videosdk/jni/VideoApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGameSwitch() called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/trbt/videosdk/jni/VideoApi;->gameSwitchOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/trbt/videosdk/utils/XLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-boolean v0, p0, Lcom/tencent/trbt/videosdk/jni/VideoApi;->gameSwitchOn:Z

    return v0
.end method

.method public getVideoCfg()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgRequest;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgRequest;-><init>()V

    .line 30
    .local v0, "request":Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgRequest;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgRequest;->cfgTypeList:Ljava/util/ArrayList;

    .line 31
    iget-object v1, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgRequest;->cfgTypeList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v1, Lcom/tencent/trbt/videosdk/jni/VideoApi;->TAG:Ljava/lang/String;

    const-string v2, "getVideoCfg() called"

    invoke-static {v1, v2}, Lcom/tencent/trbt/videosdk/utils/XLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/tencent/trbt/videosdk/net/NetworkApi;->getInstance()Lcom/tencent/trbt/videosdk/net/NetworkApi;

    move-result-object v1

    const-class v2, Lcom/tencent/trbt/videosdk/wzry/WZRYGetVideoCfgResponse;

    new-instance v3, Lcom/tencent/trbt/videosdk/jni/VideoApi$1;

    invoke-direct {v3, p0}, Lcom/tencent/trbt/videosdk/jni/VideoApi$1;-><init>(Lcom/tencent/trbt/videosdk/jni/VideoApi;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/trbt/videosdk/net/NetworkApi;->sendAsyncRequest(Lcom/qq/taf/jce/JceStruct;Ljava/lang/Class;Lcom/tencent/trbt/videosdk/net/NetworkCallback;)I

    .line 66
    return-void
.end method

.method public notifyGameBegin()V
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/tencent/trbt/videosdk/jni/VideoApi;->TAG:Ljava/lang/String;

    const-string v1, "notifyGameBegin() called"

    invoke-static {v0, v1}, Lcom/tencent/trbt/videosdk/utils/XLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/tencent/trbt/videosdk/jni/VideoApi;->getVideoCfg()V

    .line 80
    return-void
.end method

.method public notifyGameEnd()V
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/tencent/trbt/videosdk/jni/VideoApi;->TAG:Ljava/lang/String;

    const-string v1, "notifyGameEnd() called"

    invoke-static {v0, v1}, Lcom/tencent/trbt/videosdk/utils/XLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public notifyVideoEnd(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 90
    sget-object v1, Lcom/tencent/trbt/videosdk/jni/VideoApi;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyVideoEnd() called with: gameId = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], data = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/trbt/videosdk/utils/XLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-eqz p2, :cond_0

    array-length v1, p2

    if-gtz v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;-><init>()V

    .line 96
    .local v0, "request":Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->storyInfo:[B

    .line 97
    iget-object v1, v0, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdRequest;->storyInfo:[B

    array-length v2, p2

    invoke-static {p2, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    invoke-static {}, Lcom/tencent/trbt/videosdk/net/NetworkApi;->getInstance()Lcom/tencent/trbt/videosdk/net/NetworkApi;

    move-result-object v1

    const-class v2, Lcom/tencent/trbt/videosdk/wzry/WZRYVideoProdResponse;

    new-instance v3, Lcom/tencent/trbt/videosdk/jni/VideoApi$2;

    invoke-direct {v3, p0}, Lcom/tencent/trbt/videosdk/jni/VideoApi$2;-><init>(Lcom/tencent/trbt/videosdk/jni/VideoApi;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/trbt/videosdk/net/NetworkApi;->sendAsyncRequest(Lcom/qq/taf/jce/JceStruct;Ljava/lang/Class;Lcom/tencent/trbt/videosdk/net/NetworkCallback;)I

    goto :goto_0
.end method
