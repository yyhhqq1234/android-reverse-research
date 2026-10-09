.class Lcom/tencent/mna/b/d/c;
.super Ljava/lang/Object;
.source "DiagnoseRecord.java"


# instance fields
.field private A:J

.field private B:J

.field private C:I

.field private D:I

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Z

.field private K:I

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:Ljava/lang/String;

.field private V:Lcom/tencent/mna/KartinRet;

.field final a:Ljava/lang/String;

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:J

.field protected j:J

.field protected k:J

.field protected l:J

.field protected m:J

.field protected n:J

.field protected o:J

.field protected p:J

.field protected q:J

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const-wide/16 v0, -0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v2, p0, Lcom/tencent/mna/b/d/c;->f:I

    .line 60
    iput v2, p0, Lcom/tencent/mna/b/d/c;->h:I

    .line 72
    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->i:J

    .line 73
    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->A:J

    .line 74
    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->j:J

    .line 75
    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->B:J

    .line 78
    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->k:J

    .line 79
    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->l:J

    .line 80
    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->m:J

    .line 81
    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->n:J

    .line 84
    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->o:J

    .line 85
    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->p:J

    .line 88
    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->q:J

    .line 93
    iput v3, p0, Lcom/tencent/mna/b/d/c;->E:I

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/b/d/c;->F:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/b/d/c;->G:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/b/d/c;->H:Ljava/lang/String;

    .line 104
    iput-boolean v3, p0, Lcom/tencent/mna/b/d/c;->J:Z

    .line 117
    const-string v0, "-1"

    iput-object v0, p0, Lcom/tencent/mna/b/d/c;->U:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/tencent/mna/b/d/c;->I:Ljava/lang/String;

    .line 124
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/tencent/mna/b/d/c;->a:Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/tencent/mna/KartinRet;

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/mna/KartinRet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    .line 126
    return-void

    .line 124
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private a(IIILcom/tencent/mna/base/f/r$a;Lcom/tencent/mna/base/d/b$a;IILjava/lang/String;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 381
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 383
    iput p2, p0, Lcom/tencent/mna/b/d/c;->e:I

    .line 384
    if-lez p3, :cond_0

    if-le p3, p2, :cond_0

    .line 385
    iput p3, p0, Lcom/tencent/mna/b/d/c;->e:I

    .line 387
    :cond_0
    iput p3, p0, Lcom/tencent/mna/b/d/c;->R:I

    .line 388
    iput p2, p0, Lcom/tencent/mna/b/d/c;->S:I

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiagnoseRecord updateDiagnoseResultStats ping: mJumpRouter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 392
    iget v0, p4, Lcom/tencent/mna/base/f/r$a;->a:I

    iput v0, p0, Lcom/tencent/mna/b/d/c;->h:I

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiagnoseRecord updateDiagnoseResultStats terminal: mJumpTerminal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 397
    :cond_1
    if-eqz p5, :cond_2

    .line 398
    iget v0, p5, Lcom/tencent/mna/base/d/b$a;->d:I

    iput v0, p0, Lcom/tencent/mna/b/d/c;->d:I

    iput v0, p0, Lcom/tencent/mna/b/d/c;->D:I

    .line 399
    iget-object v0, p5, Lcom/tencent/mna/base/d/b$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mna/b/d/c;->G:Ljava/lang/String;

    .line 400
    iget-object v0, p5, Lcom/tencent/mna/base/d/b$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mna/b/d/c;->H:Ljava/lang/String;

    .line 401
    iget-wide v0, p5, Lcom/tencent/mna/base/d/b$a;->a:J

    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->o:J

    .line 402
    iget-wide v0, p5, Lcom/tencent/mna/base/d/b$a;->b:J

    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->p:J

    .line 403
    iget-wide v0, p5, Lcom/tencent/mna/base/d/b$a;->c:J

    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->q:J

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DiagnoseRecord updateDiagnoseResultStats direct: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mRealDirect:"

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDirectDelayStat:"

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPushLossStat:"

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDirectSndDrops:"

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->o:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDirectSndJumps:"

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->p:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDirectPushDrops:"

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->q:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 414
    :cond_2
    iput p9, p0, Lcom/tencent/mna/b/d/c;->T:I

    .line 415
    iput-object p10, p0, Lcom/tencent/mna/b/d/c;->U:Ljava/lang/String;

    .line 418
    if-gtz p6, :cond_3

    .line 419
    const/4 v0, -0x2

    iput v0, p0, Lcom/tencent/mna/b/d/c;->g:I

    iput v0, p0, Lcom/tencent/mna/b/d/c;->C:I

    .line 423
    :goto_0
    iput-object p8, p0, Lcom/tencent/mna/b/d/c;->F:Ljava/lang/String;

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiagnoseRecord updateDiagnoseResultStats export: mRealExport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWlanNextHopIp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 429
    invoke-direct {p0, p1}, Lcom/tencent/mna/b/d/c;->c(I)V

    .line 430
    return-void

    .line 421
    :cond_3
    iput p7, p0, Lcom/tencent/mna/b/d/c;->g:I

    iput p7, p0, Lcom/tencent/mna/b/d/c;->C:I

    goto :goto_0
.end method

.method private a(ILcom/tencent/mna/base/f/j$b;Lcom/tencent/mna/base/f/r$a;III)V
    .locals 6

    .prologue
    .line 328
    if-eqz p2, :cond_1

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiagnoseRecord updateSndRcvPkStats "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 330
    invoke-static {p2}, Lcom/tencent/mna/base/f/j;->a(Lcom/tencent/mna/base/f/j$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Lcom/tencent/mna/base/f/j$b;->a()Lcom/tencent/mna/base/f/j$a;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_1

    .line 335
    invoke-static {p1}, Lcom/tencent/mna/base/f/l;->d(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    iget-wide v2, v0, Lcom/tencent/mna/base/f/j$a;->i:J

    iput-wide v2, p0, Lcom/tencent/mna/b/d/c;->m:J

    .line 337
    iget-wide v2, v0, Lcom/tencent/mna/base/f/j$a;->j:J

    iput-wide v2, p0, Lcom/tencent/mna/b/d/c;->n:J

    .line 338
    iget-wide v2, v0, Lcom/tencent/mna/base/f/j$a;->e:J

    iput-wide v2, p0, Lcom/tencent/mna/b/d/c;->k:J

    .line 339
    iget-wide v2, v0, Lcom/tencent/mna/base/f/j$a;->f:J

    iput-wide v2, p0, Lcom/tencent/mna/b/d/c;->l:J

    .line 340
    iget-wide v2, v0, Lcom/tencent/mna/base/f/j$a;->h:J

    iput-wide v2, p0, Lcom/tencent/mna/b/d/c;->B:J

    .line 341
    iget-wide v0, v0, Lcom/tencent/mna/base/f/j$a;->d:J

    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->A:J

    .line 358
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DiagnoseRecord updateSndRcvPkStats "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mSndErrs:"

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->m:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSndDrops:"

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->n:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRcvErrs:"

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRcvDrops:"

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->l:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrigSndPk:"

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->B:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrigRcvPk:"

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->A:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 368
    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/b/d/c;->a(ILcom/tencent/mna/base/f/r$a;III)V

    .line 372
    :cond_1
    return-void

    .line 342
    :cond_2
    invoke-static {p1}, Lcom/tencent/mna/base/f/l;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 343
    iget-wide v2, v0, Lcom/tencent/mna/base/f/j$a;->q:J

    iput-wide v2, p0, Lcom/tencent/mna/b/d/c;->m:J

    .line 344
    iget-wide v2, v0, Lcom/tencent/mna/base/f/j$a;->r:J

    iput-wide v2, p0, Lcom/tencent/mna/b/d/c;->n:J

    .line 345
    iget-wide v2, v0, Lcom/tencent/mna/base/f/j$a;->m:J

    iput-wide v2, p0, Lcom/tencent/mna/b/d/c;->k:J

    .line 346
    iget-wide v2, v0, Lcom/tencent/mna/base/f/j$a;->n:J

    iput-wide v2, p0, Lcom/tencent/mna/b/d/c;->l:J

    .line 347
    iget-wide v2, v0, Lcom/tencent/mna/base/f/j$a;->p:J

    iput-wide v2, p0, Lcom/tencent/mna/b/d/c;->B:J

    .line 348
    iget-wide v0, v0, Lcom/tencent/mna/base/f/j$a;->l:J

    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->A:J

    goto :goto_0

    .line 349
    :cond_3
    invoke-static {p1}, Lcom/tencent/mna/base/f/l;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    iget-wide v2, v0, Lcom/tencent/mna/base/f/j$a;->y:J

    iput-wide v2, p0, Lcom/tencent/mna/b/d/c;->m:J

    .line 351
    iget-wide v2, v0, Lcom/tencent/mna/base/f/j$a;->z:J

    iput-wide v2, p0, Lcom/tencent/mna/b/d/c;->n:J

    .line 352
    iget-wide v2, v0, Lcom/tencent/mna/base/f/j$a;->u:J

    iput-wide v2, p0, Lcom/tencent/mna/b/d/c;->k:J

    .line 353
    iget-wide v2, v0, Lcom/tencent/mna/base/f/j$a;->v:J

    iput-wide v2, p0, Lcom/tencent/mna/b/d/c;->l:J

    .line 354
    iget-wide v2, v0, Lcom/tencent/mna/base/f/j$a;->x:J

    iput-wide v2, p0, Lcom/tencent/mna/b/d/c;->B:J

    .line 355
    iget-wide v0, v0, Lcom/tencent/mna/base/f/j$a;->t:J

    iput-wide v0, p0, Lcom/tencent/mna/b/d/c;->A:J

    goto/16 :goto_0
.end method

.method private a(ILcom/tencent/mna/base/f/r$a;III)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 434
    .line 436
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget v0, p2, Lcom/tencent/mna/base/f/r$a;->a:I

    if-lez v0, :cond_0

    .line 437
    iget v0, p2, Lcom/tencent/mna/base/f/r$a;->a:I

    iget v1, p2, Lcom/tencent/mna/base/f/r$a;->b:I

    iget v2, p2, Lcom/tencent/mna/base/f/r$a;->a:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    .line 438
    iget v0, p2, Lcom/tencent/mna/base/f/r$a;->a:I

    move v2, v1

    .line 440
    :goto_0
    iget-wide v4, p0, Lcom/tencent/mna/b/d/c;->B:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    int-to-long v6, p3

    sub-long/2addr v4, v6

    int-to-long v6, p5

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tencent/mna/b/d/c;->j:J

    .line 441
    iget-wide v4, p0, Lcom/tencent/mna/b/d/c;->A:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    int-to-long v6, p4

    sub-long/2addr v4, v6

    int-to-long v6, p5

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tencent/mna/b/d/c;->i:J

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DiagnoseRecord correctSndRcvPkStats "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "mSndPk:"

    .line 443
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/tencent/mna/b/d/c;->j:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", getRouterInfoSndPk:"

    .line 444
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", directSndCount:"

    .line 445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", exportCount:"

    .line 446
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DiagnoseRecord correctSndRcvPkStats "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "mRcvPk:"

    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getRouterInfoRcvPk:"

    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", directRcvCount:"

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exportCount:"

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 454
    return-void

    :cond_0
    move v0, v1

    move v2, v1

    goto/16 :goto_0
.end method

.method private a(ZI)V
    .locals 2

    .prologue
    .line 589
    const/16 v0, -0x64

    .line 591
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->network_star:I

    if-ge v1, p2, :cond_0

    .line 593
    invoke-static {}, Lcom/tencent/mna/base/f/p;->b()V

    .line 596
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_0
    invoke-static {}, Lcom/tencent/mna/base/f/p;->c()I

    move-result v0

    .line 602
    :cond_0
    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iput v0, v1, Lcom/tencent/mna/KartinRet;->wifi_num:I

    .line 603
    return-void

    .line 597
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a([Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;)V
    .locals 8

    .prologue
    .line 489
    new-instance v1, Lcom/tencent/mna/b/d/f;

    invoke-direct {p0}, Lcom/tencent/mna/b/d/c;->e()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/mna/b/d/f;-><init>(Ljava/util/Map;)V

    .line 491
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 492
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KartinRule routerRule:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 493
    iget-object v4, v3, Lcom/tencent/mna/b/d/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/tencent/mna/b/d/f;->a(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 494
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v3, Lcom/tencent/mna/b/d/g;->d:I

    iput v2, v0, Lcom/tencent/mna/KartinRet;->router_status:I

    .line 495
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v2, v3, Lcom/tencent/mna/b/d/g;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mna/KartinRet;->router_desc:Ljava/lang/String;

    .line 500
    :cond_0
    array-length v2, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, p2, v0

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KartinRule terminalRule:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 502
    iget-object v4, v3, Lcom/tencent/mna/b/d/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/tencent/mna/b/d/f;->a(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    .line 503
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v3, Lcom/tencent/mna/b/d/g;->d:I

    iput v2, v0, Lcom/tencent/mna/KartinRet;->terminal_status:I

    .line 504
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v2, v3, Lcom/tencent/mna/b/d/g;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mna/KartinRet;->terminal_desc:Ljava/lang/String;

    .line 509
    :cond_1
    array-length v2, p3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, p3, v0

    .line 510
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KartinRule directRule:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 511
    iget-object v4, v3, Lcom/tencent/mna/b/d/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/tencent/mna/b/d/f;->a(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    .line 512
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v3, Lcom/tencent/mna/b/d/g;->d:I

    iput v2, v0, Lcom/tencent/mna/KartinRet;->direct_status:I

    .line 513
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v2, v3, Lcom/tencent/mna/b/d/g;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mna/KartinRet;->direct_desc:Ljava/lang/String;

    .line 518
    :cond_2
    array-length v2, p4

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_3

    aget-object v3, p4, v0

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KartinRule exportRule:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 520
    iget-object v4, v3, Lcom/tencent/mna/b/d/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/tencent/mna/b/d/f;->a(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    .line 521
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v3, Lcom/tencent/mna/b/d/g;->d:I

    iput v2, v0, Lcom/tencent/mna/KartinRet;->export_status:I

    .line 522
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v2, v3, Lcom/tencent/mna/b/d/g;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mna/KartinRet;->export_desc:Ljava/lang/String;

    .line 527
    :cond_3
    array-length v2, p5

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_4

    aget-object v3, p5, v0

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KartinRule networkRule:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 529
    iget-object v4, v3, Lcom/tencent/mna/b/d/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/tencent/mna/b/d/f;->a(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_b

    .line 530
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v3, Lcom/tencent/mna/b/d/g;->d:I

    iput v2, v0, Lcom/tencent/mna/KartinRet;->netinfo_status:I

    .line 531
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v2, v3, Lcom/tencent/mna/b/d/g;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mna/KartinRet;->netinfo_desc:Ljava/lang/String;

    .line 536
    :cond_4
    array-length v2, p6

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_5

    aget-object v3, p6, v0

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KartinRule signalRule:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 538
    iget-object v4, v3, Lcom/tencent/mna/b/d/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/tencent/mna/b/d/f;->a(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    .line 539
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v2, v3, Lcom/tencent/mna/b/d/g;->d:I

    iput v2, v0, Lcom/tencent/mna/KartinRet;->signal_status:I

    .line 540
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v2, v3, Lcom/tencent/mna/b/d/g;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mna/KartinRet;->signal_desc:Ljava/lang/String;

    .line 545
    :cond_5
    array-length v2, p7

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_6

    aget-object v3, p7, v0

    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KartinRule queryRule:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 547
    iget-object v4, v3, Lcom/tencent/mna/b/d/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/tencent/mna/b/d/f;->a(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_d

    .line 548
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v3, Lcom/tencent/mna/b/d/g;->d:I

    iput v1, v0, Lcom/tencent/mna/KartinRet;->network_star:I

    .line 552
    :cond_6
    return-void

    .line 491
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 500
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 509
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 518
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 527
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 536
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 545
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private c(I)V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x5

    const/16 v3, 0xf

    const/4 v2, 0x1

    .line 457
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 459
    iget v0, p0, Lcom/tencent/mna/b/d/c;->e:I

    iget v1, p0, Lcom/tencent/mna/b/d/c;->g:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mna/b/d/c;->g:I

    if-lez v0, :cond_0

    .line 460
    iget v0, p0, Lcom/tencent/mna/b/d/c;->e:I

    invoke-static {v2, v5}, Lcom/tencent/mna/base/f/c;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mna/b/d/c;->g:I

    .line 461
    iput v2, p0, Lcom/tencent/mna/b/d/c;->E:I

    .line 463
    :cond_0
    iget v0, p0, Lcom/tencent/mna/b/d/c;->g:I

    iget v1, p0, Lcom/tencent/mna/b/d/c;->d:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/tencent/mna/b/d/c;->d:I

    if-lez v0, :cond_1

    .line 464
    iget v0, p0, Lcom/tencent/mna/b/d/c;->g:I

    invoke-static {v4, v3}, Lcom/tencent/mna/base/f/c;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mna/b/d/c;->d:I

    .line 465
    iput v2, p0, Lcom/tencent/mna/b/d/c;->E:I

    .line 467
    :cond_1
    iget v0, p0, Lcom/tencent/mna/b/d/c;->e:I

    iget v1, p0, Lcom/tencent/mna/b/d/c;->d:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/tencent/mna/b/d/c;->d:I

    if-lez v0, :cond_2

    .line 468
    iget v0, p0, Lcom/tencent/mna/b/d/c;->e:I

    invoke-static {v5, v3}, Lcom/tencent/mna/base/f/c;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mna/b/d/c;->d:I

    .line 469
    iput v2, p0, Lcom/tencent/mna/b/d/c;->E:I

    .line 479
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DiagnoseRecord correctDiagnoseResultStats "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mJumpRouter:"

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mJumpEdge:"

    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mJumpDirect:"

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 484
    return-void

    .line 474
    :cond_3
    iget v0, p0, Lcom/tencent/mna/b/d/c;->g:I

    iget v1, p0, Lcom/tencent/mna/b/d/c;->d:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/tencent/mna/b/d/c;->d:I

    if-lez v0, :cond_2

    .line 475
    iget v0, p0, Lcom/tencent/mna/b/d/c;->g:I

    invoke-static {v4, v3}, Lcom/tencent/mna/base/f/c;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mna/b/d/c;->d:I

    .line 476
    iput v2, p0, Lcom/tencent/mna/b/d/c;->E:I

    goto :goto_0
.end method

.method private e()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 557
    const-string v1, "A"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->r:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string v1, "B"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->b:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v1, "C"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->c:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v1, "D"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->d:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v1, "E"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->s:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v1, "F"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->e:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v1, "G"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->f:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string v1, "H"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->g:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v1, "I"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->t:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v1, "J"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->u:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string v1, "K"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->v:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string v1, "L"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->w:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string v1, "M"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->h:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v1, "N"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->x:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v1, "O"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->y:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v1, "P"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->z:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string v1, "R"

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v1, "S"

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string v1, "T"

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->m:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v1, "U"

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v1, "V"

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v1, "W"

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string v1, "X"

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string v1, "Y"

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v1, "Z"

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->q:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/16 v3, 0x1f4

    const/4 v2, 0x0

    .line 607
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_network:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_network:I

    .line 608
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_signal:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_signal:I

    .line 609
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_terminal:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_terminal:I

    .line 610
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_router:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_router:I

    .line 611
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_export:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_export:I

    .line 612
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_direct:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_direct:I

    .line 614
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_router:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_router:I

    .line 615
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_export:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_export:I

    .line 616
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, v1, Lcom/tencent/mna/KartinRet;->jump_direct:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_direct:I

    .line 617
    return-void
.end method


# virtual methods
.method a()Lcom/tencent/mna/KartinRet;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->flag:I

    .line 168
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    const-string v1, "No Network"

    iput-object v1, v0, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    return-object v0
.end method

.method a(Z)Lcom/tencent/mna/KartinRet;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    const/4 v1, -0x2

    iput v1, v0, Lcom/tencent/mna/KartinRet;->flag:I

    .line 186
    iget-object v1, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    if-eqz p1, :cond_0

    const-string v0, "Request Master Fail"

    :goto_0
    iput-object v0, v1, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    return-object v0

    .line 186
    :cond_0
    const-string v0, "Request Control Fail"

    goto :goto_0
.end method

.method a(ZI[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;)Lcom/tencent/mna/KartinRet;
    .locals 8

    .prologue
    .line 219
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mna/KartinRet;->flag:I

    .line 220
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    const-string v1, "Success"

    iput-object v1, v0, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, p0, Lcom/tencent/mna/b/d/c;->b:I

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_network:I

    .line 222
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, p0, Lcom/tencent/mna/b/d/c;->c:I

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_signal:I

    .line 223
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, p0, Lcom/tencent/mna/b/d/c;->e:I

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_router:I

    .line 224
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, p0, Lcom/tencent/mna/b/d/c;->f:I

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_proxy:I

    .line 225
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, p0, Lcom/tencent/mna/b/d/c;->g:I

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_edge:I

    .line 226
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, p0, Lcom/tencent/mna/b/d/c;->g:I

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_export:I

    .line 227
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, p0, Lcom/tencent/mna/b/d/c;->h:I

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_terminal:I

    .line 228
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v1, p0, Lcom/tencent/mna/b/d/c;->d:I

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_direct:I

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 230
    invoke-direct/range {v0 .. v7}, Lcom/tencent/mna/b/d/c;->a([Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;[Lcom/tencent/mna/b/d/g;)V

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/tencent/mna/b/d/c;->a(ZI)V

    .line 234
    invoke-direct {p0}, Lcom/tencent/mna/b/d/c;->f()V

    .line 236
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    return-object v0
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 141
    iput p1, p0, Lcom/tencent/mna/b/d/c;->K:I

    .line 142
    return-void
.end method

.method a(II)V
    .locals 0

    .prologue
    .line 161
    iput p1, p0, Lcom/tencent/mna/b/d/c;->b:I

    .line 162
    iput p2, p0, Lcom/tencent/mna/b/d/c;->c:I

    .line 163
    return-void
.end method

.method a(ILcom/tencent/mna/base/f/j$b;IILcom/tencent/mna/base/f/r$a;Lcom/tencent/mna/base/d/b$a;IIIILjava/lang/String;ILjava/lang/String;)V
    .locals 11

    .prologue
    .line 154
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mna/b/d/c;->a(ILcom/tencent/mna/base/f/j$b;Lcom/tencent/mna/base/f/r$a;III)V

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p9

    move/from16 v7, p10

    move-object/from16 v8, p11

    move/from16 v9, p12

    move-object/from16 v10, p13

    .line 155
    invoke-direct/range {v0 .. v10}, Lcom/tencent/mna/b/d/c;->a(IIILcom/tencent/mna/base/f/r$a;Lcom/tencent/mna/base/d/b$a;IILjava/lang/String;ILjava/lang/String;)V

    .line 158
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x5f

    .line 240
    sget-object v0, Lcom/tencent/mna/base/c/c;->e:Lcom/tencent/mna/base/c/c;

    invoke-static {v0}, Lcom/tencent/mna/base/c/f;->a(Lcom/tencent/mna/base/c/c;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    .line 243
    const-string v1, "openid"

    iget-object v2, p0, Lcom/tencent/mna/b/d/c;->I:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 246
    const-string v1, "errno"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->K:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 247
    iget-boolean v1, p0, Lcom/tencent/mna/b/d/c;->J:Z

    if-eqz v1, :cond_0

    .line 248
    const-string v1, "config"

    iget-object v2, p0, Lcom/tencent/mna/b/d/c;->L:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string/jumbo v2, "vipsvr"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->M:Ljava/lang/String;

    .line 249
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "speedip"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->N:Ljava/lang/String;

    .line 250
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "cdnproxy"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->O:Ljava/lang/String;

    .line 251
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "plat_flag"

    iget v3, p0, Lcom/tencent/mna/b/d/c;->P:I

    .line 252
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "rproxy_flag"

    iget v3, p0, Lcom/tencent/mna/b/d/c;->Q:I

    .line 253
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 257
    :cond_0
    const-string v1, "mnaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "5.5.0_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/mna/a/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string/jumbo v2, "tag"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v3, v3, Lcom/tencent/mna/KartinRet;->tag:Ljava/lang/String;

    .line 258
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "flag"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->flag:I

    .line 259
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "desc"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v3, v3, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    .line 260
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "net"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->jump_network:I

    .line 261
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "sig"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->jump_signal:I

    .line 262
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "sc"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v3, v3, Lcom/tencent/mna/KartinRet;->signal_desc:Ljava/lang/String;

    .line 263
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "router"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->jump_router:I

    .line 264
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "rs"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->router_status:I

    .line 265
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "rd"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v3, v3, Lcom/tencent/mna/KartinRet;->router_desc:Ljava/lang/String;

    .line 266
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "out"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/tencent/mna/b/d/c;->C:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v4, v4, Lcom/tencent/mna/KartinRet;->jump_export:I

    .line 267
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "es"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->export_status:I

    .line 268
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "ed"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v3, v3, Lcom/tencent/mna/KartinRet;->export_desc:Ljava/lang/String;

    .line 269
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string/jumbo v2, "terminal"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->jump_terminal:I

    .line 270
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string/jumbo v2, "ts"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->terminal_status:I

    .line 271
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string/jumbo v2, "td"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v3, v3, Lcom/tencent/mna/KartinRet;->terminal_desc:Ljava/lang/String;

    .line 272
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string/jumbo v2, "tproxy"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->jump_proxy:I

    .line 273
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string/jumbo v2, "tedge"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->jump_edge:I

    .line 274
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "direct"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/tencent/mna/b/d/c;->D:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v4, v4, Lcom/tencent/mna/KartinRet;->jump_direct:I

    .line 275
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "ds"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->direct_status:I

    .line 276
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "dd"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v3, v3, Lcom/tencent/mna/KartinRet;->direct_desc:Ljava/lang/String;

    .line 277
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "nets"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->netinfo_status:I

    .line 278
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "netd"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget-object v3, v3, Lcom/tencent/mna/KartinRet;->netinfo_desc:Ljava/lang/String;

    .line 279
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "network_star"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->network_star:I

    .line 280
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string/jumbo v2, "wifinum"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iget v3, v3, Lcom/tencent/mna/KartinRet;->wifi_num:I

    .line 281
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 284
    const-string v1, "modified"

    iget v2, p0, Lcom/tencent/mna/b/d/c;->E:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "speeddetail"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->G:Ljava/lang/String;

    .line 285
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "edgedetail"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->F:Ljava/lang/String;

    .line 286
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "pushlose"

    iget-object v3, p0, Lcom/tencent/mna/b/d/c;->H:Ljava/lang/String;

    .line 287
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "routenext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/tencent/mna/b/d/c;->R:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mna/b/d/c;->S:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string/jumbo v2, "useping"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/tencent/mna/b/d/c;->T:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mna/b/d/c;->U:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->A:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->k:J

    .line 291
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->j:J

    .line 292
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->B:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->m:J

    .line 293
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->n:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 294
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    const-string v2, "netinfo"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->o:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->p:J

    .line 297
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mna/b/d/c;->q:J

    .line 298
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    const-string v2, "directvalue"

    invoke-interface {v0, v2, v1}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 303
    const-string/jumbo v1, "wmac"

    invoke-interface {v0, v1, p1}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "pcell"

    .line 304
    invoke-interface {v1, v2, p2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v1

    const-string v2, "location"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    invoke-static {}, Lcom/tencent/mna/base/f/g;->a()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mna/base/f/g;->b()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    .line 312
    invoke-interface {v0}, Lcom/tencent/mna/base/c/d;->g()V

    .line 313
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/tencent/mna/b/d/c;->L:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/b/d/c;->M:Ljava/lang/String;

    .line 133
    iput-object p4, p0, Lcom/tencent/mna/b/d/c;->N:Ljava/lang/String;

    .line 134
    iput-object p5, p0, Lcom/tencent/mna/b/d/c;->O:Ljava/lang/String;

    .line 135
    iput p7, p0, Lcom/tencent/mna/b/d/c;->Q:I

    .line 136
    iput p6, p0, Lcom/tencent/mna/b/d/c;->P:I

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mna/b/d/c;->J:Z

    .line 138
    return-void
.end method

.method b()Lcom/tencent/mna/KartinRet;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    const/16 v1, -0x1f5

    iput v1, v0, Lcom/tencent/mna/KartinRet;->flag:I

    .line 194
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    const-string v1, "Get DgnSpeedTester Fail"

    iput-object v1, v0, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    return-object v0
.end method

.method b(I)Lcom/tencent/mna/KartinRet;
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    const/4 v1, -0x5

    iput v1, v0, Lcom/tencent/mna/KartinRet;->flag:I

    .line 176
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    const-string v1, "2G Network"

    iput-object v1, v0, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mna/KartinRet;->jump_network:I

    .line 178
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    iput p1, v0, Lcom/tencent/mna/KartinRet;->jump_signal:I

    .line 180
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    return-object v0
.end method

.method c()Lcom/tencent/mna/KartinRet;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    const/4 v1, -0x4

    iput v1, v0, Lcom/tencent/mna/KartinRet;->flag:I

    .line 201
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    const-string v1, "Network Changed"

    iput-object v1, v0, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    return-object v0
.end method

.method d()Lcom/tencent/mna/KartinRet;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    const/4 v1, -0x6

    iput v1, v0, Lcom/tencent/mna/KartinRet;->flag:I

    .line 209
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    const-string v1, "Fail"

    iput-object v1, v0, Lcom/tencent/mna/KartinRet;->desc:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/tencent/mna/b/d/c;->V:Lcom/tencent/mna/KartinRet;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiagnoseRecord("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/d/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
