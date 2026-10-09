.class public Lcom/tencent/msdk/dns/HttpDnsCache;
.super Ljava/lang/Object;
.source "HttpDnsCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/dns/HttpDnsCache$ConnectivityChangeReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/msdk/dns/b;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 39
    const-string/jumbo v1, "unknown"

    .line 40
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 41
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    const-string v0, ""

    .line 80
    :goto_0
    return-object v0

    .line 44
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 45
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 46
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 48
    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1, v0}, Lcom/tencent/msdk/dns/b;->c(Ljava/lang/String;)V

    .line 52
    :cond_1
    const-string/jumbo v0, "wifi"

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_8

    .line 54
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    const-string v0, ""

    goto :goto_0

    .line 61
    :cond_3
    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x7

    if-eq v0, v2, :cond_4

    const/16 v2, 0xb

    if-ne v0, v2, :cond_5

    .line 65
    :cond_4
    const-string v0, "2G"

    goto :goto_0

    .line 66
    :cond_5
    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/16 v2, 0xa

    if-eq v0, v2, :cond_6

    const/16 v2, 0xf

    if-eq v0, v2, :cond_6

    const/16 v2, 0x8

    if-eq v0, v2, :cond_6

    const/16 v2, 0x9

    if-eq v0, v2, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_6

    const/4 v2, 0x5

    if-eq v0, v2, :cond_6

    const/16 v2, 0xc

    if-eq v0, v2, :cond_6

    const/16 v2, 0xe

    if-ne v0, v2, :cond_7

    .line 74
    :cond_6
    const-string v0, "3G"

    goto :goto_0

    .line 75
    :cond_7
    const/16 v2, 0xd

    if-ne v0, v2, :cond_8

    .line 77
    const-string v0, "4G"

    goto :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    const-string v0, "TTL time out refresh cache"

    invoke-static {v0}, Lcom/tencent/msdk/dns/d;->b(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/tencent/msdk/dns/MSDKDnsResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    return-void
.end method
