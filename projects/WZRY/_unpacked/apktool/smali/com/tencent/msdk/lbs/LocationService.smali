.class public Lcom/tencent/msdk/lbs/LocationService;
.super Ljava/lang/Object;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/lbs/LocationService$LocatorListener;
    }
.end annotation


# static fields
.field static final ERROR_GPS_TIMEOUT:I = 0x1

.field static final ERROR_NOT_OPEN_GPS:I = 0x0

.field protected static final GPS_TIMEOUT:J = 0x2710L

.field static final RET_CODE_HAS_GPS_DATA:I = 0x1

.field static final RET_CODE_NO_GPS_DATA:I

.field private static sActivity:Landroid/app/Activity;

.field private static volatile sInstance:Lcom/tencent/msdk/lbs/LocationService;


# instance fields
.field final STATUS_FAIL:I

.field final STATUS_SUCCESS:I

.field cellInfoList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/msdk/lbs/CellIDInfo;",
            ">;"
        }
    .end annotation
.end field

.field cellInfoStatus:I

.field gpsStatus:I

.field private latitude:D

.field private listenerList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/msdk/lbs/LocationService$LocatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private longitude:D

.field wifiInfoList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/msdk/lbs/WifiInfo;",
            ">;"
        }
    .end annotation
.end field

.field wifiStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/lbs/LocationService;->listenerList:Ljava/util/Vector;

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/lbs/LocationService;->STATUS_SUCCESS:I

    .line 204
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/lbs/LocationService;->STATUS_FAIL:I

    return-void
.end method

