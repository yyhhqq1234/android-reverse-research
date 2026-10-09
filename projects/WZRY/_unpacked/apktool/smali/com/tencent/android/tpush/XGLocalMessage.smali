.class public Lcom/tencent/android/tpush/XGLocalMessage;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:J

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:J

.field private x:I

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/tencent/android/tpush/XGLocalMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/XGLocalMessage;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->b:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->c:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->d:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    .line 26
    const-string v0, "00"

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->f:Ljava/lang/String;

    .line 27
    const-string v0, "00"

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->g:Ljava/lang/String;

    .line 28
    iput v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->h:I

    .line 29
    iput v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->i:I

    .line 30
    iput v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->j:I

    .line 31
    iput v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->k:I

    .line 32
    iput v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->l:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->m:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->n:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->o:Ljava/lang/String;

    .line 36
    iput v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->p:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->q:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->r:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->s:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->t:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->u:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "{}"

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->v:Ljava/lang/String;

    .line 44
    iput v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->x:I

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->y:J

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->z:J

    .line 48
    const v0, 0x278d00

    iput v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->A:I

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->A:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->B:J

    return-void
.end method


# virtual methods
.method public getAction_type()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->p:I

    return v0
.end method

.method public getActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getBuilderId()J
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->w:J

    return-wide v0
.end method

.method public getBusiMsgId()J
    .locals 2

    .prologue
    .line 474
    iget-wide v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->z:J

    return-wide v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCustom_content()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 233
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 234
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 235
    iget-object v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    sget-object v1, Lcom/tencent/android/tpush/XGLocalMessage;->a:Ljava/lang/String;

    const-string v2, "XGLocalMessage.getDate()"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 239
    :catch_1
    move-exception v0

    .line 240
    sget-object v1, Lcom/tencent/android/tpush/XGLocalMessage;->a:Ljava/lang/String;

    const-string v2, "XGLocalMessage.getDate()"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpirationTimeMs()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->B:J

    return-wide v0
.end method

.method public getHour()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 159
    const-string v0, "00"

    .line 163
    :goto_0
    return-object v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIcon_res()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon_type()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->k:I

    return v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getLights()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->j:I

    return v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 184
    const-string v0, "00"

    .line 188
    :goto_0
    return-object v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMsgId()J
    .locals 2

    .prologue
    .line 468
    iget-wide v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->y:J

    return-wide v0
.end method

.method public getNotificationId()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->x:I

    return v0
.end method

.method public getPackageDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getRing()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->h:I

    return v0
.end method

.method public getRing_raw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getSmall_icon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle_id()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->l:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->A:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->b:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getVibrate()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->i:I

    return v0
.end method

.method public setAction_type(I)V
    .locals 0

    .prologue
    .line 375
    iput p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->p:I

    .line 376
    return-void
.end method

.method public setActivity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->q:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setBuilderId(J)V
    .locals 1

    .prologue
    .line 218
    iput-wide p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->w:J

    .line 219
    return-void
.end method

.method public setBusiMsgId(J)V
    .locals 1

    .prologue
    .line 477
    iput-wide p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->z:J

    .line 478
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->d:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setCustomContent(Ljava/util/HashMap;)V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 140
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->v:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setExpirationTimeMs(J)V
    .locals 5

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->A:I

    .line 65
    iget v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->A:I

    if-gez v0, :cond_0

    .line 66
    const v0, 0x7fffffff

    iput v0, p0, Lcom/tencent/android/tpush/XGLocalMessage;->A:I

    .line 68
    :cond_0
    iput-wide p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->B:J

    .line 70
    :cond_1
    return-void
.end method

.method public setHour(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->f:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setIcon_res(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->n:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setIcon_type(I)V
    .locals 0

    .prologue
    .line 305
    iput p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->k:I

    .line 306
    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->s:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public setLights(I)V
    .locals 0

    .prologue
    .line 291
    iput p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->j:I

    .line 292
    return-void
.end method

.method public setMin(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->g:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setMsgId(J)V
    .locals 1

    .prologue
    .line 471
    iput-wide p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->y:J

    .line 472
    return-void
.end method

.method public setNotificationId(I)V
    .locals 0

    .prologue
    .line 464
    iput p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->x:I

    .line 465
    return-void
.end method

.method public setPackageDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->t:Ljava/lang/String;

    .line 433
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->u:Ljava/lang/String;

    .line 447
    return-void
.end method

.method public setRing(I)V
    .locals 0

    .prologue
    .line 263
    iput p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->h:I

    .line 264
    return-void
.end method

.method public setRing_raw(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->m:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setSmall_icon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->o:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setStyle_id(I)V
    .locals 0

    .prologue
    .line 319
    iput p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->l:I

    .line 320
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->c:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->b:I

    .line 93
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->r:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setVibrate(I)V
    .locals 0

    .prologue
    .line 277
    iput p1, p0, Lcom/tencent/android/tpush/XGLocalMessage;->i:I

    .line 278
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    const-string v1, "XGLocalMessage [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hour="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", builderId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->w:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msgid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->y:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", busiMsgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/android/tpush/XGLocalMessage;->z:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
