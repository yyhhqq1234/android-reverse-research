.class public Lcom/tencent/liteav/basic/b/a;
.super Ljava/lang/Object;
.source "TXCVideoJitterBuffer.java"


# instance fields
.field private a:Lcom/tencent/liteav/basic/b/b;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/tencent/liteav/basic/f/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Landroid/os/HandlerThread;

.field private j:Landroid/os/Handler;

.field private k:Z

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v4, p0, Lcom/tencent/liteav/basic/b/a;->a:Lcom/tencent/liteav/basic/b/b;

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/basic/b/a;->b:Ljava/util/LinkedList;

    .line 21
    iput-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->c:J

    .line 22
    const-wide/16 v0, 0xf

    iput-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->d:J

    .line 23
    iput-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->e:J

    .line 25
    iput-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->f:J

    .line 26
    iput-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->g:J

    .line 27
    iput-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->h:J

    .line 29
    iput-object v4, p0, Lcom/tencent/liteav/basic/b/a;->i:Landroid/os/HandlerThread;

    .line 30
    iput-object v4, p0, Lcom/tencent/liteav/basic/b/a;->j:Landroid/os/Handler;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/basic/b/a;->k:Z

    .line 32
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->l:J

    .line 33
    iput-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->m:J

    .line 34
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->n:J

    .line 35
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->o:J

    .line 36
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/basic/b/a;->p:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoJitterBufferHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/basic/b/a;->i:Landroid/os/HandlerThread;

    .line 40
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->p:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/liteav/basic/b/a;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/basic/b/a;->j:Landroid/os/Handler;

    .line 44
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->p:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/b/a;Lcom/tencent/liteav/basic/b/b;)Lcom/tencent/liteav/basic/b/b;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/tencent/liteav/basic/b/a;->a:Lcom/tencent/liteav/basic/b/b;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/b/a;)Lcom/tencent/liteav/basic/f/b;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tencent/liteav/basic/b/a;->g()Lcom/tencent/liteav/basic/f/b;

    move-result-object v0

    return-object v0
.end method

.method private a(J)V
    .locals 11

    .prologue
    const-wide/16 v8, 0xc8

    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    .line 257
    iget-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->h:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 258
    iget-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->g:J

    const-wide/16 v2, 0x5

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 259
    iget-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->f:J

    iget-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->g:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->d:J

    .line 260
    iget-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->d:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_2

    .line 261
    iput-wide v8, p0, Lcom/tencent/liteav/basic/b/a;->d:J

    .line 266
    :cond_0
    :goto_0
    iput-wide v4, p0, Lcom/tencent/liteav/basic/b/a;->f:J

    .line 267
    iput-wide v4, p0, Lcom/tencent/liteav/basic/b/a;->g:J

    .line 276
    :cond_1
    :goto_1
    iput-wide p1, p0, Lcom/tencent/liteav/basic/b/a;->h:J

    .line 277
    return-void

    .line 262
    :cond_2
    iget-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->d:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    .line 263
    iput-wide v6, p0, Lcom/tencent/liteav/basic/b/a;->d:J

    goto :goto_0

    .line 269
    :cond_3
    iget-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->h:J

    sub-long v0, p1, v0

    .line 270
    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    .line 271
    iget-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->f:J

    const-wide/16 v4, 0x3e8

    div-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->f:J

    .line 272
    iget-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->g:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->g:J

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/b/a;J)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/basic/b/a;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/b/a;Z)Z
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/tencent/liteav/basic/b/a;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/basic/b/a;J)J
    .locals 1

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/tencent/liteav/basic/b/a;->c:J

    return-wide p1
.end method

.method static synthetic b(Lcom/tencent/liteav/basic/b/a;)Lcom/tencent/liteav/basic/b/b;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->a:Lcom/tencent/liteav/basic/b/b;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/liteav/basic/b/a;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/tencent/liteav/basic/b/a;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/liteav/basic/b/a;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tencent/liteav/basic/b/a;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->p:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 62
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->j:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/basic/b/a$2;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/basic/b/a$2;-><init>(Lcom/tencent/liteav/basic/b/a;)V

    iget-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->l:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->p:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 77
    return-void
.end method

