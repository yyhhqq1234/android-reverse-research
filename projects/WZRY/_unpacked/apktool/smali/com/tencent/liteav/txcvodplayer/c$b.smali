.class final Lcom/tencent/liteav/txcvodplayer/c$b;
.super Ljava/lang/Object;
.source "SurfaceRenderView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/view/SurfaceHolder;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/txcvodplayer/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
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
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/c;)V
    .locals 1
    .param p1    # Lcom/tencent/liteav/txcvodplayer/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->g:Ljava/util/Map;

    .line 207
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->f:Ljava/lang/ref/WeakReference;

    .line 208
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/txcvodplayer/a$a;)V
    .locals 4
    .param p1    # Lcom/tencent/liteav/txcvodplayer/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 211
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->a:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_1

    .line 215
    if-nez v0, :cond_0

    .line 216
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/c$a;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/c;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->a:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v0, v2}, Lcom/tencent/liteav/txcvodplayer/c$a;-><init>(Lcom/tencent/liteav/txcvodplayer/c;Landroid/view/SurfaceHolder;)V

    move-object v0, v1

    .line 217
    :cond_0
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->d:I

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->e:I

    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/a$b;II)V

    .line 220
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->b:Z

    if-eqz v1, :cond_3

    .line 221
    if-nez v0, :cond_2

    .line 222
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/c$a;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/c;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->a:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v0, v2}, Lcom/tencent/liteav/txcvodplayer/c$a;-><init>(Lcom/tencent/liteav/txcvodplayer/c;Landroid/view/SurfaceHolder;)V

    move-object v0, v1

    .line 223
    :cond_2
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->c:I

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->d:I

    iget v3, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->e:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/tencent/liteav/txcvodplayer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/a$b;III)V

    .line 225
    :cond_3
    return-void
.end method

.method public b(Lcom/tencent/liteav/txcvodplayer/a$a;)V
    .locals 1
    .param p1    # Lcom/tencent/liteav/txcvodplayer/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .prologue
    .line 262
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->a:Landroid/view/SurfaceHolder;

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->b:Z

    .line 264
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->c:I

    .line 265
    iput p3, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->d:I

    .line 266
    iput p4, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->e:I

    .line 270
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/c$a;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/c;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->a:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v0, v2}, Lcom/tencent/liteav/txcvodplayer/c$a;-><init>(Lcom/tencent/liteav/txcvodplayer/c;Landroid/view/SurfaceHolder;)V

    .line 271
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->g:Ljava/util/Map;

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

    .line 272
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/tencent/liteav/txcvodplayer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/a$b;III)V

    goto :goto_0

    .line 274
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->a:Landroid/view/SurfaceHolder;

    .line 234
    iput-boolean v3, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->b:Z

    .line 235
    iput v3, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->c:I

    .line 236
    iput v3, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->d:I

    .line 237
    iput v3, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->e:I

    .line 239
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/c$a;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/c;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->a:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v0, v2}, Lcom/tencent/liteav/txcvodplayer/c$a;-><init>(Lcom/tencent/liteav/txcvodplayer/c;Landroid/view/SurfaceHolder;)V

    .line 240
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->g:Ljava/util/Map;

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

    .line 241
    invoke-interface {v0, v1, v3, v3}, Lcom/tencent/liteav/txcvodplayer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/a$b;II)V

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->a:Landroid/view/SurfaceHolder;

    .line 248
    iput-boolean v1, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->b:Z

    .line 249
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->c:I

    .line 250
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->d:I

    .line 251
    iput v1, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->e:I

    .line 253
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/c$a;

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/txcvodplayer/c;

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->a:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v0, v2}, Lcom/tencent/liteav/txcvodplayer/c$a;-><init>(Lcom/tencent/liteav/txcvodplayer/c;Landroid/view/SurfaceHolder;)V

    .line 254
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/c$b;->g:Ljava/util/Map;

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

    .line 255
    invoke-interface {v0, v1}, Lcom/tencent/liteav/txcvodplayer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/a$b;)V

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method
