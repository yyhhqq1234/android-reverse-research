.class public Lcom/netease/dwrg/GameVoiceUtils;
.super Ljava/lang/Object;
.source "GameVoiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;,
        Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;
    }
.end annotation


# static fields
.field private static final PLAYER_STATE_IDLE:I = 0x1

.field private static final PLAYER_STATE_NONE:I = 0x0

.field private static final PLAYER_STATE_PLAYING:I = 0x3

.field private static final PLAYER_STATE_PREPARED:I = 0x2

.field private static final PLAYER_STATE_RELEASED:I = 0x4

.field private static final RECORDER_STATE_IDLE:I = 0x1

.field private static final RECORDER_STATE_NONE:I = 0x0

.field private static final RECORDER_STATE_PREPARED:I = 0x2

.field private static final RECORDER_STATE_RECORDING:I = 0x3

.field private static final RECORDER_STATE_RELEASED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GameVoiceUtils"

.field public static context:Landroid/app/Activity; = null

.field private static mPlayVolume:F = 1.0f

.field private static mPlayer:Landroid/media/MediaPlayer;

.field private static mPlayerListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;

.field private static mPlayerState:I

.field public static mRecorder:Landroid/media/MediaRecorder;

.field private static mRecorderListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;

.field private static final mRecorderLock:Ljava/lang/Object;

.field private static mRecorderState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAmplitude()F
    .locals 3

    .line 205
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->isRecording()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 206
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x466a6000    # 15000.0f

    div-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    return v1
.end method

