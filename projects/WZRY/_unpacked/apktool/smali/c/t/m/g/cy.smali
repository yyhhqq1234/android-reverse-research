.class public final Lc/t/m/g/cy;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lc/t/m/g/cr;


# static fields
.field private static f:Landroid/content/Context;

.field private static volatile g:Lc/t/m/g/cy;

.field private static p:Landroid/content/SharedPreferences;


# instance fields
.field private a:Lc/t/m/g/cq;

.field private b:Landroid/hardware/SensorManager;

.field private c:Landroid/hardware/Sensor;

.field private d:Landroid/hardware/Sensor;

.field private e:Landroid/hardware/Sensor;

.field private h:J

.field private i:J

.field private j:D

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Landroid/os/HandlerThread;

.field private n:I

.field private o:I

.field private q:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide v0, p0, Lc/t/m/g/cy;->h:J

    .line 31
    iput-wide v0, p0, Lc/t/m/g/cy;->i:J

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/t/m/g/cy;->j:D

    .line 33
    iput-boolean v2, p0, Lc/t/m/g/cy;->k:Z

    .line 34
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lc/t/m/g/cy;->l:Ljava/lang/String;

    .line 37
    iput v2, p0, Lc/t/m/g/cy;->n:I

    .line 38
    iput v2, p0, Lc/t/m/g/cy;->o:I

    .line 202
    iput v2, p0, Lc/t/m/g/cy;->q:I

    .line 50
    new-instance v0, Lc/t/m/g/cq;

    invoke-direct {v0}, Lc/t/m/g/cq;-><init>()V

    iput-object v0, p0, Lc/t/m/g/cy;->a:Lc/t/m/g/cq;

    .line 51
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 106
    iget-boolean v0, p0, Lc/t/m/g/cy;->k:Z

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lc/t/m/g/cy;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/cy;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lc/t/m/g/cy;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 110
    iget-object v0, p0, Lc/t/m/g/cy;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lc/t/m/g/cy;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :goto_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lc/t/m/g/cy;->e:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lc/t/m/g/cy;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lc/t/m/g/cy;->e:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :cond_0
    :goto_1
    iput-wide v2, p0, Lc/t/m/g/cy;->h:J

    .line 122
    iput-wide v2, p0, Lc/t/m/g/cy;->i:J

    .line 123
    if-eqz p1, :cond_2

    .line 124
    const-string/jumbo v0, "vehicle"

    iput-object v0, p0, Lc/t/m/g/cy;->l:Ljava/lang/String;

    .line 128
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/t/m/g/cy;->k:Z

    .line 130
    :cond_1
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "TxMotionProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :cond_2
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lc/t/m/g/cy;->l:Ljava/lang/String;

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static b()Lc/t/m/g/cy;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lc/t/m/g/cy;->g:Lc/t/m/g/cy;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lc/t/m/g/cy;

    invoke-direct {v0}, Lc/t/m/g/cy;-><init>()V

    sput-object v0, Lc/t/m/g/cy;->g:Lc/t/m/g/cy;

    .line 45
    :cond_0
    sget-object v0, Lc/t/m/g/cy;->g:Lc/t/m/g/cy;

    return-object v0
.end method

.method private f()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 84
    iget-boolean v0, p0, Lc/t/m/g/cy;->k:Z

    if-nez v0, :cond_1

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/cy;->h:J

    .line 87
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lc/t/m/g/cy;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 88
    iget-object v1, p0, Lc/t/m/g/cy;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lc/t/m/g/cy;->c:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v1

    .line 89
    if-nez v1, :cond_0

    .line 90
    const/4 v1, -0x1

    iput v1, p0, Lc/t/m/g/cy;->n:I

    .line 92
    :cond_0
    iget-object v1, p0, Lc/t/m/g/cy;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lc/t/m/g/cy;->d:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 93
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lc/t/m/g/cy;->e:Landroid/hardware/Sensor;

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lc/t/m/g/cy;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lc/t/m/g/cy;->e:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 95
    const-string v0, "TxMotionProvider"

    const-string v1, "Support STEP_COUNTER sensor!"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/t/m/g/cy;->k:Z

    .line 104
    :cond_1
    :goto_1
    return-void

    .line 97
    :cond_2
    const-string v0, "TxMotionProvider"

    const-string v1, "Don\'t support STEP_COUNTER sensor!"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/t/m/g/cy;->k:Z

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/cy;->i:J

    .line 268
    iget v0, p0, Lc/t/m/g/cy;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/t/m/g/cy;->n:I

    .line 269
    iget v0, p0, Lc/t/m/g/cy;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/t/m/g/cy;->o:I

    .line 270
    return-void
