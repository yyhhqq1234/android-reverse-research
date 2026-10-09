.class public Lcom/tencent/tdm/system/TX;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/tencent/tdm/system/TX; = null

.field private static final tag:Ljava/lang/String; = "TX"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mNetworkReceiver:Lcom/tencent/tdm/system/TXReceiver;

.field private m_szAppChannel:Ljava/lang/String;

.field private m_szAppID:Ljava/lang/String;

.field private m_szAppVersion:Ljava/lang/String;

.field private m_szBundleId:Ljava/lang/String;

.field private m_szCPUName:Ljava/lang/String;

.field private m_szCarrierType:I

.field private m_szDeviceID:Ljava/lang/String;

.field private m_szLatitude:D

.field private m_szLongitude:D

.field private m_szMacAddr:Ljava/lang/String;

.field private m_szModel:Ljava/lang/String;

.field private m_szNetProtocol:Ljava/lang/String;

.field private m_szScreenHeight:I

.field private m_szScreenWidth:I

.field private m_szSysVersion:Ljava/lang/String;

.field private m_szTestMode:Z

.field private m_szTotalMemory:J

.field private m_szTotalSpace:J

.field private m_szUUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/tdm/system/TX;

    invoke-direct {v0}, Lcom/tencent/tdm/system/TX;-><init>()V

    sput-object v0, Lcom/tencent/tdm/system/TX;->instance:Lcom/tencent/tdm/system/TX;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->mNetworkReceiver:Lcom/tencent/tdm/system/TXReceiver;

    iput-boolean v1, p0, Lcom/tencent/tdm/system/TX;->mInitialized:Z

    iput-boolean v1, p0, Lcom/tencent/tdm/system/TX;->m_szTestMode:Z

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szNetProtocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szUUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szDeviceID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szMacAddr:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szModel:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szSysVersion:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/tdm/system/TX;->m_szCarrierType:I

    iput v1, p0, Lcom/tencent/tdm/system/TX;->m_szScreenHeight:I

    iput v1, p0, Lcom/tencent/tdm/system/TX;->m_szScreenWidth:I

    iput-wide v4, p0, Lcom/tencent/tdm/system/TX;->m_szTotalMemory:J

    iput-wide v4, p0, Lcom/tencent/tdm/system/TX;->m_szTotalSpace:J

    iput-wide v2, p0, Lcom/tencent/tdm/system/TX;->m_szLatitude:D

    iput-wide v2, p0, Lcom/tencent/tdm/system/TX;->m_szLongitude:D

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szAppID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szAppVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szAppChannel:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szBundleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szCPUName:Ljava/lang/String;

    return-void
.end method

.method private GetAPKPath()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tdm/system/TX;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tdm/system/TXSystem;->GetApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private GetApps()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tdm/system/TX;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/tdm/system/TXSystem;->GetAppList(Landroid/content/Context;Ljava/util/List;)I

    return-object v0
.end method

