.class public final Lc/t/m/g/dv;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/tencent/map/geolocation/TencentLocation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/t/m/g/dv$a;
    }
.end annotation


# static fields
.field public static final a:Lc/t/m/g/dv;


# instance fields
.field private b:Lc/t/m/g/dr;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lc/t/m/g/dp;

.field private final h:Landroid/os/Bundle;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/location/Location;

.field private final l:J

.field private m:J

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lc/t/m/g/dv$1;

    invoke-direct {v0}, Lc/t/m/g/dv$1;-><init>()V

    .line 108
    new-instance v0, Lc/t/m/g/dv;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lc/t/m/g/dv;-><init>(I)V

    sput-object v0, Lc/t/m/g/dv;->a:Lc/t/m/g/dv;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    .line 128
    const-string v0, "network"

    iput-object v0, p0, Lc/t/m/g/dv;->i:Ljava/lang/String;

    .line 130
    const-string v0, "network"

    iput-object v0, p0, Lc/t/m/g/dv;->j:Ljava/lang/String;

    .line 140
    iput p1, p0, Lc/t/m/g/dv;->c:I

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/dv;->l:J

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/dv;->m:J

    .line 143
    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc/t/m/g/dv;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    .line 128
    const-string v0, "network"

    iput-object v0, p0, Lc/t/m/g/dv;->i:Ljava/lang/String;

    .line 130
    const-string v0, "network"

    iput-object v0, p0, Lc/t/m/g/dv;->j:Ljava/lang/String;

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/dv;->l:J

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/t/m/g/dv;->m:J

    .line 201
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    :try_start_0
    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 204
    new-instance v2, Lc/t/m/g/dr;

    invoke-direct {v2, v1}, Lc/t/m/g/dr;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    const-string v1, "bearing"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/t/m/g/dv;->f:Ljava/lang/String;

    .line 210
    const-string v1, "fackgps"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lc/t/m/g/dv;->d:I

    .line 211
    const-string/jumbo v1, "verifykey"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/t/m/g/dv;->e:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lc/t/m/g/dv;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/t/m/g/dv;->e:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lc/t/m/g/dv;->m:J

    .line 214
    const-string v1, "TxLocation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "server time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lc/t/m/g/dv;->m:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    iget v1, p0, Lc/t/m/g/dv;->d:I

    if-lez v1, :cond_1

    .line 217
    const-string v1, "fake"

    iput-object v1, p0, Lc/t/m/g/dv;->j:Ljava/lang/String;

    .line 218
    iget v1, p0, Lc/t/m/g/dv;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc/t/m/g/dv;->o:I

    .line 221
    :cond_1
    :try_start_1
    const-string v1, "icontrol"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 223
    iget-object v2, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    const-string v3, "icontrol"

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string v2, "TxLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TxLocation control:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    :cond_2
    :goto_0
    const-string v1, "details"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 231
    if-eqz v1, :cond_5

    .line 233
    :try_start_2
    new-instance v0, Lc/t/m/g/dp;

    invoke-direct {v0, v1}, Lc/t/m/g/dp;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 253
    :cond_3
    :goto_1
    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/dt;

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    iget-object v1, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    iget-object v1, v1, Lc/t/m/g/dp;->c:Lc/t/m/g/dt;

    iget-object v1, v1, Lc/t/m/g/dt;->l:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 256
    :cond_4
    return-void

    .line 205
    :catch_0
    move-exception v0

    throw v0

    .line 227
    :catch_1
    move-exception v1

    const-string v1, "TxLocation"

    const-string v2, "parse icontrol failed"

    invoke-static {v1, v2}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :catch_2
    move-exception v0

    .line 235
    const-string v1, "TxLocation"

    const-string v2, "details object not found"

    invoke-static {v1, v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    throw v0

    .line 239
    :cond_5
    const-string v1, "addrdesp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_3

    const-string v1, "detail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    const-string v1, "detail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 249
    new-instance v1, Lc/t/m/g/dp;

    invoke-direct {v1, v0}, Lc/t/m/g/dp;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    goto :goto_1
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc/t/m/g/dv;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lc/t/m/g/dv;J)J
    .locals 1

    .prologue
    .line 26
    iput-wide p1, p0, Lc/t/m/g/dv;->m:J

    return-wide p1
.end method

.method static synthetic a(Lc/t/m/g/dv;Lc/t/m/g/dp;)Lc/t/m/g/dp;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    return-object p1
.end method

