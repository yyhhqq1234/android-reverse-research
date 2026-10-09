.class public Lcom/tencent/liteav/renderer/d;
.super Lcom/tencent/liteav/renderer/e;
.source "TXCGLSurfaceView.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field a:Lcom/tencent/liteav/renderer/i;

.field b:Lcom/tencent/liteav/renderer/j;

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/basic/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/graphics/SurfaceTexture;

.field private j:Ljavax/microedition/khronos/egl/EGLContext;

.field private k:Lcom/tencent/liteav/basic/d/c;

.field private l:Z

.field private m:[I

.field private n:[F

.field private o:I

.field private p:Z

.field private q:F

.field private r:F

.field private s:I

.field private t:J

.field private u:J

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/Object;

.field private final z:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/16 v5, 0x10

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v1, 0x8

    const/4 v6, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/tencent/liteav/renderer/e;-><init>(Landroid/content/Context;)V

    .line 35
    iput-boolean v6, p0, Lcom/tencent/liteav/renderer/d;->l:Z

    .line 37
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/tencent/liteav/renderer/d;->n:[F

    .line 39
    iput v6, p0, Lcom/tencent/liteav/renderer/d;->o:I

    .line 40
    iput-boolean v6, p0, Lcom/tencent/liteav/renderer/d;->p:Z

    .line 41
    iput v2, p0, Lcom/tencent/liteav/renderer/d;->q:F

    .line 42
    iput v2, p0, Lcom/tencent/liteav/renderer/d;->r:F

    .line 44
    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/liteav/renderer/d;->s:I

    .line 45
    iput-wide v8, p0, Lcom/tencent/liteav/renderer/d;->t:J

    .line 46
    iput-wide v8, p0, Lcom/tencent/liteav/renderer/d;->u:J

    .line 49
    const/16 v0, 0x3000

    iput v0, p0, Lcom/tencent/liteav/renderer/d;->v:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/d;->w:Z

    .line 51
    iput-boolean v6, p0, Lcom/tencent/liteav/renderer/d;->x:Z

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/d;->y:Ljava/lang/Object;

    .line 179
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/d;->z:Ljava/util/Queue;

    .line 56
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/renderer/d;->setEGLContextClientVersion(I)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    .line 57
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/renderer/d;->a(IIIIII)V

    .line 58
    invoke-virtual {p0, p0}, Lcom/tencent/liteav/renderer/d;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/renderer/d;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/tencent/liteav/renderer/d;->s:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/liteav/renderer/d;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/tencent/liteav/renderer/d;->s:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/renderer/d;J)J
    .locals 1

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/tencent/liteav/renderer/d;->u:J

    return-wide p1
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

    .line 188
    monitor-enter p1

    .line 189
    :try_start_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    move v0, v1

    .line 196
    :goto_0
    return v0

    .line 190
    :cond_0
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 191
    monitor-exit p1

    .line 192
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 194
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 196
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/liteav/renderer/d;J)J
    .locals 1

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/tencent/liteav/renderer/d;->t:J

    return-wide p1
.end method

.method static synthetic b(Lcom/tencent/liteav/renderer/d;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->y:Ljava/lang/Object;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 340
    const-wide/16 v0, 0xf

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/d;->l:Z

    .line 121
    return-void
.end method

.method public a(IIIZIII)V
    .locals 10

    .prologue
    .line 124
    iget-object v1, p0, Lcom/tencent/liteav/renderer/d;->k:Lcom/tencent/liteav/basic/d/c;

    if-nez v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 125
    :cond_0
    monitor-enter p0

    .line 126
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/liteav/renderer/d;->e:Z

    if-eqz v1, :cond_1

    monitor-exit p0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 131
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/d;->getWidth()I

    move-result v2

    .line 132
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/d;->getHeight()I

    move-result v3

    .line 133
    if-eqz v3, :cond_5

    int-to-float v1, v2

    int-to-float v4, v3

    div-float/2addr v1, v4

    move v4, v1

    .line 134
    :goto_1
    if-eqz p7, :cond_6

    move/from16 v0, p6

    int-to-float v1, v0

    move/from16 v0, p7

    int-to-float v5, v0

    div-float/2addr v1, v5

    .line 135
    :goto_2
    iget-boolean v5, p0, Lcom/tencent/liteav/renderer/d;->p:Z

    if-ne v5, p4, :cond_2

    iget v5, p0, Lcom/tencent/liteav/renderer/d;->o:I

    if-ne v5, p5, :cond_2

    iget v5, p0, Lcom/tencent/liteav/renderer/d;->q:F

    cmpl-float v5, v5, v4

    if-nez v5, :cond_2

    iget v5, p0, Lcom/tencent/liteav/renderer/d;->r:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_4

    .line 136
    :cond_2
    iput-boolean p4, p0, Lcom/tencent/liteav/renderer/d;->p:Z

    .line 137
    iput p5, p0, Lcom/tencent/liteav/renderer/d;->o:I

    .line 138
    iput v4, p0, Lcom/tencent/liteav/renderer/d;->q:F

    .line 139
    iput v1, p0, Lcom/tencent/liteav/renderer/d;->r:F

    .line 140
    iget v1, p0, Lcom/tencent/liteav/renderer/d;->o:I

    rsub-int v1, v1, 0x2d0

    rem-int/lit16 v4, v1, 0x168

    .line 141
    const/16 v1, 0x5a

    if-eq v4, v1, :cond_3

    const/16 v1, 0x10e

    if-ne v4, v1, :cond_7

    :cond_3
    const/4 v1, 0x1

    move v9, v1

    .line 142
    :goto_3
    if-eqz v9, :cond_8

    move v6, v3

    .line 143
    :goto_4
    if-eqz v9, :cond_9

    .line 150
    :goto_5
    iget-object v1, p0, Lcom/tencent/liteav/renderer/d;->k:Lcom/tencent/liteav/basic/d/c;

    sget-object v3, Lcom/tencent/liteav/basic/d/f;->a:Lcom/tencent/liteav/basic/d/f;

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 151
    invoke-static {v3, v5, v7}, Lcom/tencent/liteav/basic/d/g;->a(Lcom/tencent/liteav/basic/d/f;ZZ)[F

    move-result-object v5

    int-to-float v3, v6

    int-to-float v2, v2

    div-float v6, v3, v2

    if-eqz v9, :cond_a

    const/4 v7, 0x0

    :goto_6
    if-eqz v9, :cond_b

    iget-boolean v8, p0, Lcom/tencent/liteav/renderer/d;->p:Z

    :goto_7
    move/from16 v2, p6

    move/from16 v3, p7

    .line 150
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/liteav/basic/d/c;->a(III[FFZZ)V

    .line 156
    if-eqz v9, :cond_c

    .line 157
    iget-object v1, p0, Lcom/tencent/liteav/renderer/d;->k:Lcom/tencent/liteav/basic/d/c;

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/d/c;->g()V

    .line 160
    :cond_4
    :goto_8
    iget-object v1, p0, Lcom/tencent/liteav/renderer/d;->k:Lcom/tencent/liteav/basic/d/c;

    invoke-virtual {v1, p1}, Lcom/tencent/liteav/basic/d/c;->a(I)I

    goto/16 :goto_0

    .line 133
    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    move v4, v1

    goto :goto_1

    .line 134
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    .line 141
    :cond_7
    const/4 v1, 0x0

    move v9, v1

    goto :goto_3

    :cond_8
    move v6, v2

    .line 142
    goto :goto_4

    :cond_9
    move v2, v3

    .line 143
    goto :goto_5

    .line 151
    :cond_a
    iget-boolean v7, p0, Lcom/tencent/liteav/renderer/d;->p:Z

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    goto :goto_7

    .line 158
    :cond_c
    iget-object v1, p0, Lcom/tencent/liteav/renderer/d;->k:Lcom/tencent/liteav/basic/d/c;

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/d/c;->h()V

    goto :goto_8
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Lcom/tencent/liteav/renderer/d;->z:Ljava/util/Queue;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->z:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/d;->w:Z

    .line 302
    if-eqz p1, :cond_0

    .line 303
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 304
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 305
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/d;->c()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/d;->v:I

    .line 307
    :cond_0
    monitor-enter p0

    .line 308
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/d;->x:Z

    if-eqz v0, :cond_1

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/d;->x:Z

    .line 310
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->i:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->i:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 314
    :cond_1
    monitor-exit p0

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 173
    iget v0, p0, Lcom/tencent/liteav/renderer/d;->v:I

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 174
    const-string v0, "TXCGLSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background capture swapbuffer error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/liteav/renderer/d;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/renderer/d;->v:I

    return v0
.end method

.method public b(Z)V
    .locals 4

    .prologue
    .line 318
    iget-object v1, p0, Lcom/tencent/liteav/renderer/d;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    new-instance v0, Lcom/tencent/liteav/renderer/d$3;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/renderer/d$3;-><init>(Lcom/tencent/liteav/renderer/d;Z)V

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/renderer/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->y:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 336
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->j:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->i:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->z:Ljava/util/Queue;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/renderer/d;->a(Ljava/util/Queue;)Z

    .line 238
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 239
    iget-wide v4, p0, Lcom/tencent/liteav/renderer/d;->u:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    iput-wide v2, p0, Lcom/tencent/liteav/renderer/d;->u:J

    .line 240
    :cond_0
    iget-wide v4, p0, Lcom/tencent/liteav/renderer/d;->u:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/tencent/liteav/renderer/d;->t:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iget v0, p0, Lcom/tencent/liteav/renderer/d;->s:I

    int-to-long v8, v0

    div-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/d;->e()V

    goto :goto_0

    .line 244
    :cond_1
    iget-wide v4, p0, Lcom/tencent/liteav/renderer/d;->t:J

    add-long/2addr v4, v10

    iput-wide v4, p0, Lcom/tencent/liteav/renderer/d;->t:J

    .line 245
    iget-wide v4, p0, Lcom/tencent/liteav/renderer/d;->u:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 246
    iput-wide v10, p0, Lcom/tencent/liteav/renderer/d;->t:J

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/liteav/renderer/d;->u:J

    .line 252
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/d;->w:Z

    if-eqz v0, :cond_4

    .line 285
    :cond_3
    :goto_1
    return-void

    .line 256
    :cond_4
    monitor-enter p0

    .line 257
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/d;->x:Z

    if-nez v0, :cond_5

    .line 258
    monitor-exit p0

    goto :goto_1

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 261
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->i:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_6

    .line 263
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->i:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 264
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->i:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/tencent/liteav/renderer/d;->n:[F

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 266
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/d;->x:Z

    .line 267
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->b:Lcom/tencent/liteav/renderer/j;

    if-eqz v0, :cond_7

    .line 272
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->b:Lcom/tencent/liteav/renderer/j;

    iget-object v2, p0, Lcom/tencent/liteav/renderer/d;->m:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/tencent/liteav/renderer/d;->n:[F

    invoke-interface {v0, v2, v3}, Lcom/tencent/liteav/renderer/j;->a(I[F)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 278
    :cond_7
    :goto_2
    monitor-enter p0

    .line 279
    :try_start_3
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/d;->e:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 280
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 281
    if-eqz v0, :cond_3

    .line 283
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/d;->c()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/d;->v:I

    goto :goto_1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_8
    move v0, v1

    .line 279
    goto :goto_3

    .line 280
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 289
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/d;->l:Z

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->c:Ljava/lang/ref/WeakReference;

    const/16 v1, 0x3ef

    const-string/jumbo v2, "\u9996\u5e27\u753b\u9762\u91c7\u96c6\u5b8c\u6210"

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/basic/util/a;->a(Ljava/lang/ref/WeakReference;ILjava/lang/String;)V

    .line 291
    iput-boolean v3, p0, Lcom/tencent/liteav/renderer/d;->l:Z

    .line 293
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/d;->w:Z

    .line 294
    monitor-enter p0

    .line 296
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/d;->x:Z

    .line 297
    monitor-exit p0

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 204
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/renderer/d;->j:Ljavax/microedition/khronos/egl/EGLContext;

    .line 206
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/liteav/renderer/d;->m:[I

    .line 207
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->m:[I

    invoke-static {}, Lcom/tencent/liteav/basic/d/e;->b()I

    move-result v1

    aput v1, v0, v3

    .line 208
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->m:[I

    aget v0, v0, v3

    if-gtz v0, :cond_1

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/renderer/d;->m:[I

    .line 210
    const-string v0, "TXCGLSurfaceView"

    const-string v1, "create oes texture error!! at glsurfaceview"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/tencent/liteav/renderer/d;->m:[I

    aget v1, v1, v3

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/d;->i:Landroid/graphics/SurfaceTexture;

    .line 215
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->i:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 217
    new-instance v0, Lcom/tencent/liteav/basic/d/c;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/d/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/d;->k:Lcom/tencent/liteav/basic/d/c;

    .line 218
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->k:Lcom/tencent/liteav/basic/d/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/d/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->k:Lcom/tencent/liteav/basic/d/c;

    sget-object v1, Lcom/tencent/liteav/basic/d/g;->e:[F

    sget-object v2, Lcom/tencent/liteav/basic/d/f;->a:Lcom/tencent/liteav/basic/d/f;

    invoke-static {v2, v3, v3}, Lcom/tencent/liteav/basic/d/g;->a(Lcom/tencent/liteav/basic/d/f;ZZ)[F

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/basic/d/c;->a([F[F)V

    .line 221
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->a:Lcom/tencent/liteav/renderer/i;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->a:Lcom/tencent/liteav/renderer/i;

    iget-object v1, p0, Lcom/tencent/liteav/renderer/d;->i:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/renderer/i;->a(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0
.end method

.method public setFPS(I)V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/tencent/liteav/renderer/d$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/renderer/d$1;-><init>(Lcom/tencent/liteav/renderer/d;I)V

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/renderer/d;->a(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public setListener(Lcom/tencent/liteav/renderer/i;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tencent/liteav/renderer/d;->a:Lcom/tencent/liteav/renderer/i;

    .line 107
    return-void
.end method

.method public setNotifyListener(Lcom/tencent/liteav/basic/c/a;)V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/d;->c:Ljava/lang/ref/WeakReference;

    .line 117
    return-void
.end method

.method protected setRunInBackground(Z)V
    .locals 2

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    const-string v0, "TXCGLSurfaceView"

    const-string v1, "background capture enter background"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/d;->e:Z

    .line 89
    monitor-exit p0

    .line 102
    :goto_0
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 91
    :cond_0
    new-instance v0, Lcom/tencent/liteav/renderer/d$2;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/renderer/d$2;-><init>(Lcom/tencent/liteav/renderer/d;)V

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/renderer/d;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setTextureListener(Lcom/tencent/liteav/renderer/j;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tencent/liteav/renderer/d;->b:Lcom/tencent/liteav/renderer/j;

    .line 112
    return-void
.end method