.method private GPSLocation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 254
    sget-object v3, Lcom/tencent/msdk/lbs/LocationService;->sActivity:Landroid/app/Activity;

    const-string v4, "location"

    .line 255
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 257
    .local v2, "locationManager":Landroid/location/LocationManager;
    :try_start_0
    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    new-instance v1, Lcom/tencent/msdk/lbs/MyLocationListener;

    sget-object v3, Lcom/tencent/msdk/lbs/LocationService;->sInstance:Lcom/tencent/msdk/lbs/LocationService;

    invoke-direct {v1, v3, v2}, Lcom/tencent/msdk/lbs/MyLocationListener;-><init>(Lcom/tencent/msdk/lbs/LocationService;Landroid/location/LocationManager;)V

    .line 260
    .local v1, "locationListener":Lcom/tencent/msdk/lbs/MyLocationListener;
    const-string v3, "StartGPSLocating"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 261
    sget-object v3, Lcom/tencent/msdk/lbs/LocationService;->sActivity:Landroid/app/Activity;

    new-instance v4, Lcom/tencent/msdk/lbs/LocationService$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/tencent/msdk/lbs/LocationService$1;-><init>(Lcom/tencent/msdk/lbs/LocationService;Landroid/location/LocationManager;Lcom/tencent/msdk/lbs/MyLocationListener;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 269
    sget-object v3, Lcom/tencent/msdk/lbs/LocationService;->sActivity:Landroid/app/Activity;

    new-instance v4, Lcom/tencent/msdk/lbs/LocationService$2;

    invoke-direct {v4, p0, v2, v1}, Lcom/tencent/msdk/lbs/LocationService$2;-><init>(Lcom/tencent/msdk/lbs/LocationService;Landroid/location/LocationManager;Lcom/tencent/msdk/lbs/MyLocationListener;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 321
    .end local v1    # "locationListener":Lcom/tencent/msdk/lbs/MyLocationListener;
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const-string v3, "GPS\u672a\u5f00\u542f"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 298
    iget v3, p0, Lcom/tencent/msdk/lbs/LocationService;->wifiStatus:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/tencent/msdk/lbs/LocationService;->cellInfoStatus:I

    if-nez v3, :cond_4

    .line 300
    :cond_2
    const-string/jumbo v3, "\u6210\u529f\u83b7\u53d6\u4f4d\u7f6e\u4fe1\u606f\uff0c\u4f46\u6ca1\u6709GPS\u6570\u636e"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 301
    sget-object v3, Lcom/tencent/msdk/lbs/LocationService;->sInstance:Lcom/tencent/msdk/lbs/LocationService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/tencent/msdk/lbs/LocationService;->onSuccess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    const-string v3, "LocationService"

    const-string v4, "GPS\u83b7\u53d6\u5f02\u5e38"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget v3, p0, Lcom/tencent/msdk/lbs/LocationService;->wifiStatus:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/tencent/msdk/lbs/LocationService;->cellInfoStatus:I

    if-nez v3, :cond_5

    .line 313
    :cond_3
    const-string v3, "LocationService"

    const-string/jumbo v4, "\u6210\u529f\u83b7\u53d6\u4f4d\u7f6e\u4fe1\u606f\uff0c\u4f46\u6ca1\u6709GPS\u6570\u636e"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v3, Lcom/tencent/msdk/lbs/LocationService;->sInstance:Lcom/tencent/msdk/lbs/LocationService;

    invoke-virtual {v3, v6}, Lcom/tencent/msdk/lbs/LocationService;->onSuccess(I)V

    goto :goto_0

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget v3, p0, Lcom/tencent/msdk/lbs/LocationService;->wifiStatus:I

    if-ne v3, v5, :cond_0

    iget v3, p0, Lcom/tencent/msdk/lbs/LocationService;->cellInfoStatus:I

    if-ne v3, v5, :cond_0

    .line 304
    const-string/jumbo v3, "\u83b7\u53d6\u4f4d\u7f6e\u4fe1\u606f\u5931\u8d25\uff0cGPS\u6570\u636e\u8d85\u65f6"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 305
    sget-object v3, Lcom/tencent/msdk/lbs/LocationService;->sInstance:Lcom/tencent/msdk/lbs/LocationService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/tencent/msdk/lbs/LocationService;->onFail(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 315
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iget v3, p0, Lcom/tencent/msdk/lbs/LocationService;->wifiStatus:I

    if-ne v3, v5, :cond_0

    iget v3, p0, Lcom/tencent/msdk/lbs/LocationService;->cellInfoStatus:I

    if-ne v3, v5, :cond_0

    .line 317
    const-string v3, "LocationService"

    const-string/jumbo v4, "\u83b7\u53d6\u4f4d\u7f6e\u4fe1\u606f\u5931\u8d25\uff0cGPS\u6570\u636e\u8d85\u65f6"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object v3, Lcom/tencent/msdk/lbs/LocationService;->sInstance:Lcom/tencent/msdk/lbs/LocationService;

    invoke-virtual {v3, v5}, Lcom/tencent/msdk/lbs/LocationService;->onFail(I)V

    goto :goto_0
.end method

.method public static Init(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 212
    sput-object p0, Lcom/tencent/msdk/lbs/LocationService;->sActivity:Landroid/app/Activity;

    .line 213
    sget-object v0, Lcom/tencent/msdk/lbs/LocationService;->sInstance:Lcom/tencent/msdk/lbs/LocationService;

    if-nez v0, :cond_1

    .line 214
    const-class v1, Lcom/tencent/msdk/lbs/LocationService;

    monitor-enter v1

    .line 215
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/lbs/LocationService;->sInstance:Lcom/tencent/msdk/lbs/LocationService;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/tencent/msdk/lbs/LocationService;

    invoke-direct {v0}, Lcom/tencent/msdk/lbs/LocationService;-><init>()V

    sput-object v0, Lcom/tencent/msdk/lbs/LocationService;->sInstance:Lcom/tencent/msdk/lbs/LocationService;

    .line 218
    :cond_0
    monitor-exit v1

    .line 220
    :cond_1
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000()Lcom/tencent/msdk/lbs/LocationService;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/tencent/msdk/lbs/LocationService;->sInstance:Lcom/tencent/msdk/lbs/LocationService;

    return-object v0
.end method

.method private getCellIDInfo()V
    .locals 20

    .prologue
    .line 325
    sget-object v17, Lcom/tencent/msdk/lbs/LocationService;->sActivity:Landroid/app/Activity;

    const-string v18, "phone"

    .line 326
    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 327
    .local v12, "manager":Landroid/telephony/TelephonyManager;
    if-nez v12, :cond_0

    .line 328
    const-string v17, "get TelephonyManager failed!"

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 329
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoStatus:I

    .line 454
    :goto_0
    return-void

    .line 332
    :cond_0
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    .line 334
    new-instance v5, Lcom/tencent/msdk/lbs/CellIDInfo;

    invoke-direct {v5}, Lcom/tencent/msdk/lbs/CellIDInfo;-><init>()V

    .line 335
    .local v5, "currentCell":Lcom/tencent/msdk/lbs/CellIDInfo;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v16

    .line 337
    .local v16, "type":I
    const/4 v7, 0x0

    .line 339
    .local v7, "hasTelephony":Z
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    .line 340
    .local v3, "cellLocation":Landroid/telephony/CellLocation;
    if-nez v3, :cond_1

    .line 341
    const-string v17, "LocationService"

    const-string v18, "cellLocation is null!!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoStatus:I

    goto :goto_0

    .line 346
    :cond_1
    if-eqz v16, :cond_2

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_3

    .line 347
    :cond_2
    const-string v17, "LocationService"

    const-string v18, "network type is unknown!!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoStatus:I

    goto :goto_0

    .line 352
    :cond_3
    instance-of v0, v3, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object v6, v3

    .line 354
    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 356
    .local v6, "gsm":Landroid/telephony/gsm/GsmCellLocation;
    const/4 v7, 0x1

    .line 357
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    .line 359
    .local v10, "lac":I
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x3

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 358
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 359
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 361
    .local v13, "mcc":I
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x3

    const/16 v19, 0x5

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 360
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 361
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 362
    .local v14, "mnc":I
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    .line 364
    .local v4, "cid":I
    iput v4, v5, Lcom/tencent/msdk/lbs/CellIDInfo;->cellId:I

    .line 365
    iput v13, v5, Lcom/tencent/msdk/lbs/CellIDInfo;->mobileCountryCode:I

    .line 366
    iput v14, v5, Lcom/tencent/msdk/lbs/CellIDInfo;->mobileNetworkCode:I

    .line 367
    iput v10, v5, Lcom/tencent/msdk/lbs/CellIDInfo;->locationAreaCode:I

    .line 368
    const-string v17, "gsm"

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/tencent/msdk/lbs/CellIDInfo;->radioType:Ljava/lang/String;

    .line 369
    const v17, 0xffff

    move/from16 v0, v17

    iput v0, v5, Lcom/tencent/msdk/lbs/CellIDInfo;->rssi:I

    .line 370
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "currentCell:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/tencent/msdk/lbs/CellIDInfo;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 372
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 373
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v11

    .line 376
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    if-nez v11, :cond_4

    .line 377
    const-string v17, "LBS NeighboringCellInfo, list is null"

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 378
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoStatus:I

    goto/16 :goto_0

    .line 373
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 381
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :cond_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    .line 382
    .local v15, "size":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "NeighboringCellInfo size = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 385
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v15, :cond_5

    .line 386
    :try_start_2
    new-instance v9, Lcom/tencent/msdk/lbs/CellIDInfo;

    invoke-direct {v9}, Lcom/tencent/msdk/lbs/CellIDInfo;-><init>()V

    .line 387
    .local v9, "info":Lcom/tencent/msdk/lbs/CellIDInfo;
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v17

    move/from16 v0, v17

    iput v0, v9, Lcom/tencent/msdk/lbs/CellIDInfo;->cellId:I

    .line 388
    iput v13, v9, Lcom/tencent/msdk/lbs/CellIDInfo;->mobileCountryCode:I

    .line 389
    iput v14, v9, Lcom/tencent/msdk/lbs/CellIDInfo;->mobileNetworkCode:I

    .line 390
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v17

    move/from16 v0, v17

    iput v0, v9, Lcom/tencent/msdk/lbs/CellIDInfo;->locationAreaCode:I

    .line 391
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v17

    move/from16 v0, v17

    iput v0, v9, Lcom/tencent/msdk/lbs/CellIDInfo;->rssi:I

    .line 392
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "neighbor"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Lcom/tencent/msdk/lbs/CellIDInfo;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 395
    .end local v9    # "info":Lcom/tencent/msdk/lbs/CellIDInfo;
    :cond_5
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 440
    .end local v4    # "cid":I
    .end local v6    # "gsm":Landroid/telephony/gsm/GsmCellLocation;
    .end local v8    # "i":I
    .end local v10    # "lac":I
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v13    # "mcc":I
    .end local v14    # "mnc":I
    .end local v15    # "size":I
    :cond_6
    :goto_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "getNetworkType, type:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", hasTelephony:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 441
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_a

    .line 442
    sget-object v17, Lcom/tencent/msdk/lbs/LocationService;->sActivity:Landroid/app/Activity;

    new-instance v18, Lcom/tencent/msdk/lbs/LocationService$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/tencent/msdk/lbs/LocationService$3;-><init>(Lcom/tencent/msdk/lbs/LocationService;Landroid/telephony/TelephonyManager;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 395
    .restart local v4    # "cid":I
    .restart local v6    # "gsm":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v8    # "i":I
    .restart local v10    # "lac":I
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .restart local v13    # "mcc":I
    .restart local v14    # "mnc":I
    .restart local v15    # "size":I
    :catchall_1
    move-exception v17

    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v17

    .line 396
    .end local v4    # "cid":I
    .end local v6    # "gsm":Landroid/telephony/gsm/GsmCellLocation;
    .end local v8    # "i":I
    .end local v10    # "lac":I
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v13    # "mcc":I
    .end local v14    # "mnc":I
    .end local v15    # "size":I
    :cond_7
    instance-of v0, v3, Landroid/telephony/cdma/CdmaCellLocation;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object v2, v3

    .line 399
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 401
    .local v2, "cdma":Landroid/telephony/cdma/CdmaCellLocation;
    const/4 v7, 0x1

    .line 403
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v10

    .line 405
    .restart local v10    # "lac":I
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x3

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 404
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 405
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 406
    .restart local v13    # "mcc":I
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v14

    .line 407
    .restart local v14    # "mnc":I
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v4

    .line 409
    .restart local v4    # "cid":I
    iput v4, v5, Lcom/tencent/msdk/lbs/CellIDInfo;->cellId:I

    .line 410
    iput v13, v5, Lcom/tencent/msdk/lbs/CellIDInfo;->mobileCountryCode:I

    .line 411
    iput v14, v5, Lcom/tencent/msdk/lbs/CellIDInfo;->mobileNetworkCode:I

    .line 412
    iput v10, v5, Lcom/tencent/msdk/lbs/CellIDInfo;->locationAreaCode:I

    .line 413
    const-string v17, "cdma"

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/tencent/msdk/lbs/CellIDInfo;->radioType:Ljava/lang/String;

    .line 414
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "currentCell cmda"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Lcom/tencent/msdk/lbs/CellIDInfo;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 416
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 417
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 419
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v11

    .line 420
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    if-nez v11, :cond_8

    .line 421
    const-string v17, "LBS NeighboringCellInfo, cmda list is null"

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 422
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoStatus:I

    goto/16 :goto_0

    .line 417
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :catchall_2
    move-exception v17

    :try_start_5
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v17

    .line 425
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :cond_8
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    .line 426
    .restart local v15    # "size":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "NeighboringCellInfo size = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 428
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v15, :cond_9

    .line 429
    :try_start_6
    new-instance v9, Lcom/tencent/msdk/lbs/CellIDInfo;

    invoke-direct {v9}, Lcom/tencent/msdk/lbs/CellIDInfo;-><init>()V

    .line 430
    .restart local v9    # "info":Lcom/tencent/msdk/lbs/CellIDInfo;
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v17

    move/from16 v0, v17

    iput v0, v9, Lcom/tencent/msdk/lbs/CellIDInfo;->cellId:I

    .line 431
    iput v13, v9, Lcom/tencent/msdk/lbs/CellIDInfo;->mobileCountryCode:I

    .line 432
    iput v14, v9, Lcom/tencent/msdk/lbs/CellIDInfo;->mobileNetworkCode:I

    .line 433
    iput v10, v9, Lcom/tencent/msdk/lbs/CellIDInfo;->locationAreaCode:I

    .line 434
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "neighbor"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Lcom/tencent/msdk/lbs/CellIDInfo;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 428
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 437
    .end local v9    # "info":Lcom/tencent/msdk/lbs/CellIDInfo;
    :cond_9
    monitor-exit v18

    goto/16 :goto_2

    :catchall_3
    move-exception v17

    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v17

    .line 451
    .end local v2    # "cdma":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v4    # "cid":I
    .end local v8    # "i":I
    .end local v10    # "lac":I
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v13    # "mcc":I
    .end local v14    # "mnc":I
    .end local v15    # "size":I
    :cond_a
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoStatus:I

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/tencent/msdk/lbs/LocationService;
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lcom/tencent/msdk/lbs/LocationService;->sInstance:Lcom/tencent/msdk/lbs/LocationService;

    return-object v0
.end method

.method private getWifiInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 458
    sget-object v5, Lcom/tencent/msdk/lbs/LocationService;->sActivity:Landroid/app/Activity;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 459
    .local v4, "wm":Landroid/net/wifi/WifiManager;
    if-nez v4, :cond_0

    .line 460
    const-string v5, "WifiManager\u4e3a\u7a7a"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 461
    iput v8, p0, Lcom/tencent/msdk/lbs/LocationService;->wifiStatus:I

    .line 488
    :goto_0
    return-void

    .line 464
    :cond_0
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/tencent/msdk/lbs/LocationService;->wifiInfoList:Ljava/util/Vector;

    .line 465
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 466
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v2, :cond_1

    .line 467
    const-string/jumbo v5, "\u672a\u626b\u63cf\u5230\u5468\u56f4\u7684WIFI\u70ed\u70b9"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 468
    iput v8, p0, Lcom/tencent/msdk/lbs/LocationService;->wifiStatus:I

    goto :goto_0

    .line 471
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 472
    .local v3, "size":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScanResults size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 473
    iget-object v6, p0, Lcom/tencent/msdk/lbs/LocationService;->wifiInfoList:Ljava/util/Vector;

    monitor-enter v6

    .line 475
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 476
    :try_start_0
    new-instance v1, Lcom/tencent/msdk/lbs/WifiInfo;

    invoke-direct {v1}, Lcom/tencent/msdk/lbs/WifiInfo;-><init>()V

    .line 477
    .local v1, "info":Lcom/tencent/msdk/lbs/WifiInfo;
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v5, v1, Lcom/tencent/msdk/lbs/WifiInfo;->mac:Ljava/lang/String;

    .line 478
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget v5, v5, Landroid/net/wifi/ScanResult;->level:I

    iput v5, v1, Lcom/tencent/msdk/lbs/WifiInfo;->rssi:I

    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ScanResult"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/msdk/lbs/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 480
    iget-object v5, p0, Lcom/tencent/msdk/lbs/LocationService;->wifiInfoList:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 482
    .end local v1    # "info":Lcom/tencent/msdk/lbs/WifiInfo;
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    if-nez v3, :cond_3

    .line 484
    iput v8, p0, Lcom/tencent/msdk/lbs/LocationService;->wifiStatus:I

    goto/16 :goto_0

    .line 482
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 486
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/tencent/msdk/lbs/LocationService;->wifiStatus:I

    goto/16 :goto_0
.end method


# virtual methods
.method public getCellInfoList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/msdk/lbs/CellIDInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 507
    iget-wide v0, p0, Lcom/tencent/msdk/lbs/LocationService;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 503
    iget-wide v0, p0, Lcom/tencent/msdk/lbs/LocationService;->longitude:D

    return-wide v0
.end method

.method public getWifiInfoList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/msdk/lbs/WifiInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationService;->wifiInfoList:Ljava/util/Vector;

    return-object v0
.end method

.method public onFail(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 179
    const-string v1, "onFail"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/tencent/msdk/lbs/LocationService;->listenerList:Ljava/util/Vector;

    monitor-enter v2

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/tencent/msdk/lbs/LocationService;->listenerList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/lbs/LocationService$LocatorListener;

    .line 182
    .local v0, "listener":Lcom/tencent/msdk/lbs/LocationService$LocatorListener;
    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p1}, Lcom/tencent/msdk/lbs/LocationService$LocatorListener;->onFail(I)V

    goto :goto_0

    .line 187
    .end local v0    # "listener":Lcom/tencent/msdk/lbs/LocationService$LocatorListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 186
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/tencent/msdk/lbs/LocationService;->listenerList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 187
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    return-void
.end method

.method public onSuccess(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 167
    iget-object v2, p0, Lcom/tencent/msdk/lbs/LocationService;->listenerList:Ljava/util/Vector;

    monitor-enter v2

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/tencent/msdk/lbs/LocationService;->listenerList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/lbs/LocationService$LocatorListener;

    .line 169
    .local v0, "listener":Lcom/tencent/msdk/lbs/LocationService$LocatorListener;
    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0, p1}, Lcom/tencent/msdk/lbs/LocationService$LocatorListener;->onSuccess(I)V

    goto :goto_0

    .line 174
    .end local v0    # "listener":Lcom/tencent/msdk/lbs/LocationService$LocatorListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 173
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/tencent/msdk/lbs/LocationService;->listenerList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 174
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "l"    # D

    .prologue
    .line 499
    iput-wide p1, p0, Lcom/tencent/msdk/lbs/LocationService;->latitude:D

    .line 500
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "l"    # D

    .prologue
    .line 495
    iput-wide p1, p0, Lcom/tencent/msdk/lbs/LocationService;->longitude:D

    .line 496
    return-void
.end method

.method public declared-synchronized startLocating(Lcom/tencent/msdk/lbs/LocationService$LocatorListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/tencent/msdk/lbs/LocationService$LocatorListener;

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    const-string v1, "Start location"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/tencent/msdk/lbs/LocationService;->listenerList:Ljava/util/Vector;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 225
    :try_start_1
    iget-object v1, p0, Lcom/tencent/msdk/lbs/LocationService;->listenerList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/tencent/msdk/lbs/LocationService;->listenerList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :try_start_2
    invoke-direct {p0}, Lcom/tencent/msdk/lbs/LocationService;->getCellIDInfo()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 238
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/tencent/msdk/lbs/LocationService;->getWifiInfo()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 245
    :goto_1
    :try_start_4
    invoke-direct {p0}, Lcom/tencent/msdk/lbs/LocationService;->GPSLocation()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 250
    :goto_2
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 223
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    const/4 v1, 0x1

    iput v1, p0, Lcom/tencent/msdk/lbs/LocationService;->cellInfoStatus:I

    goto :goto_0

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 240
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    const/4 v1, 0x1

    iput v1, p0, Lcom/tencent/msdk/lbs/LocationService;->wifiStatus:I

    goto :goto_1

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 247
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    const/4 v1, 0x1

    iput v1, p0, Lcom/tencent/msdk/lbs/LocationService;->gpsStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2
.end method
