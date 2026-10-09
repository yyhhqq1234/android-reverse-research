.class final Lcom/tencent/liteav/txcvodplayer/g$a;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/tencent/liteav/txcvodplayer/g;

.field private b:Landroid/graphics/SurfaceTexture;

.field private c:Lcom/tencent/ijk/media/player/ISurfaceTextureHost;

.field private d:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/g;Landroid/graphics/SurfaceTexture;Lcom/tencent/ijk/media/player/ISurfaceTextureHost;)V
    .locals 0
    .param p1    # Lcom/tencent/liteav/txcvodplayer/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/tencent/ijk/media/player/ISurfaceTextureHost;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->a:Lcom/tencent/liteav/txcvodplayer/g;

    .line 148
    iput-object p2, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->b:Landroid/graphics/SurfaceTexture;

    .line 149
    iput-object p3, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->c:Lcom/tencent/ijk/media/player/ISurfaceTextureHost;

    .line 150
    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/liteav/txcvodplayer/a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->a:Lcom/tencent/liteav/txcvodplayer/g;

    return-object v0
.end method

.method public a(Lcom/tencent/ijk/media/player/IMediaPlayer;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 157
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    instance-of v0, p1, Lcom/tencent/ijk/media/player/ISurfaceTextureHolder;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 159
    check-cast v0, Lcom/tencent/ijk/media/player/ISurfaceTextureHolder;

    .line 160
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->a:Lcom/tencent/liteav/txcvodplayer/g;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/g;->a(Lcom/tencent/liteav/txcvodplayer/g;)Lcom/tencent/liteav/txcvodplayer/g$b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/txcvodplayer/g$b;->a(Z)V

    .line 161
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->a:Lcom/tencent/liteav/txcvodplayer/g;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/g;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->a:Lcom/tencent/liteav/txcvodplayer/g;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/g;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->b:Landroid/graphics/SurfaceTexture;

    .line 164
    :cond_1
    invoke-interface {v0}, Lcom/tencent/ijk/media/player/ISurfaceTextureHolder;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_2

    .line 166
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->a:Lcom/tencent/liteav/txcvodplayer/g;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/g;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 167
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->a:Lcom/tencent/liteav/txcvodplayer/g;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/g;->a(Lcom/tencent/liteav/txcvodplayer/g;)Lcom/tencent/liteav/txcvodplayer/g$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/g$b;->a(Landroid/graphics/SurfaceTexture;)V

    .line 175
    :goto_1
    invoke-interface {p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->d:Landroid/view/Surface;

    goto :goto_0

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->d:Landroid/view/Surface;

    if-eqz v1, :cond_3

    .line 170
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->d:Landroid/view/Surface;

    invoke-interface {p1, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 172
    :cond_3
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->b:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/ISurfaceTextureHolder;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 173
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->a:Lcom/tencent/liteav/txcvodplayer/g;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/g;->a(Lcom/tencent/liteav/txcvodplayer/g;)Lcom/tencent/liteav/txcvodplayer/g$b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/ISurfaceTextureHolder;->setSurfaceTextureHost(Lcom/tencent/ijk/media/player/ISurfaceTextureHost;)V

    goto :goto_1

    .line 177
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/liteav/txcvodplayer/g$a;->b()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->d:Landroid/view/Surface;

    .line 178
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->d:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public b()Landroid/view/Surface;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->b:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 207
    :goto_0
    return-object v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->d:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 206
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->b:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->d:Landroid/view/Surface;

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/g$a;->d:Landroid/view/Surface;

    goto :goto_0
.end method
