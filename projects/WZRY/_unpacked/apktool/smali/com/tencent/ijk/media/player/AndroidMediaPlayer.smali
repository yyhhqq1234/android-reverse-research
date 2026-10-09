.class public Lcom/tencent/ijk/media/player/AndroidMediaPlayer;
.super Lcom/tencent/ijk/media/player/AbstractMediaPlayer;
.source "AndroidMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;,
        Lcom/tencent/ijk/media/player/AndroidMediaPlayer$MediaDataSourceProxy;
    }
.end annotation


# static fields
.field private static sMediaInfo:Lcom/tencent/ijk/media/player/MediaInfo;


# instance fields
.field private mDataSource:Ljava/lang/String;

.field private final mInitLock:Ljava/lang/Object;

.field private final mInternalListenerAdapter:Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

.field private final mInternalMediaPlayer:Landroid/media/MediaPlayer;

.field private mIsReleased:Z

.field private mMediaDataSource:Landroid/media/MediaDataSource;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInitLock:Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    .line 59
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 61
    new-instance v0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-direct {v0, p0, p0}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;-><init>(Lcom/tencent/ijk/media/player/AndroidMediaPlayer;Lcom/tencent/ijk/media/player/AndroidMediaPlayer;)V

    iput-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    .line 62
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->attachInternalListeners()V

    .line 63
    return-void

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private attachInternalListeners()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 357
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    .line 358
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 359
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 360
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    .line 361
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 362
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    .line 363
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 364
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 365
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 366
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalListenerAdapter:Lcom/tencent/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V

    .line 367
    return-void
.end method

.method private releaseMediaDataSource()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mMediaDataSource:Landroid/media/MediaDataSource;

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mMediaDataSource:Landroid/media/MediaDataSource;

    invoke-virtual {v0}, Landroid/media/MediaDataSource;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mMediaDataSource:Landroid/media/MediaDataSource;

    .line 170
    :cond_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 243
    :goto_0
    return-wide v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    invoke-static {v0}, Lcom/tencent/ijk/media/player/pragma/DebugLog;->printStackTrace(Ljava/lang/Throwable;)V

    .line 243
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 253
    :goto_0
    return-wide v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    invoke-static {v0}, Lcom/tencent/ijk/media/player/pragma/DebugLog;->printStackTrace(Ljava/lang/Throwable;)V

    .line 253
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getInternalMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getMediaInfo()Lcom/tencent/ijk/media/player/MediaInfo;
    .locals 2

    .prologue
    .line 311
    sget-object v0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->sMediaInfo:Lcom/tencent/ijk/media/player/MediaInfo;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Lcom/tencent/ijk/media/player/MediaInfo;

    invoke-direct {v0}, Lcom/tencent/ijk/media/player/MediaInfo;-><init>()V

    .line 314
    const-string v1, "android"

    iput-object v1, v0, Lcom/tencent/ijk/media/player/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    .line 315
    const-string v1, "HW"

    iput-object v1, v0, Lcom/tencent/ijk/media/player/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    .line 317
    const-string v1, "android"

    iput-object v1, v0, Lcom/tencent/ijk/media/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 318
    const-string v1, "HW"

    iput-object v1, v0, Lcom/tencent/ijk/media/player/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    .line 320
    sput-object v0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->sMediaInfo:Lcom/tencent/ijk/media/player/MediaInfo;

    .line 323
    :cond_0
    sget-object v0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->sMediaInfo:Lcom/tencent/ijk/media/player/MediaInfo;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getTrackInfo()[Lcom/tencent/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lcom/tencent/ijk/media/player/misc/AndroidTrackInfo;->fromMediaPlayer(Landroid/media/MediaPlayer;)[Lcom/tencent/ijk/media/player/misc/AndroidTrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 228
    :goto_0
    return v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    invoke-static {v0}, Lcom/tencent/ijk/media/player/pragma/DebugLog;->printStackTrace(Ljava/lang/Throwable;)V

    .line 228
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 190
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
    .line 174
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 175
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mIsReleased:Z

    .line 260
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 261
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->releaseMediaDataSource()V

    .line 262
    invoke-virtual {p0}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->resetListeners()V

    .line 263
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->attachInternalListeners()V

    .line 264
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->releaseMediaDataSource()V

    .line 274
    invoke-virtual {p0}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->resetListeners()V

    .line 275
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->attachInternalListeners()V

    .line 276
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    invoke-static {v0}, Lcom/tencent/ijk/media/player/pragma/DebugLog;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 235
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 346
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
    .line 93
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 94
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
    .line 100
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 101
    return-void
.end method

.method public setDataSource(Lcom/tencent/ijk/media/player/misc/IMediaDataSource;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->releaseMediaDataSource()V

    .line 128
    new-instance v0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$MediaDataSourceProxy;

    invoke-direct {v0, p1}, Lcom/tencent/ijk/media/player/AndroidMediaPlayer$MediaDataSourceProxy;-><init>(Lcom/tencent/ijk/media/player/misc/IMediaDataSource;)V

    iput-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mMediaDataSource:Landroid/media/MediaDataSource;

    .line 129
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mMediaDataSource:Landroid/media/MediaDataSource;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 130
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
    .line 106
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 107
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 71
    iget-object v1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mIsReleased:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 75
    :cond_0
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setKeepInBackground(Z)V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 281
    return-void
.end method

.method public setRate(F)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 292
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 293
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 294
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 295
    iget-object v1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 297
    :cond_0
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 195
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 82
    iput-object p1, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 83
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 302
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 341
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
    .line 179
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 180
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
    .line 184
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AndroidMediaPlayer;->mInternalMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 185
    return-void
.end method