.method static synthetic a(Lc/t/m/g/dv;Lc/t/m/g/dr;)Lc/t/m/g/dr;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    return-object p1
.end method

.method public static a(Lc/t/m/g/dv;I)Lc/t/m/g/dv;
    .locals 0

    .prologue
    .line 479
    iput p1, p0, Lc/t/m/g/dv;->n:I

    .line 480
    return-object p0
.end method

.method static synthetic a(Lc/t/m/g/dv;Landroid/location/Location;)Lc/t/m/g/dv;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lc/t/m/g/dv;->k:Landroid/location/Location;

    return-object p0
.end method

.method public static a(Lc/t/m/g/dv;Lc/t/m/g/dj;Z)Lc/t/m/g/dv;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const-wide v6, 0x4062c00000000000L    # 150.0

    .line 439
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lc/t/m/g/dv;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 440
    iget-object v1, p0, Lc/t/m/g/dv;->f:Ljava/lang/String;

    .line 441
    const/4 v0, 0x0

    iget v2, p1, Lc/t/m/g/dj;->f:I

    .line 442
    if-eqz v1, :cond_0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-le v3, v4, :cond_0

    .line 443
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 446
    :cond_0
    iget-object v1, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    .line 447
    if-eqz v1, :cond_2

    .line 449
    :try_start_0
    iget v3, v1, Lc/t/m/g/dr;->d:F

    float-to-double v4, v3

    invoke-static {v4, v5, v0, v2}, Lcom/tencent/tencentmap/lbssdk/service/e;->r(DII)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, v1, Lc/t/m/g/dr;->d:F
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    if-eqz p2, :cond_1

    .line 453
    const-string v0, "fake"

    iput-object v0, p0, Lc/t/m/g/dv;->j:Ljava/lang/String;

    .line 455
    :cond_1
    iget-object v0, p0, Lc/t/m/g/dv;->j:Ljava/lang/String;

    const-string v2, "fake"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    iget v0, v1, Lc/t/m/g/dr;->d:F

    float-to-double v0, v0

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_3

    .line 457
    const-string/jumbo v0, "wifi"

    iput-object v0, p0, Lc/t/m/g/dv;->j:Ljava/lang/String;

    .line 475
    :cond_2
    :goto_1
    return-object p0

    .line 459
    :cond_3
    const-string v0, "cell"

    iput-object v0, p0, Lc/t/m/g/dv;->j:Ljava/lang/String;

    goto :goto_1

    .line 463
    :cond_4
    if-eqz p0, :cond_2

    .line 464
    if-eqz p2, :cond_5

    .line 465
    const-string v0, "fake"

    iput-object v0, p0, Lc/t/m/g/dv;->j:Ljava/lang/String;

    .line 467
    :cond_5
    iget-object v0, p0, Lc/t/m/g/dv;->j:Ljava/lang/String;

    const-string v1, "fake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 468
    invoke-virtual {p0}, Lc/t/m/g/dv;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_6

    .line 469
    const-string/jumbo v0, "wifi"

    iput-object v0, p0, Lc/t/m/g/dv;->j:Ljava/lang/String;

    goto :goto_1

    .line 471
    :cond_6
    const-string v0, "cell"

    iput-object v0, p0, Lc/t/m/g/dv;->j:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lc/t/m/g/dv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lc/t/m/g/dv;->i:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lc/t/m/g/dv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 484
    sget-object v0, Lc/t/m/g/dv;->a:Lc/t/m/g/dv;

    if-ne p0, v0, :cond_0

    .line 485
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "location failed"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_0
    return-void
.end method