.method private static interruptAll()V
    .locals 2

    .line 60
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->isPlaying()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopPlay()V

    .line 63
    invoke-static {v1}, Lcom/netease/dwrg/GameVoiceUtils;->onPlayerListener(I)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopRecord()V

    .line 68
    invoke-static {v1}, Lcom/netease/dwrg/GameVoiceUtils;->onPlayerListener(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static isPlaying()Z
    .locals 2

    .line 334
    sget v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRecording()Z
    .locals 3

    .line 198
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    sget v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 200
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$startRecordAsync$0(Ljava/lang/String;I)V
    .locals 0

    .line 155
    invoke-static {p0, p1}, Lcom/netease/dwrg/GameVoiceUtils;->prepareRecord(Ljava/lang/String;I)Z

    .line 156
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->startRecord()Z

    return-void
.end method

.method static synthetic lambda$stopRecordAsync$1()V
    .locals 0

    .line 181
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopRecord()V

    return-void
.end method

.method private static native nativeOnRecorderListener(I)V
.end method

.method public static onPlayerListener(I)V
    .locals 1

    .line 345
    new-instance v0, Lcom/netease/dwrg/GameVoiceUtils$1;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/GameVoiceUtils$1;-><init>(I)V

    .line 353
    sget-object p0, Lcom/netease/dwrg/GameVoiceUtils;->context:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRecorderListener(I)V
    .locals 0

    return-void
.end method

.method public static preparePlay(Ljava/lang/String;)Z
    .locals 5

    .line 262
    const-string v0, "cocos2d-x: prepare play."

    const-string v1, "GameVoiceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->interruptAll()V

    .line 265
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 267
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    .line 268
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;

    invoke-direct {v0}, Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;-><init>()V

    sput-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;

    .line 270
    :cond_0
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v3, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 271
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v3, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 272
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v3, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 273
    sput v2, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerState:I

    .line 276
    :cond_1
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 277
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 279
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 280
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 281
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 282
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    const-string v0, "cocos2d-x: prepare play success."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 292
    sput v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerState:I

    .line 293
    invoke-static {p0}, Lcom/netease/dwrg/GameVoiceUtils;->onPlayerListener(I)V

    return v2

    .line 287
    :catch_0
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 288
    const-string v0, "cocos2d-x: prepare play voice failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 284
    :catch_1
    const-string v0, "cocos2d-x: play file not found"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static prepareRecord(Ljava/lang/String;I)Z
    .locals 6

    .line 85
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->context:Landroid/app/Activity;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 94
    const-string v0, "GameVoiceUtils"

    const-string v2, "cocos2d-x: prepare record."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->interruptAll()V

    .line 97
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 100
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    sput-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    .line 101
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;

    if-nez v2, :cond_0

    .line 102
    new-instance v2, Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;

    invoke-direct {v2}, Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;-><init>()V

    sput-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;

    .line 103
    :cond_0
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    sget-object v4, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 104
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    sget-object v4, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 105
    sput v3, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderState:I

    .line 108
    :cond_1
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 111
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x1f40

    if-ne v4, p1, :cond_2

    const/4 v5, 0x3

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    :goto_0
    invoke-virtual {v2, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 112
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 113
    sget-object p0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    if-ne v4, p1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    :goto_1
    invoke-virtual {p0, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 114
    sget-object p0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, v3}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 116
    sget-object p0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xea60

    invoke-virtual {p0, v4}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 118
    sget-object p0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 119
    sget-object p0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 120
    sget-object p0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->prepare()V

    .line 121
    sput v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderState:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    const-string p0, "GameVoiceUtils"

    const-string p1, "cocos2d-x: prepare record success."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 123
    :catch_0
    :try_start_3
    const-string p0, "GameVoiceUtils"

    const-string p1, "cocos2d-x: prepare record catch Exception"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object p0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V

    .line 125
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 127
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 88
    :cond_4
    sget-object p0, Lcom/netease/dwrg/GameVoiceUtils;->context:Landroid/app/Activity;

    const-string p1, "android.permission.RECORD_AUDIO"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v1
.end method

.method public static releasePlayer()V
    .locals 2

    .line 324
    const-string v0, "GameVoiceUtils"

    const-string v1, "cocos2d-x: release player"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 328
    sput-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x4

    .line 329
    sput v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerState:I

    :cond_0
    return-void
.end method

.method public static releaseRecorder()V
    .locals 2

    .line 186
    const-string v0, "GameVoiceUtils"

    const-string v1, "cocos2d-x: release recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    sget-object v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    const/4 v1, 0x0

    .line 191
    sput-object v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    :cond_0
    const/4 v1, 0x4

    .line 193
    sput v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderState:I

    .line 194
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setPlayVolume(F)V
    .locals 0

    .line 340
    sput p0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayVolume:F

    return-void
.end method

.method public static startPlay()Z
    .locals 4

    .line 298
    const-string v0, "GameVoiceUtils"

    sget v1, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    .line 302
    :cond_0
    :try_start_0
    sget-object v1, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 303
    sget-object v1, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    sget v2, Lcom/netease/dwrg/GameVoiceUtils;->mPlayVolume:F

    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    const-string v1, "cocos2d-x: start play success."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 310
    sput v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerState:I

    const/4 v0, 0x1

    .line 311
    invoke-static {v0}, Lcom/netease/dwrg/GameVoiceUtils;->onPlayerListener(I)V

    return v0

    .line 305
    :catch_0
    sget-object v1, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 306
    const-string v1, "cocos2d-x: play voice failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static startRecord()Z
    .locals 4

    .line 133
    sget v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 136
    :cond_0
    const-string v0, "GameVoiceUtils"

    const-string v1, "cocos2d-x: start record."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    sget-object v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 140
    sget-object v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    const/4 v1, 0x3

    .line 141
    sput v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    const-string v0, "GameVoiceUtils"

    const-string v1, "cocos2d-x: start record success."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 143
    :catch_0
    :try_start_2
    const-string v1, "GameVoiceUtils"

    const-string v3, "cocos2d-x: start record catch Exception"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 145
    monitor-exit v0

    return v2

    .line 147
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static startRecordAsync(Ljava/lang/String;I)V
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/dwrg/GameVoiceUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/netease/dwrg/GameVoiceUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static stopPlay()V
    .locals 1

    .line 316
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x1

    .line 319
    sput v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerState:I

    :cond_0
    return-void
.end method

.method public static stopRecord()V
    .locals 3

    .line 161
    const-string v0, "GameVoiceUtils"

    const-string v1, "cocos2d-x: stop recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    sget-object v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 166
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 168
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    const-string v1, "GameVoiceUtils"

    const-string v2, "cocos2d-x: stop record catch Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_0
    sget-object v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    :cond_0
    const/4 v1, 0x1

    .line 173
    sput v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderState:I

    .line 174
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    const-string v0, "GameVoiceUtils"

    const-string v1, "cocos2d-x: stop recorder success."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 174
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static stopRecordAsync()V
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/dwrg/GameVoiceUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/netease/dwrg/GameVoiceUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
