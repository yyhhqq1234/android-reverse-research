.class public Lcom/tencent/liteav/h;
.super Lcom/tencent/liteav/basic/module/a;
.source "TXCRenderAndDec.java"

# interfaces
.implements Lcom/tencent/liteav/audio/e;
.implements Lcom/tencent/liteav/basic/b/b;
.implements Lcom/tencent/liteav/basic/c/a;
.implements Lcom/tencent/liteav/renderer/i;
.implements Lcom/tencent/liteav/videodecoder/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/h$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/liteav/g;

.field private c:Lcom/tencent/liteav/videodecoder/b;

.field private d:Lcom/tencent/liteav/renderer/h;

.field private e:Lcom/tencent/liteav/basic/b/a;

.field private f:Lcom/tencent/liteav/audio/a;

.field private g:Lcom/tencent/liteav/basic/c/a;

.field private h:Z

.field private i:J

.field private j:[B

.field private k:Lcom/tencent/liteav/p;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Lcom/tencent/liteav/h$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lcom/tencent/liteav/basic/module/a;-><init>()V

    .line 38
    iput-object v2, p0, Lcom/tencent/liteav/h;->a:Landroid/content/Context;

    .line 39
    iput-object v2, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    .line 40
    iput-object v2, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    .line 41
    iput-object v2, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    .line 42
    iput-object v2, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    .line 43
    iput-object v2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    .line 44
    iput-object v2, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/basic/c/a;

    .line 46
    iput-boolean v3, p0, Lcom/tencent/liteav/h;->h:Z

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/h;->i:J

    .line 48
    iput-object v2, p0, Lcom/tencent/liteav/h;->j:[B

    .line 49
    iput-object v2, p0, Lcom/tencent/liteav/h;->k:Lcom/tencent/liteav/p;

    .line 51
    iput-boolean v3, p0, Lcom/tencent/liteav/h;->m:Z

    .line 88
    iput-boolean v3, p0, Lcom/tencent/liteav/h;->n:Z

    .line 106
    iput-object v2, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/h$a;

    .line 54
    iput-object p1, p0, Lcom/tencent/liteav/h;->a:Landroid/content/Context;

    .line 55
    iput p2, p0, Lcom/tencent/liteav/h;->l:I

    .line 56
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 347
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/basic/c/a;

    if-eqz v0, :cond_1

    .line 348
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 349
    const-string v1, "TXCRenderAndDec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TXCRenderAndDec notifyEvent: mUserID  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/tencent/liteav/h;->i:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v1, "EVT_USERID"

    iget-wide v2, p0, Lcom/tencent/liteav/h;->i:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 351
    const-string v1, "EVT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    const-string v1, "EVT_TIME"

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 353
    if-eqz p2, :cond_0

    .line 354
    const-string v1, "EVT_MSG"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/basic/c/a;

    invoke-interface {v1, p1, v0}, Lcom/tencent/liteav/basic/c/a;->onNotifyEvent(ILandroid/os/Bundle;)V

    .line 358
    :cond_1
    return-void
.end method

.method private c(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    invoke-virtual {v0, p1, v1, v1}, Lcom/tencent/liteav/videodecoder/b;->a(Landroid/graphics/SurfaceTexture;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 291
    iget-object v1, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    iget-object v0, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iget-boolean v2, v0, Lcom/tencent/liteav/g;->h:Z

    iget-boolean v0, p0, Lcom/tencent/liteav/h;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/videodecoder/b;->a(ZZ)I

    .line 293
    :cond_0
    return-void

    .line 291
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Z)V
    .locals 5

    .prologue
    const v4, 0x3f19999a    # 0.6f

    const v2, 0x3e99999a    # 0.3f

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x1

    .line 305
    if-eqz p1, :cond_3

    .line 306
    iget-object v0, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iget-boolean v0, v0, Lcom/tencent/liteav/g;->h:Z

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iput-boolean v3, v0, Lcom/tencent/liteav/g;->f:Z

    .line 309
    iget-object v0, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iput v2, v0, Lcom/tencent/liteav/g;->a:F

    .line 310
    iget-object v0, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iput v2, v0, Lcom/tencent/liteav/g;->c:F

    .line 311
    iget-object v0, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iput v4, v0, Lcom/tencent/liteav/g;->b:F

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    if-eqz v0, :cond_0

    .line 320
    invoke-static {}, Lcom/tencent/liteav/basic/e/b;->a()Lcom/tencent/liteav/basic/e/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/liteav/h;->l:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/e/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    sget v1, Lcom/tencent/liteav/audio/d;->A:I

    iget-object v2, p0, Lcom/tencent/liteav/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/audio/a;->a(ILandroid/content/Context;)V

    .line 322
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    invoke-static {}, Lcom/tencent/liteav/basic/e/b;->a()Lcom/tencent/liteav/basic/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/e/b;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/a;->b(Z)V

    .line 327
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/audio/a;->c(Z)V

    .line 344
    :cond_0
    :goto_2
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iput-boolean v3, v0, Lcom/tencent/liteav/g;->f:Z

    .line 314
    iget-object v0, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iput v1, v0, Lcom/tencent/liteav/g;->a:F

    .line 315
    iget-object v0, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iput v1, v0, Lcom/tencent/liteav/g;->c:F

    .line 316
    iget-object v0, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iput v4, v0, Lcom/tencent/liteav/g;->b:F

    goto :goto_0

    .line 324
    :cond_2
    invoke-static {}, Lcom/tencent/liteav/basic/e/b;->a()Lcom/tencent/liteav/basic/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/a;->a(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    sget v1, Lcom/tencent/liteav/audio/d;->B:I

    iget-object v2, p0, Lcom/tencent/liteav/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/audio/a;->a(ILandroid/content/Context;)V

    goto :goto_1

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iget-boolean v0, v0, Lcom/tencent/liteav/g;->g:Z

    if-eqz v0, :cond_5

    .line 332
    invoke-static {}, Lcom/tencent/liteav/basic/e/b;->a()Lcom/tencent/liteav/basic/e/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/liteav/h;->l:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/e/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 333
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    sget v1, Lcom/tencent/liteav/audio/d;->A:I

    iget-object v2, p0, Lcom/tencent/liteav/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/audio/a;->a(ILandroid/content/Context;)V

    .line 337
    :goto_3
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/audio/a;->c(Z)V

    goto :goto_2

    .line 335
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    sget v1, Lcom/tencent/liteav/audio/d;->B:I

    iget-object v2, p0, Lcom/tencent/liteav/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/audio/a;->a(ILandroid/content/Context;)V

    goto :goto_3

    .line 339
    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    sget v1, Lcom/tencent/liteav/audio/d;->z:I

    iget-object v2, p0, Lcom/tencent/liteav/h;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/audio/a;->a(ILandroid/content/Context;)V

    .line 340
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/a;->c(Z)V

    goto :goto_2
.end method

.method private f()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iget v1, v1, Lcom/tencent/liteav/g;->a:F

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/a;->a(F)V

    .line 298
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iget-boolean v1, v1, Lcom/tencent/liteav/g;->f:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/a;->a(Z)V

    .line 299
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iget v1, v1, Lcom/tencent/liteav/g;->c:F

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/a;->c(F)V

    .line 300
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iget v1, v1, Lcom/tencent/liteav/g;->b:F

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/a;->b(F)V

    .line 302
    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 361
    iget-object v1, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    if-eqz v1, :cond_2

    .line 362
    const-string v1, "TXCRenderAndDec"

    const-string/jumbo v2, "switch to soft decoder when hw error"

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    invoke-virtual {v1}, Lcom/tencent/liteav/videodecoder/b;->a()V

    .line 364
    iget-object v1, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    iget-object v2, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v2}, Lcom/tencent/liteav/basic/b/a;->d()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/basic/b/a;->a(I)V

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iput-boolean v0, v1, Lcom/tencent/liteav/g;->h:Z

    .line 368
    iget-boolean v1, p0, Lcom/tencent/liteav/h;->h:Z

    invoke-direct {p0, v1}, Lcom/tencent/liteav/h;->c(Z)V

    .line 369
    iget-object v1, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    iget-object v2, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iget-boolean v2, v2, Lcom/tencent/liteav/g;->h:Z

    iget-boolean v3, p0, Lcom/tencent/liteav/h;->h:Z

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/videodecoder/b;->a(ZZ)I

    .line 371
    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videodecoder/b;->a(Lcom/tencent/liteav/videodecoder/d;)V

    .line 154
    iget-object v0, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videodecoder/b;->a(Lcom/tencent/liteav/basic/c/a;)V

    .line 155
    iget-object v0, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/videodecoder/b;->a()V

    .line 156
    iput-object v1, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/a;->a(Lcom/tencent/liteav/audio/e;)V

    .line 161
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/a;->c()I

    .line 162
    iput-object v1, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/b/a;->a(Lcom/tencent/liteav/basic/b/b;)V

    .line 167
    iget-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/b/a;->b()V

    .line 168
    iput-object v1, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/h;->g()V

    .line 172
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/h;->a(Lcom/tencent/liteav/renderer/i;)V

    .line 174
    :cond_3
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/h;->a(I)V

    .line 205
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 481
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/renderer/h;->b(II)V

    .line 485
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 486
    const-string v1, "EVT_MSG"

    const-string/jumbo v2, "\u5206\u8fa8\u7387\u6539\u53d8"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 487
    const-string v1, "EVT_PARAM1"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 488
    const-string v1, "EVT_PARAM2"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 489
    const-string v1, "EVT_TIME"

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 490
    const/16 v1, 0x7d9

    invoke-virtual {p0, v1, v0}, Lcom/tencent/liteav/h;->onNotifyEvent(ILandroid/os/Bundle;)V

    .line 491
    return-void
.end method

.method public a(JIIJJ)V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/tencent/liteav/h;->k:Lcom/tencent/liteav/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/h;->j:[B

    if-eqz v0, :cond_1

    .line 459
    monitor-enter p0

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->j:[B

    .line 461
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/liteav/h;->j:[B

    .line 462
    iget-object v1, p0, Lcom/tencent/liteav/h;->k:Lcom/tencent/liteav/p;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 463
    iget-object v1, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    if-eqz v1, :cond_0

    .line 464
    array-length v1, v0

    mul-int v2, p3, p4

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    if-gt v1, v2, :cond_3

    .line 465
    iget-object v1, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    array-length v2, v0

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/tencent/liteav/videodecoder/b;->a([BJI)V

    .line 466
    iget-object v1, p0, Lcom/tencent/liteav/h;->k:Lcom/tencent/liteav/p;

    long-to-int v2, p5

    invoke-interface {v1, v0, p3, p4, v2}, Lcom/tencent/liteav/p;->onVideoRawDataAvailable([BIII)V

    .line 472
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/liteav/renderer/h;->a(JII)V

    .line 477
    :cond_2
    return-void

    .line 468
    :cond_3
    :try_start_1
    const-string v0, "TXCRenderAndDec"

    const-string v1, "raw data buffer length is too large"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/tencent/liteav/h;->c(Landroid/graphics/SurfaceTexture;)V

    .line 395
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;IIJJ)V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/liteav/renderer/h;->a(Landroid/graphics/SurfaceTexture;II)V

    .line 454
    :cond_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    invoke-virtual {v0, p1, v1, v1}, Lcom/tencent/liteav/videodecoder/b;->a(Landroid/view/Surface;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 179
    iget-object v1, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    iget-object v0, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    iget-boolean v2, v0, Lcom/tencent/liteav/g;->h:Z

    iget-boolean v0, p0, Lcom/tencent/liteav/h;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/videodecoder/b;->a(ZZ)I

    .line 181
    :cond_0
    return-void

    .line 179
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/tencent/liteav/basic/c/a;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/basic/c/a;

    .line 67
    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/f/a;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/a;->a(Lcom/tencent/liteav/basic/f/a;)I

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v0, "TXCRenderAndDec"

    const-string v1, "decAudio fail which audio play hasn\'t been created!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/tencent/liteav/basic/f/b;)V
    .locals 1

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/basic/b/a;->a(Lcom/tencent/liteav/basic/f/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/tencent/liteav/g;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/g;

    .line 71
    invoke-direct {p0}, Lcom/tencent/liteav/h;->f()V

    .line 72
    return-void
.end method

.method public a(Lcom/tencent/liteav/h$a;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/h$a;

    .line 110
    return-void
.end method

.method public a(Lcom/tencent/liteav/p;)V
    .locals 1

    .prologue
    .line 279
    monitor-enter p0

    .line 280
    :try_start_0
    iput-object p1, p0, Lcom/tencent/liteav/h;->k:Lcom/tencent/liteav/p;

    .line 281
    monitor-exit p0

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/tencent/liteav/renderer/h;)V
    .locals 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    .line 60
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/basic/c/a;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/basic/c/a;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/h;->a(Lcom/tencent/liteav/basic/c/a;)V

    .line 63
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/tencent/liteav/h;->h:Z

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/h;->m:Z

    .line 120
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/renderer/h;->a(Lcom/tencent/liteav/renderer/i;)V

    .line 122
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/h;->f()V

    .line 123
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {p0}, Lcom/tencent/liteav/h;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/h;->setID(Ljava/lang/String;)V

    .line 127
    :cond_0
    new-instance v0, Lcom/tencent/liteav/videodecoder/b;

    invoke-direct {v0}, Lcom/tencent/liteav/videodecoder/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    .line 128
    iget-object v0, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    iget-wide v2, p0, Lcom/tencent/liteav/h;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/tencent/liteav/videodecoder/b;->a(J)V

    .line 129
    iget-object v0, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videodecoder/b;->a(Lcom/tencent/liteav/videodecoder/d;)V

    .line 130
    iget-object v0, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videodecoder/b;->a(Lcom/tencent/liteav/basic/c/a;)V

    .line 133
    new-instance v0, Lcom/tencent/liteav/audio/a;

    iget-object v1, p0, Lcom/tencent/liteav/h;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/audio/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    .line 134
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/audio/a;->a(Lcom/tencent/liteav/audio/e;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/tencent/liteav/h;->c(Z)V

    .line 136
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/a;->b()I

    .line 139
    new-instance v0, Lcom/tencent/liteav/basic/b/a;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/b/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    .line 140
    iget-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/basic/b/a;->a(Lcom/tencent/liteav/basic/b/b;)V

    .line 141
    iget-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/b/a;->a()V

    .line 143
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/h;->a()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 144
    :goto_0
    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0, v0}, Lcom/tencent/liteav/h;->c(Landroid/graphics/SurfaceTexture;)V

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/h;->f()V

    .line 149
    return-void

    .line 143
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([B)Z
    .locals 1

    .prologue
    .line 272
    monitor-enter p0

    .line 273
    :try_start_0
    iput-object p1, p0, Lcom/tencent/liteav/h;->j:[B

    .line 274
    monitor-exit p0

    .line 275
    const/4 v0, 0x1

    return v0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/a;->a()J

    move-result-wide v0

    .line 231
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/h;->b(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .prologue
    .line 400
    :try_start_0
    const-string v0, "TXCRenderAndDec"

    const-string v1, "play:stop decode when surface texture release"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/videodecoder/b;->a()V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    iget-object v1, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/b/a;->d()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/b/a;->a(I)V

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/h$a;

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/h$a;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/h$a;->a(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :cond_2
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lcom/tencent/liteav/basic/f/b;)V
    .locals 8

    .prologue
    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    if-eqz v0, :cond_0

    .line 437
    iget-object v1, p0, Lcom/tencent/liteav/h;->c:Lcom/tencent/liteav/videodecoder/b;

    iget v0, p1, Lcom/tencent/liteav/basic/f/b;->b:I

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p1, Lcom/tencent/liteav/basic/f/b;->a:[B

    iget-wide v4, p1, Lcom/tencent/liteav/basic/f/b;->g:J

    iget-wide v6, p1, Lcom/tencent/liteav/basic/f/b;->h:J

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/liteav/videodecoder/b;->a(Z[BJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :cond_0
    :goto_1
    return-void

    .line 437
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/a;->d(Z)V

    .line 217
    :cond_0
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/b/a;->c()J

    move-result-wide v0

    .line 238
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public c(I)V
    .locals 4

    .prologue
    .line 496
    if-gez p1, :cond_1

    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    iget-object v1, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/b/a;->d()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/b/a;->a(I)V

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/basic/b/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 242
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/a;->d()Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;

    move-result-object v2

    .line 244
    if-eqz v2, :cond_0

    .line 245
    iget v0, v2, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mLoadCnt:I

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    .line 246
    :goto_0
    const/16 v3, 0x7d1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/tencent/liteav/h;->setStatusValue(ILjava/lang/Object;)Z

    .line 247
    const/16 v0, 0x7d2

    iget v1, v2, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mLoadCnt:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/h;->setStatusValue(ILjava/lang/Object;)Z

    .line 248
    const/16 v0, 0x7d3

    iget v1, v2, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mLoadMaxTime:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/h;->setStatusValue(ILjava/lang/Object;)Z

    .line 249
    const/16 v0, 0x7d4

    iget v1, v2, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mSpeedCnt:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/h;->setStatusValue(ILjava/lang/Object;)Z

    .line 250
    const/16 v0, 0x7d5

    iget v1, v2, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mNoDataCnt:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/h;->setStatusValue(ILjava/lang/Object;)Z

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    if-eqz v0, :cond_1

    .line 254
    const/16 v0, 0x7d6

    iget-object v1, p0, Lcom/tencent/liteav/h;->e:Lcom/tencent/liteav/basic/b/a;

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/b/a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/h;->setStatusValue(ILjava/lang/Object;)Z

    .line 256
    :cond_1
    return-void

    .line 245
    :cond_2
    iget v0, v2, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mLoadTime:I

    iget v1, v2, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mLoadCnt:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/audio/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/a;->a()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 430
    :goto_0
    return-wide v0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 430
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onNotifyEvent(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 374
    const/16 v0, 0x83a

    if-ne p1, v0, :cond_2

    .line 375
    invoke-direct {p0}, Lcom/tencent/liteav/h;->g()V

    .line 382
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/basic/c/a;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/basic/c/a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/liteav/basic/c/a;->onNotifyEvent(ILandroid/os/Bundle;)V

    .line 385
    :cond_1
    return-void

    .line 376
    :cond_2
    const/16 v0, 0x7d3

    if-ne p1, v0, :cond_0

    .line 377
    iget-boolean v0, p0, Lcom/tencent/liteav/h;->m:Z

    if-eqz v0, :cond_0

    .line 378
    const/16 v0, 0x7d4

    const-string/jumbo v1, "\u89c6\u9891\u64ad\u653e\u5f00\u59cb"

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/h;->a(ILjava/lang/String;)V

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/h;->m:Z

    goto :goto_0
.end method

.method public onPlayAudioInfoChanged(Lcom/tencent/liteav/basic/f/a;)V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/h$a;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/h$a;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/h$a;->a(Lcom/tencent/liteav/basic/f/a;)V

    .line 521
    :cond_0
    return-void
.end method

.method public onPlayJitterStateNotify(I)V
    .locals 2

    .prologue
    const/16 v1, 0x7d4

    .line 542
    sget v0, Lcom/tencent/liteav/audio/d;->C:I

    if-ne p1, v0, :cond_1

    .line 543
    const/16 v0, 0x7d7

    const-string/jumbo v1, "\u89c6\u9891\u7f13\u51b2\u4e2d..."

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/h;->a(ILjava/lang/String;)V

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    sget v0, Lcom/tencent/liteav/audio/d;->D:I

    if-ne p1, v0, :cond_2

    .line 545
    const-string/jumbo v0, "\u89c6\u9891\u64ad\u653e\u5f00\u59cb"

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/h;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_2
    sget v0, Lcom/tencent/liteav/audio/d;->E:I

    if-ne p1, v0, :cond_0

    .line 547
    iget-boolean v0, p0, Lcom/tencent/liteav/h;->m:Z

    if-eqz v0, :cond_0

    .line 548
    const-string/jumbo v0, "\u89c6\u9891\u64ad\u653e\u5f00\u59cb"

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/h;->a(ILjava/lang/String;)V

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/h;->m:Z

    goto :goto_0
.end method

.method public onPlayPcmData([BJ)V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/h$a;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/h$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/liteav/h$a;->a([BJ)V

    .line 528
    :cond_0
    return-void
.end method

.method public onPlaySpeedPcmData([BJ)V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/tencent/liteav/basic/module/a;->setID(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {p0}, Lcom/tencent/liteav/h;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/h;->setID(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method