.method private GetAvailMemory()J
    .locals 2

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tdm/system/TX;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tdm/system/TXSystem;->GetAvailMemory(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private GetAvailSpace()J
    .locals 2

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tdm/system/TXSystem;->GetAvailSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method private GetCommentInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tdm/system/TXSystem;->GetCommentInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static GetInstance()Lcom/tencent/tdm/system/TX;
    .locals 1

    sget-object v0, Lcom/tencent/tdm/system/TX;->instance:Lcom/tencent/tdm/system/TX;

    return-object v0
.end method

.method private GetLocation()V
    .locals 4

    const-wide v2, 0x4079400000000000L    # 404.0

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tdm/system/TX;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tdm/system/TXSystem;->GetLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/tdm/system/TX;->m_szLatitude:D

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tdm/system/TX;->m_szLongitude:D

    :goto_0
    return-void

    :cond_0
    iput-wide v2, p0, Lcom/tencent/tdm/system/TX;->m_szLatitude:D

    iput-wide v2, p0, Lcom/tencent/tdm/system/TX;->m_szLongitude:D

    goto :goto_0
.end method

.method private SaveSystemInfo(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tdm/system/TXSystem;->GetUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szUUID:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tdm/system/TXSystem;->GetDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szDeviceID:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tdm/system/TXSystem;->GetMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szMacAddr:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tdm/system/TXSystem;->GetModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szModel:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tdm/system/TXSystem;->GetSysVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szSysVersion:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tdm/system/TXSystem;->GetCPUName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szCPUName:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tdm/system/TXSystem;->GetTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tdm/system/TX;->m_szTotalMemory:J

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tdm/system/TXSystem;->GetTotalSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tdm/system/TX;->m_szTotalSpace:J

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tdm/system/TXSystem;->GetScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tdm/system/TX;->m_szScreenHeight:I

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tdm/system/TXSystem;->GetScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tdm/system/TX;->m_szScreenWidth:I

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tdm/system/TXSystem;->GetBundleId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szBundleId:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tdm/system/TXSystem;->GetAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szAppVersion:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    const-string v1, "GCloud.GCloud.GameId"

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tdm/system/TXSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szAppID:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szAppID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szAppID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    const-string v1, "GCloud.TDM.AppId"

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tdm/system/TXSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szAppID:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    const-string v1, "GCloud.TDM.AppChannel"

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tdm/system/TXSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szAppChannel:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    const-string v1, "GCloud.TDM.Protocol"

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tdm/system/TXSystem;->GetMetaString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->m_szNetProtocol:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    const-string v1, "GCloud.TDM.Test"

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tdm/system/TXSystem;->GetMetaBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tdm/system/TX;->m_szTestMode:Z

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tdm/system/TX;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tdm/system/TXSystem;->GetNetworkType(Landroid/content/Context;)Lcom/tencent/tdm/system/NetworkType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tdm/system/NetworkType;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tdm/system/TX;->OnNetworkChanged(IZ)V

    invoke-direct {p0}, Lcom/tencent/tdm/system/TX;->GetLocation()V

    return-void
.end method

.method private native TXInit()V
.end method

.method private native TXOnNetworkChanged(ILjava/lang/String;)V
.end method


# virtual methods
.method public Initialize(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_1

    const-string v0, "TX"

    const-string v1, "context is null. initialize failed!"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/tdm/system/TX;->mInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "TX"

    const-string v1, "Initialize begin"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/tdm/system/TX;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/tdm/database/TXDataBase;->getInstance()Lcom/tencent/tdm/database/TXDataBase;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tdm/system/TX;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tdm/database/TXDataBase;->initialize(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tdm/system/TX;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/tdm/system/TX;->SaveSystemInfo(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/tencent/tdm/system/TX;->TXInit()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tdm/system/TX;->mInitialized:Z

    const-string v0, "TX"

    const-string v1, "Initialize end"

    invoke-static {v0, v1}, Lcom/tencent/tdm/system/TXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public OnNetworkChanged(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/tencent/tdm/system/TXSystem;->getInstance()Lcom/tencent/tdm/system/TXSystem;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tdm/system/TX;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tdm/system/TXSystem;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/tencent/tdm/system/TX;->TXOnNetworkChanged(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public RegisterReceiver()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tdm/system/TX;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tdm/system/TX;->mNetworkReceiver:Lcom/tencent/tdm/system/TXReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tdm/system/TXReceiver;

    invoke-direct {v0}, Lcom/tencent/tdm/system/TXReceiver;-><init>()V

    iput-object v0, p0, Lcom/tencent/tdm/system/TX;->mNetworkReceiver:Lcom/tencent/tdm/system/TXReceiver;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/tdm/system/TX;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/tdm/system/TX;->mNetworkReceiver:Lcom/tencent/tdm/system/TXReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnResume Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SetLogLevel(I)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/tdm/system/TXLog;->setLogLevel(I)V

    return-void
.end method

.method public UnregisterReceiver()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tdm/system/TX;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tdm/system/TX;->mNetworkReceiver:Lcom/tencent/tdm/system/TXReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tdm/system/TX;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/tdm/system/TX;->mNetworkReceiver:Lcom/tencent/tdm/system/TXReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnPause Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tdm/system/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
