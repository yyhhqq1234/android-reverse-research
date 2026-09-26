.class public Lcom/netease/pharos/PharosProxy;
.super Ljava/lang/Object;
.source "PharosProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PharosProxy"

.field private static sPharosProxy:Lcom/netease/pharos/PharosProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDecision:I

.field private mEB:Z

.field private mHasSet:Z

.field private mHighSpeedUrl:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mIsDebug:Z

.field private mNetId:Ljava/lang/String;

.field private mOption:I

.field private mPharosListener:Lcom/netease/pharos/PharosListener;

.field private mPort:Ljava/lang/String;

.field private mPorts:Lorg/json/JSONArray;

.field private mProjectId:Ljava/lang/String;

.field private mUdid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/PharosProxy;->sPharosProxy:Lcom/netease/pharos/PharosProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mContext:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mProjectId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mUdid:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mNetId:Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mEB:Z

    .line 45
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    .line 47
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mIp:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPort:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mHighSpeedUrl:Ljava/lang/String;

    .line 53
    iput v2, p0, Lcom/netease/pharos/PharosProxy;->mOption:I

    .line 55
    iput v1, p0, Lcom/netease/pharos/PharosProxy;->mDecision:I

    .line 57
    iput-boolean v2, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    .line 59
    iput-boolean v1, p0, Lcom/netease/pharos/PharosProxy;->mHasSet:Z

    .line 199
    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPorts:Lorg/json/JSONArray;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/netease/pharos/PharosProxy;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/netease/pharos/PharosProxy;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/netease/pharos/PharosProxy;->sPharosProxy:Lcom/netease/pharos/PharosProxy;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/netease/pharos/PharosProxy;

    invoke-direct {v0}, Lcom/netease/pharos/PharosProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/PharosProxy;->sPharosProxy:Lcom/netease/pharos/PharosProxy;

    .line 175
    :cond_0
    sget-object v0, Lcom/netease/pharos/PharosProxy;->sPharosProxy:Lcom/netease/pharos/PharosProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 260
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method


# virtual methods
.method public getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getmDecision()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/netease/pharos/PharosProxy;->mDecision:I

    return v0
.end method

.method public getmHighSpeedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mHighSpeedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getmLinktestId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmLinktestId()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "linktestId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 155
    const-string v0, ""

    .line 157
    :cond_0
    return-object v0
.end method

.method public getmNetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mNetId:Ljava/lang/String;

    return-object v0
.end method

.method public getmOption()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/netease/pharos/PharosProxy;->mOption:I

    return v0
.end method

.method public getmPharosListener()Lcom/netease/pharos/PharosListener;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    return-object v0
.end method

.method public getmPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public getmPorts()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mPorts:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getmProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mProjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getmUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netease/pharos/PharosProxy;->mUdid:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "projectId"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mContext:Landroid/content/Context;

    .line 180
    iput-object p2, p0, Lcom/netease/pharos/PharosProxy;->mProjectId:Ljava/lang/String;

    .line 181
    invoke-static {p1}, Lcom/netease/pharos/util/Util;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mUdid:Ljava/lang/String;

    .line 184
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mHasSet:Z

    if-nez v0, :cond_0

    .line 185
    invoke-static {p1}, Lcom/netease/pharos/util/Util;->isApkDebugable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    .line 188
    :cond_0
    const-string v0, "PharosProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pharos isDebug = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->setIsShowLog(Z)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/PharosProxy;->mUdid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/PharosProxy;->mNetId:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    return v0
.end method

.method public ismEB()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mEB:Z

    return v0
.end method

.method public ismHasSet()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/netease/pharos/PharosProxy;->mHasSet:Z

    return v0
.end method

.method public pharosFunc(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "paramJson"    # Lorg/json/JSONObject;

    .prologue
    .line 197
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "isDebug"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/netease/pharos/PharosProxy;->mIsDebug:Z

    .line 76
    return-void
.end method

.method public setmDecision(I)V
    .locals 0
    .param p1, "mDecision"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/netease/pharos/PharosProxy;->mDecision:I

    .line 117
    return-void
.end method

.method public setmEB(Z)V
    .locals 0
    .param p1, "mEB"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/netease/pharos/PharosProxy;->mEB:Z

    .line 150
    return-void
.end method

.method public setmHasSet(Z)V
    .locals 0
    .param p1, "mHasSet"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/netease/pharos/PharosProxy;->mHasSet:Z

    .line 84
    return-void
.end method

.method public setmHighSpeedUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHighSpeedUrl"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mHighSpeedUrl:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setmIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIp"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mIp:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setmOption(I)V
    .locals 0
    .param p1, "mOption"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/netease/pharos/PharosProxy;->mOption:I

    .line 134
    return-void
.end method

.method public setmPharosListener(Lcom/netease/pharos/PharosListener;)V
    .locals 2
    .param p1, "mPharosListener"    # Lcom/netease/pharos/PharosListener;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mPharosListener:Lcom/netease/pharos/PharosListener;

    .line 163
    if-nez p1, :cond_0

    .line 164
    const-string v0, "PharosProxy"

    const-string v1, "mPharosListener \u4e3a null"

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    const-string v0, "PharosProxy"

    const-string v1, "mPharosListener \u4e0d\u4e3a null"

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setmPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPort"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mPort:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setmPorts(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "mPorts"    # Lorg/json/JSONArray;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/netease/pharos/PharosProxy;->mPorts:Lorg/json/JSONArray;

    .line 207
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/pharos/PharosProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/pharos/PharosProxy$1;-><init>(Lcom/netease/pharos/PharosProxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 253
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 254
    return-void
.end method
