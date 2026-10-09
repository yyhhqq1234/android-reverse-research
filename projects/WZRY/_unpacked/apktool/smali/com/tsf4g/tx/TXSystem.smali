.class public Lcom/tsf4g/tx/TXSystem;
.super Ljava/lang/Object;
.source "TXSystem.java"


# instance fields
.field private m_szAndroidId:Ljava/lang/String;

.field private m_szBundleId:Ljava/lang/String;

.field private m_szDbm:I

.field private m_szDeviceId:Ljava/lang/String;

.field private m_szLatitude:D

.field private m_szLongitude:D

.field private m_szMacAddress:Ljava/lang/String;

.field private m_szModel:Ljava/lang/String;

.field private m_szSerial:Ljava/lang/String;

.field private m_szSysVersion:Ljava/lang/String;

.field private m_szUdid:Ljava/lang/String;

.field private m_szWlanMacAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szModel:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szSysVersion:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szDeviceId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szSerial:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szAndroidId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szWlanMacAddress:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szMacAddress:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szUdid:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szBundleId:Ljava/lang/String;

    .line 45
    iput-wide v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szLatitude:D

    .line 46
    iput-wide v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szLongitude:D

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szDbm:I

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/tsf4g/tx/TXSystem;D)V
    .locals 1

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/tsf4g/tx/TXSystem;->m_szLatitude:D

    return-void
.end method

.method static synthetic access$1(Lcom/tsf4g/tx/TXSystem;D)V
    .locals 1

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/tsf4g/tx/TXSystem;->m_szLongitude:D

    return-void
.end method

