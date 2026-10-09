.class public Lcom/tencent/ijk/media/player/MediaPlayerProxy;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lcom/tencent/ijk/media/player/IMediaPlayer;


# instance fields
.field protected final mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/tencent/ijk/media/player/IMediaPlayer;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    .line 39
    return-void
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getDataSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInternalMediaPlayer()Lcom/tencent/ijk/media/player/IMediaPlayer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    return-object v0
.end method

.method public getMediaInfo()Lcom/tencent/ijk/media/player/MediaInfo;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getMediaInfo()Lcom/tencent/ijk/media/player/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getTrackInfo()[Lcom/tencent/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getTrackInfo()[Lcom/tencent/ijk/media/player/misc/ITrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result v0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->isLooping()Z

    move-result v0

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->pause()V

    .line 113
    return-void
.end method

.method public prepareAsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 98
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->release()V

    .line 153
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->reset()V

    .line 158
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2}, Lcom/tencent/ijk/media/player/IMediaPlayer;->seekTo(J)V

    .line 138
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 311
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 65
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 72
    return-void
.end method

.method public setDataSource(Lcom/tencent/ijk/media/player/misc/IMediaDataSource;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setDataSource(Lcom/tencent/ijk/media/player/misc/IMediaDataSource;)V

    .line 88
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 78
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 48
    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setKeepInBackground(Z)V

    .line 316
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setLooping(Z)V

    .line 341
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 2

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    new-instance v1, Lcom/tencent/ijk/media/player/MediaPlayerProxy$3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/ijk/media/player/MediaPlayerProxy$3;-><init>(Lcom/tencent/ijk/media/player/MediaPlayerProxy;Lcom/tencent/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    goto :goto_0
.end method

.method public setOnCompletionListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 2

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    new-instance v1, Lcom/tencent/ijk/media/player/MediaPlayerProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/ijk/media/player/MediaPlayerProxy$2;-><init>(Lcom/tencent/ijk/media/player/MediaPlayerProxy;Lcom/tencent/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    goto :goto_0
.end method

.method public setOnErrorListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 2

    .prologue
    .line 265
    if-eqz p1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    new-instance v1, Lcom/tencent/ijk/media/player/MediaPlayerProxy$6;

    invoke-direct {v1, p0, p1}, Lcom/tencent/ijk/media/player/MediaPlayerProxy$6;-><init>(Lcom/tencent/ijk/media/player/MediaPlayerProxy;Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnErrorListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnErrorListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    goto :goto_0
.end method

.method public setOnInfoListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 2

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    new-instance v1, Lcom/tencent/ijk/media/player/MediaPlayerProxy$7;

    invoke-direct {v1, p0, p1}, Lcom/tencent/ijk/media/player/MediaPlayerProxy$7;-><init>(Lcom/tencent/ijk/media/player/MediaPlayerProxy;Lcom/tencent/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnInfoListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnInfoListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    goto :goto_0
.end method

.method public setOnPreparedListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 2

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    new-instance v1, Lcom/tencent/ijk/media/player/MediaPlayerProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/ijk/media/player/MediaPlayerProxy$1;-><init>(Lcom/tencent/ijk/media/player/MediaPlayerProxy;Lcom/tencent/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    goto :goto_0
.end method

.method public setOnSeekCompleteListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 2

    .prologue
    .line 235
    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    new-instance v1, Lcom/tencent/ijk/media/player/MediaPlayerProxy$4;

    invoke-direct {v1, p0, p1}, Lcom/tencent/ijk/media/player/MediaPlayerProxy$4;-><init>(Lcom/tencent/ijk/media/player/MediaPlayerProxy;Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    goto :goto_0
.end method

.method public setOnTimedTextListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 2

    .prologue
    .line 295
    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    new-instance v1, Lcom/tencent/ijk/media/player/MediaPlayerProxy$8;

    invoke-direct {v1, p0, p1}, Lcom/tencent/ijk/media/player/MediaPlayerProxy$8;-><init>(Lcom/tencent/ijk/media/player/MediaPlayerProxy;Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnTimedTextListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnTimedTextListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    goto :goto_0
.end method

.method public setOnVideoSizeChangedListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 2

    .prologue
    .line 250
    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    new-instance v1, Lcom/tencent/ijk/media/player/MediaPlayerProxy$5;

    invoke-direct {v1, p0, p1}, Lcom/tencent/ijk/media/player/MediaPlayerProxy$5;-><init>(Lcom/tencent/ijk/media/player/MediaPlayerProxy;Lcom/tencent/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    goto :goto_0
.end method

.method public setRate(F)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setRate(F)V

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 118
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 54
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    .line 166
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0, p1, p2}, Lcom/tencent/ijk/media/player/IMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 331
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->start()V

    .line 103
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/ijk/media/player/MediaPlayerProxy;->mBackEndMediaPlayer:Lcom/tencent/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Lcom/tencent/ijk/media/player/IMediaPlayer;->stop()V

    .line 108
    return-void
.end method
