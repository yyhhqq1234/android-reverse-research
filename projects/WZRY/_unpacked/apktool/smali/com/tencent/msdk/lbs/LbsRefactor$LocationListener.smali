.class Lcom/tencent/msdk/lbs/LbsRefactor$LocationListener;
.super Ljava/lang/Object;
.source "LbsRefactor.java"

# interfaces
.implements Lcom/tencent/msdk/lbs/LocationService$LocatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/lbs/LbsRefactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocationListener"
.end annotation


# instance fields
.field private reqType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/msdk/lbs/LbsRefactor$LocationListener;->reqType:I

    .line 35
    iput p1, p0, Lcom/tencent/msdk/lbs/LbsRefactor$LocationListener;->reqType:I

    .line 36
    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get phone location success, errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "flag":I
    if-nez p1, :cond_1

    .line 90
    const/4 v0, -0x4

    .line 94
    :cond_0
    :goto_0
    iget v1, p0, Lcom/tencent/msdk/lbs/LbsRefactor$LocationListener;->reqType:I

    invoke-static {v1, v0}, Lcom/tencent/msdk/sdkwrapper/lbs/Lbs;->locationFail(II)V

    .line 95
    return-void

    .line 91
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 92
    const/4 v0, -0x5

    goto :goto_0
.end method

.method public onSuccess(I)V
    .locals 21
    .param p1, "resultCode"    # I

    .prologue
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get phone location success, resultCode:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/tencent/msdk/lbs/LocationService;->getInstance()Lcom/tencent/msdk/lbs/LocationService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/lbs/LocationService;->getLatitude()D

    move-result-wide v6

    .line 43
    .local v6, "latitude":D
    invoke-static {}, Lcom/tencent/msdk/lbs/LocationService;->getInstance()Lcom/tencent/msdk/lbs/LocationService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/lbs/LocationService;->getLongitude()D

    move-result-wide v4

    .line 45
    .local v4, "longitude":D
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .local v2, "attribute":Lorg/json/JSONObject;
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    const-string v8, "phone"

    invoke-virtual {v3, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 49
    .local v17, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    const-string v3, "imei"

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v3, "imsi"

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v3, "phonenum"

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v3, "qq"

    const/16 v8, 0x2710

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 58
    .local v14, "cells":Lorg/json/JSONArray;
    invoke-static {}, Lcom/tencent/msdk/lbs/LocationService;->getInstance()Lcom/tencent/msdk/lbs/LocationService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/lbs/LocationService;->getCellInfoList()Ljava/util/Vector;

    move-result-object v13

    .line 59
    .local v13, "cellIDInfos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/lbs/CellIDInfo;>;"
    monitor-enter v13

    .line 60
    :try_start_1
    invoke-virtual {v13}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tencent/msdk/lbs/CellIDInfo;

    .line 61
    .local v12, "cell":Lcom/tencent/msdk/lbs/CellIDInfo;
    new-instance v11, Lcom/tencent/msdk/lbs/LocationInfo$Cell;

    invoke-direct {v11}, Lcom/tencent/msdk/lbs/LocationInfo$Cell;-><init>()V

    .line 62
    .local v11, "c":Lcom/tencent/msdk/lbs/LocationInfo$Cell;
    iget v8, v12, Lcom/tencent/msdk/lbs/CellIDInfo;->cellId:I

    invoke-virtual {v11, v8}, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->setCellid(I)V

    .line 63
    iget v8, v12, Lcom/tencent/msdk/lbs/CellIDInfo;->locationAreaCode:I

    invoke-virtual {v11, v8}, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->setLac(I)V

    .line 64
    iget v8, v12, Lcom/tencent/msdk/lbs/CellIDInfo;->mobileCountryCode:I

    invoke-virtual {v11, v8}, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->setMcc(I)V

    .line 65
    iget v8, v12, Lcom/tencent/msdk/lbs/CellIDInfo;->mobileNetworkCode:I

    invoke-virtual {v11, v8}, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->setMnc(I)V

    .line 66
    iget v8, v12, Lcom/tencent/msdk/lbs/CellIDInfo;->rssi:I

    invoke-virtual {v11, v8}, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->setRssi(I)V

    .line 67
    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 69
    .end local v11    # "c":Lcom/tencent/msdk/lbs/LocationInfo$Cell;
    .end local v12    # "cell":Lcom/tencent/msdk/lbs/CellIDInfo;
    :catchall_0
    move-exception v3

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 53
    .end local v13    # "cellIDInfos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/lbs/CellIDInfo;>;"
    .end local v14    # "cells":Lorg/json/JSONArray;
    :catch_0
    move-exception v15

    .line 54
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v13    # "cellIDInfos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/lbs/CellIDInfo;>;"
    .restart local v14    # "cells":Lorg/json/JSONArray;
    :cond_0
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    new-instance v20, Lorg/json/JSONArray;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONArray;-><init>()V

    .line 72
    .local v20, "wifis":Lorg/json/JSONArray;
    invoke-static {}, Lcom/tencent/msdk/lbs/LocationService;->getInstance()Lcom/tencent/msdk/lbs/LocationService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/lbs/LocationService;->getWifiInfoList()Ljava/util/Vector;

    move-result-object v19

    .line 73
    .local v19, "wifiInfos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/lbs/WifiInfo;>;"
    monitor-enter v19

    .line 74
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/tencent/msdk/lbs/WifiInfo;

    .line 75
    .local v16, "info":Lcom/tencent/msdk/lbs/WifiInfo;
    new-instance v18, Lcom/tencent/msdk/lbs/LocationInfo$Wifi;

    invoke-direct/range {v18 .. v18}, Lcom/tencent/msdk/lbs/LocationInfo$Wifi;-><init>()V

    .line 76
    .local v18, "w":Lcom/tencent/msdk/lbs/LocationInfo$Wifi;
    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/tencent/msdk/lbs/WifiInfo;->mac:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/tencent/msdk/lbs/LocationInfo$Wifi;->setMac(Ljava/lang/String;)V

    .line 77
    move-object/from16 v0, v16

    iget v8, v0, Lcom/tencent/msdk/lbs/WifiInfo;->rssi:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/tencent/msdk/lbs/LocationInfo$Wifi;->setRssi(I)V

    .line 78
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 80
    .end local v16    # "info":Lcom/tencent/msdk/lbs/WifiInfo;
    .end local v18    # "w":Lcom/tencent/msdk/lbs/LocationInfo$Wifi;
    :catchall_1
    move-exception v3

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_1
    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/msdk/lbs/LbsRefactor$LocationListener;->reqType:I

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v3 .. v10}, Lcom/tencent/msdk/sdkwrapper/lbs/Lbs;->locationSucceed(IDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method
