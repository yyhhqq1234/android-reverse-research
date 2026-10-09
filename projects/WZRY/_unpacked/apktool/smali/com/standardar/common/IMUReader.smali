.class public Lcom/standardar/common/IMUReader;
.super Ljava/lang/Object;
.source "IMUReader.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/standardar/common/IMUReader$ISensorNotifyCallback;
    }
.end annotation


# static fields
.field public static final IMU_ACC_TAG:I = 0x0

.field public static final IMU_GRAVITY_TAG:I = 0x2

.field public static final IMU_GYRO_TAG:I = 0x1

.field public static final IMU_RV_TAG:I = 0x3

.field public static final NS_PER_SECOND:J = 0x3b9aca00L

.field private static mInstance:Lcom/standardar/common/IMUReader;

.field private static mInstanceLock:Ljava/lang/Object;


# instance fields
.field private mCallbackLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field mEnginePtr:J

.field private mGravitySensor:Landroid/hardware/Sensor;

.field private mGyroscopeSensor:Landroid/hardware/Sensor;

.field private mLinearAccelerationSensor:Landroid/hardware/Sensor;

.field private mRotationVectorSensor:Landroid/hardware/Sensor;

.field private mSensorNotifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/standardar/common/IMUReader$ISensorNotifyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorTag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/hardware/Sensor;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSessionPtr:J

.field public mbSensorTimestamp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/standardar/common/IMUReader;->mInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionPtr"    # J
    .param p4, "enginePtr"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/standardar/common/IMUReader;->mbSensorTimestamp:Z

    .line 36
    iput-wide v2, p0, Lcom/standardar/common/IMUReader;->mSessionPtr:J

    .line 37
    iput-wide v2, p0, Lcom/standardar/common/IMUReader;->mEnginePtr:J

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/standardar/common/IMUReader;->mCallbackLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/standardar/common/IMUReader;->mSensorTag:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/standardar/common/IMUReader;->mSensorNotifiers:Ljava/util/Set;

    .line 80
    iput-object p1, p0, Lcom/standardar/common/IMUReader;->mContext:Landroid/content/Context;

    .line 81
    iput-wide p2, p0, Lcom/standardar/common/IMUReader;->mSessionPtr:J

    .line 82
    iput-wide p4, p0, Lcom/standardar/common/IMUReader;->mEnginePtr:J

    .line 83
    return-void
.end method

.method private RegisterListener()V
    .locals 5

    .prologue
    const/16 v4, 0x9c4

    const/4 v3, 0x0

    .line 153
    invoke-direct {p0}, Lcom/standardar/common/IMUReader;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 155
    .local v0, "manager":Landroid/hardware/SensorManager;
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/standardar/common/IMUReader;->mLinearAccelerationSensor:Landroid/hardware/Sensor;

    .line 156
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mLinearAccelerationSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    .line 157
    const-string v1, "Do not support linear acceleration uncalibrated sensor"

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V

    .line 158
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/standardar/common/IMUReader;->mLinearAccelerationSensor:Landroid/hardware/Sensor;

    .line 159
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mLinearAccelerationSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    .line 160
    const-string v1, "Do not support linear acceleration sensor"

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 165
    :cond_0
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/standardar/common/IMUReader;->mGyroscopeSensor:Landroid/hardware/Sensor;

    .line 166
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mGyroscopeSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    .line 167
    const-string v1, "Do not support gyroscope sensor"

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_1
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/standardar/common/IMUReader;->mRotationVectorSensor:Landroid/hardware/Sensor;

    .line 172
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mRotationVectorSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_2

    .line 173
    const-string v1, "Do not support rotation vector sensor"

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_2
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/standardar/common/IMUReader;->mGravitySensor:Landroid/hardware/Sensor;

    .line 178
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mGravitySensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_3

    .line 179
    const-string v1, "Do not support gravity sensor"

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_3
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mLinearAccelerationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 184
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mGyroscopeSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 185
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mRotationVectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 186
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mGravitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 188
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mSensorTag:Ljava/util/Map;

    iget-object v2, p0, Lcom/standardar/common/IMUReader;->mLinearAccelerationSensor:Landroid/hardware/Sensor;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mSensorTag:Ljava/util/Map;

    iget-object v2, p0, Lcom/standardar/common/IMUReader;->mGyroscopeSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mSensorTag:Ljava/util/Map;

    iget-object v2, p0, Lcom/standardar/common/IMUReader;->mRotationVectorSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mSensorTag:Ljava/util/Map;

    iget-object v2, p0, Lcom/standardar/common/IMUReader;->mGravitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private UnregisterListener()V
    .locals 3

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/standardar/common/IMUReader;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 196
    .local v0, "manager":Landroid/hardware/SensorManager;
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 197
    return-void
.end method

