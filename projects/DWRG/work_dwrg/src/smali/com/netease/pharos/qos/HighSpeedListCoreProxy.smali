.class public Lcom/netease/pharos/qos/HighSpeedListCoreProxy;
.super Ljava/lang/Object;
.source "HighSpeedListCoreProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HighSpeedListCoreProxy"

.field private static sHighSpeedListCoreProxy:Lcom/netease/pharos/qos/HighSpeedListCoreProxy;


# instance fields
.field private mHighSpeedListCore:Lcom/netease/pharos/qos/HighSpeedListCore;

.field private mIsInit:Z

.field private mIsStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->sHighSpeedListCoreProxy:Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mIsInit:Z

    .line 24
    iput-boolean v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mIsStart:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mHighSpeedListCore:Lcom/netease/pharos/qos/HighSpeedListCore;

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/qos/HighSpeedListCoreProxy;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->sHighSpeedListCoreProxy:Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    invoke-direct {v0}, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->sHighSpeedListCoreProxy:Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    .line 38
    :cond_0
    sget-object v0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->sHighSpeedListCoreProxy:Lcom/netease/pharos/qos/HighSpeedListCoreProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    const-string v0, "HighSpeedListCoreProxy"

    const-string v1, "HighSpeedListCoreProxy [clean] start"

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mHighSpeedListCore:Lcom/netease/pharos/qos/HighSpeedListCore;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mHighSpeedListCore:Lcom/netease/pharos/qos/HighSpeedListCore;

    invoke-virtual {v0}, Lcom/netease/pharos/qos/HighSpeedListCore;->clean()V

    .line 74
    :cond_0
    iput-boolean v2, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mIsInit:Z

    .line 76
    iput-boolean v2, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mIsStart:Z

    .line 77
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mIsInit:Z

    if-nez v0, :cond_1

    .line 44
    const-string v0, "HighSpeedListCoreProxy"

    const-string v1, "HighSpeedListCoreProxy [init] start"

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mHighSpeedListCore:Lcom/netease/pharos/qos/HighSpeedListCore;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/netease/pharos/qos/HighSpeedListCore;

    invoke-direct {v0}, Lcom/netease/pharos/qos/HighSpeedListCore;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mHighSpeedListCore:Lcom/netease/pharos/qos/HighSpeedListCore;

    .line 49
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mIsInit:Z

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v0, "HighSpeedListCoreProxy"

    const-string v1, "HighSpeedListCoreProxy [init] already init"

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 57
    const-string v1, "HighSpeedListCoreProxy"

    const-string v2, "HighSpeedListCoreProxy [start_highSpeedListCore] start"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "HighSpeedListCoreProxy"

    const-string v2, "\u5f00\u59cb\u83b7\u53d6\u9ad8\u901f\u5217\u8868"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/netease/pharos/qos/HighSpeedListCoreProxy;->mHighSpeedListCore:Lcom/netease/pharos/qos/HighSpeedListCore;

    invoke-virtual {v1}, Lcom/netease/pharos/qos/HighSpeedListCore;->start()I

    move-result v0

    .line 62
    .local v0, "hithResult":I
    const-string v1, "HighSpeedListCoreProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5f00\u59cb\u83b7\u53d6\u9ad8\u901f\u5217\u8868  \u7ed3\u679c = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
