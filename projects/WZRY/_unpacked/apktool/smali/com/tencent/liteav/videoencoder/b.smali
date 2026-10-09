.class public Lcom/tencent/liteav/videoencoder/b;
.super Lcom/tencent/liteav/basic/module/a;
.source "TXCVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoencoder/b$a;
    }
.end annotation


# static fields
.field private static q:Ljava/lang/Integer;

.field private static final t:Ljava/lang/String;

.field private static u:I


# instance fields
.field private a:Lcom/tencent/liteav/videoencoder/c;

.field private b:Lcom/tencent/liteav/videoencoder/d;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/basic/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Ljava/util/Timer;

.field private g:Ljava/util/TimerTask;

.field private h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:Lcom/tencent/liteav/basic/d/b;

.field private p:Lcom/tencent/liteav/basic/util/b;

.field private r:Z

.field private s:Lcom/tencent/liteav/beauty/b/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/videoencoder/b;->q:Ljava/lang/Integer;

    .line 51
    const-class v0, Lcom/tencent/liteav/videoencoder/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/videoencoder/b;->t:Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    sput v0, Lcom/tencent/liteav/videoencoder/b;->u:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/tencent/liteav/basic/module/a;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    .line 29
    iput-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->b:Lcom/tencent/liteav/videoencoder/d;

    .line 30
    iput-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->c:Ljava/lang/ref/WeakReference;

    .line 31
    iput v3, p0, Lcom/tencent/liteav/videoencoder/b;->d:I

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->e:I

    .line 33
    iput-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->f:Ljava/util/Timer;

    .line 34
    iput-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->g:Ljava/util/TimerTask;

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->h:Ljava/util/LinkedList;

    .line 40
    iput v2, p0, Lcom/tencent/liteav/videoencoder/b;->j:F

    .line 41
    iput v2, p0, Lcom/tencent/liteav/videoencoder/b;->k:F

    .line 42
    iput v2, p0, Lcom/tencent/liteav/videoencoder/b;->l:F

    .line 43
    iput v3, p0, Lcom/tencent/liteav/videoencoder/b;->m:I

    .line 44
    iput v3, p0, Lcom/tencent/liteav/videoencoder/b;->n:I

    .line 54
    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->e:I

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoencoder/b;F)F
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->j:F

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/basic/d/b;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->o:Lcom/tencent/liteav/basic/d/b;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/liteav/videoencoder/b;Lcom/tencent/liteav/basic/d/b;)Lcom/tencent/liteav/basic/d/b;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->o:Lcom/tencent/liteav/basic/d/b;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/videoencoder/b;Lcom/tencent/liteav/beauty/b/k;)Lcom/tencent/liteav/beauty/b/k;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->s:Lcom/tencent/liteav/beauty/b/k;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/videoencoder/b;Lcom/tencent/liteav/videoencoder/c;)Lcom/tencent/liteav/videoencoder/c;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 325
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/basic/c/a;

    .line 329
    if-eqz v0, :cond_0

    .line 330
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 331
    const-string v2, "EVT_ID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 332
    const-string v2, "EVT_TIME"

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 333
    const-string v2, "EVT_MSG"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 334
    invoke-interface {v0, p1, v1}, Lcom/tencent/liteav/basic/c/a;->onNotifyEvent(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;I)V
    .locals 6

    .prologue
    .line 338
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/basic/c/a;

    .line 342
    if-eqz v0, :cond_0

    .line 343
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 344
    const-string v2, "EVT_ID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    const-string v2, "EVT_TIME"

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 346
    const-string v2, "EVT_MSG"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 347
    const-string v2, "EVT_PARAM1"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    invoke-interface {v0, p1, v1}, Lcom/tencent/liteav/basic/c/a;->onNotifyEvent(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/liteav/videoencoder/b;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoencoder/b;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/Queue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 148
    monitor-enter p1

    .line 149
    :try_start_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    move v0, v1

    .line 156
    :goto_0
    return v0

    .line 150
    :cond_0
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 151
    monitor-exit p1

    .line 152
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 154
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 156
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/liteav/videoencoder/b;F)F
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->k:F

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/beauty/b/k;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->s:Lcom/tencent/liteav/beauty/b/k;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/liteav/videoencoder/b;F)F
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->l:F

    return p1
