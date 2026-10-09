.class public Lcom/tencent/android/tpush/service/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static F:Lcom/tencent/android/tpush/service/a/a;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:Ljava/util/Map;

.field private G:Landroid/content/Context;

.field public a:J

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Ljava/lang/String;

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/a/a;->F:Lcom/tencent/android/tpush/service/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->G:Landroid/content/Context;

    .line 124
    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    .line 126
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->y:I

    .line 128
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->z:I

    .line 130
    const v0, 0xea60

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->A:I

    .line 135
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->B:I

    .line 138
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->C:I

    .line 140
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->D:I

    .line 348
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->G:Landroid/content/Context;

    .line 124
    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    .line 126
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->y:I

    .line 128
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->z:I

    .line 130
    const v0, 0xea60

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->A:I

    .line 135
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->B:I

    .line 138
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->C:I

    .line 140
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->D:I

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->G:Landroid/content/Context;

    .line 36
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/a/a;->a()V

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/tencent/android/tpush/service/a/a;->F:Lcom/tencent/android/tpush/service/a/a;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/tencent/android/tpush/service/a/a;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/a/a;->F:Lcom/tencent/android/tpush/service/a/a;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/tencent/android/tpush/service/a/a;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/android/tpush/service/a/a;->F:Lcom/tencent/android/tpush/service/a/a;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lcom/tencent/android/tpush/service/a/a;->F:Lcom/tencent/android/tpush/service/a/a;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->G:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->G:Landroid/content/Context;

    .line 601
    :goto_0
    return-object v0

    .line 594
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 595
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->G:Landroid/content/Context;

    .line 596
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->G:Landroid/content/Context;

    goto :goto_0

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->G:Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 599
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->G:Landroid/content/Context;

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->G:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 3

    .prologue
    .line 645
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 652
    :goto_0
    return v0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    const-string v1, "XGService"

    const-string v2, "getJsonInt"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 652
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public a()V
    .locals 9

    .prologue
    const v8, 0xea60

    const/16 v7, 0x7530

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 292
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/a/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/a/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/a/a;->a:J

    .line 295
    const-string v0, "recTo"

    invoke-virtual {p0, v0, v7}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->b:I

    .line 296
    const-string v0, "hbIntvl"

    const v1, 0x493cc

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->c:I

    .line 297
    const-string v0, "httpHbIntvl"

    const v1, 0x927c0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->d:I

    .line 298
    const-string v0, "stIntvl"

    const v1, 0x337f980

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->e:I

    .line 299
    const-string v0, "cnMsgExp"

    invoke-virtual {p0, v0, v8}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->f:I

    .line 301
    const-string v0, "fqcSuc"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->g:I

    .line 302
    const-string v0, "fqcFal"

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->h:I

    .line 303
    const-string v0, "rptIntvl"

    const/16 v1, 0x4b0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->i:I

    .line 304
    const-string v0, "rptMaxCnt"

    invoke-virtual {p0, v0, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->j:I

    .line 305
    const-string v0, "httpRtCnt"

    invoke-virtual {p0, v0, v5}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->k:I

    .line 307
    const-string v0, "ackMaxCnt"

    invoke-virtual {p0, v0, v5}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->l:I

    .line 308
    const-string v0, "ackDuration"

    const v1, 0x2bf20

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->m:I

    .line 310
    const-string v0, "loadIpIntvl"

    const v1, 0x44aa200

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->n:I

    .line 312
    const-string v0, "redirectConnectTime"

    invoke-virtual {p0, v0, v7}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->o:I

    .line 313
    const-string v0, "redirectSoTime"

    const/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->p:I

    .line 314
    const-string/jumbo v0, "strategyExpiredTime"

    const/16 v1, 0x5a0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->q:I

    .line 315
    const-string v0, "rptLive"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->v:I

    .line 316
    const-string v0, "rptLiveIntvl"

    const/16 v1, 0xe10

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->w:I

    .line 318
    const-string v0, "logFileSizeLimit"

    const/high16 v1, 0x40000

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->s:I

    .line 320
    const-string v0, "errCount"

    invoke-virtual {p0, v0, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->t:I

    .line 321
    const-string v0, "logUploadDomain"

    const-string v1, "183.61.46.193"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;

    .line 323
    const-string/jumbo v0, "stopXG"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    .line 327
    const-string v0, "pullup_packges"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->E:Ljava/util/Map;

    .line 334
    :cond_0
    const-string v0, "enableNewWd"

    invoke-virtual {p0, v0, v4}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->y:I

    .line 335
    const-string v0, "report"

    invoke-virtual {p0, v0, v4}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->B:I

    .line 337
    const-string v0, "ABT"

    invoke-virtual {p0, v0, v4}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->C:I

    .line 339
    const-string v0, "enable.monitor"

    invoke-virtual {p0, v0, v4}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->z:I

    .line 340
    const-string v0, "m.freq"

    invoke-virtual {p0, v0, v8}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->A:I

    .line 342
    const-string v0, "httpdns"

    invoke-virtual {p0, v0, v4}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->D:I

    .line 344
    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->G:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/android/tpush/service/a/a;->b()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->G:Landroid/content/Context;

    const-string v1, "confVer"

    invoke-virtual {p0, v1}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 559
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/16 v2, 0x7530

    const/16 v1, 0xe10

    const/4 v0, 0x5

    const/4 v3, 0x3

    .line 357
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 358
    const-string v4, "confVer"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/tencent/android/tpush/service/a/a;->a:J

    .line 359
    iget-wide v4, p0, Lcom/tencent/android/tpush/service/a/a;->a:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_4

    const-wide/16 v4, 0x1

    :goto_0
    iput-wide v4, p0, Lcom/tencent/android/tpush/service/a/a;->a:J

    .line 361
    const-string v4, "recTo"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->b:I

    .line 362
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->b:I

    if-nez v4, :cond_5

    move v4, v2

    :goto_1
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->b:I

    .line 364
    const-string v4, "hbIntvl"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->c:I

    .line 365
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->c:I

    if-nez v4, :cond_6

    const v4, 0x493cc

    :goto_2
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->c:I

    .line 367
    const-string v4, "httpHbIntvl"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->d:I

    .line 368
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->d:I

    if-nez v4, :cond_7

    const v4, 0x927c0

    :goto_3
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->d:I

    .line 370
    const-string v4, "stIntvl"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->e:I

    .line 371
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->e:I

    if-nez v4, :cond_8

    const v4, 0x337f980

    :goto_4
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->e:I

    .line 373
    const-string v4, "cnMsgExp"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->f:I

    .line 374
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->f:I

    if-nez v4, :cond_9

    const v4, 0xea60

    :goto_5
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->f:I

    .line 376
    const-string v4, "fqcSuc"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->g:I

    .line 377
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->g:I

    if-nez v4, :cond_a

    const/16 v4, 0xa

    :goto_6
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->g:I

    .line 379
    const-string v4, "fqcFal"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->h:I

    .line 380
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->h:I

    if-nez v4, :cond_b

    const/16 v4, 0x64

    :goto_7
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->h:I

    .line 382
    const-string v4, "rptIntvl"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->i:I

    .line 383
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->i:I

    if-nez v4, :cond_c

    const/16 v4, 0x4b0

    :goto_8
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->i:I

    .line 385
    const-string v4, "rptMaxCnt"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->j:I

    .line 386
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->j:I

    if-nez v4, :cond_d

    move v4, v0

    :goto_9
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->j:I

    .line 388
    const-string v4, "httpRtCnt"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->k:I

    .line 389
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->k:I

    if-nez v4, :cond_e

    move v4, v3

    :goto_a
    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->k:I

    .line 391
    const-string v4, "ackMaxCnt"

    invoke-virtual {p0, v4, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v4

    iput v4, p0, Lcom/tencent/android/tpush/service/a/a;->l:I

    .line 392
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->l:I

    if-nez v4, :cond_f

    :goto_b
    iput v3, p0, Lcom/tencent/android/tpush/service/a/a;->l:I

    .line 394
    const-string v3, "ackDuration"

    invoke-virtual {p0, v3, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/tencent/android/tpush/service/a/a;->m:I

    .line 395
    iget v3, p0, Lcom/tencent/android/tpush/service/a/a;->m:I

    if-nez v3, :cond_10

    const v3, 0x2bf20

    :goto_c
    iput v3, p0, Lcom/tencent/android/tpush/service/a/a;->m:I

    .line 397
    const-string v3, "loadIpIntvl"

    invoke-virtual {p0, v3, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/tencent/android/tpush/service/a/a;->n:I

    .line 398
    iget v3, p0, Lcom/tencent/android/tpush/service/a/a;->n:I

    if-nez v3, :cond_11

    const v3, 0x44aa200

    :goto_d
    iput v3, p0, Lcom/tencent/android/tpush/service/a/a;->n:I

    .line 400
    const-string v3, "redirectConnectTime"

    invoke-virtual {p0, v3, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    iput v3, p0, Lcom/tencent/android/tpush/service/a/a;->o:I

    .line 401
    iget v3, p0, Lcom/tencent/android/tpush/service/a/a;->o:I

    if-nez v3, :cond_12

    :goto_e
    iput v2, p0, Lcom/tencent/android/tpush/service/a/a;->o:I

    .line 403
    const-string v2, "redirectSoTime"

    invoke-virtual {p0, v2, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Lcom/tencent/android/tpush/service/a/a;->p:I

    .line 404
    iget v2, p0, Lcom/tencent/android/tpush/service/a/a;->p:I

    if-nez v2, :cond_13

    const/16 v2, 0x4e20

    :goto_f
    iput v2, p0, Lcom/tencent/android/tpush/service/a/a;->p:I

    .line 406
    const-string/jumbo v2, "strategyExpiredTime"

    invoke-virtual {p0, v2, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Lcom/tencent/android/tpush/service/a/a;->q:I

    .line 407
    iget v2, p0, Lcom/tencent/android/tpush/service/a/a;->q:I

    if-nez v2, :cond_14

    const/16 v2, 0x5a0

    :goto_10
    iput v2, p0, Lcom/tencent/android/tpush/service/a/a;->q:I

    .line 409
    const-string v2, "rptLive"

    invoke-virtual {p0, v2, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Lcom/tencent/android/tpush/service/a/a;->v:I

    .line 410
    iget v2, p0, Lcom/tencent/android/tpush/service/a/a;->v:I

    if-nez v2, :cond_15

    const/4 v2, 0x0

    :goto_11
    iput v2, p0, Lcom/tencent/android/tpush/service/a/a;->v:I

    .line 412
    const-string v2, "rptLiveIntvl"

    invoke-virtual {p0, v2, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Lcom/tencent/android/tpush/service/a/a;->w:I

    .line 413
    iget v2, p0, Lcom/tencent/android/tpush/service/a/a;->w:I

    if-ne v2, v1, :cond_16

    :goto_12
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->w:I

    .line 415
    const-string v1, "logLevel"

    invoke-virtual {p0, v1, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->r:I

    .line 418
    const-string v1, "logFileSizeLimit"

    invoke-virtual {p0, v1, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->s:I

    .line 419
    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->s:I

    if-nez v1, :cond_17

    const/high16 v1, 0x40000

    :goto_13
    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->s:I

    .line 421
    const-string v1, "errCount"

    invoke-virtual {p0, v1, v6}, Lcom/tencent/android/tpush/service/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    iput v1, p0, Lcom/tencent/android/tpush/service/a/a;->t:I

    .line 422
    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->t:I

    if-nez v1, :cond_18

    :goto_14
    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->t:I

    .line 424
    const-string v0, "logUploadDomain"

    invoke-virtual {p0, v0, v6}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "183.61.46.193"

    :goto_15
    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;

    .line 427
    const-string v0, "enableNewWd"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->y:I

    .line 428
    const-string v0, "report"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->B:I

    .line 429
    const-string/jumbo v0, "stopXG"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    .line 431
    const-string v0, "ABT"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->C:I

    .line 433
    const-string v0, "enable.monitor"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->z:I

    .line 434
    const-string v0, "m.freq"

    const v1, 0xea60

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->A:I

    .line 436
    const-string v0, "httpdns"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/android/tpush/service/a/a;->D:I

    .line 444
    const-string v0, "st.kv"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    const-string v1, "sp.kv"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    const-string v2, "pullup_packges"

    const-string v3, ""

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-static {v2}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 452
    invoke-virtual {p0, v2}, Lcom/tencent/android/tpush/service/a/a;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/android/tpush/service/a/a;->E:Ljava/util/Map;

    .line 454
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v3

    const-string v4, "pullup_packges"

    invoke-virtual {p0, v4}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_0
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "confVer"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/tencent/android/tpush/service/a/a;->a:J

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 461
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "recTo"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->b:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 462
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "hbIntvl"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->c:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 463
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "httpHbIntvl"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->d:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 464
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "stIntvl"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->e:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 465
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "cnMsgExp"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->f:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 468
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "fqcSuc"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->g:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 471
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "fqcFal"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->h:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 474
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rptIntvl"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->i:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 477
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rptMaxCnt"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->j:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 480
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "httpRtCnt"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->k:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 483
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ackMaxCnt"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->l:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 486
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ackDuration"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->m:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 489
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "loadIpIntvl"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->n:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 492
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "redirectConnectTime"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->o:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 494
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "redirectSoTime"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->p:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 496
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "strategyExpiredTime"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->q:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 498
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rptLive"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->v:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 500
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rptLiveIntvl"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->w:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 502
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "logLevel"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->r:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 504
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "logFileSizeLimit"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->s:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 506
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "errCount"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->t:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 507
    iget-object v2, p0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 509
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "stopXG"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_1
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "enableNewWd"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->y:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 514
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "report"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->B:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 516
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "enable.monitor"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->z:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 517
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "m.freq"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->A:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 519
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "httpdns"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->D:I

    invoke-static {v2, v3, v4}, Lcom/tencent/android/tpush/common/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 521
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 522
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/service/a/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 525
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 526
    invoke-direct {p0}, Lcom/tencent/android/tpush/service/a/a;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 532
    :cond_3
    :goto_16
    return-void

    .line 359
    :cond_4
    iget-wide v4, p0, Lcom/tencent/android/tpush/service/a/a;->a:J

    goto/16 :goto_0

    .line 362
    :cond_5
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->b:I

    goto/16 :goto_1

    .line 365
    :cond_6
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->c:I

    goto/16 :goto_2

    .line 368
    :cond_7
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->d:I

    goto/16 :goto_3

    .line 371
    :cond_8
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->e:I

    goto/16 :goto_4

    .line 374
    :cond_9
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->f:I

    goto/16 :goto_5

    .line 377
    :cond_a
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->g:I

    goto/16 :goto_6

    .line 380
    :cond_b
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->h:I

    goto/16 :goto_7

    .line 383
    :cond_c
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->i:I

    goto/16 :goto_8

    .line 386
    :cond_d
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->j:I

    goto/16 :goto_9

    .line 389
    :cond_e
    iget v4, p0, Lcom/tencent/android/tpush/service/a/a;->k:I

    goto/16 :goto_a

    .line 392
    :cond_f
    iget v3, p0, Lcom/tencent/android/tpush/service/a/a;->l:I

    goto/16 :goto_b

    .line 395
    :cond_10
    iget v3, p0, Lcom/tencent/android/tpush/service/a/a;->m:I

    goto/16 :goto_c

    .line 398
    :cond_11
    iget v3, p0, Lcom/tencent/android/tpush/service/a/a;->n:I

    goto/16 :goto_d

    .line 401
    :cond_12
    iget v2, p0, Lcom/tencent/android/tpush/service/a/a;->o:I

    goto/16 :goto_e

    .line 404
    :cond_13
    iget v2, p0, Lcom/tencent/android/tpush/service/a/a;->p:I

    goto/16 :goto_f

    .line 407
    :cond_14
    iget v2, p0, Lcom/tencent/android/tpush/service/a/a;->q:I

    goto/16 :goto_10

    .line 410
    :cond_15
    iget v2, p0, Lcom/tencent/android/tpush/service/a/a;->v:I

    goto/16 :goto_11

    .line 413
    :cond_16
    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->w:I

    goto/16 :goto_12

    .line 419
    :cond_17
    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->s:I

    goto/16 :goto_13

    .line 422
    :cond_18
    iget v0, p0, Lcom/tencent/android/tpush/service/a/a;->t:I

    goto/16 :goto_14

    .line 425
    :cond_19
    iget-object v0, p0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_15

    .line 529
    :catch_0
    move-exception v0

    .line 530
    const-string v1, "XGService"

    const-string v2, "parseValue failed."

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public b()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x1

    .line 541
    iget-object v2, p0, Lcom/tencent/android/tpush/service/a/a;->G:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/tencent/android/tpush/service/a/a;->G:Landroid/content/Context;

    const-string v3, "confVer"

    invoke-virtual {p0, v3}, Lcom/tencent/android/tpush/service/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/tencent/android/tpush/common/n;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 545
    :cond_0
    return-wide v0
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 656
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 663
    :goto_0
    return-object v0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    const-string v1, "XGService"

    const-string v2, "getJsonStr"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 663
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/util/Map;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 564
    :try_start_0
    invoke-static {p1}, Lcom/tencent/android/tpush/common/t;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-object v0

    .line 567
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 570
    if-eqz v3, :cond_0

    array-length v1, v3

    if-lez v1, :cond_0

    .line 571
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 572
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 574
    aget-object v4, v3, v2

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 576
    if-eqz v4, :cond_2

    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 577
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 581
    goto :goto_0

    .line 583
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.tencent.tpus."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationManager [context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/a/a;->G:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", configurationVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/android/tpush/service/a/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receiveTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heartbeatInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpHeartbeatInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speedTestInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelMessageExpires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", freqencySuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", freqencyFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reportInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reportMaxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ackMaxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ackDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loadIpInerval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redirectConnectTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redirectSoTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strategyExpiredTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logFileSizeLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logUploadDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/a/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rptLive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rptLiveIntvl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableXG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/a/a;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableNewWd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableMonitor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", monitorFreg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHttpDNSEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", abTestVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/service/a/a;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
