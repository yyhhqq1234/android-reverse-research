.class public Lcom/netease/neox/CCPlayer;
.super Ljava/lang/Object;
.source "CCPlayer.java"

# interfaces
.implements Ltv/danmaku/cc/media/player/IMediaPlayer$onGetVbrListListener;
.implements Ltv/danmaku/cc/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/cc/media/player/IMediaPlayer$OnRequestUpdateTexture;
.implements Ltv/danmaku/cc/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/cc/media/player/IMediaPlayer$onReportStatics;
.implements Ltv/danmaku/cc/media/player/IMediaPlayer$OnSeekCompleteListener;
.implements Ltv/danmaku/cc/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;
.implements Ltv/danmaku/cc/media/player/IMediaPlayer$OnRawDecodeListener;
.implements Ltv/danmaku/cc/media/player/IMediaPlayer$OnFileSaveListener;
.implements Ltv/danmaku/cc/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/cc/media/player/IMediaPlayer$OnInfoListener;


# instance fields
.field private m_context:Landroid/app/Activity;

.field private m_curVbr:Ljava/lang/String;

.field private m_device_id:Ljava/lang/String;

.field private m_extra_info:Ljava/lang/String;

.field private m_game_uid:I

.field private m_handle:J

.field private m_height:I

.field private m_is_decode_raw_data:Z

.field private m_is_free_flow:Z

.field private m_is_video_ready:Z

.field private m_loop_count:I

.field private m_play_rate:F

.field private m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

.field private m_src:Ljava/lang/String;

.field private m_update_texture:Z

.field private m_url:Ljava/lang/String;

.field private m_urs:Ljava/lang/String;

.field private m_vbrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_width:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    .line 32
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_src:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_urs:Ljava/lang/String;

    const/4 v1, 0x0

    .line 34
    iput v1, p0, Lcom/netease/neox/CCPlayer;->m_game_uid:I

    .line 35
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_device_id:Ljava/lang/String;

    .line 36
    const-string v2, ""

    iput-object v2, p0, Lcom/netease/neox/CCPlayer;->m_extra_info:Ljava/lang/String;

    .line 37
    iput v1, p0, Lcom/netease/neox/CCPlayer;->m_width:I

    .line 38
    iput v1, p0, Lcom/netease/neox/CCPlayer;->m_height:I

    .line 39
    iput-object v2, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_vbrList:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    const-wide/16 v2, 0x0

    .line 43
    iput-wide v2, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    .line 44
    iput-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_is_video_ready:Z

    .line 45
    iput-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/netease/neox/CCPlayer;->m_loop_count:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    iput v0, p0, Lcom/netease/neox/CCPlayer;->m_play_rate:F

    .line 48
    iput-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_is_decode_raw_data:Z

    .line 71
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_context:Landroid/app/Activity;

    return-void
.end method

