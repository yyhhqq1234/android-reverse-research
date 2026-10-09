.class final Lc/t/m/g/cu;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static volatile h:Lc/t/m/g/cu;


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private final b:Z

.field private c:Z

.field private d:D

.field private e:I

.field private volatile f:Z

.field private g:Lcom/tencent/map/geolocation/TencentDirectionListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v1, p0, Lc/t/m/g/cu;->f:Z

    .line 34
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lc/t/m/g/cu;->a:Landroid/hardware/SensorManager;

    .line 35
    iget-object v0, p0, Lc/t/m/g/cu;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lc/t/m/g/cu;->b:Z

    .line 36
    return-void

    :cond_0
    move v0, v1

    .line 35
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lc/t/m/g/cu;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lc/t/m/g/cu;->h:Lc/t/m/g/cu;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lc/t/m/g/cu;

    invoke-direct {v0, p0}, Lc/t/m/g/cu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc/t/m/g/cu;->h:Lc/t/m/g/cu;

    .line 28
    :cond_0
    sget-object v0, Lc/t/m/g/cu;->h:Lc/t/m/g/cu;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Lcom/tencent/map/geolocation/TencentDirectionListener;)I
    .locals 4

    .prologue
    const/4 v0, 0x3

    .line 39
    iget-boolean v1, p0, Lc/t/m/g/cu;->b:Z

    if-nez v1, :cond_1

    .line 40
    const/4 v0, 0x2

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    iget-boolean v1, p0, Lc/t/m/g/cu;->c:Z

    if-nez v1, :cond_3

    .line 43
    const/4 v1, 0x0

    .line 46
    :try_start_0
    iget-object v2, p0, Lc/t/m/g/cu;->a:Landroid/hardware/SensorManager;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 51
    :goto_1
    if-nez v1, :cond_2

    .line 52
    :try_start_1
    iget-object v1, p0, Lc/t/m/g/cu;->a:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 54
    :cond_2
    if-eqz v1, :cond_0

    .line 55
    iget-object v2, p0, Lc/t/m/g/cu;->a:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v1, v3, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 57
    iput-object p2, p0, Lc/t/m/g/cu;->g:Lcom/tencent/map/geolocation/TencentDirectionListener;

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc/t/m/g/cu;->c:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lc/t/m/g/cu;->f:Z

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/t/m/g/cu;->f:Z

    .line 75
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 79
    :try_start_0
    iget-boolean v0, p0, Lc/t/m/g/cu;->b:Z

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-boolean v0, p0, Lc/t/m/g/cu;->c:Z

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/t/m/g/cu;->c:Z

    .line 84
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lc/t/m/g/cu;->d:D

    .line 85
    iget-object v0, p0, Lc/t/m/g/cu;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d()D
    .locals 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lc/t/m/g/cu;->c:Z

    if-eqz v0, :cond_0

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-wide v0, p0, Lc/t/m/g/cu;->d:D

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    return-wide v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 142
    :cond_0
    iput p2, p0, Lc/t/m/g/cu;->e:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/high16 v2, 0x43b40000    # 360.0f

    .line 108
    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 109
    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 110
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v2}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 111
    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 112
    const/4 v0, 0x0

    aget v0, v1, v0

    float-to-double v0, v0

    .line 113
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb4d12d84aL    # 3.1415926

    div-double/2addr v0, v2

    :try_start_1
    iput-wide v0, p0, Lc/t/m/g/cu;->d:D

    .line 115
    iget-object v0, p0, Lc/t/m/g/cu;->g:Lcom/tencent/map/geolocation/TencentDirectionListener;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lc/t/m/g/cu;->g:Lcom/tencent/map/geolocation/TencentDirectionListener;

    iget-wide v2, p0, Lc/t/m/g/cu;->d:D

    iget v1, p0, Lc/t/m/g/cu;->e:I

    invoke-interface {v0, v2, v3, v1}, Lcom/tencent/map/geolocation/TencentDirectionListener;->onDirectionChanged(DI)V

    .line 118
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 118
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 122
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-float/2addr v0, v2

    .line 123
    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_3

    .line 124
    add-float/2addr v0, v2

    .line 126
    :cond_3
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    float-to-double v0, v0

    :try_start_3
    iput-wide v0, p0, Lc/t/m/g/cu;->d:D

    .line 128
    iget-object v0, p0, Lc/t/m/g/cu;->g:Lcom/tencent/map/geolocation/TencentDirectionListener;

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lc/t/m/g/cu;->g:Lcom/tencent/map/geolocation/TencentDirectionListener;

    iget-wide v2, p0, Lc/t/m/g/cu;->d:D

    iget v1, p0, Lc/t/m/g/cu;->e:I

    invoke-interface {v0, v2, v3, v1}, Lcom/tencent/map/geolocation/TencentDirectionListener;->onDirectionChanged(DI)V

    .line 131
    :cond_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method
