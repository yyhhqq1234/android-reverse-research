.class public final Lcom/tencent/map/geolocation/TencentLocationRequest;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field public static final REQUEST_LEVEL_ADMIN_AREA:I = 0x3

.field public static final REQUEST_LEVEL_FORMATTED_ADDRESS:I = 0x5

.field public static final REQUEST_LEVEL_GEO:I = 0x0

.field public static final REQUEST_LEVEL_GLOBAL_ADMIN_AREA:I = 0x7

.field public static final REQUEST_LEVEL_NAME:I = 0x1

.field public static final REQUEST_LEVEL_POI:I = 0x4


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/tencent/map/geolocation/TencentLocationRequest;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-wide v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->a:J

    iput-wide v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->a:J

    .line 61
    iget v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->c:I

    iput v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->c:I

    .line 62
    iget-boolean v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->d:Z

    iput-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->d:Z

    .line 63
    iget-boolean v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->e:Z

    iput-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->e:Z

    .line 64
    iget v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->f:I

    iput v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->f:I

    .line 65
    iget-wide v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->b:J

    iput-wide v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->b:J

    .line 66
    iget-boolean v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->g:Z

    iput-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->g:Z

    .line 67
    iget-boolean v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->h:Z

    iput-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->h:Z

    .line 68
    iget-object v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->j:Landroid/os/Bundle;

    .line 70
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->j:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public static copy(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationRequest;)V
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->a:J

    iput-wide v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->a:J

    .line 86
    iget v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->c:I

    iput v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->c:I

    .line 87
    iget-boolean v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->d:Z

    iput-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->d:Z

    .line 88
    iget-boolean v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->e:Z

    iput-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->e:Z

    .line 89
    iget v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->f:I

    iput v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->f:I

    .line 90
    iget-object v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Ljava/lang/String;

    .line 91
    iget-wide v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->b:J

    iput-wide v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->b:J

    .line 92
    iget-boolean v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->g:Z

    iput-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->g:Z

    .line 93
    iget-boolean v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->h:Z

    iput-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->h:Z

    .line 94
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->j:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 95
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->j:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method public static create()Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 112
    new-instance v0, Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-direct {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;-><init>()V

    .line 113
    const-wide/16 v2, 0x2710

    iput-wide v2, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->a:J

    .line 114
    iput v1, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->c:I

    .line 115
    iput-boolean v1, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->d:Z

    .line 116
    iput-boolean v1, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->h:Z

    .line 117
    iput-boolean v4, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->e:Z

    .line 118
    const v1, 0x7fffffff

    iput v1, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->f:I

    .line 119
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->b:J

    .line 120
    iput-boolean v4, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->g:Z

    .line 121
    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Ljava/lang/String;

    .line 122
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->j:Landroid/os/Bundle;

    .line 123
    return-object v0
.end method


# virtual methods
.method public final getCheckInterval()J
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->b:J

    return-wide v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->j:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getInterval()J
    .locals 2

    .prologue
    .line 285
    iget-wide v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->a:J

    return-wide v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->j:Landroid/os/Bundle;

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    if-nez v0, :cond_0

    .line 275
    const-string v0, ""

    .line 277
    :cond_0
    return-object v0
.end method

.method public final getQQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestLevel()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->c:I

    return v0
.end method

.method public final isAllowCache()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->d:Z

    return v0
.end method

.method public final isAllowDirection()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->e:Z

    return v0
.end method

.method public final isAllowGPS()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->h:Z

    return v0
.end method

.method public final isAllowPedometer()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->g:Z

    return v0
.end method

.method public final setAllowCache(Z)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 0

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->d:Z

    .line 212
    return-object p0
.end method

.method public final setAllowDirection(Z)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 0

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->e:Z

    .line 225
    return-object p0
.end method

.method public final setAllowGPS(Z)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->h:Z

    .line 163
    return-object p0
.end method

.method public final setAllowPedometer(Z)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 0

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->g:Z

    .line 235
    return-object p0
.end method

.method public final setCheckInterval(J)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 3

    .prologue
    .line 195
    const-wide/16 v0, 0x7530

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interval should >= 30*1000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iput-wide p1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->b:J

    .line 199
    return-object p0
.end method

.method public final setInterval(J)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 3

    .prologue
    .line 146
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interval should >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iput-wide p1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->a:J

    .line 150
    return-object p0
.end method

.method public final setPhoneNumber(Ljava/lang/String;)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 2

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    const-string p1, ""

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->j:Landroid/os/Bundle;

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-object p0
.end method

.method public final setQQ(Ljava/lang/String;)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Ljava/lang/String;

    .line 247
    return-object p0
.end method

.method public final setRequestLevel(I)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 3

    .prologue
    .line 181
    invoke-static {p1}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->isAllowedLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iput p1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->c:I

    .line 187
    return-object p0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request_level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TencentLocationRequest [mInterval="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCheckInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNumUpdates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowStepCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowGps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQQ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
