.class public Lcom/netease/pharos/qos/QosProxy;
.super Ljava/lang/Object;
.source "QosProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QosProxy"

.field private static sQosProxy:Lcom/netease/pharos/qos/QosProxy;


# instance fields
.field private mIsInit:Z

.field private mIsStart:Z

.field private mQosCore:Lcom/netease/pharos/qos/QosCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/qos/QosProxy;->sQosProxy:Lcom/netease/pharos/qos/QosProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/netease/pharos/qos/QosProxy;->mIsInit:Z

    .line 28
    iput-boolean v0, p0, Lcom/netease/pharos/qos/QosProxy;->mIsStart:Z

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/qos/QosProxy;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/netease/pharos/qos/QosProxy;->sQosProxy:Lcom/netease/pharos/qos/QosProxy;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/netease/pharos/qos/QosProxy;

    invoke-direct {v0}, Lcom/netease/pharos/qos/QosProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/qos/QosProxy;->sQosProxy:Lcom/netease/pharos/qos/QosProxy;

    .line 42
    :cond_0
    sget-object v0, Lcom/netease/pharos/qos/QosProxy;->sQosProxy:Lcom/netease/pharos/qos/QosProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    const-string v0, "QosProxy"

    const-string v1, "QosProxy [clean] start"

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    invoke-virtual {v0}, Lcom/netease/pharos/qos/QosCore;->clean()V

    .line 114
    :cond_0
    iput-boolean v2, p0, Lcom/netease/pharos/qos/QosProxy;->mIsInit:Z

    .line 116
    iput-boolean v2, p0, Lcom/netease/pharos/qos/QosProxy;->mIsStart:Z

    .line 117
    return-void
.end method

.method public getQosResult()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "result":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    invoke-virtual {v1}, Lcom/netease/pharos/qos/QosCore;->getQosResult()Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    :cond_0
    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/netease/pharos/qos/QosProxy;->mIsInit:Z

    if-nez v0, :cond_1

    .line 48
    const-string v0, "QosProxy"

    const-string v1, "QosProxy [init] start"

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/netease/pharos/qos/QosCore;

    invoke-direct {v0}, Lcom/netease/pharos/qos/QosCore;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/PharosProxy;->getmContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getInstance()Lcom/netease/pharos/linkcheck/RegionConfigInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/linkcheck/RegionConfigInfo;->getRapQos()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/qos/QosCore;->init(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 55
    iget-object v0, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    invoke-virtual {v0}, Lcom/netease/pharos/qos/QosCore;->parse()I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/pharos/qos/QosProxy;->mIsInit:Z

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v0, "QosProxy"

    const-string v1, "QosProxy [init] already init"

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start_qosCore()V
    .locals 4

    .prologue
    .line 64
    const-string v1, "QosProxy"

    const-string v2, "QosProxy [start_qosCore] start"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "QosProxy"

    const-string v2, "\u5f00\u59cbQos\u6a21\u5757"

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/netease/pharos/qos/QosProxy;->mQosCore:Lcom/netease/pharos/qos/QosCore;

    invoke-virtual {v1}, Lcom/netease/pharos/qos/QosCore;->checkIsNeedToQos()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "QosProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QosProxy [start_qosCore] JSONException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
