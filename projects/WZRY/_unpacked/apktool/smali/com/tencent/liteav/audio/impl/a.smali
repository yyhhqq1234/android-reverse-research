.class public Lcom/tencent/liteav/audio/impl/a;
.super Ljava/lang/Object;
.source "TXCAudioRecorderWrapper.java"

# interfaces
.implements Lcom/tencent/liteav/audio/f;


# static fields
.field static b:Lcom/tencent/liteav/audio/impl/a;


# instance fields
.field a:Ljava/lang/Object;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:Z

.field private k:F

.field private l:Landroid/content/Context;

.field private m:Lcom/tencent/liteav/audio/impl/a/b;

.field private n:Lcom/tencent/liteav/audio/impl/Encoder/a;

.field private o:J

.field private p:Lcom/tencent/liteav/audio/f;

.field private q:Landroid/os/HandlerThread;

.field private r:Landroid/os/Handler;

.field private s:Z

.field private volatile t:Z

.field private volatile u:Z

.field private volatile v:Z

.field private w:Lcom/tencent/liteav/audio/impl/c;

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/tencent/liteav/audio/impl/a;

    invoke-direct {v0}, Lcom/tencent/liteav/audio/impl/a;-><init>()V

    sput-object v0, Lcom/tencent/liteav/audio/impl/a;->b:Lcom/tencent/liteav/audio/impl/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget v0, Lcom/tencent/liteav/audio/b;->a:I

    iput v0, p0, Lcom/tencent/liteav/audio/impl/a;->c:I

    .line 28
    sget v0, Lcom/tencent/liteav/audio/b;->b:I

    iput v0, p0, Lcom/tencent/liteav/audio/impl/a;->d:I

    .line 29
    sget v0, Lcom/tencent/liteav/audio/b;->c:I

    iput v0, p0, Lcom/tencent/liteav/audio/impl/a;->e:I

    .line 30
    sget v0, Lcom/tencent/liteav/audio/b;->d:I

    iput v0, p0, Lcom/tencent/liteav/audio/impl/a;->f:I

    .line 31
    sget v0, Lcom/tencent/liteav/audio/b;->e:I

    iput v0, p0, Lcom/tencent/liteav/audio/impl/a;->g:I

    .line 32
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/a;->h:Z

    .line 33
    sget v0, Lcom/tencent/liteav/audio/b;->f:I

    iput v0, p0, Lcom/tencent/liteav/audio/impl/a;->i:I

    .line 34
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/a;->j:Z

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/liteav/audio/impl/a;->k:F

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/a;->o:J

    .line 43
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/a;->s:Z

    .line 45
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/a;->t:Z

    .line 46
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/a;->u:Z

    .line 47
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/a;->v:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->a:Ljava/lang/Object;

    .line 52
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/a;->x:Z

    .line 53
    iput v2, p0, Lcom/tencent/liteav/audio/impl/a;->y:I

    .line 54
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/a;->z:Z

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/a;F)F
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/tencent/liteav/audio/impl/a;->k:F

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/a;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/tencent/liteav/audio/impl/a;->g:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/a;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/tencent/liteav/audio/impl/a;->g:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/a;J)J
    .locals 1

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/tencent/liteav/audio/impl/a;->o:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/a;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/a;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a;->q:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/a;Lcom/tencent/liteav/audio/f;)Lcom/tencent/liteav/audio/f;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a;->p:Lcom/tencent/liteav/audio/f;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/a;Lcom/tencent/liteav/audio/impl/Encoder/a;)Lcom/tencent/liteav/audio/impl/Encoder/a;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a;->n:Lcom/tencent/liteav/audio/impl/Encoder/a;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/a;Lcom/tencent/liteav/audio/impl/a/b;)Lcom/tencent/liteav/audio/impl/a/b;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a;->m:Lcom/tencent/liteav/audio/impl/a/b;

    return-object p1
.end method

.method public static a()Lcom/tencent/liteav/audio/impl/a;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/tencent/liteav/audio/impl/a;->b:Lcom/tencent/liteav/audio/impl/a;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/a;Ljava/lang/ref/WeakReference;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/audio/impl/a;->a(Ljava/lang/ref/WeakReference;I)V

    return-void
