.class public Lcom/tencent/qt/alg/network/SmartNetworkSensor;
.super Ljava/lang/Object;
.source "SmartNetworkSensor.java"

# interfaces
.implements Lcom/tencent/qt/alg/network/NetworkSensor;


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "connectivity"

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/tencent/qt/alg/network/SmartNetworkSensor;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 77
    const-string v0, "phone"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/tencent/qt/alg/network/SmartNetworkSensor;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 79
    return-void
.end method

.method public static getMobileNetworkDetailType(II)I
    .locals 1
    .param p0, "type"    # I
    .param p1, "subtype"    # I

    .prologue
    .line 56
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 58
    const/16 p1, 0x45f

    .line 65
    .end local p1    # "subtype":I
    :cond_0
    :goto_0
    return p1

    .line 60
    .restart local p1    # "subtype":I
    :cond_1
    if-eqz p0, :cond_0

    .line 65
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static getMobileNetworkType(II)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I
    .param p1, "subtype"    # I

    .prologue
    .line 20
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 22
    const-string v0, "WIFI"

    .line 51
    :goto_0
    return-object v0

    .line 24
    :cond_0
    if-nez p0, :cond_1

    .line 26
    packed-switch p1, :pswitch_data_0

    .line 47
    :pswitch_0
    const-string v0, "2G"

    goto :goto_0

    .line 38
    :pswitch_1
    const-string v0, "3G"

    goto :goto_0

    .line 51
    :cond_1
    const-string v0, "2G"

    goto :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAccessPoint()Ljava/lang/String;
    .locals 5

    .prologue
    .line 83
    iget-object v3, p0, Lcom/tencent/qt/alg/network/SmartNetworkSensor;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 84
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_2

    .line 86
    :cond_0
    const-string v2, "None"

    .line 97
    :cond_1
    :goto_0
    return-object v2

    .line 88
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "networkType":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "mobiName":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    move-object v2, v1

    goto :goto_0
.end method

.method public getISP()I
    .locals 3

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 135
    .local v1, "isp":I
    iget-object v2, p0, Lcom/tencent/qt/alg/network/SmartNetworkSensor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "IMSI":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 140
    const-string v0, ""

    .line 143
    :cond_0
    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    :cond_1
    const/4 v1, 0x1

    .line 156
    :cond_2
    :goto_0
    return v1

    .line 147
    :cond_3
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 149
    const/4 v1, 0x2

    goto :goto_0

    .line 151
    :cond_4
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public getIp()Ljava/net/InetAddress;
    .locals 6

    .prologue
    .line 180
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 182
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 186
    .local v4, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .line 188
    .local v0, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 190
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 191
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 203
    .end local v0    # "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "networkInterface":Ljava/net/NetworkInterface;
    :goto_0
    return-object v3

    .line 198
    :catch_0
    move-exception v2

    .line 200
    .local v2, "ex":Ljava/net/SocketException;
    invoke-static {v2}, Lcom/tencent/qt/base/net/PLog;->printStackTrace(Ljava/lang/Throwable;)V

    .line 203
    .end local v2    # "ex":Ljava/net/SocketException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getNetworkDetailType()I
    .locals 5

    .prologue
    .line 117
    iget-object v3, p0, Lcom/tencent/qt/alg/network/SmartNetworkSensor;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 118
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    .line 120
    :cond_0
    const/4 v3, 0x0

    .line 126
    :goto_0
    return v3

    .line 123
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 124
    .local v2, "type":I
    iget-object v3, p0, Lcom/tencent/qt/alg/network/SmartNetworkSensor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 126
    .local v1, "subtype":I
    invoke-static {v2, v1}, Lcom/tencent/qt/alg/network/SmartNetworkSensor;->getMobileNetworkDetailType(II)I

    move-result v3

    goto :goto_0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 102
    iget-object v3, p0, Lcom/tencent/qt/alg/network/SmartNetworkSensor;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 103
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    .line 105
    :cond_0
    const-string v3, "Unknown"

    .line 111
    :goto_0
    return-object v3

    .line 108
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 109
    .local v2, "type":I
    iget-object v3, p0, Lcom/tencent/qt/alg/network/SmartNetworkSensor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 111
    .local v1, "subtype":I
    invoke-static {v2, v1}, Lcom/tencent/qt/alg/network/SmartNetworkSensor;->getMobileNetworkType(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getProxy()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    const-string v0, "Unknown"

    .line 211
    .local v0, "ProvidersName":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/qt/alg/network/SmartNetworkSensor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "imsi":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 215
    const-string v2, "46000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    :cond_0
    const-string/jumbo v0, "\u4e2d\u56fd\u79fb\u52a8"

    .line 229
    :cond_1
    :goto_0
    return-object v0

    .line 219
    :cond_2
    const-string v2, "46001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    const-string/jumbo v0, "\u4e2d\u56fd\u8054\u901a"

    goto :goto_0

    .line 223
    :cond_3
    const-string v2, "46003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    const-string/jumbo v0, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_0
.end method

.method public hasAvailableNetwork()Z
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/tencent/qt/alg/network/SmartNetworkSensor;->getAccessPoint()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "apn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    :cond_0
    const/4 v1, 0x0

    .line 242
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