.method static synthetic access$2(Lcom/tsf4g/tx/TXSystem;I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/tsf4g/tx/TXSystem;->m_szDbm:I

    return-void
.end method

.method private getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 90
    .local v0, "imeistring":Ljava/lang/String;
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 91
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v2, :cond_0

    .line 93
    const-string v3, ""

    move-object v1, v0

    .line 97
    .end local v0    # "imeistring":Ljava/lang/String;
    .local v1, "imeistring":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 95
    .end local v1    # "imeistring":Ljava/lang/String;
    .restart local v0    # "imeistring":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v0    # "imeistring":Ljava/lang/String;
    .restart local v1    # "imeistring":Ljava/lang/String;
    move-object v3, v0

    .line 97
    goto :goto_0
.end method

.method private getMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "m_BluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "00:00:00:00:00:00"

    goto :goto_0
.end method

.method private getWlanMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 103
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_0

    .line 105
    const-string v0, ""

    .line 113
    :goto_0
    return-object v0

    .line 107
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 108
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_1

    .line 110
    const-string v0, ""

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "address":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public CalculateLocaiton(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 227
    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 228
    .local v0, "locationManager":Landroid/location/LocationManager;
    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 233
    :cond_0
    new-instance v5, Lcom/tsf4g/tx/TXSystem$1;

    invoke-direct {v5, p0}, Lcom/tsf4g/tx/TXSystem$1;-><init>(Lcom/tsf4g/tx/TXSystem;)V

    .line 261
    .local v5, "listener":Landroid/location/LocationListener;
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 262
    .local v6, "criteria":Landroid/location/Criteria;
    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 263
    invoke-virtual {v6, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 264
    invoke-virtual {v6, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 266
    invoke-virtual {v6, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 267
    invoke-virtual {v0, v6, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "provider":Ljava/lang/String;
    const-wide/16 v2, 0x1388

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 269
    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public GetBundleId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tsf4g/tx/TXSystem;->m_szBundleId:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/tsf4g/tx/TXSystem;->m_szBundleId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-object v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TXSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public GetCurrentAPN(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 326
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 328
    const-string v5, "Error"

    const-string v6, "ConnectivityManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v5, "WIFI"

    .line 407
    :goto_0
    return-object v5

    .line 331
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 332
    .local v3, "info":Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 334
    const-string v5, "Error"

    const-string v6, "NetworkInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v5, "WIFI"

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "typeName":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 341
    const-string v5, "Error"

    const-string/jumbo v6, "typeName is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v5, "WIFI"

    goto :goto_0

    .line 345
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WIFI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 347
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "extraInfo":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 350
    const-string v5, "Error"

    const-string v6, "getExtraInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v5, "WIFI"

    goto :goto_0

    .line 354
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "apnName":Ljava/lang/String;
    const-string v5, "cmwap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 358
    const-string v5, "CMWAP"

    goto :goto_0

    .line 360
    :cond_4
    const-string v5, "cmnet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "epc.tmobile.com"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 362
    :cond_5
    const-string v5, "CMNET"

    goto :goto_0

    .line 364
    :cond_6
    const-string/jumbo v5, "uniwap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 366
    const-string v5, "UNIWAP"

    goto :goto_0

    .line 368
    :cond_7
    const-string/jumbo v5, "uninet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 370
    const-string v5, "UNINET"

    goto :goto_0

    .line 372
    :cond_8
    const-string/jumbo v5, "wap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 374
    const-string v5, "WAP"

    goto/16 :goto_0

    .line 376
    :cond_9
    const-string v5, "net"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 378
    const-string v5, "NET"

    goto/16 :goto_0

    .line 380
    :cond_a
    const-string v5, "ctwap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 382
    const-string v5, "CTWAP"

    goto/16 :goto_0

    .line 384
    :cond_b
    const-string v5, "ctnet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 386
    const-string v5, "CTNET"

    goto/16 :goto_0

    .line 388
    :cond_c
    const-string v5, "3gwap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 390
    const-string v5, "3GWAP"

    goto/16 :goto_0

    .line 392
    :cond_d
    const-string v5, "3gnet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 394
    const-string v5, "3GNET"

    goto/16 :goto_0

    .line 396
    :cond_e
    const-string v5, "ctwap"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 398
    const-string v5, "CTWAP"

    goto/16 :goto_0

    .line 402
    :cond_f
    const-string v5, "3G"

    goto/16 :goto_0

    .line 407
    .end local v0    # "apnName":Ljava/lang/String;
    .end local v2    # "extraInfo":Ljava/lang/String;
    :cond_10
    const-string v5, "WIFI"

    goto/16 :goto_0
.end method

.method public GetICCIDInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    const-string v1, ""

    .line 208
    .local v1, "iccidString":Ljava/lang/String;
    :try_start_0
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    if-nez v3, :cond_0

    .line 211
    const-string v4, "N"

    move-object v2, v1

    .line 222
    .end local v1    # "iccidString":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    .local v2, "iccidString":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 214
    .end local v2    # "iccidString":Ljava/lang/String;
    .restart local v1    # "iccidString":Ljava/lang/String;
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    move-object v2, v1

    .end local v1    # "iccidString":Ljava/lang/String;
    .restart local v2    # "iccidString":Ljava/lang/String;
    move-object v4, v1

    .line 215
    goto :goto_0

    .line 217
    .end local v2    # "iccidString":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v1    # "iccidString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ERROR"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get ICCID failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v4, "N"

    move-object v2, v1

    .end local v1    # "iccidString":Ljava/lang/String;
    .restart local v2    # "iccidString":Ljava/lang/String;
    goto :goto_0
.end method

.method public GetLatitude()D
    .locals 2

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szLatitude:D

    return-wide v0
.end method

.method public GetLocalIPAddress()Ljava/lang/String;
    .locals 8

    .prologue
    .line 181
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 200
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    const-string v5, "N"

    :goto_1
    return-object v5

    .line 183
    .restart local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 184
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 187
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2

    instance-of v5, v3, Ljava/net/Inet4Address;

    if-eqz v5, :cond_2

    .line 189
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 194
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .line 196
    .local v2, "ex":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    .line 197
    const-string v5, "ERROR"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "get local IP address failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetLongitude()D
    .locals 2

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szLongitude:D

    return-wide v0
.end method

.method public GetModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szModel:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szModel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szModel:Ljava/lang/String;

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Model unknown"

    goto :goto_0
.end method

.method public GetSignalStrength(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 285
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    new-instance v0, Lcom/tsf4g/tx/TXSystem$2;

    invoke-direct {v0, p0}, Lcom/tsf4g/tx/TXSystem$2;-><init>(Lcom/tsf4g/tx/TXSystem;)V

    .line 315
    .local v0, "listener":Landroid/telephony/PhoneStateListener;
    if-eqz v1, :cond_0

    .line 317
    const/16 v2, 0x100

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 320
    :cond_0
    iget v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szDbm:I

    return v2
.end method

.method public GetSysVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szSysVersion:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szSysVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/tsf4g/tx/TXSystem;->m_szSysVersion:Ljava/lang/String;

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SysVersion unknown"

    goto :goto_0
.end method

.method public GetUdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/tsf4g/tx/TXSystem;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szDeviceId:Ljava/lang/String;

    .line 134
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szSerial:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szAndroidId:Ljava/lang/String;

    .line 136
    invoke-direct {p0, p1}, Lcom/tsf4g/tx/TXSystem;->getWlanMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szWlanMacAddress:Ljava/lang/String;

    .line 137
    invoke-direct {p0}, Lcom/tsf4g/tx/TXSystem;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szMacAddress:Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "%"

    .line 141
    .local v1, "flag":Ljava/lang/String;
    iget-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szDeviceId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szSerial:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szSerial:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szAndroidId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szAndroidId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szUdid:Ljava/lang/String;

    .line 168
    iget-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szUdid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 170
    const-string v2, "Udid Unknown"

    iput-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szUdid:Ljava/lang/String;

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szUdid:Ljava/lang/String;

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szUdid:Ljava/lang/String;

    .line 174
    iget-object v2, p0, Lcom/tsf4g/tx/TXSystem;->m_szUdid:Ljava/lang/String;

    return-object v2
.end method