.end method

.method public final a(IDDJ)V
    .locals 4

    .prologue
    .line 145
    const-string v0, "Speed"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "speedType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "speed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    long-to-double v0, p6

    iget-wide v2, p0, Lc/t/m/g/cy;->j:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 147
    long-to-double v0, p6

    iput-wide v0, p0, Lc/t/m/g/cy;->j:D

    .line 151
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 152
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    cmpl-double v0, p4, v0

    if-lez v0, :cond_4

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_4

    .line 153
    const-string/jumbo v0, "vehicle"

    iput-object v0, p0, Lc/t/m/g/cy;->l:Ljava/lang/String;

    .line 158
    :cond_0
    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 159
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    cmpl-double v0, p4, v0

    if-lez v0, :cond_5

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_5

    .line 160
    const-string/jumbo v0, "vehicle"

    iput-object v0, p0, Lc/t/m/g/cy;->l:Ljava/lang/String;

    .line 165
    :cond_1
    :goto_1
    iget-object v0, p0, Lc/t/m/g/cy;->l:Ljava/lang/String;

    const-string/jumbo v1, "vehicle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc/t/m/g/cy;->a(Z)V

    .line 168
    :cond_2
    iget-object v0, p0, Lc/t/m/g/cy;->l:Ljava/lang/String;

    const-string/jumbo v1, "vehicle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    invoke-direct {p0}, Lc/t/m/g/cy;->f()V

    .line 171
    :cond_3
    return-void

    .line 155
    :cond_4
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lc/t/m/g/cy;->l:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_5
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lc/t/m/g/cy;->l:Ljava/lang/String;

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/16 v2, 0x13

    .line 54
    .line 55
    sput-object p1, Lc/t/m/g/cy;->f:Landroid/content/Context;

    const-string v0, "LocationSDK"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lc/t/m/g/cy;->p:Landroid/content/SharedPreferences;

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Sensor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc/t/m/g/cy;->m:Landroid/os/HandlerThread;

    .line 57
    iget-object v0, p0, Lc/t/m/g/cy;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    iget-object v0, p0, Lc/t/m/g/cy;->a:Lc/t/m/g/cq;

    iput-object p0, v0, Lc/t/m/g/cq;->i:Lc/t/m/g/cr;

    .line 59
    sget-object v0, Lc/t/m/g/cy;->f:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lc/t/m/g/cy;->b:Landroid/hardware/SensorManager;

    .line 60
    iget-object v0, p0, Lc/t/m/g/cy;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lc/t/m/g/cy;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cy;->c:Landroid/hardware/Sensor;

    .line 62
    iget-object v0, p0, Lc/t/m/g/cy;->b:Landroid/hardware/SensorManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cy;->d:Landroid/hardware/Sensor;

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    .line 64
    iget-object v0, p0, Lc/t/m/g/cy;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cy;->e:Landroid/hardware/Sensor;

    .line 67
    :cond_0
    invoke-direct {p0}, Lc/t/m/g/cy;->f()V

    .line 68
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    const-string v0, "TxMotionProvider"

    const-string v1, "shutdown"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lc/t/m/g/cy;->m:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lc/t/m/g/cy;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lc/t/m/g/cy;->m:Landroid/os/HandlerThread;

    .line 76
    :cond_0
    invoke-direct {p0, v2}, Lc/t/m/g/cy;->a(Z)V

    .line 77
    iput v2, p0, Lc/t/m/g/cy;->n:I

    .line 79
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lc/t/m/g/cy;->n:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x4e20

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 174
    iget-object v0, p0, Lc/t/m/g/cy;->l:Ljava/lang/String;

    const-string/jumbo v1, "vehicle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lc/t/m/g/cy;->j:D

    cmpl-double v0, v0, v8

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lc/t/m/g/cy;->j:D

    sub-double/2addr v0, v2

    const-wide v2, 0x40dd4c0000000000L    # 30000.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 175
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lc/t/m/g/cy;->l:Ljava/lang/String;

    .line 176
    iput-wide v8, p0, Lc/t/m/g/cy;->j:D

    .line 178
    :cond_0
    iget-object v0, p0, Lc/t/m/g/cy;->l:Ljava/lang/String;

    const-string/jumbo v1, "vehicle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iput v4, p0, Lc/t/m/g/cy;->o:I

    .line 180
    const-string/jumbo v0, "vehicle"

    .line 199
    :goto_0
    return-object v0

    .line 182
    :cond_1
    iget-object v0, p0, Lc/t/m/g/cy;->l:Ljava/lang/String;

    const-string v1, "static"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    iput v4, p0, Lc/t/m/g/cy;->o:I

    .line 184
    const-string v0, "static"

    goto :goto_0

    .line 186
    :cond_2
    iget-wide v0, p0, Lc/t/m/g/cy;->i:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lc/t/m/g/cy;->i:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v10

    if-lez v0, :cond_3

    .line 187
    iput v4, p0, Lc/t/m/g/cy;->o:I

    .line 188
    const-string v0, "static"

    goto :goto_0

    .line 191
    :cond_3
    iget-wide v0, p0, Lc/t/m/g/cy;->h:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_4

    iget-wide v0, p0, Lc/t/m/g/cy;->i:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lc/t/m/g/cy;->h:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v10

    if-lez v0, :cond_4

    .line 192
    iput v4, p0, Lc/t/m/g/cy;->o:I

    .line 193
    const-string v0, "static"

    goto :goto_0

    .line 194
    :cond_4
    iget-wide v0, p0, Lc/t/m/g/cy;->i:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lc/t/m/g/cy;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    iget v0, p0, Lc/t/m/g/cy;->o:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 195
    const-string v0, "pedestrian"

    goto :goto_0

    .line 198
    :cond_5
    iput v4, p0, Lc/t/m/g/cy;->o:I

    .line 199
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13

    .prologue
    const v12, 0x3dcccccd    # 0.1f

    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 206
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 208
    :sswitch_0
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v8, p0, Lc/t/m/g/cy;->a:Lc/t/m/g/cq;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    aget v1, v0, v6

    aget v2, v0, v7

    aget v0, v0, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v3, v8, Lc/t/m/g/cq;->b:Lc/t/m/g/di;

    if-nez v3, :cond_4

    new-instance v3, Lc/t/m/g/di;

    invoke-direct {v3, v1, v2, v0}, Lc/t/m/g/di;-><init>(FFF)V

    iput-object v3, v8, Lc/t/m/g/cq;->b:Lc/t/m/g/di;

    iget-object v0, v8, Lc/t/m/g/cq;->b:Lc/t/m/g/di;

    invoke-virtual {v0}, Lc/t/m/g/di;->a()F

    move-result v0

    iput v0, v8, Lc/t/m/g/cq;->d:F

    :cond_1
    :goto_1
    iget v0, v8, Lc/t/m/g/cq;->d:F

    cmpl-float v0, v0, v11

    if-eqz v0, :cond_2

    iget v0, v8, Lc/t/m/g/cq;->e:F

    cmpl-float v0, v0, v11

    if-eqz v0, :cond_2

    new-instance v0, Lc/t/m/g/dh;

    iget v1, v8, Lc/t/m/g/cq;->d:F

    iget v2, v8, Lc/t/m/g/cq;->e:F

    iget-object v3, v8, Lc/t/m/g/cq;->b:Lc/t/m/g/di;

    invoke-virtual {v3}, Lc/t/m/g/di;->a()F

    move-result v3

    invoke-direct/range {v0 .. v5}, Lc/t/m/g/dh;-><init>(FFFJ)V

    iget-object v1, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-wide v0, v8, Lc/t/m/g/cq;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iput-wide v4, v8, Lc/t/m/g/cq;->f:J

    :cond_3
    iget-wide v0, v8, Lc/t/m/g/cq;->f:J

    sub-long v0, v4, v0

    long-to-float v0, v0

    const v1, 0x4e0f0d18    # 6.0E8f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    iget-boolean v0, v8, Lc/t/m/g/cq;->g:Z

    if-eqz v0, :cond_b

    move v1, v6

    move v2, v6

    :goto_2
    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dh;

    iget v3, v0, Lc/t/m/g/dh;->a:F

    cmpl-float v3, v3, v11

    if-ltz v3, :cond_5

    iget v0, v0, Lc/t/m/g/dh;->b:F

    cmpg-float v0, v0, v11

    if-gtz v0, :cond_5

    move v0, v7

    :goto_3
    if-eqz v0, :cond_16

    iget v3, v8, Lc/t/m/g/cq;->h:F

    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dh;

    iget v4, v0, Lc/t/m/g/dh;->c:F

    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dh;

    iget v0, v0, Lc/t/m/g/dh;->c:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_16

    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dh;

    iget v2, v0, Lc/t/m/g/dh;->c:F

    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dh;

    iget v0, v0, Lc/t/m/g/dh;->c:F

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, v8, Lc/t/m/g/cq;->h:F

    move v0, v1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    new-instance v3, Lc/t/m/g/di;

    mul-float/2addr v1, v12

    iget-object v9, v8, Lc/t/m/g/cq;->b:Lc/t/m/g/di;

    iget v9, v9, Lc/t/m/g/di;->a:F

    const v10, 0x3f666666    # 0.9f

    mul-float/2addr v9, v10

    add-float/2addr v1, v9

    mul-float/2addr v2, v12

    iget-object v9, v8, Lc/t/m/g/cq;->b:Lc/t/m/g/di;

    iget v9, v9, Lc/t/m/g/di;->b:F

    const v10, 0x3f666666    # 0.9f

    mul-float/2addr v9, v10

    add-float/2addr v2, v9

    mul-float/2addr v0, v12

    iget-object v9, v8, Lc/t/m/g/cq;->b:Lc/t/m/g/di;

    iget v9, v9, Lc/t/m/g/di;->c:F

    const v10, 0x3f666666    # 0.9f

    mul-float/2addr v9, v10

    add-float/2addr v0, v9

    invoke-direct {v3, v1, v2, v0}, Lc/t/m/g/di;-><init>(FFF)V

    iput-object v3, v8, Lc/t/m/g/cq;->b:Lc/t/m/g/di;

    iget-object v0, v8, Lc/t/m/g/cq;->c:Lc/t/m/g/di;

    if-eqz v0, :cond_1

    iget-object v0, v8, Lc/t/m/g/cq;->b:Lc/t/m/g/di;

    invoke-virtual {v0}, Lc/t/m/g/di;->a()F

    move-result v0

    iget-object v1, v8, Lc/t/m/g/cq;->c:Lc/t/m/g/di;

    invoke-virtual {v1}, Lc/t/m/g/di;->a()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, v8, Lc/t/m/g/cq;->d:F

    goto/16 :goto_1

    :cond_5
    move v0, v6

    goto :goto_3

    :cond_6
    if-lez v2, :cond_a

    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dh;

    iget-wide v0, v0, Lc/t/m/g/dh;->d:J

    iput-wide v0, v8, Lc/t/m/g/cq;->f:J

    move v0, v6

    :goto_5
    if-ge v0, v2, :cond_7

    iget-object v1, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    iget v0, v8, Lc/t/m/g/cq;->h:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    iget-object v0, v8, Lc/t/m/g/cq;->i:Lc/t/m/g/cr;

    invoke-interface {v0}, Lc/t/m/g/cr;->a()V

    :cond_8
    iput v11, v8, Lc/t/m/g/cq;->h:F

    iput-boolean v6, v8, Lc/t/m/g/cq;->g:Z

    :cond_9
    :goto_6
    iget-object v0, v8, Lc/t/m/g/cq;->b:Lc/t/m/g/di;

    iput-object v0, v8, Lc/t/m/g/cq;->c:Lc/t/m/g/di;

    iget v0, v8, Lc/t/m/g/cq;->d:F

    iput v0, v8, Lc/t/m/g/cq;->e:F

    goto/16 :goto_0

    :cond_a
    const-wide/16 v0, 0x0

    iput-wide v0, v8, Lc/t/m/g/cq;->f:J

    goto :goto_6

    :cond_b
    move v1, v6

    move v2, v6

    :goto_7
    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dh;

    iget v3, v0, Lc/t/m/g/dh;->a:F

    cmpg-float v3, v3, v11

    if-gtz v3, :cond_c

    iget v0, v0, Lc/t/m/g/dh;->b:F

    cmpl-float v0, v0, v11

    if-ltz v0, :cond_c

    move v0, v7

    :goto_8
    if-eqz v0, :cond_15

    iget v3, v8, Lc/t/m/g/cq;->h:F

    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dh;

    iget v4, v0, Lc/t/m/g/dh;->c:F

    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dh;

    iget v0, v0, Lc/t/m/g/dh;->c:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_15

    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dh;

    iget v2, v0, Lc/t/m/g/dh;->c:F

    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dh;

    iget v0, v0, Lc/t/m/g/dh;->c:F

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, v8, Lc/t/m/g/cq;->h:F

    move v0, v1

    :goto_9
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_7

    :cond_c
    move v0, v6

    goto :goto_8

    :cond_d
    if-lez v2, :cond_f

    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/t/m/g/dh;

    iget-wide v0, v0, Lc/t/m/g/dh;->d:J

    iput-wide v0, v8, Lc/t/m/g/cq;->f:J

    :goto_a
    if-ge v6, v2, :cond_e

    iget-object v0, v8, Lc/t/m/g/cq;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_e
    iput v11, v8, Lc/t/m/g/cq;->h:F

    iput-boolean v7, v8, Lc/t/m/g/cq;->g:Z

    goto/16 :goto_6

    :cond_f
    const-wide/16 v0, 0x0

    iput-wide v0, v8, Lc/t/m/g/cq;->f:J

    goto/16 :goto_6

    .line 213
    :sswitch_1
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    mul-float/2addr v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 215
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, v0, v2

    if-gez v2, :cond_10

    .line 216
    iget v0, p0, Lc/t/m/g/cy;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/t/m/g/cy;->q:I

    .line 217
    iget v0, p0, Lc/t/m/g/cy;->q:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 218
    const-string v0, "static"

    iput-object v0, p0, Lc/t/m/g/cy;->l:Ljava/lang/String;

    goto/16 :goto_0

    .line 219
    :cond_10
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v2, v0, v2

    if-lez v2, :cond_11

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_11

    .line 220
    iget v0, p0, Lc/t/m/g/cy;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc/t/m/g/cy;->q:I

    .line 221
    iget v0, p0, Lc/t/m/g/cy;->q:I

    if-gt v0, v7, :cond_0

    .line 222
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lc/t/m/g/cy;->l:Ljava/lang/String;

    goto/16 :goto_0

    .line 223
    :cond_11
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 224
    const/4 v0, -0x5

    iput v0, p0, Lc/t/m/g/cy;->q:I

    .line 225
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lc/t/m/g/cy;->l:Ljava/lang/String;

    goto/16 :goto_0

    .line 230
    :sswitch_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    const/high16 v1, 0x4f000000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    .line 231
    const-string v0, "TxMotionProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sensor: probably not a real value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    :cond_12
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    float-to-int v0, v0

    .line 234
    if-lez v0, :cond_0

    .line 236
    sget-object v0, Lc/t/m/g/cy;->p:Landroid/content/SharedPreferences;

    const-string v1, "stepStr"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    sget-object v1, Lc/t/m/g/cy;->p:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "stepStr"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 241
    :cond_13
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 242
    aget-object v1, v0, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 243
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 244
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    cmpl-float v2, v1, v2

    if-lez v2, :cond_14

    .line 246
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    add-float/2addr v0, v1

    .line 251
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    sget-object v1, Lc/t/m/g/cy;->p:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "stepStr"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 249
    :cond_14
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    sub-float v1, v2, v1

    add-float/2addr v0, v1

    goto :goto_b

    :cond_15
    move v0, v2

    goto/16 :goto_9

    :cond_16
    move v0, v2

    goto/16 :goto_4

    .line 206
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x13 -> :sswitch_2
    .end sparse-switch
.end method
