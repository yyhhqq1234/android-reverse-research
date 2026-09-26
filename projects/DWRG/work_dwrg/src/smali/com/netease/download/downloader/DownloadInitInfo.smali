.class public Lcom/netease/download/downloader/DownloadInitInfo;
.super Ljava/lang/Object;
.source "DownloadInitInfo.java"


# static fields
.field private static sDownloadInitInfo:Lcom/netease/download/downloader/DownloadInitInfo;


# instance fields
.field private mAllSize:J

.field public mConfigurl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownloadId:Ljava/lang/String;

.field private mLocalIp:Ljava/lang/String;

.field private mLocalgateway:Ljava/lang/String;

.field private mLogOpen:Z

.field private mLogTest:Ljava/lang/String;

.field private mOverSea:Ljava/lang/String;

.field private mProjectId:Ljava/lang/String;

.field private mThreadnum:I

.field private mType:Ljava/lang/String;

.field private mWifiOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/downloader/DownloadInitInfo;->sDownloadInitInfo:Lcom/netease/download/downloader/DownloadInitInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mConfigurl:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLocalIp:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLocalgateway:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mProjectId:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mWifiOnly:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLogOpen:Z

    .line 35
    iput-object v1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mType:Ljava/lang/String;

    .line 37
    const-string v0, "-1"

    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mOverSea:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mDownloadId:Ljava/lang/String;

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mThreadnum:I

    .line 43
    iput-object v1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLogTest:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mContext:Landroid/content/Context;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mAllSize:J

    .line 53
    return-void
.end method

.method public static getInstances()Lcom/netease/download/downloader/DownloadInitInfo;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/netease/download/downloader/DownloadInitInfo;->sDownloadInitInfo:Lcom/netease/download/downloader/DownloadInitInfo;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/netease/download/downloader/DownloadInitInfo;

    invoke-direct {v0}, Lcom/netease/download/downloader/DownloadInitInfo;-><init>()V

    sput-object v0, Lcom/netease/download/downloader/DownloadInitInfo;->sDownloadInitInfo:Lcom/netease/download/downloader/DownloadInitInfo;

    .line 61
    :cond_0
    sget-object v0, Lcom/netease/download/downloader/DownloadInitInfo;->sDownloadInitInfo:Lcom/netease/download/downloader/DownloadInitInfo;

    return-object v0
.end method

.method private getLocalgateway(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 190
    .local v1, "my_wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 191
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-direct {p0, v2}, Lcom/netease/download/downloader/DownloadInitInfo;->intToIp(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initLocalIp()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLocalIp:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/download/network/NetUtil;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLocalIp:Ljava/lang/String;

    .line 157
    :cond_0
    return-void
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 2
    .param p1, "paramInt"    # I

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    and-int/lit16 v1, p1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method


# virtual methods
.method public getAllSize()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mAllSize:J

    return-wide v0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLocalIp:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalgateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLocalgateway:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/netease/download/downloader/DownloadInitInfo;->getLocalgateway(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLocalgateway:Ljava/lang/String;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLocalgateway:Ljava/lang/String;

    return-object v0
.end method

.method public getOverSea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mOverSea:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mProjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getmConfigurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mConfigurl:Ljava/lang/String;

    return-object v0
.end method

.method public getmDownloadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mDownloadId:Ljava/lang/String;

    return-object v0
.end method

.method public getmLogTest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLogTest:Ljava/lang/String;

    return-object v0
.end method

.method public getmThreadnum()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mThreadnum:I

    return v0
.end method

.method public getmType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public ismLogOpen()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLogOpen:Z

    return v0
.end method

.method public ismWifiOnly()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mWifiOnly:Z

    return v0
.end method

.method public setAllSize(J)V
    .locals 1
    .param p1, "allSize"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mAllSize:J

    .line 78
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 67
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mContext:Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Lcom/netease/download/downloader/DownloadInitInfo;->initLocalIp()V

    .line 70
    :cond_0
    return-void
.end method

.method public setLocalgateway(Ljava/lang/String;)V
    .locals 0
    .param p1, "sLocalgateway"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLocalgateway:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setOverSea(Ljava/lang/String;)V
    .locals 0
    .param p1, "overSea"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mOverSea:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setProjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "projectId"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mProjectId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setmConfigurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mConfigurl"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mConfigurl:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setmDownloadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDownloadId"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mDownloadId:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setmLogOpen(Z)V
    .locals 0
    .param p1, "mLogOpen"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLogOpen:Z

    .line 133
    return-void
.end method

.method public setmLogTest(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLogTest"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mLogTest:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setmThreadnum(I)V
    .locals 0
    .param p1, "mThreadnum"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mThreadnum:I

    .line 142
    return-void
.end method

.method public setmType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mType"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mType:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setmWifiOnly(Z)V
    .locals 0
    .param p1, "mWifiOnly"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/netease/download/downloader/DownloadInitInfo;->mWifiOnly:Z

    .line 98
    return-void
.end method
