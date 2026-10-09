.class public Lcom/tencent/liteav/audio/impl/b/a;
.super Ljava/lang/Object;
.source "TXCAudioRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/impl/b/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/Thread;

.field private c:Landroid/media/AudioTrack;

.field private d:I

.field private e:I

.field private f:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/tencent/liteav/audio/impl/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:J

.field private o:Z

.field private p:Lcom/tencent/liteav/audio/impl/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/tencent/liteav/audio/impl/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/audio/impl/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/audio/impl/b/b;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v2, p0, Lcom/tencent/liteav/audio/impl/b/a;->d:I

    .line 28
    iput v2, p0, Lcom/tencent/liteav/audio/impl/b/a;->e:I

    .line 30
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 32
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/impl/b/a;->g:Z

    .line 35
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->h:I

    .line 36
    iput v1, p0, Lcom/tencent/liteav/audio/impl/b/a;->i:I

    .line 37
    const/16 v0, 0x10

    iput v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->j:I

    .line 38
    iput v2, p0, Lcom/tencent/liteav/audio/impl/b/a;->k:I

    .line 41
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/b/a;->l:Z

    .line 44
    iput v2, p0, Lcom/tencent/liteav/audio/impl/b/a;->m:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->n:J

    .line 46
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/b/a;->o:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->p:Lcom/tencent/liteav/audio/impl/b/b;

    .line 51
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/b/a;->p:Lcom/tencent/liteav/audio/impl/b/b;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/b/a;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/tencent/liteav/audio/impl/b/a;->m:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/b/a;J)J
    .locals 1

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/tencent/liteav/audio/impl/b/a;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/b/a;)Landroid/media/AudioTrack;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->c:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/b/a;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/b/a;->c:Landroid/media/AudioTrack;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/liteav/audio/impl/b/a;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->i:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/liteav/audio/impl/b/a;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/tencent/liteav/audio/impl/b/a;->d:I

    return p1
.end method

.method static synthetic c(Lcom/tencent/liteav/audio/impl/b/a;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->j:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/liteav/audio/impl/b/a;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/tencent/liteav/audio/impl/b/a;->e:I

    return p1
.end method

.method static synthetic d(Lcom/tencent/liteav/audio/impl/b/a;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->h:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/liteav/audio/impl/b/a;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->m:I

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/b/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    iget v2, p0, Lcom/tencent/liteav/audio/impl/b/a;->e:I

    if-le v1, v2, :cond_0

    .line 244
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/b/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    sget-object v1, Lcom/tencent/liteav/audio/impl/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop audio item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", queue size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/b/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method static synthetic f(Lcom/tencent/liteav/audio/impl/b/a;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->g:Z

    return v0
.end method

.method static synthetic g(Lcom/tencent/liteav/audio/impl/b/a;)Lcom/tencent/liteav/audio/impl/b/b;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->p:Lcom/tencent/liteav/audio/impl/b/b;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/liteav/audio/impl/b/a;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/liteav/audio/impl/b/a;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->l:Z

    return v0
.end method

.method static synthetic j(Lcom/tencent/liteav/audio/impl/b/a;)J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->n:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->o:Z

    .line 73
    return-void
.end method

.method public a(III)V
    .locals 1

    .prologue
    .line 65
    iput p1, p0, Lcom/tencent/liteav/audio/impl/b/a;->h:I

    .line 66
    iput p2, p0, Lcom/tencent/liteav/audio/impl/b/a;->i:I

    .line 67
    iput p3, p0, Lcom/tencent/liteav/audio/impl/b/a;->j:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->o:Z

    .line 69
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/b/a;->l:Z

    .line 237
    return-void
.end method

.method public a([BJ)V
    .locals 4

    .prologue
    .line 218
    monitor-enter p0

    .line 219
    :try_start_0
    iget v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->e:I

    if-nez v0, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->h:I

    if-eqz v0, :cond_0

    .line 220
    const-wide/16 v0, 0x3e8

    iget v2, p0, Lcom/tencent/liteav/audio/impl/b/a;->i:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    long-to-int v0, v0

    array-length v1, p1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/liteav/audio/impl/b/a;->h:I

    div-int/2addr v0, v1

    .line 221
    iput v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->k:I

    .line 222
    if-eqz v0, :cond_0

    .line 223
    const/16 v1, 0x15e

    div-int/2addr v1, v0

    iput v1, p0, Lcom/tencent/liteav/audio/impl/b/a;->d:I

    .line 224
    const/16 v1, 0xc8

    div-int v0, v1, v0

    iput v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->e:I

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/liteav/audio/impl/b/a;->d:I

    if-le v0, v1, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/b/a;->e()V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/tencent/liteav/audio/impl/b/a$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/liteav/audio/impl/b/a$a;-><init>(Lcom/tencent/liteav/audio/impl/b/a;[BJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 232
    monitor-exit p0

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->o:Z

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->b:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->g:Z

    .line 84
    new-instance v0, Lcom/tencent/liteav/audio/impl/b/a$1;

    const-string v1, "RTMP_AUDIO_PLAY"

    invoke-direct {v0, p0, v1}, Lcom/tencent/liteav/audio/impl/b/a$1;-><init>(Lcom/tencent/liteav/audio/impl/b/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->b:Ljava/lang/Thread;

    .line 199
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public c()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 204
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 205
    iput-boolean v3, p0, Lcom/tencent/liteav/audio/impl/b/a;->g:Z

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/tencent/liteav/audio/impl/b/a$a;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/tencent/liteav/audio/impl/b/a$a;-><init>(Lcom/tencent/liteav/audio/impl/b/a;[BJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iput-wide v8, p0, Lcom/tencent/liteav/audio/impl/b/a;->n:J

    .line 212
    iput-object v6, p0, Lcom/tencent/liteav/audio/impl/b/a;->b:Ljava/lang/Thread;

    .line 214
    :cond_1
    iput v3, p0, Lcom/tencent/liteav/audio/impl/b/a;->k:I

    .line 215
    return-void

    .line 210
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/b/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