.method static synthetic b(Lc/t/m/g/dv;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic b(Lc/t/m/g/dv;I)Lc/t/m/g/dv;
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lc/t/m/g/dv;->c:I

    return-object p0
.end method

.method static synthetic b(Lc/t/m/g/dv;Ljava/lang/String;)Lc/t/m/g/dv;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lc/t/m/g/dv;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lc/t/m/g/dv;)Lc/t/m/g/dv;
    .locals 6

    .prologue
    .line 26
    new-instance v2, Lc/t/m/g/dv;

    const/4 v0, -0x1

    invoke-direct {v2, v0}, Lc/t/m/g/dv;-><init>(I)V

    if-nez p0, :cond_1

    new-instance v0, Lc/t/m/g/dr;

    invoke-direct {v0}, Lc/t/m/g/dr;-><init>()V

    iput-object v0, v2, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    new-instance v1, Lc/t/m/g/dr;

    invoke-direct {v1}, Lc/t/m/g/dr;-><init>()V

    if-eqz v0, :cond_2

    iget-wide v4, v0, Lc/t/m/g/dr;->a:D

    iput-wide v4, v1, Lc/t/m/g/dr;->a:D

    iget-wide v4, v0, Lc/t/m/g/dr;->b:D

    iput-wide v4, v1, Lc/t/m/g/dr;->b:D

    iget-wide v4, v0, Lc/t/m/g/dr;->c:D

    iput-wide v4, v1, Lc/t/m/g/dr;->c:D

    iget v3, v0, Lc/t/m/g/dr;->d:F

    iput v3, v1, Lc/t/m/g/dr;->d:F

    iget-object v3, v0, Lc/t/m/g/dr;->e:Ljava/lang/String;

    iput-object v3, v1, Lc/t/m/g/dr;->e:Ljava/lang/String;

    iget-object v0, v0, Lc/t/m/g/dr;->f:Ljava/lang/String;

    iput-object v0, v1, Lc/t/m/g/dr;->f:Ljava/lang/String;

    :cond_2
    iput-object v1, v2, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    iget v0, p0, Lc/t/m/g/dv;->c:I

    iput v0, v2, Lc/t/m/g/dv;->c:I

    iget-object v0, p0, Lc/t/m/g/dv;->f:Ljava/lang/String;

    iput-object v0, v2, Lc/t/m/g/dv;->f:Ljava/lang/String;

    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-object v0, v2, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    iget-object v0, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, v2, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    iget-object v1, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lc/t/m/g/dp;

    invoke-direct {v1}, Lc/t/m/g/dp;-><init>()V

    iget v3, v0, Lc/t/m/g/dp;->a:I

    iput v3, v1, Lc/t/m/g/dp;->a:I

    iget-object v3, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/dt;

    invoke-static {v3}, Lc/t/m/g/dt;->a(Lc/t/m/g/dt;)Lc/t/m/g/dt;

    move-result-object v3

    iput-object v3, v1, Lc/t/m/g/dp;->c:Lc/t/m/g/dt;

    iget-object v0, v0, Lc/t/m/g/dp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/geolocation/TencentPoi;

    iget-object v4, v1, Lc/t/m/g/dp;->b:Ljava/util/ArrayList;

    new-instance v5, Lc/t/m/g/ds;

    invoke-direct {v5, v0}, Lc/t/m/g/ds;-><init>(Lcom/tencent/map/geolocation/TencentPoi;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lc/t/m/g/dv;Ljava/lang/String;)Lc/t/m/g/dv;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lc/t/m/g/dv;->j:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(I)Lc/t/m/g/dv;
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lc/t/m/g/dv;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lc/t/m/g/dv;->o:I

    .line 269
    return-object p0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lc/t/m/g/dv;->e:Ljava/lang/String;

    .line 593
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 6

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 180
    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 182
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 183
    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    .line 184
    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    .line 186
    iget-object v4, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    iput-wide v0, v4, Lc/t/m/g/dr;->a:D

    .line 187
    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    iput-wide v2, v0, Lc/t/m/g/dr;->b:D

    .line 188
    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    iput-wide v2, v0, Lc/t/m/g/dr;->c:D

    .line 189
    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iput v1, v0, Lc/t/m/g/dr;->d:F

    .line 191
    :cond_0
    return-void
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public final getAccuracy()F
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    iget v0, v0, Lc/t/m/g/dr;->d:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    iget v0, p0, Lc/t/m/g/dv;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    const-string v1, "addrdesp.name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    iget-object v0, v0, Lc/t/m/g/dr;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final getAltitude()D
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    iget-wide v0, v0, Lc/t/m/g/dr;->c:D

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getAreaStat()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    iget v0, v0, Lc/t/m/g/dp;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBearing()F
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lc/t/m/g/dv;->k:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc/t/m/g/dv;->k:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    goto :goto_0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/dt;

    iget-object v0, v0, Lc/t/m/g/dt;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/dt;

    iget-object v0, v0, Lc/t/m/g/dt;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getCoordinateType()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lc/t/m/g/dv;->n:I

    return v0
.end method

.method public final getDirection()D
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    const-string v1, "direction"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 554
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0
.end method

.method public final getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/dt;

    iget-object v0, v0, Lc/t/m/g/dt;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getElapsedRealtime()J
    .locals 2

    .prologue
    .line 412
    iget-wide v0, p0, Lc/t/m/g/dv;->l:J

    return-wide v0
