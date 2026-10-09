.class Lcom/tencent/msdk/lbs/MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "LocationService.java"


# instance fields
.field private mLocationService:Lcom/tencent/msdk/lbs/LocationService;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/tencent/msdk/lbs/LocationService;Landroid/telephony/TelephonyManager;)V
    .locals 0
    .param p1, "locationService"    # Lcom/tencent/msdk/lbs/LocationService;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    .line 101
    iput-object p2, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 102
    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 7
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v6, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 107
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    const-string v1, "LocationService"

    const-string v2, "onSignalStrengthsChanged gsm"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    const/16 v2, 0x63

    if-eq v1, v2, :cond_2

    .line 110
    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v2, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    monitor-enter v2

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v1, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v1, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v1, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/msdk/lbs/CellIDInfo;

    .line 113
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x71

    iput v3, v1, Lcom/tencent/msdk/lbs/CellIDInfo;->rssi:I

    .line 115
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v2, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    monitor-enter v2

    .line 134
    :try_start_1
    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v1, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v1, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result v1

    if-nez v1, :cond_1

    .line 136
    :try_start_2
    const-string v3, "LocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signalStrengthValue = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v1, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    const/4 v5, 0x0

    .line 137
    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/msdk/lbs/CellIDInfo;

    iget v1, v1, Lcom/tencent/msdk/lbs/CellIDInfo;->rssi:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 143
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 145
    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v2, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v6, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoStatus:I

    .line 146
    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p0, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 147
    return-void

    .line 115
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v2, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    monitor-enter v2

    .line 118
    :try_start_5
    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v1, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v1, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 119
    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v1, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/msdk/lbs/CellIDInfo;

    .line 120
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    iput v3, v1, Lcom/tencent/msdk/lbs/CellIDInfo;->rssi:I

    .line 122
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 125
    :cond_4
    const-string v1, "LocationService"

    const-string v2, "onSignalStrengthsChanged cdma"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v2, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    monitor-enter v2

    .line 127
    :try_start_6
    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v1, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v1, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 128
    iget-object v1, p0, Lcom/tencent/msdk/lbs/MyPhoneStateListener;->mLocationService:Lcom/tencent/msdk/lbs/LocationService;

    iget-object v1, v1, Lcom/tencent/msdk/lbs/LocationService;->cellInfoList:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/msdk/lbs/CellIDInfo;

    .line 129
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    iput v3, v1, Lcom/tencent/msdk/lbs/CellIDInfo;->rssi:I

    .line 131
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method
