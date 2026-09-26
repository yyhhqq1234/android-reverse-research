.class public Lcom/netease/pharos/network2/NetworkStatus;
.super Ljava/lang/Object;
.source "NetworkStatus.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStatus"

.field private static sNetworkStatus:Lcom/netease/pharos/network2/NetworkStatus;


# instance fields
.field private final STATUS_MOBILE:I

.field private final STATUS_NONE:I

.field private final STATUS_WIFI:I

.field private sIsInit:Z

.field private sNeedRefresh:Z

.field private sPreValidStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/network2/NetworkStatus;->sNetworkStatus:Lcom/netease/pharos/network2/NetworkStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v1, p0, Lcom/netease/pharos/network2/NetworkStatus;->STATUS_NONE:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/pharos/network2/NetworkStatus;->STATUS_WIFI:I

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/netease/pharos/network2/NetworkStatus;->STATUS_MOBILE:I

    .line 28
    iput-boolean v1, p0, Lcom/netease/pharos/network2/NetworkStatus;->sNeedRefresh:Z

    .line 29
    iput-boolean v1, p0, Lcom/netease/pharos/network2/NetworkStatus;->sIsInit:Z

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/network2/NetworkStatus;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/netease/pharos/network2/NetworkStatus;->sNetworkStatus:Lcom/netease/pharos/network2/NetworkStatus;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/netease/pharos/network2/NetworkStatus;

    invoke-direct {v0}, Lcom/netease/pharos/network2/NetworkStatus;-><init>()V

    sput-object v0, Lcom/netease/pharos/network2/NetworkStatus;->sNetworkStatus:Lcom/netease/pharos/network2/NetworkStatus;

    .line 42
    :cond_0
    sget-object v0, Lcom/netease/pharos/network2/NetworkStatus;->sNetworkStatus:Lcom/netease/pharos/network2/NetworkStatus;

    return-object v0
.end method

.method private getNetStatus()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/netease/pharos/network2/NetworkStatus;->sPreValidStatus:I

    return v0
.end method

.method private getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 112
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method private isConnected(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/netease/pharos/network2/NetworkStatus;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 123
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isConnectedMobile(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/netease/pharos/network2/NetworkStatus;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 145
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isConnectedWifi(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 133
    invoke-direct {p0, p1}, Lcom/netease/pharos/network2/NetworkStatus;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 134
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private needRefresh()Z
    .locals 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/netease/pharos/network2/NetworkStatus;->sNeedRefresh:Z

    .line 100
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netease/pharos/network2/NetworkStatus;->sNeedRefresh:Z

    .line 101
    return v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method


# virtual methods
.method public change(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-string v2, "NetworkStatus"

    const-string v3, "NetworkStatus [change]"

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/netease/pharos/network2/NetworkStatus;->isConnected(Landroid/content/Context;)Z

    move-result v1

    .line 61
    .local v1, "isNowConnected":Z
    const-string v2, "NetworkStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NetworkStatus [change] \u5f53\u524d\u7f51\u7edc\u8fde\u63a5\u72b6\u6001="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u4e4b\u524d\u7684\u7f51\u7edc\u72b6\u6001="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/netease/pharos/network2/NetworkStatus;->sPreValidStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "code":I
    invoke-direct {p0, p1}, Lcom/netease/pharos/network2/NetworkStatus;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 70
    const-string v2, "NetworkStatus"

    const-string v3, "\u8fde\u63a5\u7684\u662fWIFI\u7f51\u7edc"

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    .line 78
    :cond_0
    :goto_0
    iget v2, p0, Lcom/netease/pharos/network2/NetworkStatus;->sPreValidStatus:I

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 80
    const-string v2, "NetworkStatus"

    const-string v3, "\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5,\u505c\u6b62\u6389\u6240\u6709\u4efb\u52a1"

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->clean()V

    .line 84
    :cond_1
    iget v2, p0, Lcom/netease/pharos/network2/NetworkStatus;->sPreValidStatus:I

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 86
    const-string v2, "NetworkStatus"

    const-string v3, "\u6709\u7f51\u7edc\u8fde\u63a5\uff0c\u91cd\u65b0\u542f\u52a8\u6240\u6709\u4efb\u52a1"

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->start()V

    .line 90
    :cond_2
    iget v2, p0, Lcom/netease/pharos/network2/NetworkStatus;->sPreValidStatus:I

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    iget v2, p0, Lcom/netease/pharos/network2/NetworkStatus;->sPreValidStatus:I

    if-eq v0, v2, :cond_3

    .line 91
    const-string v2, "NetworkStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f51\u7edc\u72b6\u6001\u53d1\u751f\u4e86\u6539\u53d8\uff0c\u539f\u6765\u662f"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/netease/pharos/network2/NetworkStatus;->sPreValidStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u73b0\u5728\u662f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/netease/pharos/network2/NetworkStatus;->sNeedRefresh:Z

    .line 95
    :cond_3
    iput v0, p0, Lcom/netease/pharos/network2/NetworkStatus;->sPreValidStatus:I

    .line 96
    return-void

    .line 73
    :cond_4
    invoke-direct {p0, p1}, Lcom/netease/pharos/network2/NetworkStatus;->isConnectedMobile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const-string v2, "NetworkStatus"

    const-string v3, "\u8fde\u63a5\u7684\u662f\u79fb\u52a8\u7f51\u7edc"

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 47
    iget-boolean v0, p0, Lcom/netease/pharos/network2/NetworkStatus;->sIsInit:Z

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/netease/pharos/network2/NetworkStatus;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/netease/pharos/network2/NetworkStatus;->sPreValidStatus:I

    .line 49
    iput-boolean v1, p0, Lcom/netease/pharos/network2/NetworkStatus;->sIsInit:Z

    .line 51
    :cond_0
    return-void

    .line 48
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/pharos/network2/NetworkStatus;->isConnectedMobile(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
