.class public Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;
.super Lcom/tencent/ijk/media/player/AbstractMediaPlayer;
.source "IjkExoMediaPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer$SimplePlayerListener;
    }
.end annotation


# static fields
.field private static final BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;


# instance fields
.field private eventLogger:Lcom/tencent/ijk/media/exo/demo/EventLogger;

.field private mAppContext:Landroid/content/Context;

.field private mDataSource:Landroid/net/Uri;

.field private mSimpleListener:Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer$SimplePlayerListener;

.field private mSurface:Landroid/view/Surface;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mainHandler:Landroid/os/Handler;

.field private mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    sput-object v0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;-><init>()V

    .line 413
    new-instance v0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer$SimplePlayerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer$SimplePlayerListener;-><init>(Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer$1;)V

    iput-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mSimpleListener:Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer$SimplePlayerListener;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mainHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    sget-object v2, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 93
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v2, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 95
    iget-object v1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 96
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 98
    new-instance v0, Lcom/tencent/ijk/media/exo/demo/EventLogger;

    iget-object v1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, v1}, Lcom/tencent/ijk/media/exo/demo/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    iput-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->eventLogger:Lcom/tencent/ijk/media/exo/demo/EventLogger;

    .line 99
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->eventLogger:Lcom/tencent/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 100
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->eventLogger:Lcom/tencent/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setAudioDebugListener(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    .line 101
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->eventLogger:Lcom/tencent/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoDebugListener(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    .line 102
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->eventLogger:Lcom/tencent/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setMetadataOutput(Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;)V

    .line 104
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mSimpleListener:Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer$SimplePlayerListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoListener(Lcom/google/android/exoplayer2/SimpleExoPlayer$VideoListener;)V

    .line 105
    return-void
.end method

.method static synthetic access$002(Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;IIII)V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;II)Z
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->notifyOnInfo(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;II)Z
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->notifyOnInfo(II)Z

    move-result v0

    return v0
.end method

.method private buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 4

    .prologue
    .line 385
    if-eqz p1, :cond_0

    sget-object v0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .line 386
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v2, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    .line 387
    invoke-virtual {p0, v0}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->buildHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 386
    return-object v1

    .line 385
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    const-string v1, "ExoPlayerDemo"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-object v1
.end method

.method public buildMediaSource(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 357
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    .line 359
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 372
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 361
    :pswitch_0
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    invoke-direct {p0, v2}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object v1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v4, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->eventLogger:Lcom/tencent/ijk/media/exo/demo/EventLogger;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 369
    :goto_1
    return-object v0

    .line 364
    :pswitch_1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0, v2}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object v1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v4, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->eventLogger:Lcom/tencent/ijk/media/exo/demo/EventLogger;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    goto :goto_1

    .line 367
    :pswitch_2
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    iget-object v1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v2, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->eventLogger:Lcom/tencent/ijk/media/exo/demo/EventLogger;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    goto :goto_1

    .line 369
    :pswitch_3
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    iget-object v2, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    iget-object v4, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->eventLogger:Lcom/tencent/ijk/media/exo/demo/EventLogger;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    goto :goto_1

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 341
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 239
    const-wide/16 v0, 0x0

    .line 240
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mDataSource:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 246
    const-wide/16 v0, 0x0

    .line 247
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMediaInfo()Lcom/tencent/ijk/media/player/MediaInfo;
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObservedBitrate()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->eventLogger:Lcom/tencent/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v0}, Lcom/tencent/ijk/media/exo/demo/EventLogger;->getObservedBitrate()I

    move-result v0

    return v0
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public bridge synthetic getTrackInfo()[Lcom/tencent/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->getTrackInfo()[Lcom/tencent/ijk/media/player/misc/IjkTrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTrackInfo()[Lcom/tencent/ijk/media/player/misc/IjkTrackInfo;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    move-result-object v0

    return-object v0
.end method

.method public getVideoFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 215
    iget-object v1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v1, :cond_0

    .line 225
    :goto_0
    return v0

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v1

    .line 218
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 492
    invoke-virtual {p0, v0, v0}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->notifyOnError(II)Z

    .line 493
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 2

    .prologue
    .line 465
    packed-switch p2, :pswitch_data_0

    .line 481
    :goto_0
    return-void

    .line 467
    :pswitch_0
    invoke-virtual {p0}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->notifyOnCompletion()V

    goto :goto_0

    .line 470
    :pswitch_1
    const/16 v0, 0x2bd

    iget-object v1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->notifyOnInfo(II)Z

    goto :goto_0

    .line 473
    :pswitch_2
    invoke-virtual {p0}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->notifyOnPrepared()V

    goto :goto_0

    .line 476
    :pswitch_3
    invoke-virtual {p0}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->notifyOnCompletion()V

    goto :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0
.end method

.method public prepareAsync()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mDataSource:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->buildMediaSource(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 163
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 164
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->reset()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->eventLogger:Lcom/tencent/ijk/media/exo/demo/EventLogger;

    .line 335
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 262
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 264
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->eventLogger:Lcom/tencent/ijk/media/exo/demo/EventLogger;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 265
    iput-object v2, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 268
    :cond_0
    iput-object v2, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 269
    iput-object v2, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mDataSource:Landroid/net/Uri;

    .line 270
    iput v3, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mVideoWidth:I

    .line 271
    iput v3, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mVideoHeight:I

    .line 272
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
    .line 231
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    goto :goto_0
.end method

.method public setAudioStreamType(I)V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 133
    iput-object p2, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mDataSource:Landroid/net/Uri;

    .line 134
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
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

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 140
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "no support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 145
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public setKeepInBackground(Z)V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public setLooping(Z)V
    .locals 2

    .prologue
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "no support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRate(F)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {v1, p1, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 289
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 122
    iput-object p1, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 123
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    add-float v1, p1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    .line 294
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/tencent/ijk/media/exo/IjkExoMediaPlayer;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    goto :goto_0
.end method
