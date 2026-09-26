.class public Lcom/netease/pharos/deviceinfo/NetDevices;
.super Ljava/lang/Object;
.source "NetDevices.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetDevices"

.field private static sNetDevices:Lcom/netease/pharos/deviceinfo/NetDevices;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/deviceinfo/NetDevices;->sNetDevices:Lcom/netease/pharos/deviceinfo/NetDevices;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDevices;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/deviceinfo/NetDevices;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/netease/pharos/deviceinfo/NetDevices;->sNetDevices:Lcom/netease/pharos/deviceinfo/NetDevices;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/netease/pharos/deviceinfo/NetDevices;

    invoke-direct {v0}, Lcom/netease/pharos/deviceinfo/NetDevices;-><init>()V

    sput-object v0, Lcom/netease/pharos/deviceinfo/NetDevices;->sNetDevices:Lcom/netease/pharos/deviceinfo/NetDevices;

    .line 47
    :cond_0
    sget-object v0, Lcom/netease/pharos/deviceinfo/NetDevices;->sNetDevices:Lcom/netease/pharos/deviceinfo/NetDevices;

    return-object v0
.end method

.method public static getPsdnIp()Ljava/lang/String;
    .locals 8

    .prologue
    .line 231
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 246
    :goto_0
    const-string v5, ""

    :goto_1
    return-object v5

    .line 232
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 234
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 235
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 237
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    instance-of v5, v3, Ljava/net/Inet4Address;

    if-eqz v5, :cond_2

    .line 238
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 243
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "NetDevices"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getPsdnIp Exception = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 284
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method


# virtual methods
.method public getAreaZone()Ljava/lang/String;
    .locals 5

    .prologue
    .line 139
    const-string v0, ""

    .line 140
    .local v0, "areaZone":Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 141
    .local v1, "tz":Ljava/util/TimeZone;
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v2, "NetDevices"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u5730\u533a="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-object v0
.end method

.method public getNetworkIsp()Ljava/lang/String;
    .locals 6

    .prologue
    .line 181
    const-string v0, "00000"

    .line 184
    .local v0, "IMSI":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/netease/pharos/deviceinfo/NetDevices;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 186
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 192
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "NetDevices"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getNetworkIsp Exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNetworkIspName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "network_isp"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string v1, "unknow"

    .line 200
    .local v1, "networkIspName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/netease/pharos/deviceinfo/NetDevices;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 201
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz p1, :cond_6

    .line 203
    const-string v3, "NetDevices"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "network_isp="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v3, "46000"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46002"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46007"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46020"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    :cond_0
    const-string v1, "cmcc"

    .line 223
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return-object v1

    .line 208
    .restart local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    const-string v3, "46001"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "46006"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "46009"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 209
    :cond_3
    const-string v1, "cucc"

    .line 211
    goto :goto_0

    :cond_4
    const-string v3, "46003"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "46005"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "46011"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    :cond_5
    const-string v1, "ctcc"

    .line 215
    goto :goto_0

    .line 216
    :cond_6
    const-string v3, "NetDevices"

    const-string v4, "\u5339\u914d\u5931\u8d25"

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NetDevices"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getNetworkIsp Exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNetworkSignal()Ljava/lang/String;
    .locals 7

    .prologue
    .line 159
    const/4 v1, -0x1

    .line 163
    .local v1, "signalLevel":I
    :try_start_0
    iget-object v4, p0, Lcom/netease/pharos/deviceinfo/NetDevices;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 164
    iget-object v4, p0, Lcom/netease/pharos/deviceinfo/NetDevices;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 165
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 167
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 169
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 177
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "NetDevices"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getNetworkSignal Exception = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 7

    .prologue
    .line 251
    const-string v2, "unknow"

    .line 253
    .local v2, "strNetworkType":Ljava/lang/String;
    iget-object v4, p0, Lcom/netease/pharos/deviceinfo/NetDevices;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 254
    const-string v4, "NetDevices"

    const-string v5, "NetDevices getNetworkType mContext is null"

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 277
    .end local v2    # "strNetworkType":Ljava/lang/String;
    .local v3, "strNetworkType":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 258
    .end local v3    # "strNetworkType":Ljava/lang/String;
    .restart local v2    # "strNetworkType":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/netease/pharos/deviceinfo/NetDevices;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 259
    .local v0, "manager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 261
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 265
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 267
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 268
    const-string v2, "wifi"

    .line 275
    :cond_2
    :goto_1
    const-string v4, "NetDevices"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---Network Type : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 277
    .end local v2    # "strNetworkType":Ljava/lang/String;
    .restart local v3    # "strNetworkType":Ljava/lang/String;
    goto :goto_0

    .line 270
    .end local v3    # "strNetworkType":Ljava/lang/String;
    .restart local v2    # "strNetworkType":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_2

    .line 271
    const-string v2, "mobile"

    goto :goto_1
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "android"

    return-object v0
