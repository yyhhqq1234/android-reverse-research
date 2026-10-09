.class public Lcom/tencent/ijk/media/player/TextureMediaPlayer;
.super Lcom/tencent/ijk/media/player/MediaPlayerProxy;
.source "TextureMediaPlayer.java"

# interfaces
.implements Lcom/tencent/ijk/media/player/IMediaPlayer;
.implements Lcom/tencent/ijk/media/player/ISurfaceTextureHolder;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

.field private mReuseSurfaceTexture:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureHost:Lcom/tencent/ijk/media/player/ISurfaceTextureHost;


# direct methods
.method public constructor <init>(Lcom/tencent/ijk/media/player/IMediaPlayer;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/tencent/ijk/media/player/MediaPlayerProxy;-><init>(Lcom/tencent/ijk/media/player/IMediaPlayer;)V

    .line 36
    iput-object p1, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    .line 37
    return-void
.end method


# virtual methods
.method public getBackEndMediaPlayer()Lcom/tencent/ijk/media/player/IMediaPlayer;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->release()V

    .line 62
    invoke-virtual {p0}, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->releaseSurfaceTexture()V

    .line 63
    return-void
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mReuseSurfaceTexture:Z

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurfaceTextureHost:Lcom/tencent/ijk/media/player/ISurfaceTextureHost;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurfaceTextureHost:Lcom/tencent/ijk/media/player/ISurfaceTextureHost;

    iget-object v1, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/ISurfaceTextureHost;->releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 46
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 48
    :cond_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->reset()V

    .line 56
    invoke-virtual {p0}, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->releaseSurfaceTexture()V

    .line 57
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 68
    invoke-super {p0, p1}, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 69
    :cond_0
    return-void
.end method

.method public setReuseSurfaceTexture(Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mReuseSurfaceTexture:Z

    .line 116
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 74
    invoke-super {p0, p1}, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->setSurface(Landroid/view/Surface;)V

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 77
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-ne v0, p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->releaseSurfaceTexture()V

    .line 93
    iput-object p1, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 94
    if-nez p1, :cond_1

    .line 95
    iput-object v1, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 96
    invoke-super {p0, v1}, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_2

    .line 99
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-super {p0, v0}, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->setSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public setSurfaceTextureHost(Lcom/tencent/ijk/media/player/ISurfaceTextureHost;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tencent/ijk/media/player/TextureMediaPlayer;->mSurfaceTextureHost:Lcom/tencent/ijk/media/player/ISurfaceTextureHost;

    .line 112
    return-void
.end method
