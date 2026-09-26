.class public Lcom/netease/download/reporter/ReportInfo;
.super Ljava/lang/Object;
.source "ReportInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/reporter/ReportInfo$FaildFileInfoUnit;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportInfo"

.field private static sReportInfo2:Lcom/netease/download/reporter/ReportInfo;


# instance fields
.field private isInProcess:Z

.field public volatile mAbnormalRetnum:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mAreaZone:Ljava/lang/String;

.field public mCliDns:Ljava/lang/String;

.field public mCliDnscheck:Ljava/lang/String;

.field public mCliGateway:Ljava/lang/String;

.field public mCliIp:Ljava/lang/String;

.field public mCompleteRate:I

.field public volatile mDetectData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mDlSize:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mDlSpeed:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mDlSpeedLinkAvg:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mDlTime:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mDnsTime:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mDownloadid:Ljava/lang/String;

.field public volatile mErrcodeFiles:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile mErrcodeNum:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mErrorIps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile mFileNum:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mGameCode:Ljava/lang/String;

.field public mHttpDns:I

.field public volatile mHttpdnsIps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile mHttpdnsTime:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mIpRemoved:I

.field public mLocalGwLoss:I

.field public mLocalGwRtt:I

.field public mLogTest:I

.field public mLvsip:I

.field public volatile mLvsipIps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMobileType:Ljava/lang/String;

.field public mNetWork:Ljava/lang/String;

.field public mNetworkIsp:Ljava/lang/String;

.field public mNetworkSignal:I

.field public mNetworkSwitch:I

.field public mOsName:Ljava/lang/String;

.field public mOsVer:Ljava/lang/String;

.field public volatile mRetcodeFiles:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSessionid:Ljava/lang/String;

.field public volatile mSlowIps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mStatus:I

.field public volatile mSvrIps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mTimeZone:Ljava/lang/String;

.field public mTotalSize:J

.field public mUdid:Ljava/lang/String;

.field public mUdtVer:Ljava/lang/String;

.field public volatile mUpdateSvrIps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/reporter/ReportInfo;->sReportInfo2:Lcom/netease/download/reporter/ReportInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v2, p0, Lcom/netease/download/reporter/ReportInfo;->isInProcess:Z

    .line 48
    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mSessionid:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mDownloadid:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mUdid:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mOsName:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mOsVer:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mUdtVer:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mGameCode:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mTimeZone:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mAreaZone:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mNetWork:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mNetworkIsp:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mCliIp:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mCliGateway:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mCliDns:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mCliDnscheck:Ljava/lang/String;

    .line 64
    iput v3, p0, Lcom/netease/download/reporter/ReportInfo;->mLocalGwRtt:I

    .line 65
    iput v3, p0, Lcom/netease/download/reporter/ReportInfo;->mLocalGwLoss:I

    .line 66
    iput v2, p0, Lcom/netease/download/reporter/ReportInfo;->mNetworkSwitch:I

    .line 67
    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mMobileType:Ljava/lang/String;

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/download/reporter/ReportInfo;->mTotalSize:J

    .line 69
    iput v2, p0, Lcom/netease/download/reporter/ReportInfo;->mLogTest:I

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mDnsTime:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    iput v2, p0, Lcom/netease/download/reporter/ReportInfo;->mHttpDns:I

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mHttpdnsTime:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mSvrIps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mHttpdnsIps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mUpdateSvrIps:Ljava/util/ArrayList;

    .line 78
    iput v2, p0, Lcom/netease/download/reporter/ReportInfo;->mLvsip:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mLvsipIps:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mAbnormalRetnum:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mRetcodeFiles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mErrcodeNum:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mErrcodeFiles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    iput v2, p0, Lcom/netease/download/reporter/ReportInfo;->mIpRemoved:I

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mSlowIps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mErrorIps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mDlSize:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mDlTime:Ljava/util/concurrent/ConcurrentHashMap;

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mDlSpeed:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mDlSpeedLinkAvg:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    iput v2, p0, Lcom/netease/download/reporter/ReportInfo;->mCompleteRate:I

    .line 102
    iput v3, p0, Lcom/netease/download/reporter/ReportInfo;->mStatus:I

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/netease/download/reporter/ReportInfo;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/netease/download/reporter/ReportInfo;->sReportInfo2:Lcom/netease/download/reporter/ReportInfo;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/netease/download/reporter/ReportInfo;

    invoke-direct {v0}, Lcom/netease/download/reporter/ReportInfo;-><init>()V

    sput-object v0, Lcom/netease/download/reporter/ReportInfo;->sReportInfo2:Lcom/netease/download/reporter/ReportInfo;

    .line 43
    :cond_0
    sget-object v0, Lcom/netease/download/reporter/ReportInfo;->sReportInfo2:Lcom/netease/download/reporter/ReportInfo;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 764
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 737
    sget-object v0, Lcom/netease/download/reporter/ReportInfo;->sReportInfo2:Lcom/netease/download/reporter/ReportInfo;

    if-eqz v0, :cond_0

    .line 738
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/reporter/ReportInfo;->sReportInfo2:Lcom/netease/download/reporter/ReportInfo;

    .line 740
    :cond_0
    return-void
.end method