.end method

.method public getOsVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 131
    const-string v0, ""

    .line 132
    .local v0, "timeZone":Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 133
    .local v1, "tz":Ljava/util/TimeZone;
    invoke-virtual {v1, v2, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v2, "NetDevices"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7f51\u7edc\u76d1\u63a7\u6a21\u5757---\u65f6\u5dee="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/NetDevices;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public start()I
    .locals 20

    .prologue
    .line 56
    const/16 v14, 0xb

    .line 57
    .local v14, "pResult":I
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pharos/deviceinfo/NetDevices;->getNetworkType()Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "network":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pharos/deviceinfo/NetDevices;->getNetworkIsp()Ljava/lang/String;

    move-result-object v9

    .line 60
    .local v9, "network_isp":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 61
    const/16 v17, 0x0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 64
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/netease/pharos/deviceinfo/NetDevices;->getNetworkIspName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, "network_isp_name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pharos/deviceinfo/NetDevices;->getNetworkSignal()Ljava/lang/String;

    move-result-object v11

    .line 66
    .local v11, "network_signal":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pharos/deviceinfo/NetDevices;->getOsName()Ljava/lang/String;

    move-result-object v12

    .line 67
    .local v12, "os_name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pharos/deviceinfo/NetDevices;->getOsVer()Ljava/lang/String;

    move-result-object v13

    .line 68
    .local v13, "os_ver":Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/deviceinfo/NetDevices;->getPsdnIp()Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "gateway":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pharos/deviceinfo/NetDevices;->getTimeZone()Ljava/lang/String;

    move-result-object v16

    .line 72
    .local v16, "timezone":Ljava/lang/String;
    if-eqz v16, :cond_1

    const-string v17, "+"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 73
    const-string v17, "\\+|\\:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "keys":[Ljava/lang/String;
    if-eqz v7, :cond_1

    array-length v0, v7

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 76
    const/16 v15, 0x64

    .line 79
    .local v15, "result":I
    const/16 v17, 0x1

    :try_start_0
    aget-object v17, v7, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 85
    :goto_0
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "+"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 89
    .end local v7    # "keys":[Ljava/lang/String;
    .end local v15    # "result":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/netease/pharos/deviceinfo/NetDevices;->getAreaZone()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "areazone":Ljava/lang/String;
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "areazones":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 92
    .local v3, "areazone_continent":Ljava/lang/String;
    const/4 v4, 0x0

    .line 94
    .local v4, "areazone_country":Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v0, v5

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 95
    const/16 v17, 0x0

    aget-object v3, v5, v17

    .line 96
    const/16 v17, 0x1

    aget-object v4, v5, v17

    .line 99
    :cond_2
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setGateway(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setTimezone(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setAreazoneContinent(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setAreazoneCountry(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setNetwork(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setNetworkIsp(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setNetworkIspName(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setNetworkSignal(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setOsName(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setOsVer(Ljava/lang/String;)V

    .line 111
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v15, "result":Ljava/lang/StringBuffer;
    const-string v17, "network="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    const-string v17, "network_isp="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    const-string v17, "network_isp_name="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    const-string v17, "network_signal="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    const-string v17, "os_name="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const-string v17, "os_ver="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const-string v17, "gateway="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const-string v17, "timezone="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v17, "areazone_continent="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const-string v17, "areazone_country="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v17, "NetDevices"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "\u7ed3\u679c="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v14, 0x0

    .line 126
    return v14

    .line 81
    .end local v2    # "areazone":Ljava/lang/String;
    .end local v3    # "areazone_continent":Ljava/lang/String;
    .end local v4    # "areazone_country":Ljava/lang/String;
    .end local v5    # "areazones":[Ljava/lang/String;
    .restart local v7    # "keys":[Ljava/lang/String;
    .local v15, "result":I
    :catch_0
    move-exception v17

    goto/16 :goto_0
.end method