.method private native arSetImuData(JI[FD)V
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/standardar/common/IMUReader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;JJ)Lcom/standardar/common/IMUReader;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sessionPtr"    # J
    .param p3, "enginePtr"    # J

    .prologue
    .line 67
    sget-object v6, Lcom/standardar/common/IMUReader;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 68
    :try_start_0
    sget-object v0, Lcom/standardar/common/IMUReader;->mInstance:Lcom/standardar/common/IMUReader;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/standardar/common/IMUReader;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/standardar/common/IMUReader;-><init>(Landroid/content/Context;JJ)V

    sput-object v0, Lcom/standardar/common/IMUReader;->mInstance:Lcom/standardar/common/IMUReader;

    .line 75
    :goto_0
    sget-object v0, Lcom/standardar/common/IMUReader;->mInstance:Lcom/standardar/common/IMUReader;

    monitor-exit v6

    return-object v0

    .line 71
    :cond_0
    sget-object v0, Lcom/standardar/common/IMUReader;->mInstance:Lcom/standardar/common/IMUReader;

    invoke-virtual {v0, p0}, Lcom/standardar/common/IMUReader;->setContext(Landroid/content/Context;)V

    .line 72
    sget-object v0, Lcom/standardar/common/IMUReader;->mInstance:Lcom/standardar/common/IMUReader;

    invoke-virtual {v0, p1, p2}, Lcom/standardar/common/IMUReader;->setSessionPtr(J)V

    .line 73
    sget-object v0, Lcom/standardar/common/IMUReader;->mInstance:Lcom/standardar/common/IMUReader;

    invoke-virtual {v0, p3, p4}, Lcom/standardar/common/IMUReader;->setEnginePtr(J)V

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/standardar/common/IMUReader;->stop()V

    .line 117
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 150
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 122
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 123
    .local v5, "values":[F
    iget-boolean v1, p0, Lcom/standardar/common/IMUReader;->mbSensorTimestamp:Z

    if-eqz v1, :cond_0

    iget-wide v10, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 124
    .local v10, "timestamp":J
    :goto_0
    iget-object v8, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 126
    .local v8, "sensor":Landroid/hardware/Sensor;
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mSensorNotifiers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensor timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/standardar/common/IMUReader;->mSensorTag:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGD(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mSensorNotifiers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/standardar/common/IMUReader$ISensorNotifyCallback;

    .line 129
    .local v0, "callback":Lcom/standardar/common/IMUReader$ISensorNotifyCallback;
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mSensorTag:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v5, v1, v10, v11}, Lcom/standardar/common/IMUReader$ISensorNotifyCallback;->onSensorChanged([FIJ)V

    goto :goto_1

    .line 123
    .end local v0    # "callback":Lcom/standardar/common/IMUReader$ISensorNotifyCallback;
    .end local v8    # "sensor":Landroid/hardware/Sensor;
    .end local v10    # "timestamp":J
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    goto :goto_0

    .line 132
    .restart local v8    # "sensor":Landroid/hardware/Sensor;
    .restart local v10    # "timestamp":J
    :cond_1
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mLinearAccelerationSensor:Landroid/hardware/Sensor;

    if-ne v8, v1, :cond_3

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensor timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGD(Ljava/lang/String;)V

    .line 134
    iget-wide v2, p0, Lcom/standardar/common/IMUReader;->mEnginePtr:J

    const/4 v4, 0x0

    long-to-double v6, v10

    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v6, v12

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/standardar/common/IMUReader;->arSetImuData(JI[FD)V

    .line 146
    :cond_2
    :goto_2
    return-void

    .line 135
    :cond_3
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mGyroscopeSensor:Landroid/hardware/Sensor;

    if-ne v8, v1, :cond_4

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensor timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGD(Ljava/lang/String;)V

    .line 137
    iget-wide v2, p0, Lcom/standardar/common/IMUReader;->mEnginePtr:J

    const/4 v4, 0x1

    long-to-double v6, v10

    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v6, v12

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/standardar/common/IMUReader;->arSetImuData(JI[FD)V

    goto :goto_2

    .line 138
    :cond_4
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mRotationVectorSensor:Landroid/hardware/Sensor;

    if-ne v8, v1, :cond_5

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensor timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGD(Ljava/lang/String;)V

    .line 140
    iget-wide v2, p0, Lcom/standardar/common/IMUReader;->mEnginePtr:J

    const/4 v4, 0x3

    long-to-double v6, v10

    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v6, v12

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/standardar/common/IMUReader;->arSetImuData(JI[FD)V

    goto :goto_2

    .line 141
    :cond_5
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mGravitySensor:Landroid/hardware/Sensor;

    if-ne v8, v1, :cond_2

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensor timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGD(Ljava/lang/String;)V

    .line 143
    iget-wide v2, p0, Lcom/standardar/common/IMUReader;->mEnginePtr:J

    const/4 v4, 0x2

    long-to-double v6, v10

    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v6, v12

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/standardar/common/IMUReader;->arSetImuData(JI[FD)V

    goto/16 :goto_2
.end method

.method public registerCallback(Lcom/standardar/common/IMUReader$ISensorNotifyCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/standardar/common/IMUReader$ISensorNotifyCallback;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/standardar/common/IMUReader;->mSensorNotifiers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/standardar/common/IMUReader;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method public setEnginePtr(J)V
    .locals 1
    .param p1, "enginePtr"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/standardar/common/IMUReader;->mEnginePtr:J

    .line 95
    return-void
.end method

.method public setSessionPtr(J)V
    .locals 1
    .param p1, "sessionPtr"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/standardar/common/IMUReader;->mSessionPtr:J

    .line 99
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/standardar/common/IMUReader;->RegisterListener()V

    .line 105
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/standardar/common/IMUReader;->UnregisterListener()V

    .line 112
    return-void
.end method

.method public unregisterCallback(Lcom/standardar/common/IMUReader$ISensorNotifyCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/standardar/common/IMUReader$ISensorNotifyCallback;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/standardar/common/IMUReader;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/standardar/common/IMUReader;->mSensorNotifiers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
