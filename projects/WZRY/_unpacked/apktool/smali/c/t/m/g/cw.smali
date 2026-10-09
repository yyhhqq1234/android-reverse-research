.class final Lc/t/m/g/cw;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/GpsStatus$NmeaListener;
.implements Landroid/location/LocationListener;


# instance fields
.field private a:J

.field private final b:Lc/t/m/g/cj;

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:Landroid/location/Location;

.field private f:Landroid/location/Location;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Landroid/location/GpsStatus;

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private volatile o:Z

.field private volatile p:Z

.field private volatile q:J

.field private r:Z

.field private s:Landroid/os/HandlerThread;

.field private t:Ljava/lang/Runnable;

.field private u:Lc/t/m/g/cp;

.field private v:Landroid/os/Handler;

.field private w:Lc/t/m/g/cw;

.field private final x:[D


# direct methods
.method public constructor <init>(Lc/t/m/g/cj;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide v2, p0, Lc/t/m/g/cw;->a:J

    .line 56
    iput-boolean v1, p0, Lc/t/m/g/cw;->c:Z

    .line 58
    iput-boolean v1, p0, Lc/t/m/g/cw;->d:Z

    .line 63
    const/16 v0, 0x400

    iput v0, p0, Lc/t/m/g/cw;->g:I

    .line 65
    iput-boolean v1, p0, Lc/t/m/g/cw;->h:Z

    .line 66
    iput-boolean v1, p0, Lc/t/m/g/cw;->i:Z

    .line 69
    iput v1, p0, Lc/t/m/g/cw;->k:I

    .line 70
    iput v1, p0, Lc/t/m/g/cw;->l:I

    .line 71
    iput v1, p0, Lc/t/m/g/cw;->m:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/t/m/g/cw;->n:Ljava/util/ArrayList;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/t/m/g/cw;->p:Z

    .line 76
    iput-wide v2, p0, Lc/t/m/g/cw;->q:J

    .line 248
    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lc/t/m/g/cw;->x:[D

    .line 87
    iput-object p1, p0, Lc/t/m/g/cw;->b:Lc/t/m/g/cj;

    .line 88
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc/t/m/g/cw;->f:Landroid/location/Location;

    .line 89
    invoke-static {}, Lc/t/m/g/cp;->a()Lc/t/m/g/cp;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cw;->u:Lc/t/m/g/cp;

    .line 90
    new-instance v0, Lc/t/m/g/cw$1;

    invoke-direct {v0, p0}, Lc/t/m/g/cw$1;-><init>(Lc/t/m/g/cw;)V

    iput-object v0, p0, Lc/t/m/g/cw;->t:Ljava/lang/Runnable;

    .line 116
    iput-object p0, p0, Lc/t/m/g/cw;->w:Lc/t/m/g/cw;

    .line 117
    return-void
.end method

.method private static a(Ljava/lang/String;)D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 299
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 300
    div-double v2, v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v2, v2

    .line 301
    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v4

    add-double/2addr v0, v2

    .line 302
    return-wide v0
.end method

.method private a(Landroid/location/Location;)I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 328
    :try_start_0
    iget-object v1, p0, Lc/t/m/g/cw;->b:Lc/t/m/g/cj;

    invoke-virtual {v1}, Lc/t/m/g/cj;->e()Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v0

    .line 333
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 334
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 342
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lc/t/m/g/cw;->b(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    iget-boolean v0, p0, Lc/t/m/g/cw;->p:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lc/t/m/g/cw;->b:Lc/t/m/g/cj;

    invoke-virtual {v0}, Lc/t/m/g/cj;->i()Lc/t/m/g/ck;

    move-result-object v0

    iget v0, v0, Lc/t/m/g/ck;->n:I

    if-lez v0, :cond_3

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lc/t/m/g/cw;->q:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 349
    const-string v0, "TxGpsProvider"

    const-string v1, "indoor,but has location,mock!!"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v0, 0x2

    goto :goto_0

    .line 338
    :catch_0
    move-exception v1

    .line 339
    const-string v2, "TxGpsProvider"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 354
    :cond_3
    iget-object v0, p0, Lc/t/m/g/cw;->f:Landroid/location/Location;

    if-eqz v0, :cond_4

    .line 355
    iget-object v0, p0, Lc/t/m/g/cw;->f:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 356
    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    iget-boolean v1, p0, Lc/t/m/g/cw;->p:Z

    if-nez v1, :cond_4

    .line 357
    const-string v1, "TxGpsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Distance:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v0, 0x3

    goto :goto_0

    .line 361
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lc/t/m/g/cw;)Lc/t/m/g/cj;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc/t/m/g/cw;->b:Lc/t/m/g/cj;

    return-object v0
.end method

.method private static a(Landroid/location/Location;DDII)V
    .locals 3

    .prologue
    .line 584
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 585
    if-nez v0, :cond_0

    .line 586
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 588
    :cond_0
    const-string v1, "lat"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 589
    const-string v1, "lng"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 590
    const-string v1, "rssi"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 591
    const-string v1, "fakeCode"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 592
    invoke-virtual {p0, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 593
    return-void
.end method

.method private static a(D)Z
    .locals 4

    .prologue
    .line 211
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 213
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lc/t/m/g/cw;)Lc/t/m/g/cw;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc/t/m/g/cw;->w:Lc/t/m/g/cw;

    return-object v0
.end method

.method private b(Landroid/location/Location;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 366
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 368
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 381
    :goto_0
    return v0

    .line 371
    :catch_0
    move-exception v1

    .line 372
    const-string v2, "TxGpsProvider"

    const-string v3, "isComplete: "

    invoke-static {v2, v3, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    :cond_0
    iget-object v1, p0, Lc/t/m/g/cw;->b:Lc/t/m/g/cj;

    invoke-virtual {v1}, Lc/t/m/g/cj;->i()Lc/t/m/g/ck;

    move-result-object v1

    iget v1, v1, Lc/t/m/g/ck;->n:I

    if-lez v1, :cond_1

    .line 376
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    cmpl-float v1, v1, v6

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    cmpl-float v1, v1, v6

    if-nez v1, :cond_1

    .line 377
    const-string v1, "TxGpsProvider"

    const-string/jumbo v2, "txy fake"

    invoke-static {v1, v2}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lc/t/m/g/cw;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc/t/m/g/cw;->s:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private declared-synchronized c(Landroid/location/Location;)V
    .locals 8

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc/t/m/g/cw;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/t/m/g/cw;->d:Z

    if-nez v0, :cond_2

    .line 426
    :cond_0
    const-string v0, "TxGpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mFlagNmea:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lc/t/m/g/cw;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mFlagLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lc/t/m/g/cw;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 430
    :cond_2
    if-eqz p1, :cond_1

    :try_start_1
    const-string v0, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const v1, 0x461c4000    # 10000.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    .line 433
    invoke-direct {p0}, Lc/t/m/g/cw;->e()V

    .line 434
    iget v0, p0, Lc/t/m/g/cw;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc/t/m/g/cw;->g:I

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/cw;->a:J

    .line 438
    iget-object v0, p0, Lc/t/m/g/cw;->b:Lc/t/m/g/cj;

    iget-object v0, v0, Lc/t/m/g/cj;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lc/t/m/g/cw;->a(Landroid/location/Location;)I

    move-result v7

    const/4 v6, 0x0

    iget v0, p0, Lc/t/m/g/cw;->l:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    const/4 v6, 0x1

    :cond_4
    :goto_2
    iget-boolean v0, p0, Lc/t/m/g/cw;->r:Z

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lc/t/m/g/dx;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_12

    const-string v0, "TxGpsProvider"

    const-string v1, "notifyListeners: local deflect"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/t/m/g/cw;->x:[D

    invoke-static {p1, v0}, Lc/t/m/g/f$a;->a(Landroid/location/Location;[D)Z

    iget-object v0, p0, Lc/t/m/g/cw;->x:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iget-object v0, p0, Lc/t/m/g/cw;->x:[D

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lc/t/m/g/cw;->a(Landroid/location/Location;DDII)V

    :goto_4
    new-instance v0, Lc/t/m/g/dk;

    iget-wide v2, p0, Lc/t/m/g/cw;->a:J

    iget v4, p0, Lc/t/m/g/cw;->k:I

    iget v5, p0, Lc/t/m/g/cw;->l:I

    iget v6, p0, Lc/t/m/g/cw;->g:I

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lc/t/m/g/dk;-><init>(Landroid/location/Location;JIII)V

    iget-object v1, p0, Lc/t/m/g/cw;->b:Lc/t/m/g/cj;

    invoke-virtual {v1, v0}, Lc/t/m/g/cj;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    :goto_5
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lc/t/m/g/cw;->d:Z

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lc/t/m/g/cw;->e:Landroid/location/Location;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 430
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lc/t/m/g/f$a;->a(DI)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Lc/t/m/g/f$a;->a(DI)D

    move-result-wide v2

    const-string v4, "TxGpsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lat:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",lng:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lc/t/m/g/cw;->a(D)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v2, v3}, Lc/t/m/g/cw;->a(D)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    rem-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_7

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    rem-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_8

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_9

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_9
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_a

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_b

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_b
    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v4, v0, v4

    if-ltz v4, :cond_c

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v4

    if-gtz v0, :cond_c

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v2, v0

    if-ltz v0, :cond_c

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_d

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const-string v0, "TxGpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "time:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 438
    :cond_f
    iget v0, p0, Lc/t/m/g/cw;->l:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_10

    iget v0, p0, Lc/t/m/g/cw;->l:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_10

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_10
    iget v0, p0, Lc/t/m/g/cw;->l:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_4

    const/4 v6, 0x3

    goto/16 :goto_2

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_12
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lc/t/m/g/cw;->a(Landroid/location/Location;DDII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_5
.end method

.method private d()V
    .locals 3

    .prologue
    .line 274
    iget v0, p0, Lc/t/m/g/cw;->g:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 278
    const/4 v0, 0x1

    .line 286
    :goto_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 287
    const/16 v2, 0x32c7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 288
    const/16 v2, 0x2ee2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 289
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 290
    iget-object v0, p0, Lc/t/m/g/cw;->b:Lc/t/m/g/cj;

    invoke-virtual {v0, v1}, Lc/t/m/g/cj;->b(Ljava/lang/Object;)V

    .line 291
    return-void

    .line 279
    :cond_0
    iget v0, p0, Lc/t/m/g/cw;->g:I

    if-nez v0, :cond_1

    .line 280
    const/4 v0, 0x0

    goto :goto_0

    .line 282
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 528
    const/4 v0, 0x0

    iput v0, p0, Lc/t/m/g/cw;->m:I

    iput v0, p0, Lc/t/m/g/cw;->l:I

    iput v0, p0, Lc/t/m/g/cw;->k:I

    .line 530
    iget-object v0, p0, Lc/t/m/g/cw;->j:Landroid/location/GpsStatus;

    .line 531
    if-nez v0, :cond_1

    .line 549
    :cond_0
    return-void

    .line 534
    :cond_1
    iget-object v1, p0, Lc/t/m/g/cw;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 535
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v1

    iput v1, p0, Lc/t/m/g/cw;->m:I

    .line 536
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    .line 537
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 538
    if-eqz v1, :cond_0

    .line 541
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lc/t/m/g/cw;->k:I

    iget v2, p0, Lc/t/m/g/cw;->m:I

    if-gt v0, v2, :cond_0

    .line 542
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 543
    iget v2, p0, Lc/t/m/g/cw;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc/t/m/g/cw;->k:I

    .line 544
    iget-object v2, p0, Lc/t/m/g/cw;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    iget v0, p0, Lc/t/m/g/cw;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/t/m/g/cw;->l:I

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 151
    iget-boolean v0, p0, Lc/t/m/g/cw;->o:Z

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 154
    :cond_0
    iput-boolean v4, p0, Lc/t/m/g/cw;->o:Z

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/t/m/g/cw;->a:J

    .line 157
    const/16 v0, 0x400

    iput v0, p0, Lc/t/m/g/cw;->g:I

    .line 158
    iput-boolean v4, p0, Lc/t/m/g/cw;->h:Z

    .line 159
    iput-boolean v4, p0, Lc/t/m/g/cw;->i:Z

    .line 160
    iput v4, p0, Lc/t/m/g/cw;->m:I

    iput v4, p0, Lc/t/m/g/cw;->l:I

    iput v4, p0, Lc/t/m/g/cw;->k:I

    .line 161
    iget-object v0, p0, Lc/t/m/g/cw;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 162
    iput-boolean v4, p0, Lc/t/m/g/cw;->r:Z

    .line 163
    iget-object v0, p0, Lc/t/m/g/cw;->x:[D

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 167
    iget-object v0, p0, Lc/t/m/g/cw;->b:Lc/t/m/g/cj;

    invoke-virtual {v0}, Lc/t/m/g/cj;->e()Landroid/location/LocationManager;

    move-result-object v0

    .line 169
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_1
    :try_start_1
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    :goto_2
    :try_start_2
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 178
    :goto_3
    :try_start_3
    iget-object v0, p0, Lc/t/m/g/cw;->v:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lc/t/m/g/cw;->s:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 183
    :goto_4
    iput-boolean v4, p0, Lc/t/m/g/cw;->c:Z

    iput-boolean v4, p0, Lc/t/m/g/cw;->d:Z

    .line 184
    const-string v0, "TxGpsProvider"

    const-string v1, "shutdown: state=[shutdown]"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    const-string v2, "TxGpsProvider"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 173
    :catch_1
    move-exception v1

    const-string v2, "TxGpsProvider"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 176
    :catch_2
    move-exception v0

    const-string v1, "TxGpsProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 180
    :catch_3
    move-exception v0

    .line 181
    const-string v1, "TxGpsProvider"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public final a(JZ)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 120
    iget-boolean v0, p0, Lc/t/m/g/cw;->o:Z

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 123
    :cond_0
    iput-boolean v7, p0, Lc/t/m/g/cw;->o:Z

    .line 125
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "gps_provider"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc/t/m/g/cw;->s:Landroid/os/HandlerThread;

    .line 126
    iget-object v0, p0, Lc/t/m/g/cw;->b:Lc/t/m/g/cj;

    invoke-virtual {v0}, Lc/t/m/g/cj;->e()Landroid/location/LocationManager;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lc/t/m/g/cw;->s:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 128
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lc/t/m/g/cw;->s:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lc/t/m/g/cw;->v:Landroid/os/Handler;

    .line 130
    if-nez p3, :cond_2

    .line 131
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/cw;->v:Landroid/os/Handler;

    iget-object v1, p0, Lc/t/m/g/cw;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/cw;->q:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_1
    invoke-virtual {p0}, Lc/t/m/g/cw;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    const/4 v0, 0x4

    iput v0, p0, Lc/t/m/g/cw;->g:I

    .line 144
    invoke-direct {p0}, Lc/t/m/g/cw;->d()V

    .line 147
    :cond_1
    const-string v0, "TxGpsProvider"

    const-string v1, "startup: state=[start]"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    :try_start_1
    const-string v1, "passive"

    const/4 v4, 0x0

    iget-object v2, p0, Lc/t/m/g/cw;->s:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-wide v2, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    sput-boolean v7, Lc/t/m/g/dw;->a:Z

    .line 138
    const-string v1, "TxGpsProvider"

    const-string v2, "startup: can not add location listener"

    invoke-static {v1, v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 207
    iput-boolean p1, p0, Lc/t/m/g/cw;->r:Z

    .line 208
    return-void
.end method

.method public final b()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 188
    .line 189
    iget v1, p0, Lc/t/m/g/cw;->g:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lc/t/m/g/cw;->a:J

    sub-long/2addr v2, v4

    invoke-static {}, Lc/t/m/g/cv;->a()Lc/t/m/g/cv;

    move-result-object v1

    invoke-virtual {v1}, Lc/t/m/g/cv;->b()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 192
    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 3

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    iget-object v1, p0, Lc/t/m/g/cw;->b:Lc/t/m/g/cj;

    invoke-virtual {v1}, Lc/t/m/g/cj;->e()Landroid/location/LocationManager;

    move-result-object v1

    .line 199
    :try_start_0
    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 203
    :goto_0
    return v0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    const-string v2, "TxGpsProvider"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onGpsStatusChanged(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 483
    packed-switch p1, :pswitch_data_0

    .line 525
    :goto_0
    return-void

    .line 485
    :pswitch_0
    iget v0, p0, Lc/t/m/g/cw;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/t/m/g/cw;->g:I

    goto :goto_0

    .line 488
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lc/t/m/g/cw;->g:I

    goto :goto_0

    .line 491
    :pswitch_2
    iget v0, p0, Lc/t/m/g/cw;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc/t/m/g/cw;->g:I

    goto :goto_0

    .line 494
    :pswitch_3
    iget-object v0, p0, Lc/t/m/g/cw;->b:Lc/t/m/g/cj;

    invoke-virtual {v0}, Lc/t/m/g/cj;->e()Landroid/location/LocationManager;

    move-result-object v0

    .line 496
    :try_start_0
    iget-object v1, p0, Lc/t/m/g/cw;->j:Landroid/location/GpsStatus;

    if-nez v1, :cond_5

    .line 497
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iput-object v0, p0, Lc/t/m/g/cw;->j:Landroid/location/GpsStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_1
    invoke-direct {p0}, Lc/t/m/g/cw;->e()V

    .line 506
    iget v0, p0, Lc/t/m/g/cw;->k:I

    iget v1, p0, Lc/t/m/g/cw;->l:I

    if-lez v0, :cond_0

    iput-boolean v2, p0, Lc/t/m/g/cw;->i:Z

    :cond_0
    if-lez v1, :cond_1

    iput-boolean v2, p0, Lc/t/m/g/cw;->h:Z

    :cond_1
    iget-boolean v1, p0, Lc/t/m/g/cw;->i:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lc/t/m/g/cw;->h:Z

    .line 508
    :cond_3
    iget-object v0, p0, Lc/t/m/g/cw;->j:Landroid/location/GpsStatus;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/t/m/g/cw;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/t/m/g/cw;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 510
    :try_start_1
    iget-object v0, p0, Lc/t/m/g/cw;->u:Lc/t/m/g/cp;

    iget-object v1, p0, Lc/t/m/g/cw;->n:Ljava/util/ArrayList;

    iget v2, p0, Lc/t/m/g/cw;->k:I

    invoke-virtual {v0, v1, v2}, Lc/t/m/g/cp;->a(Ljava/util/List;I)Z

    move-result v0

    iput-boolean v0, p0, Lc/t/m/g/cw;->p:Z

    .line 512
    iget-boolean v0, p0, Lc/t/m/g/cw;->p:Z

    if-eqz v0, :cond_4

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/cw;->q:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 522
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lc/t/m/g/cw;->p:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    :goto_3
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x32c7

    iput v2, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x2ee4

    iput v2, v1, Landroid/os/Message;->arg1:I

    iput v0, v1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lc/t/m/g/cw;->b:Lc/t/m/g/cj;

    invoke-virtual {v0, v1}, Lc/t/m/g/cj;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 499
    :cond_5
    :try_start_2
    iget-object v1, p0, Lc/t/m/g/cw;->j:Landroid/location/GpsStatus;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 515
    :catch_1
    move-exception v0

    .line 516
    const-string v1, "TxGpsProvider"

    const-string v2, "judgeIO Error!"

    invoke-static {v1, v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 522
    :cond_6
    const/4 v0, 0x4

    goto :goto_3

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/t/m/g/cw;->d:Z

    .line 448
    iput-object p1, p0, Lc/t/m/g/cw;->e:Landroid/location/Location;

    .line 449
    const-string v0, "TxGpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",speed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",bearing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 450
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lc/t/m/g/cw;->e:Landroid/location/Location;

    invoke-direct {p0, v0}, Lc/t/m/g/cw;->c(Landroid/location/Location;)V

    .line 452
    return-void
.end method

.method public final onNmeaReceived(JLjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x5

    .line 386
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    const-string v0, "TxGpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nmea:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_0

    const-string v1, "$GPRMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "$GNRMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "$BDRMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "$GLRMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "A"

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lc/t/m/g/cw;->f:Landroid/location/Location;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-static {v2}, Lc/t/m/g/cw;->a(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    iget-object v1, p0, Lc/t/m/g/cw;->f:Landroid/location/Location;

    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-static {v2}, Lc/t/m/g/cw;->a(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    const-string v1, "TxGpsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GPRMC:Lat:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {v3}, Lc/t/m/g/cw;->a(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",Lng"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v0, v0, v3

    invoke-static {v0}, Lc/t/m/g/cw;->a(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-boolean v0, p0, Lc/t/m/g/cw;->c:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lc/t/m/g/cw;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/cw;->e:Landroid/location/Location;

    invoke-direct {p0, v0}, Lc/t/m/g/cw;->c(Landroid/location/Location;)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "TxGpsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 470
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    const-string v0, "TxGpsProvider"

    const-string v1, "onProviderDisabled: gps is disabled"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iput v2, p0, Lc/t/m/g/cw;->l:I

    iput v2, p0, Lc/t/m/g/cw;->k:I

    .line 474
    iput v2, p0, Lc/t/m/g/cw;->g:I

    .line 475
    iput-boolean v2, p0, Lc/t/m/g/cw;->h:Z

    .line 476
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/t/m/g/cw;->a:J

    .line 477
    invoke-direct {p0}, Lc/t/m/g/cw;->d()V

    .line 479
    :cond_0
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 461
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const-string v0, "TxGpsProvider"

    const-string v1, "onProviderEnabled: gps is enabled"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x4

    iput v0, p0, Lc/t/m/g/cw;->g:I

    .line 464
    invoke-direct {p0}, Lc/t/m/g/cw;->d()V

    .line 466
    :cond_0
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 457
    return-void
.end method
