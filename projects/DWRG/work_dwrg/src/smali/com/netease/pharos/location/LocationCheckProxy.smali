.class public Lcom/netease/pharos/location/LocationCheckProxy;
.super Ljava/lang/Object;
.source "LocationCheckProxy.java"


# static fields
.field private static sLocationCheckProxy:Lcom/netease/pharos/location/LocationCheckProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/location/LocationCheckProxy;->sLocationCheckProxy:Lcom/netease/pharos/location/LocationCheckProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/pharos/location/LocationCheckProxy;->mContext:Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/pharos/location/LocationCheckProxy;->mIsStart:Z

    .line 30
    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/location/LocationCheckProxy;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/netease/pharos/location/LocationCheckProxy;->sLocationCheckProxy:Lcom/netease/pharos/location/LocationCheckProxy;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/netease/pharos/location/LocationCheckProxy;

    invoke-direct {v0}, Lcom/netease/pharos/location/LocationCheckProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/location/LocationCheckProxy;->sLocationCheckProxy:Lcom/netease/pharos/location/LocationCheckProxy;

    .line 36
    :cond_0
    sget-object v0, Lcom/netease/pharos/location/LocationCheckProxy;->sLocationCheckProxy:Lcom/netease/pharos/location/LocationCheckProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method public isStart()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/netease/pharos/location/LocationCheckProxy;->mIsStart:Z

    return v0
.end method

.method public start()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 46
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/netease/pharos/location/LocationCheckProxy;->mIsStart:Z

    .line 47
    const/16 v4, 0xb

    .line 48
    .local v4, "result":I
    invoke-static {}, Lcom/netease/pharos/location/NetAreaCore;->getInstances()Lcom/netease/pharos/location/NetAreaCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/location/NetAreaCore;->start()I

    move-result v3

    .line 51
    .local v3, "pResult":I
    new-instance v2, Lcom/netease/pharos/location/LocationHunter;

    invoke-direct {v2}, Lcom/netease/pharos/location/LocationHunter;-><init>()V

    .line 52
    .local v2, "locationHunter":Lcom/netease/pharos/location/LocationHunter;
    invoke-virtual {v2}, Lcom/netease/pharos/location/LocationHunter;->start()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v0

    .line 54
    .local v0, "deviceInfo":Lcom/netease/pharos/deviceinfo/DeviceInfo;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v2, v0}, Lcom/netease/pharos/location/LocationHunter;->checkRegion(Lcom/netease/pharos/deviceinfo/DeviceInfo;)Lcom/netease/pharos/deviceinfo/DeviceInfo;

    .line 58
    :cond_0
    invoke-static {}, Lcom/netease/pharos/location/RecheckResult;->getInstance()Lcom/netease/pharos/location/RecheckResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/location/RecheckResult;->chooseBest()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    .line 61
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "info":Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/report/ReportProxy;->getInstance()Lcom/netease/pharos/report/ReportProxy;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/netease/pharos/report/ReportProxy;->report(Ljava/lang/String;)I

    .line 63
    const/4 v4, 0x0

    .line 66
    if-eqz v4, :cond_1

    .line 67
    iput-boolean v6, p0, Lcom/netease/pharos/location/LocationCheckProxy;->mIsStart:Z

    .line 70
    :cond_1
    return v4
.end method