.end method

.method private a(Ljava/lang/ref/WeakReference;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/audio/f;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 495
    sget v0, Lcom/tencent/liteav/audio/d;->w:I

    if-eq v0, p2, :cond_3

    .line 496
    iget v0, p0, Lcom/tencent/liteav/audio/impl/a;->g:I

    sget v1, Lcom/tencent/liteav/audio/d;->B:I

    if-eq v0, v1, :cond_0

    .line 497
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->j:Z

    if-eqz v0, :cond_2

    .line 498
    new-instance v0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;

    invoke-direct {v0}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->n:Lcom/tencent/liteav/audio/impl/Encoder/a;

    .line 506
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->n:Lcom/tencent/liteav/audio/impl/Encoder/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->n:Lcom/tencent/liteav/audio/impl/Encoder/a;

    iget v1, p0, Lcom/tencent/liteav/audio/impl/a;->y:I

    if-nez v1, :cond_4

    iget v2, p0, Lcom/tencent/liteav/audio/impl/a;->c:I

    :goto_1
    iget v3, p0, Lcom/tencent/liteav/audio/impl/a;->d:I

    iget v4, p0, Lcom/tencent/liteav/audio/impl/a;->e:I

    move v1, p2

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/tencent/liteav/audio/impl/Encoder/a;->init(IIIILjava/lang/ref/WeakReference;)V

    .line 507
    :cond_1
    return-void

    .line 500
    :cond_2
    new-instance v0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;

    invoke-direct {v0}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->n:Lcom/tencent/liteav/audio/impl/Encoder/a;

    goto :goto_0

    .line 503
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->n:Lcom/tencent/liteav/audio/impl/Encoder/a;

    goto :goto_0

    .line 506
    :cond_4
    iget v2, p0, Lcom/tencent/liteav/audio/impl/a;->y:I

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/a;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/a;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/audio/impl/a;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/tencent/liteav/audio/impl/a;->f:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/audio/impl/a;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a;->l:Landroid/content/Context;

    return-object p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 510
    if-nez p1, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 512
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/liteav/audio/impl/a;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/liteav/audio/impl/a;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/a;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/liteav/audio/impl/a;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/tencent/liteav/audio/impl/a;->i:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/liteav/audio/impl/a;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/tencent/liteav/audio/impl/a;->c:I

    return p1
.end method

.method static synthetic c(Lcom/tencent/liteav/audio/impl/a;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/a;->s:Z

    return p1
.end method

.method static synthetic d(Lcom/tencent/liteav/audio/impl/a;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/tencent/liteav/audio/impl/a;->y:I

    return p1
.end method

.method static synthetic d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->m:Lcom/tencent/liteav/audio/impl/a/b;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/liteav/audio/impl/a;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/a;->z:Z

    return p1
.end method

.method static synthetic e(Lcom/tencent/liteav/audio/impl/a;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/tencent/liteav/audio/impl/a;->d:I

    return p1
.end method

.method static synthetic e(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/Encoder/a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->n:Lcom/tencent/liteav/audio/impl/Encoder/a;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/liteav/audio/impl/a;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/a;->t:Z

    return p1
.end method

.method static synthetic f(Lcom/tencent/liteav/audio/impl/a;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/tencent/liteav/audio/impl/a;->e:I

    return p1
.end method

.method static synthetic f(Lcom/tencent/liteav/audio/impl/a;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/a;->o:J

    return-wide v0
.end method

.method static synthetic f(Lcom/tencent/liteav/audio/impl/a;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/a;->v:Z

    return p1
.end method

.method static synthetic g(Lcom/tencent/liteav/audio/impl/a;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/tencent/liteav/audio/impl/a;->i:I

    return p1
.end method

.method static synthetic g(Lcom/tencent/liteav/audio/impl/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/liteav/audio/impl/a;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/tencent/liteav/audio/impl/a;->c:I

    return v0
.end method

.method static synthetic i(Lcom/tencent/liteav/audio/impl/a;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/tencent/liteav/audio/impl/a;->d:I

    return v0
.end method

.method static synthetic j(Lcom/tencent/liteav/audio/impl/a;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/tencent/liteav/audio/impl/a;->e:I

    return v0
.end method

.method static synthetic k(Lcom/tencent/liteav/audio/impl/a;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/tencent/liteav/audio/impl/a;->f:I

    return v0
.end method

.method static synthetic l(Lcom/tencent/liteav/audio/impl/a;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->z:Z

    return v0
.end method

.method static synthetic m(Lcom/tencent/liteav/audio/impl/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/liteav/audio/impl/a;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->s:Z

    return v0
.end method

.method static synthetic o(Lcom/tencent/liteav/audio/impl/a;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->x:Z

    return v0
.end method

.method static synthetic p(Lcom/tencent/liteav/audio/impl/a;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/tencent/liteav/audio/impl/a;->y:I

    return v0
.end method

.method static synthetic q(Lcom/tencent/liteav/audio/impl/a;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->q:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic r(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/f;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->p:Lcom/tencent/liteav/audio/f;

    return-object v0
.end method

.method static synthetic s(Lcom/tencent/liteav/audio/impl/a;)F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/tencent/liteav/audio/impl/a;->k:F

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->w:Lcom/tencent/liteav/audio/impl/c;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/tencent/liteav/audio/impl/c;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/audio/impl/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->w:Lcom/tencent/liteav/audio/impl/c;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->w:Lcom/tencent/liteav/audio/impl/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/c;->a()V

    .line 277
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->v:Z

    if-eqz v0, :cond_1

    .line 278
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->a:Ljava/lang/Object;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :cond_1
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeInitTraeEngine(Landroid/content/Context;)V

    .line 288
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->u:Z

    if-nez v0, :cond_5

    .line 289
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->q:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 290
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TXCAudioRecord"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->q:Landroid/os/HandlerThread;

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->q:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 293
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a;->q:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    .line 295
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 296
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/liteav/audio/impl/a$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/tencent/liteav/audio/impl/a$9;-><init>(Lcom/tencent/liteav/audio/impl/a;Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    :cond_4
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a;->l:Landroid/content/Context;

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->t:Z

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->u:Z

    .line 320
    sget v0, Lcom/tencent/liteav/audio/d;->a:I

    .line 322
    :goto_1
    return v0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 322
    :cond_5
    sget v0, Lcom/tencent/liteav/audio/d;->c:I

    goto :goto_1
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/tencent/liteav/audio/impl/a;->c:I

    .line 81
    return-void
.end method

.method public a(ILandroid/content/Context;)V
    .locals 3

    .prologue
    .line 158
    sget v0, Lcom/tencent/liteav/audio/d;->B:I

    if-ne p1, v0, :cond_0

    .line 159
    invoke-static {p2}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeCheckTraeEngine(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const-string v0, "TXCAudioRecord"

    const-string v1, "start trae aec failed"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget p1, Lcom/tencent/liteav/audio/d;->A:I

    .line 164
    :cond_0
    const-string v0, "TXCAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recorder setAECType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->u:Z

    if-eqz v0, :cond_2

    .line 167
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/liteav/audio/impl/a$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/tencent/liteav/audio/impl/a$6;-><init>(Lcom/tencent/liteav/audio/impl/a;ILjava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    iput p1, p0, Lcom/tencent/liteav/audio/impl/a;->g:I

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->p:Lcom/tencent/liteav/audio/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->p:Lcom/tencent/liteav/audio/f;

    invoke-interface {v0, p1, p2}, Lcom/tencent/liteav/audio/f;->a(ILjava/lang/String;)V

    .line 492
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/audio/f;)V
    .locals 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->u:Z

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/a$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/audio/impl/a$1;-><init>(Lcom/tencent/liteav/audio/impl/a;Lcom/tencent/liteav/audio/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a;->p:Lcom/tencent/liteav/audio/f;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->u:Z

    if-nez v0, :cond_0

    .line 62
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/a;->s:Z

    .line 64
    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 4

    .prologue
    .line 444
    if-nez p1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->u:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->s:Z

    if-eqz v0, :cond_0

    .line 446
    array-length v0, p1

    const/16 v1, 0x800

    if-eq v0, v1, :cond_2

    array-length v0, p1

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 448
    :cond_2
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    .line 449
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/a;->p:Lcom/tencent/liteav/audio/f;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/a;->p:Lcom/tencent/liteav/audio/f;

    invoke-interface {v2, p1, v0, v1}, Lcom/tencent/liteav/audio/f;->a([BJ)V

    .line 450
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/tencent/liteav/audio/impl/a;->k:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/a;->n:Lcom/tencent/liteav/audio/impl/Encoder/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/a;->n:Lcom/tencent/liteav/audio/impl/Encoder/a;

    invoke-interface {v2, p1, v0, v1}, Lcom/tencent/liteav/audio/impl/Encoder/a;->doEncodec([BJ)V

    goto :goto_0
.end method

.method public a([BJ)V
    .locals 4

    .prologue
    .line 460
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 462
    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/a;->u:Z

    if-eqz v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/liteav/audio/impl/a$4;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/tencent/liteav/audio/impl/a$4;-><init>(Lcom/tencent/liteav/audio/impl/a;[BJ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 476
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/tencent/liteav/audio/impl/a;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/tencent/liteav/audio/impl/a;->d:I

    .line 89
    return-void
.end method

.method public b(Z)V
    .locals 3

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->u:Z

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 118
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/liteav/audio/impl/a$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/tencent/liteav/audio/impl/a$5;-><init>(Lcom/tencent/liteav/audio/impl/a;ZLjava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/a;->j:Z

    .line 126
    return-void
.end method

.method public b([BJ)V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->p:Lcom/tencent/liteav/audio/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->p:Lcom/tencent/liteav/audio/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/liteav/audio/f;->b([BJ)V

    .line 487
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/tencent/liteav/audio/impl/a;->d:I

    return v0
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->u:Z

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/a$7;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/audio/impl/a$7;-><init>(Lcom/tencent/liteav/audio/impl/a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iput p1, p0, Lcom/tencent/liteav/audio/impl/a;->f:I

    goto :goto_0
.end method

.method public c(Z)V
    .locals 3

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/a;->z:Z

    .line 250
    const-string v0, "TXCAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/liteav/audio/impl/a;->z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->u:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/a$8;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/audio/impl/a$8;-><init>(Lcom/tencent/liteav/audio/impl/a;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    :cond_0
    return-void
.end method

.method public c([BJ)V
    .locals 2

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->u:Z

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/a$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/liteav/audio/impl/a$3;-><init>(Lcom/tencent/liteav/audio/impl/a;[BJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 441
    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/tencent/liteav/audio/impl/a;->e:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 525
    iput p1, p0, Lcom/tencent/liteav/audio/impl/a;->y:I

    .line 526
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 518
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/a;->x:Z

    .line 519
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->m:Lcom/tencent/liteav/audio/impl/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->m:Lcom/tencent/liteav/audio/impl/a/b;

    instance-of v0, v0, Lcom/tencent/liteav/audio/impl/a/a;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->m:Lcom/tencent/liteav/audio/impl/a/b;

    check-cast v0, Lcom/tencent/liteav/audio/impl/a/a;

    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/a;->x:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/a/a;->b(Z)V

    .line 522
    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/tencent/liteav/audio/impl/a;->g:I

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->u:Z

    return v0
.end method

.method public g()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->w:Lcom/tencent/liteav/audio/impl/c;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->w:Lcom/tencent/liteav/audio/impl/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/c;->b()V

    .line 365
    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/a;->w:Lcom/tencent/liteav/audio/impl/c;

    .line 368
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->u:Z

    if-eqz v0, :cond_2

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->v:Z

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/a;->u:Z

    .line 372
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a;->r:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/a$2;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/audio/impl/a$2;-><init>(Lcom/tencent/liteav/audio/impl/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    :cond_1
    sget v0, Lcom/tencent/liteav/audio/d;->a:I

    .line 428
    :goto_0
    return v0

    :cond_2
    sget v0, Lcom/tencent/liteav/audio/d;->c:I

    goto :goto_0
.end method