.method public getBaseInfo()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v8, -0x1

    .line 620
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 622
    .local v0, "data":Lorg/json/JSONObject;
    iget-boolean v4, p0, Lcom/netease/download/reporter/ReportInfo;->isInProcess:Z

    if-nez v4, :cond_2

    .line 623
    iput-boolean v5, p0, Lcom/netease/download/reporter/ReportInfo;->isInProcess:Z

    .line 627
    :try_start_0
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_SESSIONID:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mSessionid:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_DOWNLOADID:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mDownloadid:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 629
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_UDID:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mUdid:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 630
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_OS_NAME:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mOsName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 631
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_OS_VER:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mOsVer:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_UDT_VER:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mUdtVer:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 633
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_GAMECODE:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mGameCode:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 635
    iget-object v4, p0, Lcom/netease/download/reporter/ReportInfo;->mTimeZone:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/download/reporter/ReportInfo;->mTimeZone:Ljava/lang/String;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/netease/download/reporter/ReportInfo;->mTimeZone:Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 636
    iget-object v4, p0, Lcom/netease/download/reporter/ReportInfo;->mTimeZone:Ljava/lang/String;

    const-string v5, "\\+|\\:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 638
    .local v2, "keys":[Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v4, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    .line 639
    const/16 v3, 0x64

    .line 642
    .local v3, "result":I
    const/4 v4, 0x1

    :try_start_1
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 648
    :goto_0
    :try_start_2
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_TIMEZONE:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "+"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v3    # "result":I
    :goto_1
    sget-object v5, Lcom/netease/download/reporter/KeyConst;->KEY_AREAZONE:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/download/reporter/ReportInfo;->mAreaZone:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/netease/download/reporter/ReportInfo;->mAreaZone:Ljava/lang/String;

    const-string v6, "\\\\"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 659
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_NETWORK:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mNetWork:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_NETWORK_ISP:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mNetworkIsp:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 661
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_NETWORK_SIGNAL:Ljava/lang/String;

    iget v5, p0, Lcom/netease/download/reporter/ReportInfo;->mNetworkSignal:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 662
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_CLI_IP:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mCliIp:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_CLI_GATEWAY:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mCliGateway:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_CLI_DNS:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mCliDns:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 666
    iget-object v4, p0, Lcom/netease/download/reporter/ReportInfo;->mCliDnscheck:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "correct"

    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mCliDnscheck:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 667
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_CLI_DNSCHECK:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 673
    :goto_3
    iget v4, p0, Lcom/netease/download/reporter/ReportInfo;->mLocalGwRtt:I

    if-eq v8, v4, :cond_0

    .line 674
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_LOCALGW_RTT:Ljava/lang/String;

    iget v5, p0, Lcom/netease/download/reporter/ReportInfo;->mLocalGwRtt:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 677
    :cond_0
    iget v4, p0, Lcom/netease/download/reporter/ReportInfo;->mLocalGwLoss:I

    if-eq v8, v4, :cond_1

    .line 678
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_LOCALGW_LOSS:Ljava/lang/String;

    iget v5, p0, Lcom/netease/download/reporter/ReportInfo;->mLocalGwLoss:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 681
    :cond_1
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_MOBILE_TYPE:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mMobileType:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_TOTAL_SIZE:Ljava/lang/String;

    iget-wide v6, p0, Lcom/netease/download/reporter/ReportInfo;->mTotalSize:J

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 683
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_STATUS:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 684
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_LOG_TEST:Ljava/lang/String;

    iget v5, p0, Lcom/netease/download/reporter/ReportInfo;->mLogTest:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 691
    :goto_4
    iput-boolean v9, p0, Lcom/netease/download/reporter/ReportInfo;->isInProcess:Z

    .line 694
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\\\"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 651
    .restart local v2    # "keys":[Ljava/lang/String;
    :cond_3
    :try_start_3
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_TIMEZONE:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 686
    .end local v2    # "keys":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 688
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "ReportInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7\uff0c\u5f02\u5e38="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 655
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4
    :try_start_4
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_TIMEZONE:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 658
    :cond_5
    iget-object v4, p0, Lcom/netease/download/reporter/ReportInfo;->mAreaZone:Ljava/lang/String;

    goto/16 :goto_2

    .line 670
    :cond_6
    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_CLI_DNSCHECK:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 644
    .restart local v2    # "keys":[Ljava/lang/String;
    .restart local v3    # "result":I
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public getChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 699
    const/4 v0, 0x0

    .line 701
    .local v0, "channel":Ljava/lang/String;
    iget-object v4, p0, Lcom/netease/download/reporter/ReportInfo;->mSvrIps:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_1

    .line 703
    iget-object v4, p0, Lcom/netease/download/reporter/ReportInfo;->mSvrIps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 716
    :cond_1
    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/netease/download/reporter/ReportInfo;->mHttpdnsIps:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_3

    .line 718
    iget-object v4, p0, Lcom/netease/download/reporter/ReportInfo;->mHttpdnsIps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 732
    :cond_3
    return-object v0

    .line 703
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 704
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mSvrIps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 706
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 708
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 709
    move-object v0, v1

    .line 710
    goto :goto_0

    .line 718
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "string":Ljava/lang/String;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 720
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/netease/download/reporter/ReportInfo;->mHttpdnsIps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 722
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 724
    .restart local v3    # "string":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 725
    move-object v0, v1

    .line 726
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 60

    .prologue
    .line 111
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 113
    .local v9, "data":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/netease/download/reporter/ReportInfo;->isInProcess:Z

    move/from16 v54, v0

    if-nez v54, :cond_7

    .line 114
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/netease/download/reporter/ReportInfo;->isInProcess:Z

    .line 118
    :try_start_0
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_SESSIONID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mSessionid:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_DOWNLOADID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDownloadid:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_UDID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mUdid:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_OS_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mOsName:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_OS_VER:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mOsVer:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_UDT_VER:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mUdtVer:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_GAMECODE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mGameCode:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mTimeZone:Ljava/lang/String;

    move-object/from16 v54, v0

    if-eqz v54, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mTimeZone:Ljava/lang/String;

    move-object/from16 v54, v0

    const-string v55, "+"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v54

    if-eqz v54, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mTimeZone:Ljava/lang/String;

    move-object/from16 v54, v0

    const-string v55, ":"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v54

    if-eqz v54, :cond_9

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mTimeZone:Ljava/lang/String;

    move-object/from16 v54, v0

    const-string v55, "\\+|\\:"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 129
    .local v31, "keys":[Ljava/lang/String;
    if-eqz v31, :cond_8

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v54, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v55, 0x2

    move/from16 v0, v54

    move/from16 v1, v55

    if-le v0, v1, :cond_8

    .line 130
    const/16 v40, 0x64

    .line 133
    .local v40, "result":I
    const/16 v54, 0x1

    :try_start_1
    aget-object v54, v31, v54

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v40

    .line 137
    :goto_0
    :try_start_2
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_TIMEZONE:Ljava/lang/String;

    new-instance v55, Ljava/lang/StringBuilder;

    const-string v56, "+"

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v55

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    .end local v31    # "keys":[Ljava/lang/String;
    .end local v40    # "result":I
    :goto_1
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_AREAZONE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mAreaZone:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_NETWORK:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mNetWork:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_NETWORK_ISP:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mNetworkIsp:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_NETWORK_SIGNAL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/reporter/ReportInfo;->mNetworkSignal:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_CLI_IP:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mCliIp:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_CLI_GATEWAY:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mCliGateway:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_CLI_DNS:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mCliDns:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mCliDnscheck:Ljava/lang/String;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v54

    if-nez v54, :cond_a

    const-string v54, "correct"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mCliDnscheck:Ljava/lang/String;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_a

    .line 158
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_CLI_DNSCHECK:Ljava/lang/String;

    const/16 v55, 0x1

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    :goto_2
    const/16 v54, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/reporter/ReportInfo;->mLocalGwRtt:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_0

    .line 165
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_LOCALGW_RTT:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/reporter/ReportInfo;->mLocalGwRtt:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    :cond_0
    const/16 v54, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/reporter/ReportInfo;->mLocalGwLoss:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_1

    .line 169
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_LOCALGW_LOSS:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/reporter/ReportInfo;->mLocalGwLoss:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    :cond_1
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_NETWORK_SWITCH:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/reporter/ReportInfo;->mNetworkSwitch:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_MOBILE_TYPE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mMobileType:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_TOTAL_SIZE:Ljava/lang/String;

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Lcom/netease/download/downloader/DownloadInitInfo;->getAllSize()J

    move-result-wide v56

    move-object/from16 v0, v54

    move-wide/from16 v1, v56

    invoke-virtual {v9, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 175
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_STATUS:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/reporter/ReportInfo;->mStatus:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 176
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_LOG_TEST:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/reporter/ReportInfo;->mLogTest:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 181
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 182
    .local v17, "dnsTime":Lorg/json/JSONObject;
    const/16 v39, 0x0

    .line 184
    .local v39, "realKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDnsTime:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_3
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_b

    .line 209
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_DNS_TIME:Ljava/lang/String;

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_HTTPDNS:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/reporter/ReportInfo;->mHttpDns:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    .line 215
    .local v23, "httpdnsTime":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mHttpdnsTime:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_4
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_f

    .line 240
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_HTTPDNS_TIME:Ljava/lang/String;

    move-object/from16 v0, v54

    move-object/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const/16 v32, 0x0

    .line 244
    .local v32, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 246
    .local v5, "array":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mSvrIps:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_5
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_13

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mHttpdnsIps:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_6
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_17

    .line 299
    new-instance v5, Lorg/json/JSONArray;

    .end local v5    # "array":Lorg/json/JSONArray;
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 301
    .restart local v5    # "array":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mUpdateSvrIps:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_7
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_1b

    .line 305
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_UPDATE_SVRIPS:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v9, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_LVSIP:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/reporter/ReportInfo;->mLvsip:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 307
    new-instance v5, Lorg/json/JSONArray;

    .end local v5    # "array":Lorg/json/JSONArray;
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 309
    .restart local v5    # "array":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mLvsipIps:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_8
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_1c

    .line 313
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_LVSIP_IPS:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v9, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 318
    .local v4, "abnormalRetnum":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mAbnormalRetnum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_9
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_1d

    .line 321
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_ABNORMAL_RETNUM:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v9, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const/16 v28, 0x0

    .line 325
    .local v28, "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .line 326
    .local v26, "ipArray":Lorg/json/JSONArray;
    const/16 v41, 0x0

    .line 328
    .local v41, "retcodeFile":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mRetcodeFiles:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :cond_2
    :goto_a
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_1e

    .line 347
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 349
    .local v19, "errcodeNum":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mErrcodeNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_b
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_21

    .line 353
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_ERRCODENUM:Ljava/lang/String;

    move-object/from16 v0, v54

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 358
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mErrcodeFiles:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v55

    move-object v8, v5

    .end local v5    # "array":Lorg/json/JSONArray;
    .local v8, "array":Lorg/json/JSONArray;
    :goto_c
    :try_start_4
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v54

    if-nez v54, :cond_22

    move-object v5, v8

    .line 374
    .end local v8    # "array":Lorg/json/JSONArray;
    .restart local v5    # "array":Lorg/json/JSONArray;
    :goto_d
    :try_start_5
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_IP_REMOVED:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/reporter/ReportInfo;->mIpRemoved:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mSlowIps:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_e
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_24

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mErrorIps:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_f
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_28

    .line 435
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 436
    .local v13, "dlSize":Lorg/json/JSONObject;
    const/16 v25, 0x0

    .line 437
    .local v25, "ip":Ljava/lang/String;
    const-wide/16 v42, 0x0

    .line 438
    .local v42, "size":D
    const-wide/16 v10, 0x0

    .line 439
    .local v10, "channelSize":D
    const-wide/16 v6, 0x0

    .line 440
    .local v6, "allSize":D
    new-instance v34, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 441
    .local v34, "pDlSize":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDlSize:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v34, v0

    .line 443
    invoke-virtual/range {v34 .. v34}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v55

    :cond_3
    :goto_10
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-nez v54, :cond_2c

    .line 501
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_DL_SIZE:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v9, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 505
    .local v16, "dlTime":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDlSize:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v54

    if-nez v54, :cond_5

    .line 506
    new-instance v35, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 507
    .local v35, "pDlTime":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDlTime:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v35, v0

    .line 509
    const-wide/16 v48, 0x0

    .line 511
    .local v48, "time":J
    invoke-virtual/range {v35 .. v35}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v55

    :cond_4
    :goto_11
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-nez v54, :cond_34

    .line 551
    .end local v35    # "pDlTime":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v48    # "time":J
    :cond_5
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_DL_TIME:Ljava/lang/String;

    move-object/from16 v0, v54

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 554
    .local v14, "dlSpeed":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v29

    .line 555
    .local v29, "iterator":Ljava/util/Iterator;
    const/16 v30, 0x0

    .line 556
    .local v30, "key":Ljava/lang/String;
    const-wide/16 v44, 0x0

    .line 557
    .local v44, "size_":D
    const-wide/16 v50, 0x0

    .line 559
    .local v50, "time_":J
    :goto_12
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-nez v54, :cond_3a

    .line 566
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_DL_SPEED:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v9, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 567
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 568
    .local v15, "dlSpeedLinkAvg":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v29

    .line 570
    :goto_13
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-nez v54, :cond_3c

    .line 577
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_DL_SPEED_LINK_AVG:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v9, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 579
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 581
    .local v20, "fileNum":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_14
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_3e

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    sget-object v55, Lcom/netease/download/reporter/KeyConst;->KEY_TOTAL:Ljava/lang/String;

    invoke-virtual/range {v54 .. v55}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    if-eqz v54, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    sget-object v55, Lcom/netease/download/reporter/KeyConst;->KEY_TOTAL:Ljava/lang/String;

    invoke-virtual/range {v54 .. v55}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/Integer;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Integer;->intValue()I

    move-result v52

    .line 586
    .local v52, "total":I
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    sget-object v55, Lcom/netease/download/reporter/KeyConst;->KEY_VALIDATE:Ljava/lang/String;

    invoke-virtual/range {v54 .. v55}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    if-eqz v54, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    sget-object v55, Lcom/netease/download/reporter/KeyConst;->KEY_VALIDATE:Ljava/lang/String;

    invoke-virtual/range {v54 .. v55}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/Integer;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Integer;->intValue()I

    move-result v53

    .line 587
    .local v53, "validte":I
    :goto_16
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_TRANSFER:Ljava/lang/String;

    sub-int v55, v52, v53

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 588
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_FILENUM:Ljava/lang/String;

    move-object/from16 v0, v54

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    sget-object v55, Lcom/netease/download/reporter/KeyConst;->KEY_FINISH:Ljava/lang/String;

    invoke-virtual/range {v54 .. v55}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    if-eqz v54, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    sget-object v55, Lcom/netease/download/reporter/KeyConst;->KEY_FINISH:Ljava/lang/String;

    invoke-virtual/range {v54 .. v55}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/Integer;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 591
    .local v21, "finish":I
    :goto_17
    if-eqz v52, :cond_6

    .line 592
    mul-int/lit8 v54, v21, 0x64

    div-int v54, v54, v52

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/reporter/ReportInfo;->mCompleteRate:I

    .line 593
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_COMPLETE_RATE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/reporter/ReportInfo;->mCompleteRate:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 597
    :cond_6
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 598
    .local v12, "detectJSONObject":Lorg/json/JSONObject;
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_PUSH_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    move-object/from16 v0, v54

    move-wide/from16 v1, v56

    invoke-virtual {v12, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_18
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v55

    if-nez v55, :cond_42

    .line 605
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_DETECT_DATA:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v9, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 612
    .end local v4    # "abnormalRetnum":Lorg/json/JSONObject;
    .end local v5    # "array":Lorg/json/JSONArray;
    .end local v6    # "allSize":D
    .end local v10    # "channelSize":D
    .end local v12    # "detectJSONObject":Lorg/json/JSONObject;
    .end local v13    # "dlSize":Lorg/json/JSONObject;
    .end local v14    # "dlSpeed":Lorg/json/JSONObject;
    .end local v15    # "dlSpeedLinkAvg":Lorg/json/JSONObject;
    .end local v16    # "dlTime":Lorg/json/JSONObject;
    .end local v17    # "dnsTime":Lorg/json/JSONObject;
    .end local v19    # "errcodeNum":Lorg/json/JSONObject;
    .end local v20    # "fileNum":Lorg/json/JSONObject;
    .end local v21    # "finish":I
    .end local v23    # "httpdnsTime":Lorg/json/JSONObject;
    .end local v25    # "ip":Ljava/lang/String;
    .end local v26    # "ipArray":Lorg/json/JSONArray;
    .end local v28    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29    # "iterator":Ljava/util/Iterator;
    .end local v30    # "key":Ljava/lang/String;
    .end local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v34    # "pDlSize":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v39    # "realKey":Ljava/lang/String;
    .end local v41    # "retcodeFile":Lorg/json/JSONObject;
    .end local v42    # "size":D
    .end local v44    # "size_":D
    .end local v50    # "time_":J
    .end local v52    # "total":I
    .end local v53    # "validte":I
    :goto_19
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/netease/download/reporter/ReportInfo;->isInProcess:Z

    .line 615
    :cond_7
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v54

    const-string v55, "\\\\"

    const-string v56, ""

    invoke-virtual/range {v54 .. v56}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    return-object v54

    .line 140
    .restart local v31    # "keys":[Ljava/lang/String;
    :cond_8
    :try_start_6
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_TIMEZONE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mTimeZone:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 607
    .end local v31    # "keys":[Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 609
    .local v18, "e":Lorg/json/JSONException;
    const-string v54, "ReportInfo"

    new-instance v55, Ljava/lang/StringBuilder;

    const-string v56, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7\uff0c\u5f02\u5e38="

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v55

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_19

    .line 144
    .end local v18    # "e":Lorg/json/JSONException;
    :cond_9
    :try_start_7
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_TIMEZONE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mTimeZone:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 161
    :cond_a
    sget-object v54, Lcom/netease/download/reporter/KeyConst;->KEY_CLI_DNSCHECK:Ljava/lang/String;

    const/16 v55, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 184
    .restart local v17    # "dnsTime":Lorg/json/JSONObject;
    .restart local v39    # "realKey":Ljava/lang/String;
    :cond_b
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 186
    .restart local v30    # "key":Ljava/lang/String;
    const-string v55, "."

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v55

    if-eqz v55, :cond_e

    .line 187
    const-string v55, "\\.|\\-"

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 189
    .restart local v31    # "keys":[Ljava/lang/String;
    const-string v55, "-"

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v55

    if-eqz v55, :cond_d

    .line 191
    if-eqz v31, :cond_c

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v55, v0

    const/16 v56, 0x2

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_c

    .line 192
    new-instance v55, Ljava/lang/StringBuilder;

    const/16 v56, 0x1

    aget-object v56, v31, v56

    invoke-static/range {v56 .. v56}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v56, "_"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x2

    aget-object v56, v31, v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 202
    :cond_c
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDnsTime:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    move-object/from16 v0, v17

    move-object/from16 v1, v39

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 197
    :cond_d
    if-eqz v31, :cond_c

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v55, v0

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_c

    .line 198
    const/16 v55, 0x1

    aget-object v39, v31, v55

    goto :goto_1a

    .line 205
    .end local v31    # "keys":[Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDnsTime:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 215
    .end local v30    # "key":Ljava/lang/String;
    .restart local v23    # "httpdnsTime":Lorg/json/JSONObject;
    :cond_f
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 217
    .restart local v30    # "key":Ljava/lang/String;
    const-string v55, "."

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v55

    if-eqz v55, :cond_12

    .line 218
    const-string v55, "\\.|\\-"

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 220
    .restart local v31    # "keys":[Ljava/lang/String;
    const-string v55, "-"

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v55

    if-eqz v55, :cond_11

    .line 222
    if-eqz v31, :cond_10

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v55, v0

    const/16 v56, 0x2

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_10

    .line 223
    new-instance v55, Ljava/lang/StringBuilder;

    const/16 v56, 0x1

    aget-object v56, v31, v56

    invoke-static/range {v56 .. v56}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v56, "_"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x2

    aget-object v56, v31, v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 233
    :cond_10
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mHttpdnsTime:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 228
    :cond_11
    if-eqz v31, :cond_10

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v55, v0

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_10

    .line 229
    const/16 v55, 0x1

    aget-object v39, v31, v55

    goto :goto_1b

    .line 236
    .end local v31    # "keys":[Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mHttpdnsTime:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    .line 246
    .end local v30    # "key":Ljava/lang/String;
    .restart local v5    # "array":Lorg/json/JSONArray;
    .restart local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 247
    .restart local v30    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mSvrIps:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v32, Ljava/util/ArrayList;

    .line 248
    .restart local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Lorg/json/JSONArray;

    .end local v5    # "array":Lorg/json/JSONArray;
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 250
    .restart local v5    # "array":Lorg/json/JSONArray;
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v55

    :goto_1c
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-nez v56, :cond_15

    .line 254
    const-string v55, "\\.|\\-"

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 256
    .restart local v31    # "keys":[Ljava/lang/String;
    const-string v55, "-"

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v55

    if-eqz v55, :cond_16

    .line 258
    if-eqz v31, :cond_14

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v55, v0

    const/16 v56, 0x3

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_14

    .line 259
    new-instance v55, Ljava/lang/StringBuilder;

    const/16 v56, 0x2

    aget-object v56, v31, v56

    invoke-static/range {v56 .. v56}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v56, "_"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x3

    aget-object v56, v31, v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "_svrips"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 269
    :cond_14
    :goto_1d
    move-object/from16 v0, v30

    invoke-virtual {v9, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_5

    .line 250
    .end local v31    # "keys":[Ljava/lang/String;
    :cond_15
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 251
    .local v46, "string":Ljava/lang/String;
    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1c

    .line 264
    .end local v46    # "string":Ljava/lang/String;
    .restart local v31    # "keys":[Ljava/lang/String;
    :cond_16
    if-eqz v31, :cond_14

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v55, v0

    const/16 v56, 0x2

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_14

    .line 265
    new-instance v55, Ljava/lang/StringBuilder;

    const/16 v56, 0x2

    aget-object v56, v31, v56

    invoke-static/range {v56 .. v56}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v56, "_svrips"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto :goto_1d

    .line 273
    .end local v30    # "key":Ljava/lang/String;
    .end local v31    # "keys":[Ljava/lang/String;
    :cond_17
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 274
    .restart local v30    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mHttpdnsIps:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v32, Ljava/util/ArrayList;

    .line 275
    .restart local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Lorg/json/JSONArray;

    .end local v5    # "array":Lorg/json/JSONArray;
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 277
    .restart local v5    # "array":Lorg/json/JSONArray;
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v55

    :goto_1e
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-nez v56, :cond_19

    .line 281
    const-string v55, "\\.|\\-"

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 283
    .restart local v31    # "keys":[Ljava/lang/String;
    const-string v55, "-"

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v55

    if-eqz v55, :cond_1a

    .line 285
    if-eqz v31, :cond_18

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v55, v0

    const/16 v56, 0x3

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_18

    .line 286
    new-instance v55, Ljava/lang/StringBuilder;

    const-string v56, "httpdns_"

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v56, 0x2

    aget-object v56, v31, v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "_"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x3

    aget-object v56, v31, v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "_ips"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 296
    :cond_18
    :goto_1f
    move-object/from16 v0, v30

    invoke-virtual {v9, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_6

    .line 277
    .end local v31    # "keys":[Ljava/lang/String;
    :cond_19
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 278
    .restart local v46    # "string":Ljava/lang/String;
    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1e

    .line 291
    .end local v46    # "string":Ljava/lang/String;
    .restart local v31    # "keys":[Ljava/lang/String;
    :cond_1a
    if-eqz v31, :cond_18

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v55, v0

    const/16 v56, 0x2

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_18

    .line 292
    new-instance v55, Ljava/lang/StringBuilder;

    const-string v56, "httpdns_"

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v56, 0x2

    aget-object v56, v31, v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "_ips"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    goto :goto_1f

    .line 301
    .end local v30    # "key":Ljava/lang/String;
    .end local v31    # "keys":[Ljava/lang/String;
    :cond_1b
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 302
    .restart local v46    # "string":Ljava/lang/String;
    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_7

    .line 309
    .end local v46    # "string":Ljava/lang/String;
    :cond_1c
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 310
    .restart local v46    # "string":Ljava/lang/String;
    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_8

    .line 318
    .end local v46    # "string":Ljava/lang/String;
    .restart local v4    # "abnormalRetnum":Lorg/json/JSONObject;
    :cond_1d
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 319
    .restart local v30    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mAbnormalRetnum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_9

    .line 328
    .end local v30    # "key":Ljava/lang/String;
    .restart local v26    # "ipArray":Lorg/json/JSONArray;
    .restart local v28    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v41    # "retcodeFile":Lorg/json/JSONObject;
    :cond_1e
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 329
    .restart local v30    # "key":Ljava/lang/String;
    new-instance v26, Lorg/json/JSONArray;

    .end local v26    # "ipArray":Lorg/json/JSONArray;
    invoke-direct/range {v26 .. v26}, Lorg/json/JSONArray;-><init>()V

    .line 330
    .restart local v26    # "ipArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mRetcodeFiles:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v28, Ljava/util/ArrayList;

    .line 332
    .restart local v28    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v55

    :goto_20
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-nez v56, :cond_1f

    .line 336
    const-string v55, "!"

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 338
    .restart local v31    # "keys":[Ljava/lang/String;
    if-eqz v31, :cond_2

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v55, v0

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_2

    .line 339
    new-instance v55, Ljava/lang/StringBuilder;

    const-string v56, "retcode_"

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v56, 0x0

    aget-object v56, v31, v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "_files"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 340
    const/16 v55, 0x1

    aget-object v55, v31, v55

    const-string v56, "\\."

    const-string v57, "\\!"

    invoke-virtual/range {v55 .. v57}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 341
    .local v47, "tempKey":Ljava/lang/String;
    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_20

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v41

    .line 342
    :goto_21
    move-object/from16 v0, v41

    move-object/from16 v1, v47

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_a

    .line 332
    .end local v31    # "keys":[Ljava/lang/String;
    .end local v47    # "tempKey":Ljava/lang/String;
    :cond_1f
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 333
    .restart local v25    # "ip":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_20

    .line 341
    .end local v25    # "ip":Ljava/lang/String;
    .restart local v31    # "keys":[Ljava/lang/String;
    .restart local v47    # "tempKey":Ljava/lang/String;
    :cond_20
    new-instance v41, Lorg/json/JSONObject;

    .end local v41    # "retcodeFile":Lorg/json/JSONObject;
    invoke-direct/range {v41 .. v41}, Lorg/json/JSONObject;-><init>()V

    goto :goto_21

    .line 349
    .end local v30    # "key":Ljava/lang/String;
    .end local v31    # "keys":[Ljava/lang/String;
    .end local v47    # "tempKey":Ljava/lang/String;
    .restart local v19    # "errcodeNum":Lorg/json/JSONObject;
    .restart local v41    # "retcodeFile":Lorg/json/JSONObject;
    :cond_21
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 350
    .restart local v30    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mErrcodeNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_b

    .line 358
    .end local v5    # "array":Lorg/json/JSONArray;
    .end local v30    # "key":Ljava/lang/String;
    .restart local v8    # "array":Lorg/json/JSONArray;
    :cond_22
    :try_start_8
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 359
    .restart local v30    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mErrcodeFiles:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    move-object/from16 v0, v54

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v32, v0

    .line 360
    new-instance v33, Ljava/util/ArrayList;

    new-instance v54, Ljava/util/HashSet;

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    .line 361
    .end local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v33, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_9
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    .line 363
    .end local v8    # "array":Lorg/json/JSONArray;
    .restart local v5    # "array":Lorg/json/JSONArray;
    :try_start_a
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_22
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-nez v56, :cond_23

    .line 367
    new-instance v54, Ljava/lang/StringBuilder;

    const-string v56, "errcode_"

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v54

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v56, "_files"

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v9, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v8, v5

    .end local v5    # "array":Lorg/json/JSONArray;
    .restart local v8    # "array":Lorg/json/JSONArray;
    move-object/from16 v32, v33

    .end local v33    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_c

    .line 363
    .end local v8    # "array":Lorg/json/JSONArray;
    .end local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "array":Lorg/json/JSONArray;
    .restart local v33    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_23
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 364
    .restart local v46    # "string":Ljava/lang/String;
    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_22

    .line 369
    .end local v46    # "string":Ljava/lang/String;
    :catch_1
    move-exception v18

    move-object/from16 v32, v33

    .line 370
    .end local v30    # "key":Ljava/lang/String;
    .end local v33    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "e":Ljava/lang/Exception;
    .restart local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_23
    :try_start_b
    const-string v54, "ReportInfo"

    new-instance v55, Ljava/lang/StringBuilder;

    const-string v56, "ReportInfo Exception ="

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v55

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 377
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_24
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 378
    .restart local v30    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mSlowIps:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v32, Ljava/util/ArrayList;

    .line 379
    .restart local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Lorg/json/JSONArray;

    .end local v5    # "array":Lorg/json/JSONArray;
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 381
    .restart local v5    # "array":Lorg/json/JSONArray;
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v55

    :goto_24
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-nez v56, :cond_26

    .line 385
    const-string v55, "\\.|\\-"

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 387
    .restart local v31    # "keys":[Ljava/lang/String;
    const-string v55, "-"

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v55

    if-eqz v55, :cond_27

    .line 389
    if-eqz v31, :cond_25

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v55, v0

    const/16 v56, 0x2

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_25

    .line 390
    new-instance v55, Ljava/lang/StringBuilder;

    const/16 v56, 0x1

    aget-object v56, v31, v56

    invoke-static/range {v56 .. v56}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v56, "_"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x2

    aget-object v56, v31, v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "_slow_ips"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 400
    :cond_25
    :goto_25
    move-object/from16 v0, v39

    invoke-virtual {v9, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_e

    .line 381
    .end local v31    # "keys":[Ljava/lang/String;
    :cond_26
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 382
    .restart local v46    # "string":Ljava/lang/String;
    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_24

    .line 395
    .end local v46    # "string":Ljava/lang/String;
    .restart local v31    # "keys":[Ljava/lang/String;
    :cond_27
    if-eqz v31, :cond_25

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v55, v0

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_25

    .line 396
    new-instance v55, Ljava/lang/StringBuilder;

    const/16 v56, 0x1

    aget-object v56, v31, v56

    invoke-static/range {v56 .. v56}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v56, "_slow_ips"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    goto :goto_25

    .line 404
    .end local v30    # "key":Ljava/lang/String;
    .end local v31    # "keys":[Ljava/lang/String;
    :cond_28
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 405
    .restart local v30    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mErrorIps:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v32, Ljava/util/ArrayList;

    .line 406
    .restart local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Lorg/json/JSONArray;

    .end local v5    # "array":Lorg/json/JSONArray;
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 408
    .restart local v5    # "array":Lorg/json/JSONArray;
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v55

    :goto_26
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->hasNext()Z

    move-result v56

    if-nez v56, :cond_2a

    .line 413
    const-string v55, "\\.|\\-"

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 415
    .restart local v31    # "keys":[Ljava/lang/String;
    const-string v55, "-"

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v55

    if-eqz v55, :cond_2b

    .line 417
    if-eqz v31, :cond_29

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v55, v0

    const/16 v56, 0x2

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_29

    .line 418
    new-instance v55, Ljava/lang/StringBuilder;

    const/16 v56, 0x1

    aget-object v56, v31, v56

    invoke-static/range {v56 .. v56}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v56, "_"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x2

    aget-object v56, v31, v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "_error_ips"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 428
    :cond_29
    :goto_27
    move-object/from16 v0, v39

    invoke-virtual {v9, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_f

    .line 408
    .end local v31    # "keys":[Ljava/lang/String;
    :cond_2a
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 409
    .restart local v46    # "string":Ljava/lang/String;
    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_26

    .line 423
    .end local v46    # "string":Ljava/lang/String;
    .restart local v31    # "keys":[Ljava/lang/String;
    :cond_2b
    if-eqz v31, :cond_29

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v55, v0

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_29

    .line 424
    new-instance v55, Ljava/lang/StringBuilder;

    const/16 v56, 0x1

    aget-object v56, v31, v56

    invoke-static/range {v56 .. v56}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v56, "_error_ips"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    goto :goto_27

    .line 443
    .end local v30    # "key":Ljava/lang/String;
    .end local v31    # "keys":[Ljava/lang/String;
    .restart local v6    # "allSize":D
    .restart local v10    # "channelSize":D
    .restart local v13    # "dlSize":Lorg/json/JSONObject;
    .restart local v25    # "ip":Ljava/lang/String;
    .restart local v34    # "pDlSize":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v42    # "size":D
    :cond_2c
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 444
    .restart local v30    # "key":Ljava/lang/String;
    const-string v54, "!"

    move-object/from16 v0, v30

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 446
    .local v24, "info":[Ljava/lang/String;
    if-eqz v24, :cond_3

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v54, v0

    const/16 v56, 0x2

    move/from16 v0, v54

    move/from16 v1, v56

    if-le v0, v1, :cond_3

    .line 447
    const/16 v54, 0x1

    aget-object v25, v24, v54

    .line 449
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_30

    .line 450
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v56

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/Long;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Long;->longValue()J

    move-result-wide v58

    move-wide/from16 v0, v58

    long-to-double v0, v0

    move-wide/from16 v58, v0

    add-double v42, v56, v58

    .line 456
    :goto_28
    const-string v54, "\\."

    const-string v56, "\\!"

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 457
    .local v27, "ipKey":Ljava/lang/String;
    move-object/from16 v0, v27

    move-wide/from16 v1, v42

    invoke-virtual {v13, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 458
    const-string v22, "unknow"

    .line 460
    .local v22, "host":Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v54, v0

    const/16 v56, 0x3

    move/from16 v0, v54

    move/from16 v1, v56

    if-le v0, v1, :cond_2d

    .line 461
    const/16 v54, 0x3

    aget-object v22, v24, v54

    .line 464
    :cond_2d
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v54

    if-nez v54, :cond_2f

    .line 465
    const-string v54, "\\.|\\-"

    move-object/from16 v0, v22

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 467
    .restart local v31    # "keys":[Ljava/lang/String;
    const-string v54, "-"

    move-object/from16 v0, v22

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v54

    if-eqz v54, :cond_31

    .line 469
    if-eqz v31, :cond_2e

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v54, v0

    const/16 v56, 0x2

    move/from16 v0, v54

    move/from16 v1, v56

    if-le v0, v1, :cond_2e

    .line 470
    new-instance v54, Ljava/lang/StringBuilder;

    const/16 v56, 0x1

    aget-object v56, v31, v56

    invoke-static/range {v56 .. v56}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v56, "_"

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const/16 v56, 0x2

    aget-object v56, v31, v56

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 481
    :cond_2e
    :goto_29
    move-object/from16 v0, v39

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_32

    .line 482
    move-object/from16 v0, v39

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v56

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v58

    add-double v10, v56, v58

    .line 488
    :goto_2a
    move-object/from16 v0, v39

    invoke-virtual {v13, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 491
    .end local v31    # "keys":[Ljava/lang/String;
    :cond_2f
    const-string v54, "overall"

    move-object/from16 v0, v54

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_33

    .line 492
    const-string v54, "overall"

    move-object/from16 v0, v54

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v56

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/Long;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Long;->longValue()J

    move-result-wide v58

    move-wide/from16 v0, v58

    long-to-double v0, v0

    move-wide/from16 v58, v0

    add-double v6, v56, v58

    .line 498
    :goto_2b
    const-string v54, "overall"

    move-object/from16 v0, v54

    invoke-virtual {v13, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto/16 :goto_10

    .line 453
    .end local v22    # "host":Ljava/lang/String;
    .end local v27    # "ipKey":Ljava/lang/String;
    :cond_30
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/Long;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Long;->longValue()J

    move-result-wide v56

    move-wide/from16 v0, v56

    long-to-double v0, v0

    move-wide/from16 v42, v0

    goto/16 :goto_28

    .line 475
    .restart local v22    # "host":Ljava/lang/String;
    .restart local v27    # "ipKey":Ljava/lang/String;
    .restart local v31    # "keys":[Ljava/lang/String;
    :cond_31
    if-eqz v31, :cond_2e

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v54, v0

    const/16 v56, 0x1

    move/from16 v0, v54

    move/from16 v1, v56

    if-le v0, v1, :cond_2e

    .line 476
    const/16 v54, 0x1

    aget-object v39, v31, v54

    goto :goto_29

    .line 485
    :cond_32
    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_2a

    .line 495
    .end local v31    # "keys":[Ljava/lang/String;
    :cond_33
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/Long;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Long;->longValue()J

    move-result-wide v56

    move-wide/from16 v0, v56

    long-to-double v6, v0

    goto :goto_2b

    .line 511
    .end local v22    # "host":Ljava/lang/String;
    .end local v24    # "info":[Ljava/lang/String;
    .end local v27    # "ipKey":Ljava/lang/String;
    .end local v30    # "key":Ljava/lang/String;
    .restart local v16    # "dlTime":Lorg/json/JSONObject;
    .restart local v35    # "pDlTime":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v48    # "time":J
    :cond_34
    invoke-interface/range {v55 .. v55}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 513
    .restart local v30    # "key":Ljava/lang/String;
    const-string v54, "!"

    move-object/from16 v0, v30

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v54

    if-eqz v54, :cond_36

    .line 514
    const-string v54, "!"

    move-object/from16 v0, v30

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 516
    .restart local v24    # "info":[Ljava/lang/String;
    if-eqz v24, :cond_4

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v54, v0

    const/16 v56, 0x2

    move/from16 v0, v54

    move/from16 v1, v56

    if-le v0, v1, :cond_4

    .line 517
    const/16 v54, 0x1

    aget-object v25, v24, v54

    .line 519
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_35

    .line 520
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v48

    .line 523
    :cond_35
    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/Long;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Long;->longValue()J

    move-result-wide v56

    add-long v48, v48, v56

    .line 524
    const-string v54, "\\."

    const-string v56, "\\!"

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 525
    .restart local v27    # "ipKey":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto/16 :goto_11

    .line 528
    .end local v24    # "info":[Ljava/lang/String;
    .end local v27    # "ipKey":Ljava/lang/String;
    :cond_36
    const-string v54, "."

    move-object/from16 v0, v30

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v54

    if-eqz v54, :cond_39

    .line 529
    const-string v54, "\\.|\\-"

    move-object/from16 v0, v30

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 531
    .restart local v31    # "keys":[Ljava/lang/String;
    const-string v54, "-"

    move-object/from16 v0, v30

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v54

    if-eqz v54, :cond_38

    .line 533
    if-eqz v31, :cond_37

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v54, v0

    const/16 v56, 0x3

    move/from16 v0, v54

    move/from16 v1, v56

    if-le v0, v1, :cond_37

    .line 534
    new-instance v54, Ljava/lang/StringBuilder;

    const/16 v56, 0x1

    aget-object v56, v31, v56

    invoke-static/range {v56 .. v56}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v56, "_"

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const/16 v56, 0x2

    aget-object v56, v31, v56

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 544
    :cond_37
    :goto_2c
    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_11

    .line 539
    :cond_38
    if-eqz v31, :cond_37

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v54, v0

    const/16 v56, 0x2

    move/from16 v0, v54

    move/from16 v1, v56

    if-le v0, v1, :cond_37

    .line 540
    const/16 v54, 0x1

    aget-object v39, v31, v54

    goto :goto_2c

    .line 547
    .end local v31    # "keys":[Ljava/lang/String;
    :cond_39
    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_11

    .line 560
    .end local v35    # "pDlTime":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v48    # "time":J
    .restart local v14    # "dlSpeed":Lorg/json/JSONObject;
    .restart local v29    # "iterator":Ljava/util/Iterator;
    .restart local v44    # "size_":D
    .restart local v50    # "time_":J
    :cond_3a
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    .end local v30    # "key":Ljava/lang/String;
    check-cast v30, Ljava/lang/String;

    .line 561
    .restart local v30    # "key":Ljava/lang/String;
    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v44

    .line 562
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_3b

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v50

    .line 563
    :goto_2d
    move-wide/from16 v0, v50

    long-to-double v0, v0

    move-wide/from16 v54, v0

    div-double v54, v44, v54

    move-wide/from16 v0, v54

    double-to-int v0, v0

    move/from16 v54, v0

    move-object/from16 v0, v30

    move/from16 v1, v54

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_12

    .line 562
    :cond_3b
    const-wide/16 v50, 0x1

    goto :goto_2d

    .line 571
    .restart local v15    # "dlSpeedLinkAvg":Lorg/json/JSONObject;
    :cond_3c
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    .end local v30    # "key":Ljava/lang/String;
    check-cast v30, Ljava/lang/String;

    .line 572
    .restart local v30    # "key":Ljava/lang/String;
    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v44

    .line 573
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_3d

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v50

    .line 574
    :goto_2e
    move-wide/from16 v0, v50

    long-to-double v0, v0

    move-wide/from16 v54, v0

    div-double v54, v44, v54

    move-wide/from16 v0, v54

    double-to-int v0, v0

    move/from16 v54, v0

    move-object/from16 v0, v30

    move/from16 v1, v54

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_13

    .line 573
    :cond_3d
    const-wide/16 v50, 0x1

    goto :goto_2e

    .line 581
    .restart local v20    # "fileNum":Lorg/json/JSONObject;
    :cond_3e
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 582
    .local v38, "pkey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_14

    .line 585
    .end local v38    # "pkey":Ljava/lang/String;
    :cond_3f
    const/16 v52, 0x0

    goto/16 :goto_15

    .line 586
    .restart local v52    # "total":I
    :cond_40
    const/16 v53, 0x0

    goto/16 :goto_16

    .line 589
    .restart local v53    # "validte":I
    :cond_41
    const/16 v21, 0x0

    goto/16 :goto_17

    .line 600
    .restart local v12    # "detectJSONObject":Lorg/json/JSONObject;
    .restart local v21    # "finish":I
    :cond_42
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 601
    .local v36, "pKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 602
    .local v37, "pValue":Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_18

    .line 369
    .end local v6    # "allSize":D
    .end local v10    # "channelSize":D
    .end local v12    # "detectJSONObject":Lorg/json/JSONObject;
    .end local v13    # "dlSize":Lorg/json/JSONObject;
    .end local v14    # "dlSpeed":Lorg/json/JSONObject;
    .end local v15    # "dlSpeedLinkAvg":Lorg/json/JSONObject;
    .end local v16    # "dlTime":Lorg/json/JSONObject;
    .end local v20    # "fileNum":Lorg/json/JSONObject;
    .end local v21    # "finish":I
    .end local v25    # "ip":Ljava/lang/String;
    .end local v29    # "iterator":Ljava/util/Iterator;
    .end local v30    # "key":Ljava/lang/String;
    .end local v34    # "pDlSize":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v36    # "pKey":Ljava/lang/String;
    .end local v37    # "pValue":Ljava/lang/String;
    .end local v42    # "size":D
    .end local v44    # "size_":D
    .end local v50    # "time_":J
    .end local v52    # "total":I
    .end local v53    # "validte":I
    :catch_2
    move-exception v18

    goto/16 :goto_23

    .end local v5    # "array":Lorg/json/JSONArray;
    .restart local v8    # "array":Lorg/json/JSONArray;
    :catch_3
    move-exception v18

    move-object v5, v8

    .end local v8    # "array":Lorg/json/JSONArray;
    .restart local v5    # "array":Lorg/json/JSONArray;
    goto/16 :goto_23

    .end local v5    # "array":Lorg/json/JSONArray;
    .end local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "array":Lorg/json/JSONArray;
    .restart local v30    # "key":Ljava/lang/String;
    .restart local v33    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_4
    move-exception v18

    move-object v5, v8

    .end local v8    # "array":Lorg/json/JSONArray;
    .restart local v5    # "array":Lorg/json/JSONArray;
    move-object/from16 v32, v33

    .end local v33    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_23

    .line 134
    .end local v4    # "abnormalRetnum":Lorg/json/JSONObject;
    .end local v5    # "array":Lorg/json/JSONArray;
    .end local v17    # "dnsTime":Lorg/json/JSONObject;
    .end local v19    # "errcodeNum":Lorg/json/JSONObject;
    .end local v23    # "httpdnsTime":Lorg/json/JSONObject;
    .end local v26    # "ipArray":Lorg/json/JSONArray;
    .end local v28    # "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v30    # "key":Ljava/lang/String;
    .end local v32    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v39    # "realKey":Ljava/lang/String;
    .end local v41    # "retcodeFile":Lorg/json/JSONObject;
    .restart local v31    # "keys":[Ljava/lang/String;
    .restart local v40    # "result":I
    :catch_5
    move-exception v54

    goto/16 :goto_0
.end method