.method private initPlayer()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setDevMode(Z)V

    .line 109
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setMediaCodecEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setRenderSurfaceEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnGetVbrListListener(Ltv/danmaku/cc/media/player/IMediaPlayer$onGetVbrListListener;)V

    .line 112
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnErrorListener(Ltv/danmaku/cc/media/player/IMediaPlayer$OnErrorListener;)V

    .line 113
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnReUpdateTextureListener(Ltv/danmaku/cc/media/player/IMediaPlayer$OnRequestUpdateTexture;)V

    .line 114
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnCompletionListener(Ltv/danmaku/cc/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 115
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    iget-object v2, p0, Lcom/netease/neox/CCPlayer;->m_context:Landroid/app/Activity;

    invoke-virtual {v0, v2, p0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnReportStatics(Landroid/content/Context;Ltv/danmaku/cc/media/player/IMediaPlayer$onReportStatics;)V

    .line 116
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/cc/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 117
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setNotifyIsFreeStreamListener(Ltv/danmaku/cc/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;)V

    .line 118
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    iget v2, p0, Lcom/netease/neox/CCPlayer;->m_loop_count:I

    invoke-virtual {v0, v2}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setLoopLocalFileNumber(I)V

    .line 119
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setRawDecoderListener(Ltv/danmaku/cc/media/player/IMediaPlayer$OnRawDecodeListener;)V

    .line 120
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnFileSaveListener(Ltv/danmaku/cc/media/player/IMediaPlayer$OnFileSaveListener;)V

    .line 121
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnPreparedListener(Ltv/danmaku/cc/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 122
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    iget-boolean v2, p0, Lcom/netease/neox/CCPlayer;->m_is_decode_raw_data:Z

    invoke-virtual {v0, v2}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setDecodeRawData(I)V

    .line 123
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnInfoListener(Ltv/danmaku/cc/media/player/IMediaPlayer$OnInfoListener;)V

    .line 124
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->enableStartLiveOnGameWorkThread(Z)V

    :cond_0
    return-void
.end method

.method public static native nativeOnAudioReady(J)V
.end method

.method public static native nativeOnBufferUpdate(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIII)V
.end method

.method public static native nativeOnError(J)V
.end method

.method public static native nativeOnFileSave(JI)V
.end method

.method public static native nativeOnFreeFlow(JZ)V
.end method

.method public static native nativeOnGetVbrList(JLjava/lang/String;[Ljava/lang/String;)V
.end method

.method public static native nativeOnInfo(JI)V
.end method

.method public static native nativeOnReportStat(JLjava/lang/String;)V
.end method

.method public static native nativeOnSeekComplete(J)V
.end method

.method public static native nativeOnVideoComplete(J)V
.end method

.method public static native nativeOnVideoReady(JII)V
.end method


# virtual methods
.method ClearCache(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public OnGetLiveUrl(I)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, p1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->onGetLiveUrl(I)V

    :cond_0
    return-void
.end method

.method clearPlayer()V
    .locals 2

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_is_video_ready:Z

    .line 76
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnGetVbrListListener(Ltv/danmaku/cc/media/player/IMediaPlayer$onGetVbrListListener;)V

    .line 78
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnErrorListener(Ltv/danmaku/cc/media/player/IMediaPlayer$OnErrorListener;)V

    .line 79
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnReUpdateTextureListener(Ltv/danmaku/cc/media/player/IMediaPlayer$OnRequestUpdateTexture;)V

    .line 80
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnCompletionListener(Ltv/danmaku/cc/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 81
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnReportStatics(Landroid/content/Context;Ltv/danmaku/cc/media/player/IMediaPlayer$onReportStatics;)V

    .line 82
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/cc/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 83
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setNotifyIsFreeStreamListener(Ltv/danmaku/cc/media/player/IMediaPlayer$onNotifyIsFreeStreamListener;)V

    .line 84
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setRawDecoderListener(Ltv/danmaku/cc/media/player/IMediaPlayer$OnRawDecodeListener;)V

    .line 85
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnFileSaveListener(Ltv/danmaku/cc/media/player/IMediaPlayer$OnFileSaveListener;)V

    .line 86
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnPreparedListener(Ltv/danmaku/cc/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 87
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setOnInfoListener(Ltv/danmaku/cc/media/player/IMediaPlayer$OnInfoListener;)V

    .line 88
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->stop()V

    .line 89
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->release()V

    .line 90
    iput-object v1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    :cond_0
    return-void
.end method

.method destroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/netease/neox/CCPlayer;->setHandle(J)V

    .line 96
    invoke-virtual {p0}, Lcom/netease/neox/CCPlayer;->clearPlayer()V

    return-void
.end method

.method public doUpdateExternal()V
    .locals 1

    .line 342
    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->updateTextureContent()V

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    .line 347
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableFreeFlow(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/netease/neox/CCPlayer;->m_height:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 449
    iget v0, p0, Lcom/netease/neox/CCPlayer;->m_loop_count:I

    return v0
.end method

.method public getPlayRate()F
    .locals 1

    .line 460
    iget v0, p0, Lcom/netease/neox/CCPlayer;->m_play_rate:F

    return v0
.end method

.method public getTextureName()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->getTextureName()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTransformMatrix()[F
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->getTransformMatrixFlipV()[F

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/netease/neox/CCPlayer;->m_width:I

    return v0
.end method

.method public isFreeFlowEnabled()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    return v0
.end method

.method public isVideoReady()Z
    .locals 1

    .line 544
    iget-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_is_video_ready:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/neox/CCPlayer;->m_width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netease/neox/CCPlayer;->m_height:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_src:Ljava/lang/String;

    .line 257
    iput-object p2, p0, Lcom/netease/neox/CCPlayer;->m_urs:Ljava/lang/String;

    return-void
.end method

.method public needUpdateExternal()Z
    .locals 2

    .line 330
    monitor-enter p0

    .line 331
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 332
    iput-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    .line 333
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 336
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 338
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyIsFreeStream(I)V
    .locals 5

    .line 577
    monitor-enter p0

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 579
    iget-boolean v2, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 580
    :goto_0
    iput-boolean p1, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    if-eqz v2, :cond_1

    .line 582
    invoke-static {v0, v1, p1}, Lcom/netease/neox/CCPlayer;->nativeOnFreeFlow(JZ)V

    .line 584
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCompletion(Ltv/danmaku/cc/media/player/IMediaPlayer;)V
    .locals 4

    .line 549
    monitor-enter p0

    .line 550
    :try_start_0
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 551
    iput-boolean p1, p0, Lcom/netease/neox/CCPlayer;->m_is_video_ready:Z

    .line 552
    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnVideoComplete(J)V

    .line 554
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDestroy()V
    .locals 0

    .line 478
    invoke-virtual {p0}, Lcom/netease/neox/CCPlayer;->destroy()V

    return-void
.end method

.method public onError(Ltv/danmaku/cc/media/player/IMediaPlayer;II)Z
    .locals 2

    .line 497
    const-string p1, "NeoXCCPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    monitor-enter p0

    .line 499
    :try_start_0
    iget-wide p1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 500
    invoke-static {p1, p2}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 501
    :cond_0
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onFileSave(I)V
    .locals 5

    .line 591
    monitor-enter p0

    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 593
    invoke-static {v0, v1, p1}, Lcom/netease/neox/CCPlayer;->nativeOnFileSave(JI)V

    .line 595
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInfo(Ltv/danmaku/cc/media/player/IMediaPlayer;II)Z
    .locals 3

    const/16 p1, 0xbb8

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_2

    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    iget-wide p1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 246
    invoke-static {p1, p2, p3}, Lcom/netease/neox/CCPlayer;->nativeOnInfo(JI)V

    .line 247
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->pauseVideoDisplay()V

    .line 473
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setMuted(I)V

    :cond_0
    return-void
.end method

.method public onPrepared(Ltv/danmaku/cc/media/player/IMediaPlayer;)V
    .locals 4

    .line 600
    monitor-enter p0

    .line 601
    :try_start_0
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 602
    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnAudioReady(J)V

    .line 604
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRawImageAvailable(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIII)V
    .locals 15

    move-object v1, p0

    .line 522
    monitor-enter p0

    .line 523
    :try_start_0
    iget-object v0, v1, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, v1, Lcom/netease/neox/CCPlayer;->m_width:I

    .line 525
    iget-object v0, v1, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, v1, Lcom/netease/neox/CCPlayer;->m_height:I

    .line 527
    :cond_0
    iget-boolean v0, v1, Lcom/netease/neox/CCPlayer;->m_is_video_ready:Z

    if-nez v0, :cond_1

    .line 528
    iget-object v2, v1, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 529
    iput-boolean v2, v1, Lcom/netease/neox/CCPlayer;->m_is_video_ready:Z

    .line 531
    :cond_1
    iget-object v2, v1, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v2, :cond_2

    .line 533
    iget-wide v3, v1, Lcom/netease/neox/CCPlayer;->m_handle:J

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-static/range {v3 .. v14}, Lcom/netease/neox/CCPlayer;->nativeOnBufferUpdate(JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIII)V

    :cond_2
    if-nez v0, :cond_3

    .line 536
    iget-object v0, v1, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_3

    .line 537
    iget-wide v2, v1, Lcom/netease/neox/CCPlayer;->m_handle:J

    iget v0, v1, Lcom/netease/neox/CCPlayer;->m_width:I

    iget v4, v1, Lcom/netease/neox/CCPlayer;->m_height:I

    invoke-static {v2, v3, v0, v4}, Lcom/netease/neox/CCPlayer;->nativeOnVideoReady(JII)V

    .line 539
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRequestUpdateTexture()V
    .locals 6

    .line 507
    monitor-enter p0

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/netease/neox/CCPlayer;->m_width:I

    .line 510
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/netease/neox/CCPlayer;->m_height:I

    :cond_0
    const/4 v0, 0x1

    .line 512
    iput-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    .line 513
    iget-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_is_video_ready:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 514
    iput-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_is_video_ready:Z

    .line 515
    iget v0, p0, Lcom/netease/neox/CCPlayer;->m_width:I

    iget v3, p0, Lcom/netease/neox/CCPlayer;->m_height:I

    invoke-static {v1, v2, v0, v3}, Lcom/netease/neox/CCPlayer;->nativeOnVideoReady(JII)V

    .line 517
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->resumeVideoDisplay()V

    .line 466
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setMuted(I)V

    :cond_0
    return-void
.end method

.method public onSeekComplete(Ltv/danmaku/cc/media/player/IMediaPlayer;)V
    .locals 4

    .line 568
    monitor-enter p0

    .line 569
    :try_start_0
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 570
    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnSeekComplete(J)V

    .line 572
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public openCCLiveApp(II)I
    .locals 4

    .line 416
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 418
    :try_start_0
    iget-object v2, p0, Lcom/netease/neox/CCPlayer;->m_context:Landroid/app/Activity;

    invoke-virtual {v0, v2, p1, p2}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->OpenCCAppWithRoomId(Landroid/app/Activity;II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 420
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 421
    monitor-enter p0

    .line 422
    :try_start_1
    iget-wide p1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    .line 423
    invoke-static {p1, p2}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 425
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return v1
.end method

.method public pause()V
    .locals 5

    .line 371
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    .line 373
    :try_start_0
    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 376
    monitor-enter p0

    .line 377
    :try_start_1
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 378
    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 380
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public playLive(Ljava/lang/String;)V
    .locals 13

    .line 129
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Lcom/netease/neox/CCPlayer;->initPlayer()V

    .line 131
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/netease/neox/CCPlayer;->m_src:Ljava/lang/String;

    const-wide/16 v11, 0x0

    if-eqz v3, :cond_9

    .line 134
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_urs:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    :cond_2
    const-string v0, "mrlucc@126.com"

    :cond_3
    move-object v4, v0

    .line 147
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_device_id:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_6

    .line 152
    iget-object v1, p0, Lcom/netease/neox/CCPlayer;->m_context:Landroid/app/Activity;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    move-object v7, v0

    goto :goto_3

    .line 156
    :cond_6
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_context:Landroid/app/Activity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 159
    :catch_0
    const-string v0, "NeoXCCPlayer"

    const-string v1, "getDeviceId failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    .line 162
    const-string v0, "whatever"

    goto :goto_0

    .line 165
    :goto_3
    iget-object v1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    iget v0, p0, Lcom/netease/neox/CCPlayer;->m_game_uid:I

    int-to-long v5, v0

    iget-object v8, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    iget-object v9, p0, Lcom/netease/neox/CCPlayer;->m_extra_info:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/netease/neox/CCPlayer;->m_is_free_flow:Z

    move-object v2, p1

    invoke-virtual/range {v1 .. v10}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->StartPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_8

    .line 166
    monitor-enter p0

    .line 167
    :try_start_1
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    cmp-long p1, v0, v11

    if-eqz p1, :cond_7

    .line 168
    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 170
    :cond_7
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_8
    :goto_4
    return-void

    .line 136
    :cond_9
    :goto_5
    monitor-enter p0

    .line 137
    :try_start_2
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    cmp-long p1, v0, v11

    if-eqz p1, :cond_a

    .line 138
    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 140
    :cond_a
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public playVOD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 183
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Lcom/netease/neox/CCPlayer;->initPlayer()V

    .line 185
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    const-string v1, "user-agent"

    const-string v2, "ccplayersdk"

    invoke-virtual {v0, v1, v2}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 189
    const-string v0, ""

    if-eq v0, p2, :cond_1

    .line 190
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 192
    :try_start_0
    const-string v1, "saveToLocal"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string p2, "useSubtitle"

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 194
    const-string p2, "audioLanguage"

    const-string v1, "null"

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string p2, "subtitleLanguage"

    const-string v1, "null"

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    iget-object p2, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->configPlayerSetting(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 198
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    const-string p2, "NeoXCCPlayer"

    const-string v0, "playVOD setCachePath failed"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {p2, p1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->StartPlay(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 203
    monitor-enter p0

    .line 204
    :try_start_1
    iget-wide p1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_2

    .line 205
    invoke-static {p1, p2}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 207
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method playWithCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 8

    .line 213
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    .line 214
    invoke-direct {p0}, Lcom/netease/neox/CCPlayer;->initPlayer()V

    .line 215
    iget-object v1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    const-string v2, "user-agent"

    const-string v3, "ccplayersdk"

    invoke-virtual {v1, v2, v3}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setAvFormatOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->StartPlayWithCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iget-wide v1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    .line 221
    invoke-static {v1, v2}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 223
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public reportHttpStatics(Ljava/lang/String;)V
    .locals 5

    .line 559
    monitor-enter p0

    .line 560
    :try_start_0
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 561
    invoke-static {v0, v1, p1}, Lcom/netease/neox/CCPlayer;->nativeOnReportStat(JLjava/lang/String;)V

    .line 563
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resume()V
    .locals 5

    .line 386
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    .line 388
    :try_start_0
    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 390
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 391
    monitor-enter p0

    .line 392
    :try_start_1
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 393
    invoke-static {v0, v1}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 395
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public seekTo(J)V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    .line 403
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 405
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 406
    monitor-enter p0

    .line 407
    :try_start_1
    iget-wide p1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 408
    invoke-static {p1, p2}, Lcom/netease/neox/CCPlayer;->nativeOnError(J)V

    .line 410
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setDecodeRawData(Z)V
    .locals 1

    .line 442
    iput-boolean p1, p0, Lcom/netease/neox/CCPlayer;->m_is_decode_raw_data:Z

    .line 443
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0, p1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setDecodeRawData(I)V

    :cond_0
    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 267
    const-string p1, ""

    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_extra_info:Ljava/lang/String;

    goto :goto_0

    .line 269
    :cond_0
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_extra_info:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setHandle(J)V
    .locals 0

    .line 351
    monitor-enter p0

    .line 352
    :try_start_0
    iput-wide p1, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLoopCount(I)V
    .locals 1

    .line 434
    iput p1, p0, Lcom/netease/neox/CCPlayer;->m_loop_count:I

    .line 435
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0, p1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setLoopLocalFileNumber(I)V

    :cond_0
    return-void
.end method

.method public setPlayRate(F)V
    .locals 1

    .line 453
    iput p1, p0, Lcom/netease/neox/CCPlayer;->m_play_rate:F

    .line 454
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0, p1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public setUserInfo(ILjava/lang/String;)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/netease/neox/CCPlayer;->m_game_uid:I

    .line 262
    iput-object p2, p0, Lcom/netease/neox/CCPlayer;->m_device_id:Ljava/lang/String;

    return-void
.end method

.method public setVbr(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_5

    .line 283
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_vbrList:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 288
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    .line 290
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_vbrList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    .line 295
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 299
    invoke-virtual {p0}, Lcom/netease/neox/CCPlayer;->clearPlayer()V

    :cond_4
    if-eqz v2, :cond_5

    .line 302
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 303
    iget-object p1, p0, Lcom/netease/neox/CCPlayer;->m_url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/neox/CCPlayer;->playLive(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public setVbrList(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 483
    iput-object p1, p0, Lcom/netease/neox/CCPlayer;->m_vbrList:Ljava/util/List;

    .line 484
    iget-object p2, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz p2, :cond_1

    .line 485
    invoke-virtual {p2}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->getCurrentPlayVbr()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    .line 486
    monitor-enter p0

    .line 487
    :try_start_0
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 488
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 489
    iget-wide v0, p0, Lcom/netease/neox/CCPlayer;->m_handle:J

    iget-object v2, p0, Lcom/netease/neox/CCPlayer;->m_curVbr:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/netease/neox/CCPlayer;->nativeOnGetVbrList(JLjava/lang/String;[Ljava/lang/String;)V

    .line 491
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, p1, p1}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 273
    invoke-virtual {p0}, Lcom/netease/neox/CCPlayer;->clearPlayer()V

    return-void
.end method

.method public updateExternal()V
    .locals 2

    .line 321
    monitor-enter p0

    .line 322
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/neox/CCPlayer;->m_player:Ltv/danmaku/cc/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 323
    iput-boolean v1, p0, Lcom/netease/neox/CCPlayer;->m_update_texture:Z

    .line 324
    invoke-virtual {v0}, Ltv/danmaku/cc/media/player/IjkMediaPlayer;->updateTextureContent()V

    .line 326
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