.end method

.method public final getExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getFakeReason()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lc/t/m/g/dv;->o:I

    return v0
.end method

.method public final getLatitude()D
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    iget-wide v0, v0, Lc/t/m/g/dr;->a:D

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getLongitude()D
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    iget-wide v0, v0, Lc/t/m/g/dr;->b:D

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getMotion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    const-string v1, "motion"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    iget v0, p0, Lc/t/m/g/dv;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 310
    iget-object v0, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    const-string v1, "addrdesp.name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/t/m/g/dv;->b:Lc/t/m/g/dr;

    iget-object v0, v0, Lc/t/m/g/dr;->e:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final getNation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/dt;

    iget-object v0, v0, Lc/t/m/g/dt;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getPoiList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/map/geolocation/TencentPoi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    iget-object v1, v1, Lc/t/m/g/dp;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    .line 364
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lc/t/m/g/dv;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/dt;

    iget-object v0, v0, Lc/t/m/g/dt;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getRawData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    const-string/jumbo v1, "wifi_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getRssi()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 379
    iget-object v1, p0, Lc/t/m/g/dv;->k:Landroid/location/Location;

    if-nez v1, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v0

    .line 382
    :cond_1
    iget-object v1, p0, Lc/t/m/g/dv;->k:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 383
    if-eqz v1, :cond_0

    .line 386
    const-string v2, "rssi"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public final getSourceProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lc/t/m/g/dv;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpeed()F
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lc/t/m/g/dv;->k:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc/t/m/g/dv;->k:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    goto :goto_0
.end method

.method public final getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/dt;

    iget-object v0, v0, Lc/t/m/g/dt;->j:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getStreetNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/dt;

    iget-object v0, v0, Lc/t/m/g/dt;->k:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getTime()J
    .locals 2

    .prologue
    .line 403
    iget-wide v0, p0, Lc/t/m/g/dv;->m:J

    return-wide v0
.end method

.method public final getTown()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/dt;

    iget-object v0, v0, Lc/t/m/g/dt;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getVerifyKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lc/t/m/g/dv;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getVillage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/dt;

    iget-object v0, v0, Lc/t/m/g/dt;->i:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final isMockGps()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lc/t/m/g/dv;->d:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "TxLocation{"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    const-string v0, "level="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lc/t/m/g/dv;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const-string v0, "name="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    const-string v0, "address="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    const-string v0, "provider="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const-string v0, "latitude="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const-string v0, "longitude="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    const-string v0, "altitude="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    const-string v0, "accuracy="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getAccuracy()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    const-string v0, "cityCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v0, "areaStat="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getAreaStat()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string v0, "nation="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getNation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string v0, "province="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const-string v0, "city="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v0, "district="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const-string/jumbo v0, "street="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const-string/jumbo v0, "streetNo="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getStreetNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    const-string/jumbo v0, "town="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getTown()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string/jumbo v0, "village="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getVillage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const-string v0, "bearing="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getBearing()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    const-string/jumbo v0, "time="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/t/m/g/dv;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const-string v0, "poilist=["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {p0}, Lc/t/m/g/dv;->getPoiList()Ljava/util/List;

    move-result-object v0

    .line 625
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/geolocation/TencentPoi;

    .line 626
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 628
    :cond_0
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lc/t/m/g/dv;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {p0}, Lc/t/m/g/dv;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lc/t/m/g/dv;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 82
    invoke-virtual {p0}, Lc/t/m/g/dv;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 83
    invoke-virtual {p0}, Lc/t/m/g/dv;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 84
    invoke-virtual {p0}, Lc/t/m/g/dv;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 85
    invoke-virtual {p0}, Lc/t/m/g/dv;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lc/t/m/g/dv;->getNation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lc/t/m/g/dv;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lc/t/m/g/dv;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lc/t/m/g/dv;->getDistrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lc/t/m/g/dv;->getStreet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lc/t/m/g/dv;->getStreetNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/dv;->g:Lc/t/m/g/dp;

    iget-object v0, v0, Lc/t/m/g/dp;->c:Lc/t/m/g/dt;

    iget-object v0, v0, Lc/t/m/g/dt;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lc/t/m/g/dv;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-wide v0, p0, Lc/t/m/g/dv;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-object v0, p0, Lc/t/m/g/dv;->h:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 98
    return-void

    .line 93
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
