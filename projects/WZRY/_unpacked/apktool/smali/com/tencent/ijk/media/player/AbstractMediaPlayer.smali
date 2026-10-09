.class public abstract Lcom/tencent/ijk/media/player/AbstractMediaPlayer;
.super Ljava/lang/Object;
.source "AbstractMediaPlayer.java"

# interfaces
.implements Lcom/tencent/ijk/media/player/IMediaPlayer;


# instance fields
.field private mOnBufferingUpdateListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final notifyOnBufferingUpdate(I)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, p0, p1}, Lcom/tencent/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/tencent/ijk/media/player/IMediaPlayer;I)V

    .line 91
    :cond_0
    return-void
.end method

.method protected final notifyOnCompletion()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v0, p0}, Lcom/tencent/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/tencent/ijk/media/player/IMediaPlayer;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected final notifyOnError(II)Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnErrorListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnErrorListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Lcom/tencent/ijk/media/player/IMediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final notifyOnInfo(II)Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnInfoListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnInfoListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Lcom/tencent/ijk/media/player/IMediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final notifyOnPrepared()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v0, p0}, Lcom/tencent/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/tencent/ijk/media/player/IMediaPlayer;)V

    .line 81
    :cond_0
    return-void
.end method

.method protected final notifyOnSeekComplete()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, p0}, Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/tencent/ijk/media/player/IMediaPlayer;)V

    .line 96
    :cond_0
    return-void
.end method

.method protected final notifyOnTimedText(Lcom/tencent/ijk/media/player/IjkTimedText;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnTimedTextListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnTimedTextListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-interface {v0, p0, p1}, Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;->onTimedText(Lcom/tencent/ijk/media/player/IMediaPlayer;Lcom/tencent/ijk/media/player/IjkTimedText;)V

    .line 116
    :cond_0
    return-void
.end method

.method protected final notifyOnVideoSizeChanged(IIII)V
    .locals 6

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/tencent/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/tencent/ijk/media/player/IMediaPlayer;IIII)V

    .line 103
    :cond_0
    return-void
.end method

.method public resetListeners()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 69
    iput-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 70
    iput-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 71
    iput-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 72
    iput-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 73
    iput-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnErrorListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 74
    iput-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnInfoListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 75
    iput-object v0, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnTimedTextListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 76
    return-void
.end method

.method public setDataSource(Lcom/tencent/ijk/media/player/misc/IMediaDataSource;)V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setOnBufferingUpdateListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnBufferingUpdateListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 44
    return-void
.end method

.method public final setOnCompletionListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnCompletionListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 39
    return-void
.end method

.method public final setOnErrorListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnErrorListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 57
    return-void
.end method

.method public final setOnInfoListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnInfoListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 61
    return-void
.end method

.method public final setOnPreparedListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnPreparedListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 35
    return-void
.end method

.method public final setOnSeekCompleteListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnSeekCompleteListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 48
    return-void
.end method

.method public final setOnTimedTextListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnTimedTextListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 65
    return-void
.end method

.method public final setOnVideoSizeChangedListener(Lcom/tencent/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->mOnVideoSizeChangedListener:Lcom/tencent/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 53
    return-void
.end method