.method static synthetic e(Lcom/tencent/liteav/basic/b/a;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tencent/liteav/basic/b/a;->f()V

    return-void
.end method

.method static synthetic f(Lcom/tencent/liteav/basic/b/a;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 116
    iput-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->c:J

    .line 117
    const-wide/16 v0, 0xf

    iput-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->d:J

    .line 118
    iput-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->e:J

    .line 119
    iput-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->f:J

    .line 120
    iput-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->g:J

    .line 121
    iput-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->h:J

    .line 122
    return-void
.end method

.method static synthetic g(Lcom/tencent/liteav/basic/b/a;)J
    .locals 4

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->c:J

    return-wide v0
.end method

.method private g()Lcom/tencent/liteav/basic/f/b;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 157
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->e:J

    sub-long/2addr v0, v2

    .line 158
    invoke-direct {p0}, Lcom/tencent/liteav/basic/b/a;->h()J

    move-result-wide v2

    .line 160
    iget-wide v4, p0, Lcom/tencent/liteav/basic/b/a;->m:J

    add-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    .line 166
    :cond_0
    iget-wide v4, p0, Lcom/tencent/liteav/basic/b/a;->e:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 167
    iget-wide v4, p0, Lcom/tencent/liteav/basic/b/a;->m:J

    add-long/2addr v0, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->m:J

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/basic/b/a;->i()Lcom/tencent/liteav/basic/f/b;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_2

    .line 171
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->e:J

    goto :goto_0

    .line 173
    :cond_2
    iput-wide v6, p0, Lcom/tencent/liteav/basic/b/a;->m:J

    goto :goto_0
.end method

.method private h()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v2, 0x0

    .line 219
    .line 220
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->a:Lcom/tencent/liteav/basic/b/b;

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->a:Lcom/tencent/liteav/basic/b/b;

    invoke-interface {v0}, Lcom/tencent/liteav/basic/b/b;->e()J

    move-result-wide v0

    .line 224
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/liteav/basic/b/a;->c()J

    move-result-wide v4

    .line 225
    cmp-long v6, v2, v0

    if-nez v6, :cond_2

    .line 226
    mul-long v0, v4, v8

    iget-wide v4, p0, Lcom/tencent/liteav/basic/b/a;->d:J

    div-long/2addr v0, v4

    iget-wide v4, p0, Lcom/tencent/liteav/basic/b/a;->n:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 228
    iget-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->d:J

    div-long v2, v8, v0

    .line 244
    :cond_0
    :goto_1
    return-wide v2

    .line 231
    :cond_1
    iget-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->d:J

    div-long v0, v8, v0

    iget-wide v4, p0, Lcom/tencent/liteav/basic/b/a;->o:J

    sub-long/2addr v0, v4

    .line 232
    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    move-wide v2, v0

    goto :goto_1

    .line 238
    :cond_2
    cmp-long v2, v4, v2

    if-nez v2, :cond_3

    .line 239
    iget-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->d:J

    div-long v2, v8, v0

    goto :goto_1

    .line 244
    :cond_3
    div-long v2, v0, v4

    goto :goto_1

    :cond_4
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic h(Lcom/tencent/liteav/basic/b/a;)J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->c:J

    return-wide v0
.end method

.method private i()Lcom/tencent/liteav/basic/f/b;
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    iget-object v1, p0, Lcom/tencent/liteav/basic/b/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/basic/f/b;

    .line 251
    iget-object v1, p0, Lcom/tencent/liteav/basic/b/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 253
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->p:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 81
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->j:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/basic/b/a$3;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/basic/b/a$3;-><init>(Lcom/tencent/liteav/basic/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->p:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 91
    invoke-direct {p0}, Lcom/tencent/liteav/basic/b/a;->e()V

    .line 92
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->p:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 180
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->j:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/basic/b/a$6;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/basic/b/a$6;-><init>(Lcom/tencent/liteav/basic/b/a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->p:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 193
    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/b/b;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->p:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 49
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->j:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/basic/b/a$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/basic/b/a$1;-><init>(Lcom/tencent/liteav/basic/b/a;Lcom/tencent/liteav/basic/b/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->p:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/f/b;)V
    .locals 2

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->p:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 143
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->j:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->j:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/basic/b/a$5;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/basic/b/a$5;-><init>(Lcom/tencent/liteav/basic/b/a;Lcom/tencent/liteav/basic/f/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->p:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->p:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 96
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->j:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/basic/b/a$4;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/basic/b/a$4;-><init>(Lcom/tencent/liteav/basic/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/basic/b/a;->j:Landroid/os/Handler;

    .line 111
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->p:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 112
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/tencent/liteav/basic/b/a;->c:J

    return-wide v0
.end method

.method public d()J
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tencent/liteav/basic/b/a;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v0, v0

    .line 208
    iget-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->c:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 209
    iget-wide v2, p0, Lcom/tencent/liteav/basic/b/a;->c:J

    sub-long v0, v2, v0

    .line 211
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 280
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/liteav/basic/b/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    goto :goto_0
.end method