.end method

.method static synthetic c(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->i:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/videoencoder/c;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    return-object v0
.end method

.method private d()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 306
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->g:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcom/tencent/liteav/videoencoder/b$a;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoencoder/b$a;-><init>(Lcom/tencent/liteav/videoencoder/b;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->g:Ljava/util/TimerTask;

    .line 309
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->f:Ljava/util/Timer;

    .line 310
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->f:Ljava/util/Timer;

    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->g:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 311
    return-void
.end method

.method static synthetic e(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/videoencoder/d;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->b:Lcom/tencent/liteav/videoencoder/d;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->f:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->f:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 316
    iput-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->f:Ljava/util/Timer;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->g:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 320
    iput-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->g:Ljava/util/TimerTask;

    .line 322
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/tencent/liteav/videoencoder/b;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->d:I

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 352
    new-instance v0, Lcom/tencent/liteav/videoencoder/b$6;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoencoder/b$6;-><init>(Lcom/tencent/liteav/videoencoder/b;)V

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoencoder/b;->b(Ljava/lang/Runnable;)V

    .line 371
    const-string v0, "TXCVideoEncoder"

    const-string/jumbo v1, "switchSWToHW"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method static synthetic g(Lcom/tencent/liteav/videoencoder/b;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->m:I

    return v0
.end method

.method static synthetic h(Lcom/tencent/liteav/videoencoder/b;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->n:I

    return v0
.end method

.method static synthetic i(Lcom/tencent/liteav/videoencoder/b;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->m:I

    return v0
.end method

.method static synthetic j(Lcom/tencent/liteav/videoencoder/b;)F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->j:F

    return v0
.end method

.method static synthetic k(Lcom/tencent/liteav/videoencoder/b;)F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->k:F

    return v0
.end method

.method static synthetic l(Lcom/tencent/liteav/videoencoder/b;)F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->l:F

    return v0
.end method

.method static synthetic m(Lcom/tencent/liteav/videoencoder/b;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->f()V

    return-void
.end method

.method static synthetic n(Lcom/tencent/liteav/videoencoder/b;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->e()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)I
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x3f0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->i:Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    .line 59
    const v0, 0x989682

    .line 60
    invoke-static {}, Lcom/tencent/liteav/basic/e/b;->a()Lcom/tencent/liteav/basic/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/e/b;->c()I

    move-result v1

    .line 63
    iget v2, p0, Lcom/tencent/liteav/videoencoder/b;->e:I

    if-ne v2, v5, :cond_3

    if-eqz v1, :cond_3

    .line 64
    new-instance v1, Lcom/tencent/liteav/videoencoder/a;

    invoke-direct {v1}, Lcom/tencent/liteav/videoencoder/a;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    .line 65
    const-string/jumbo v1, "\u542f\u52a8\u786c\u7f16"

    invoke-direct {p0, v6, v1, v5}, Lcom/tencent/liteav/videoencoder/b;->a(ILjava/lang/String;I)V

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    if-eqz v1, :cond_5

    .line 77
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->b:Lcom/tencent/liteav/videoencoder/d;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->b:Lcom/tencent/liteav/videoencoder/d;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoencoder/c;->setListener(Lcom/tencent/liteav/videoencoder/d;)V

    .line 80
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->d:I

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    iget v1, p0, Lcom/tencent/liteav/videoencoder/b;->d:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoencoder/c;->setBitrate(I)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    invoke-virtual {p0}, Lcom/tencent/liteav/videoencoder/b;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoencoder/c;->setID(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoencoder/c;->start(Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)I

    move-result v0

    .line 85
    if-eqz v0, :cond_5

    .line 102
    :cond_2
    :goto_1
    return v0

    .line 66
    :cond_3
    iget v2, p0, Lcom/tencent/liteav/videoencoder/b;->e:I

    if-ne v2, v7, :cond_4

    iget v2, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    const/16 v3, 0x2d0

    if-ne v2, v3, :cond_4

    iget v2, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    const/16 v3, 0x500

    if-ne v2, v3, :cond_4

    if-eqz v1, :cond_4

    .line 70
    new-instance v1, Lcom/tencent/liteav/videoencoder/a;

    invoke-direct {v1}, Lcom/tencent/liteav/videoencoder/a;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    .line 71
    const-string/jumbo v1, "\u542f\u52a8\u786c\u7f16"

    invoke-direct {p0, v6, v1, v5}, Lcom/tencent/liteav/videoencoder/b;->a(ILjava/lang/String;I)V

    goto :goto_0

    .line 73
    :cond_4
    new-instance v1, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    invoke-direct {v1}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    .line 74
    const-string/jumbo v1, "\u542f\u52a8\u8f6f\u7f16"

    const/4 v2, 0x2

    invoke-direct {p0, v6, v1, v2}, Lcom/tencent/liteav/videoencoder/b;->a(ILjava/lang/String;I)V

    goto :goto_0

    .line 93
    :cond_5
    iget v1, p0, Lcom/tencent/liteav/videoencoder/b;->e:I

    if-ne v1, v7, :cond_2

    .line 94
    iput v4, p0, Lcom/tencent/liteav/videoencoder/b;->j:F

    .line 95
    iput v4, p0, Lcom/tencent/liteav/videoencoder/b;->k:F

    .line 96
    iput v4, p0, Lcom/tencent/liteav/videoencoder/b;->l:F

    .line 97
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/liteav/videoencoder/b;->m:I

    .line 98
    invoke-static {}, Lcom/tencent/liteav/basic/e/b;->a()Lcom/tencent/liteav/basic/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/e/b;->e()I

    move-result v1

    iput v1, p0, Lcom/tencent/liteav/videoencoder/b;->n:I

    .line 99
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->d()V

    goto :goto_1
.end method

.method public a(IIIJ)J
    .locals 6

    .prologue
    .line 243
    const-wide/32 v0, 0x989682

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->h:Ljava/util/LinkedList;

    invoke-direct {p0, v2}, Lcom/tencent/liteav/videoencoder/b;->a(Ljava/util/Queue;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    if-eqz v2, :cond_1

    .line 246
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/videoencoder/c;->pushVideoFrame(IIIJ)J

    move-result-wide v0

    .line 247
    :cond_1
    return-wide v0
.end method

.method public a([BIIIJ)J
    .locals 9

    .prologue
    .line 163
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->o:Lcom/tencent/liteav/basic/d/b;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 203
    :goto_0
    return-wide v0

    .line 177
    :cond_0
    iget-object v8, p0, Lcom/tencent/liteav/videoencoder/b;->p:Lcom/tencent/liteav/basic/util/b;

    new-instance v0, Lcom/tencent/liteav/videoencoder/b$2;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p2

    move-object v5, p1

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/tencent/liteav/videoencoder/b$2;-><init>(Lcom/tencent/liteav/videoencoder/b;III[BJ)V

    invoke-virtual {v8, v0}, Lcom/tencent/liteav/basic/util/b;->b(Ljava/lang/Runnable;)V

    .line 203
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 112
    iget-boolean v1, p0, Lcom/tencent/liteav/videoencoder/b;->r:Z

    if-nez v1, :cond_1

    .line 113
    iput-boolean v6, p0, Lcom/tencent/liteav/videoencoder/b;->r:Z

    .line 114
    sget-object v1, Lcom/tencent/liteav/videoencoder/b;->q:Ljava/lang/Integer;

    monitor-enter v1

    .line 115
    :try_start_0
    new-instance v2, Lcom/tencent/liteav/basic/util/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CVGLThread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/liteav/videoencoder/b;->q:Ljava/lang/Integer;

    sget-object v5, Lcom/tencent/liteav/videoencoder/b;->q:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sput-object v5, Lcom/tencent/liteav/videoencoder/b;->q:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/liteav/basic/util/b;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->p:Lcom/tencent/liteav/basic/util/b;

    .line 116
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    new-array v1, v6, [Z

    .line 119
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->p:Lcom/tencent/liteav/basic/util/b;

    new-instance v3, Lcom/tencent/liteav/videoencoder/b$1;

    invoke-direct {v3, p0, v1}, Lcom/tencent/liteav/videoencoder/b$1;-><init>(Lcom/tencent/liteav/videoencoder/b;[Z)V

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/basic/util/b;->a(Ljava/lang/Runnable;)V

    .line 126
    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->o:Lcom/tencent/liteav/basic/d/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/d/b;->d()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 131
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->o:Lcom/tencent/liteav/basic/d/b;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->o:Lcom/tencent/liteav/basic/d/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/d/b;->d()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 266
    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->d:I

    .line 267
    new-instance v0, Lcom/tencent/liteav/videoencoder/b$5;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoencoder/b$5;-><init>(Lcom/tencent/liteav/videoencoder/b;)V

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoencoder/b;->b(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/c/a;)V
    .locals 1

    .prologue
    .line 251
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->c:Ljava/lang/ref/WeakReference;

    .line 252
    return-void
.end method

.method public a(Lcom/tencent/liteav/videoencoder/d;)V
    .locals 1

    .prologue
    .line 255
    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->b:Lcom/tencent/liteav/videoencoder/d;

    .line 256
    new-instance v0, Lcom/tencent/liteav/videoencoder/b$4;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoencoder/b$4;-><init>(Lcom/tencent/liteav/videoencoder/b;)V

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoencoder/b;->b(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->p:Lcom/tencent/liteav/basic/util/b;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->p:Lcom/tencent/liteav/basic/util/b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/basic/util/b;->a(Ljava/lang/Runnable;)V

    .line 138
    :cond_0
    return-void
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 207
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 208
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoencoder/c;->stop()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->p:Lcom/tencent/liteav/basic/util/b;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->s:Lcom/tencent/liteav/beauty/b/k;

    .line 213
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->o:Lcom/tencent/liteav/basic/d/b;

    .line 214
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->p:Lcom/tencent/liteav/basic/util/b;

    new-instance v3, Lcom/tencent/liteav/videoencoder/b$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/tencent/liteav/videoencoder/b$3;-><init>(Lcom/tencent/liteav/videoencoder/b;Lcom/tencent/liteav/basic/d/c;Lcom/tencent/liteav/basic/d/b;)V

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/basic/util/b;->b(Ljava/lang/Runnable;)V

    .line 225
    iput-object v4, p0, Lcom/tencent/liteav/videoencoder/b;->p:Lcom/tencent/liteav/basic/util/b;

    .line 226
    iput-object v4, p0, Lcom/tencent/liteav/videoencoder/b;->s:Lcom/tencent/liteav/beauty/b/k;

    .line 227
    iput-object v4, p0, Lcom/tencent/liteav/videoencoder/b;->o:Lcom/tencent/liteav/basic/d/b;

    .line 230
    :cond_1
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 231
    iput v5, p0, Lcom/tencent/liteav/videoencoder/b;->j:F

    .line 232
    iput v5, p0, Lcom/tencent/liteav/videoencoder/b;->k:F

    .line 233
    iput v5, p0, Lcom/tencent/liteav/videoencoder/b;->l:F

    .line 234
    iput v6, p0, Lcom/tencent/liteav/videoencoder/b;->m:I

    .line 235
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->e()V

    .line 238
    :cond_2
    iput-object v4, p0, Lcom/tencent/liteav/videoencoder/b;->b:Lcom/tencent/liteav/videoencoder/d;

    .line 239
    iput v6, p0, Lcom/tencent/liteav/videoencoder/b;->d:I

    .line 240
    return-void
.end method

.method protected b(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->h:Ljava/util/LinkedList;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 143
    monitor-exit v1

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()J
    .locals 3

    .prologue
    .line 277
    const-wide/16 v0, 0x0

    .line 278
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    if-eqz v2, :cond_0

    .line 279
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoencoder/c;->getRealFPS()J

    move-result-wide v0

    .line 280
    :cond_0
    return-wide v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/tencent/liteav/basic/module/a;->setID(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->a:Lcom/tencent/liteav/videoencoder/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoencoder/c;->setID(Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method
