.class public Lcom/netease/dwrg/GameVoiceUtils;
.super Ljava/lang/Object;
.source "GameVoiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;,
        Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;
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

.field public static context:Landroid/app/Activity;

.field private static mPlayVolume:F

.field private static mPlayer:Landroid/media/MediaPlayer;

.field private static mPlayerListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;

.field private static mPlayerState:I

.field public static mRecorder:Landroid/media/MediaRecorder;

.field private static mRecorderListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;

.field private static mRecorderState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    sput v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderState:I

    .line 54
    sput v1, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerState:I

    .line 73
    sput-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    .line 74
    sput-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;

    .line 77
    sput-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    .line 78
    sput-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayVolume:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    return-void
.end method

.method public static getAmplitude()F
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "temp":F
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    sget-object v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v1

    int-to-float v0, v1

    .line 164
    const v1, 0x466a6000    # 15000.0f

    div-float/2addr v0, v1

    .line 165
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 166
    const/4 v0, 0x0

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 168
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private static interruptAll()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 60
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopPlay()V

    .line 63
    invoke-static {v1}, Lcom/netease/dwrg/GameVoiceUtils;->onPlayerListener(I)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopRecord()V

    .line 68
    invoke-static {v1}, Lcom/netease/dwrg/GameVoiceUtils;->onPlayerListener(I)V

    goto :goto_0
.end method

.method public static isPlaying()Z
    .locals 2

    .prologue
    .line 291
    sget v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    .line 292
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRecording()Z
    .locals 2

    .prologue
    .line 157
    sget v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeOnRecorderListener(I)V
.end method

.method public static onPlayerListener(I)V
    .locals 2
    .param p0, "infoCode"    # I

    .prologue
    .line 302
    new-instance v0, Lcom/netease/dwrg/GameVoiceUtils$1;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/GameVoiceUtils$1;-><init>(I)V

    .line 310
    .local v0, "f_runnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/netease/dwrg/GameVoiceUtils;->context:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 311
    return-void
.end method

.method public static onRecorderListener(I)V
    .locals 0
    .param p0, "infoCode"    # I

    .prologue
    .line 182
    return-void
.end method

.method public static preparePlay(Ljava/lang/String;)Z
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 219
    const-string v5, "GameVoiceUtils"

    const-string v6, "cocos2d-x: prepare play."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->interruptAll()V

    .line 222
    sget-object v5, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v5, :cond_1

    .line 224
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v5, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    .line 225
    sget-object v5, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;

    if-nez v5, :cond_0

    .line 226
    new-instance v5, Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;

    invoke-direct {v5}, Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;-><init>()V

    sput-object v5, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;

    .line 227
    :cond_0
    sget-object v5, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v6, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 228
    sget-object v5, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v6, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 229
    sget-object v5, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v6, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoicePlayerListener;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 230
    sput v3, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerState:I

    .line 233
    :cond_1
    sget-object v5, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    .line 234
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 237
    .local v2, "fis":Ljava/io/FileInputStream;
    sget-object v5, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 238
    sget-object v5, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 239
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    const-string v5, "GameVoiceUtils"

    const-string v6, "cocos2d-x: prepare play success."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v5, 0x2

    sput v5, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerState:I

    .line 250
    invoke-static {v4}, Lcom/netease/dwrg/GameVoiceUtils;->onPlayerListener(I)V

    .line 251
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return v3

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "GameVoiceUtils"

    const-string v5, "cocos2d-x: play file not found"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 242
    goto :goto_0

    .line 243
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 245
    const-string v3, "GameVoiceUtils"

    const-string v5, "cocos2d-x: prepare play voice failed"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 246
    goto :goto_0
.end method

.method public static prepareRecord(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 82
    const-string v2, "GameVoiceUtils"

    const-string v3, "cocos2d-x: prepare record."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->interruptAll()V

    .line 85
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_1

    .line 87
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    sput-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    .line 88
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;

    if-nez v2, :cond_0

    .line 89
    new-instance v2, Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;

    invoke-direct {v2}, Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;-><init>()V

    sput-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;

    .line 90
    :cond_0
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    sget-object v3, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 91
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    sget-object v3, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderListener:Lcom/netease/dwrg/GameVoiceUtils$GameVoiceRecorderListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 92
    sput v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderState:I

    .line 95
    :cond_1
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 97
    :try_start_0
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 98
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 99
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 100
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 101
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 103
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const v3, 0xea60

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 105
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v3, 0x1f40

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 106
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 107
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const-string v2, "GameVoiceUtils"

    const-string v3, "cocos2d-x: prepare record success."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v2, 0x2

    sput v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderState:I

    .line 115
    :goto_0
    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GameVoiceUtils"

    const-string v2, "cocos2d-x: prepare record catch Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 111
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static releasePlayer()V
    .locals 2

    .prologue
    .line 281
    const-string v0, "GameVoiceUtils"

    const-string v1, "cocos2d-x: release player"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 285
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    .line 286
    const/4 v0, 0x4

    sput v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerState:I

    .line 288
    :cond_0
    return-void
.end method

.method public static releaseRecorder()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "GameVoiceUtils"

    const-string v1, "cocos2d-x: release recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    .line 153
    :cond_0
    const/4 v0, 0x4

    sput v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderState:I

    .line 154
    return-void
.end method

.method public static setPlayVolume(F)V
    .locals 0
    .param p0, "volume"    # F

    .prologue
    .line 297
    sput p0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayVolume:F

    .line 298
    return-void
.end method

.method public static startPlay()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 255
    sget v3, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_0
    sget-object v3, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 260
    sget-object v3, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    sget v4, Lcom/netease/dwrg/GameVoiceUtils;->mPlayVolume:F

    sget v5, Lcom/netease/dwrg/GameVoiceUtils;->mPlayVolume:F

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    const-string v1, "GameVoiceUtils"

    const-string v3, "cocos2d-x: start play success."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v1, 0x3

    sput v1, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerState:I

    .line 268
    invoke-static {v2}, Lcom/netease/dwrg/GameVoiceUtils;->onPlayerListener(I)V

    move v1, v2

    .line 269
    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 263
    const-string v2, "GameVoiceUtils"

    const-string v3, "cocos2d-x: play voice failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startRecord()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 119
    sget v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "GameVoiceUtils"

    const-string v3, "cocos2d-x: start record."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :try_start_0
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 125
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getMaxAmplitude()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    const-string v1, "GameVoiceUtils"

    const-string v2, "cocos2d-x: start record success."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v1, 0x3

    sput v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderState:I

    .line 134
    const/4 v1, 0x1

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "GameVoiceUtils"

    const-string v3, "cocos2d-x: start record catch Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v2, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    goto :goto_0
.end method

.method public static stopPlay()V
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 276
    const/4 v0, 0x1

    sput v0, Lcom/netease/dwrg/GameVoiceUtils;->mPlayerState:I

    .line 278
    :cond_0
    return-void
.end method

.method public static stopRecord()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "GameVoiceUtils"

    const-string v1, "cocos2d-x: stop recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 143
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/netease/dwrg/GameVoiceUtils;->mRecorderState:I

    .line 144
    return-void
.end method
