.class public Lcom/netease/download/network/NetworkStatus;
.super Ljava/lang/Object;
.source "NetworkStatus.java"


# static fields
.field public static final STATUS_MOBILE:I = 0x2

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_WIFI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStatus"

.field private static sIsInit:Z

.field private static sNeedRefresh:Z

.field private static sPreConnected:Z

.field private static sPreValidStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lcom/netease/download/network/NetworkStatus;->sNeedRefresh:Z

    .line 36
    sput-boolean v0, Lcom/netease/download/network/NetworkStatus;->sIsInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static change(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 51
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    iput v5, v2, Lcom/netease/download/reporter/ReportInfo;->mNetworkSwitch:I

    .line 52
    invoke-static {p0}, Lcom/netease/download/network/NetworkStatus;->isConnected(Landroid/content/Context;)Z

    move-result v1

    .line 53
    .local v1, "isNowConnected":Z
    const-string v2, "NetworkStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f51\u7edc\u662f\u5426\u8fde\u63a5="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-boolean v2, Lcom/netease/download/network/NetworkStatus;->sPreConnected:Z

    if-eq v2, v1, :cond_0

    .line 56
    sput-boolean v1, Lcom/netease/download/network/NetworkStatus;->sPreConnected:Z

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 62
    .local v0, "code":I
    invoke-static {p0}, Lcom/netease/download/network/NetworkStatus;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 63
    const-string v2, "NetworkStatus"

    const-string v3, "\u8fde\u63a5\u7684\u662fWIFI\u7f51\u7edc"

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x1

    .line 71
    :cond_1
    :goto_0
    const-string v2, "NetworkStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sPreValidStatus="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isNowConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget v2, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 76
    const-string v2, "NetworkStatus"

    const-string v3, "\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5,\u505c\u6b62\u6389\u6240\u6709\u4efb\u52a1"

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/netease/download/network/NetController;->setInterruptedCode(I)V

    .line 78
    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->stopAll()V

    .line 81
    :cond_2
    sget v2, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 82
    const-string v2, "NetworkStatus"

    const-string v3, "\u6709\u7f51\u7edc\u8fde\u63a5\uff0c\u91cd\u65b0\u542f\u52a8\u6240\u6709\u4efb\u52a1"

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/netease/download/network/NetController;->setInterruptedCode(I)V

    .line 87
    :cond_3
    sget v2, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I

    if-eqz v2, :cond_4

    sget v2, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I

    if-eq v0, v2, :cond_4

    .line 88
    const-string v2, "NetworkStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f51\u7edc\u72b6\u6001\u53d1\u751f\u4e86\u6539\u53d8\uff0c\u539f\u6765\u662f"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u73b0\u5728\u662f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getInstance()Lcom/netease/download/handler/Dispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/handler/Dispatcher;->notifyNetworkChanged()V

    .line 90
    sput-boolean v5, Lcom/netease/download/network/NetworkStatus;->sNeedRefresh:Z

    .line 97
    :cond_4
    sput v0, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I

    .line 98
    return-void

    .line 66
    :cond_5
    invoke-static {p0}, Lcom/netease/download/network/NetworkStatus;->isConnectedMobile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    const-string v2, "NetworkStatus"

    const-string v3, "\u8fde\u63a5\u7684\u662f\u79fb\u52a8\u7f51\u7edc"

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x2

    goto/16 :goto_0
.end method

.method public static getNetStatus()I
    .locals 1

    .prologue
    .line 151
    sget v0, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I

    return v0
.end method

.method private static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 114
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 40
    sget-boolean v0, Lcom/netease/download/network/NetworkStatus;->sIsInit:Z

    if-nez v0, :cond_0

    .line 41
    invoke-static {p0}, Lcom/netease/download/network/NetworkStatus;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput v0, Lcom/netease/download/network/NetworkStatus;->sPreValidStatus:I

    .line 42
    sput-boolean v1, Lcom/netease/download/network/NetworkStatus;->sIsInit:Z

    .line 44
    :cond_0
    return-void

    .line 41
    :cond_1
    invoke-static {p0}, Lcom/netease/download/network/NetworkStatus;->isConnectedMobile(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/netease/download/network/NetworkStatus;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 125
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

.method public static isConnectedMobile(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-static {p0}, Lcom/netease/download/network/NetworkStatus;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 147
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

.method private static isConnectedWifi(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 135
    invoke-static {p0}, Lcom/netease/download/network/NetworkStatus;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 136
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

.method public static needRefresh()Z
    .locals 2

    .prologue
    .line 101
    sget-boolean v0, Lcom/netease/download/network/NetworkStatus;->sNeedRefresh:Z

    .line 102
    .local v0, "result":Z
    const/4 v1, 0x0

    sput-boolean v1, Lcom/netease/download/network/NetworkStatus;->sNeedRefresh:Z

    .line 103
    return v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method
