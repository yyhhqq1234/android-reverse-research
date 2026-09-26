.class public Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;
.super Ljava/lang/Object;
.source "DevicesInfoProxy.java"


# static fields
.field private static sDevicesInfoProxy:Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->sDevicesInfoProxy:Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->mContext:Landroid/content/Context;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->mIsStart:Z

    .line 28
    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->sDevicesInfoProxy:Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;

    invoke-direct {v0}, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->sDevicesInfoProxy:Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;

    .line 34
    :cond_0
    sget-object v0, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->sDevicesInfoProxy:Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public isStart()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->mIsStart:Z

    return v0
.end method

.method public start()I
    .locals 3

    .prologue
    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->mIsStart:Z

    .line 48
    const/16 v0, 0xb

    .line 49
    .local v0, "result":I
    invoke-static {}, Lcom/netease/pharos/deviceinfo/IpInfoCore;->getInstances()Lcom/netease/pharos/deviceinfo/IpInfoCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/deviceinfo/IpInfoCore;->start()I

    move-result v0

    .line 52
    invoke-static {}, Lcom/netease/pharos/deviceinfo/NetDnsCore;->getInstances()Lcom/netease/pharos/deviceinfo/NetDnsCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/deviceinfo/NetDnsCore;->start()I

    move-result v0

    .line 55
    invoke-static {}, Lcom/netease/pharos/deviceinfo/NetDevices;->getInstances()Lcom/netease/pharos/deviceinfo/NetDevices;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/netease/pharos/deviceinfo/NetDevices;->init(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lcom/netease/pharos/deviceinfo/NetDevices;->getInstances()Lcom/netease/pharos/deviceinfo/NetDevices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/deviceinfo/NetDevices;->start()I

    .line 60
    if-eqz v0, :cond_0

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netease/pharos/deviceinfo/DevicesInfoProxy;->mIsStart:Z

    .line 64
    :cond_0
    return v0
.end method
