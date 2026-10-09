.class final Lcom/tencent/liteav/txcvodplayer/g$b;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/tencent/ijk/media/player/ISurfaceTextureHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/graphics/SurfaceTexture;

.field private b:Z

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/txcvodplayer/g;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/tencent/liteav/txcvodplayer/a$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/g;)V
    .locals 2
    .param p1    # Lcom/tencent/liteav/txcvodplayer/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->e:Z

    .line 240
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->f:Z

    .line 241
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->g:Z

    .line 244
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->i:Ljava/util/Map;

    .line 247
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->h:Ljava/lang/ref/WeakReference;

    .line 248
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/g$b;)Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->a:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 367
    const-string v0, "TextureRenderView"

    const-string/jumbo v1, "willDetachFromWindow()"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->f:Z

    .line 369
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->a:Landroid/graphics/SurfaceTexture;

    .line 256
    return-void
.end method

.method public a(Lcom/tencent/liteav/txcvodplayer/a$a;)V
    .locals 4
    .param p1    # Lcom/tencent/liteav/txcvodplayer/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 259
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const/4 v0, 0x0

    .line 262
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->a:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 263
    if-nez v0, :cond_0

    .line 264
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/g$a;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/g;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v0, v2, p0}, Lcom/tencent/liteav/txcvodplayer/g$a;-><init>(Lcom/tencent/liteav/txcvodplayer/g;Landroid/graphics/SurfaceTexture;Lcom/tencent/ijk/media/player/ISurfaceTextureHost;)V

    move-object v0, v1

    .line 265
    :cond_0
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->c:I

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->d:I

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/a$b;II)V

    .line 268
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->b:Z

    if-eqz v1, :cond_3

    .line 269
    if-nez v0, :cond_2

    .line 270
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/g$a;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/g;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v0, v2, p0}, Lcom/tencent/liteav/txcvodplayer/g$a;-><init>(Lcom/tencent/liteav/txcvodplayer/g;Landroid/graphics/SurfaceTexture;Lcom/tencent/ijk/media/player/ISurfaceTextureHost;)V

    move-object v0, v1

    .line 271
    :cond_2
    const/4 v1, 0x0

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->c:I

    iget v3, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->d:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/tencent/liteav/txcvodplayer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/a$b;III)V

    .line 273
    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->e:Z

    .line 252
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 372
    const-string v0, "TextureRenderView"

    const-string v1, "didDetachFromWindow()"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->g:Z

    .line 374
    return-void
.end method

.method public b(Lcom/tencent/liteav/txcvodplayer/a$a;)V
    .locals 1
    .param p1    # Lcom/tencent/liteav/txcvodplayer/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 276
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 281
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->a:Landroid/graphics/SurfaceTexture;

    .line 282
    iput-boolean v3, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->b:Z

    .line 283
    iput v3, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->c:I

    .line 284
    iput v3, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->d:I

    .line 286
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/g$a;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/g;

    invoke-direct {v1, v0, p1, p0}, Lcom/tencent/liteav/txcvodplayer/g$a;-><init>(Lcom/tencent/liteav/txcvodplayer/g;Landroid/graphics/SurfaceTexture;Lcom/tencent/ijk/media/player/ISurfaceTextureHost;)V

    .line 287
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/a$a;

    .line 288
    invoke-interface {v0, v1, v3, v3}, Lcom/tencent/liteav/txcvodplayer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/a$b;II)V

    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 307
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->a:Landroid/graphics/SurfaceTexture;

    .line 308
    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->b:Z

    .line 309
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->c:I

    .line 310
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->d:I

    .line 312
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/g$a;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/g;

    invoke-direct {v1, v0, p1, p0}, Lcom/tencent/liteav/txcvodplayer/g$a;-><init>(Lcom/tencent/liteav/txcvodplayer/g;Landroid/graphics/SurfaceTexture;Lcom/tencent/ijk/media/player/ISurfaceTextureHost;)V

    .line 313
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/a$a;

    .line 314
    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcvodplayer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/a$b;)V

    goto :goto_0

    .line 317
    :cond_0
    const-string v0, "TextureRenderView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureDestroyed: destroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->e:Z

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .prologue
    .line 294
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->a:Landroid/graphics/SurfaceTexture;

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->b:Z

    .line 296
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->c:I

    .line 297
    iput p3, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->d:I

    .line 299
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/g$a;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/g;

    invoke-direct {v1, v0, p1, p0}, Lcom/tencent/liteav/txcvodplayer/g$a;-><init>(Lcom/tencent/liteav/txcvodplayer/g;Landroid/graphics/SurfaceTexture;Lcom/tencent/ijk/media/player/ISurfaceTextureHost;)V

    .line 300
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/a$a;

    .line 301
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, p2, p3}, Lcom/tencent/liteav/txcvodplayer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/a$b;III)V

    goto :goto_0

    .line 303
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 331
    if-nez p1, :cond_0

    .line 332
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: null"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->g:Z

    if-eqz v0, :cond_3

    .line 334
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->a:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_1

    .line 335
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release different SurfaceTexture"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 337
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->e:Z

    if-nez v0, :cond_2

    .line 338
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): release detached SurfaceTexture"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 341
    :cond_2
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: didDetachFromWindow(): already released by TextureView"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->f:Z

    if-eqz v0, :cond_6

    .line 344
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->a:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_4

    .line 345
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): release different SurfaceTexture"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 347
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->e:Z

    if-nez v0, :cond_5

    .line 348
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): re-attach SurfaceTexture to TextureView"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0, v2}, Lcom/tencent/liteav/txcvodplayer/g$b;->a(Z)V

    goto :goto_0

    .line 351
    :cond_5
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: willDetachFromWindow(): will released by TextureView"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_6
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->a:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_7

    .line 355
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: release different SurfaceTexture"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 357
    :cond_7
    iget-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/g$b;->e:Z

    if-nez v0, :cond_8

    .line 358
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: re-attach SurfaceTexture to TextureView"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0, v2}, Lcom/tencent/liteav/txcvodplayer/g$b;->a(Z)V

    goto :goto_0

    .line 361
    :cond_8
    const-string v0, "TextureRenderView"

    const-string v1, "releaseSurfaceTexture: alive: will released by TextureView"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
