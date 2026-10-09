.class public Lcom/tencent/pandora/livepusher/ScreenCapture;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/pandora/livepusher/ScreenCapture$PermissionActivity;
    }
.end annotation


# static fields
.field public static ErrorCode_StartAssitantActivityFailed:I = 0x0

.field private static INSTANCE:Lcom/tencent/pandora/livepusher/ScreenCapture; = null

.field public static INTENT_REQUEST_CODE:Ljava/lang/String; = null

.field public static INTENT_RESULT_CODE:Ljava/lang/String; = null

.field public static INTENT_RESULT_DATA:Ljava/lang/String; = null

.field public static ON_ASSISTANT_ACTIVITY_RESULT:Ljava/lang/String; = null

.field public static REQUEST_CODE:I = 0x0

.field public static SCREEN_CAPTURE_INTENT:Ljava/lang/String; = null

.field public static START_CAPTURE_FAILED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "pandora"


# instance fields
.field private m_applicationContext:Landroid/content/Context;

.field private m_broadCastReceiver:Landroid/content/BroadcastReceiver;

.field private m_isRecording:Z

.field private m_mediaProjection:Landroid/media/projection/MediaProjection;

.field m_mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

.field private m_mediaRecorder:Landroid/media/MediaRecorder;

.field private m_projectionManager:Landroid/media/projection/MediaProjectionManager;

.field private m_resultCode:I

.field private m_resultData:Landroid/content/Intent;

.field private m_screenDensity:I

.field private m_surfaceHeight:I

.field private m_surfaceWidth:I

.field private m_videoEncodingBitRate:I

.field private m_videoPath:Ljava/lang/String;

.field private m_virtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "ScreenCapture.OnAssistantActivityResult"

    sput-object v0, Lcom/tencent/pandora/livepusher/ScreenCapture;->ON_ASSISTANT_ACTIVITY_RESULT:Ljava/lang/String;

    .line 36
    const-string v0, "ScreenCapture.RequestCode"

    sput-object v0, Lcom/tencent/pandora/livepusher/ScreenCapture;->INTENT_REQUEST_CODE:Ljava/lang/String;

    .line 37
    const-string v0, "ScreenCapture.ResultCode"

    sput-object v0, Lcom/tencent/pandora/livepusher/ScreenCapture;->INTENT_RESULT_CODE:Ljava/lang/String;

    .line 38
    const-string v0, "ScreenCapture.ResultData"

    sput-object v0, Lcom/tencent/pandora/livepusher/ScreenCapture;->INTENT_RESULT_DATA:Ljava/lang/String;

    .line 39
    const-string v0, "ScreenCapture.ScreenCapture"

    sput-object v0, Lcom/tencent/pandora/livepusher/ScreenCapture;->SCREEN_CAPTURE_INTENT:Ljava/lang/String;

    .line 41
    const/16 v0, 0x3e9

    sput v0, Lcom/tencent/pandora/livepusher/ScreenCapture;->REQUEST_CODE:I

    .line 42
    const v0, 0x1312d02

    sput v0, Lcom/tencent/pandora/livepusher/ScreenCapture;->ErrorCode_StartAssitantActivityFailed:I

    .line 43
    const/16 v0, 0x2328

    sput v0, Lcom/tencent/pandora/livepusher/ScreenCapture;->START_CAPTURE_FAILED:I

    .line 47
    new-instance v0, Lcom/tencent/pandora/livepusher/ScreenCapture;

    invoke-direct {v0}, Lcom/tencent/pandora/livepusher/ScreenCapture;-><init>()V

    sput-object v0, Lcom/tencent/pandora/livepusher/ScreenCapture;->INSTANCE:Lcom/tencent/pandora/livepusher/ScreenCapture;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 50
    iput-object v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_applicationContext:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_projectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 52
    iput-object v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaProjection:Landroid/media/projection/MediaProjection;

    .line 53
    iput-object v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_isRecording:Z

    .line 58
    const/16 v0, 0x438

    iput v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_surfaceWidth:I

    .line 59
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_surfaceHeight:I

    .line 60
    const v0, 0x4a28600

    iput v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_videoEncodingBitRate:I

    .line 66
    new-instance v0, Lcom/tencent/pandora/livepusher/ScreenCapture$1;

    invoke-direct {v0, p0}, Lcom/tencent/pandora/livepusher/ScreenCapture$1;-><init>(Lcom/tencent/pandora/livepusher/ScreenCapture;)V

    iput-object v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    .line 313
    new-instance v0, Lcom/tencent/pandora/livepusher/ScreenCapture$2;

    invoke-direct {v0, p0}, Lcom/tencent/pandora/livepusher/ScreenCapture$2;-><init>(Lcom/tencent/pandora/livepusher/ScreenCapture;)V

    iput-object v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_broadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/pandora/livepusher/ScreenCapture;IILandroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/pandora/livepusher/ScreenCapture;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/pandora/livepusher/ScreenCapture;->onActivityResultCallback(IILandroid/content/Intent;)V

    return-void
.end method

.method public static getInstance()Lcom/tencent/pandora/livepusher/ScreenCapture;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/tencent/pandora/livepusher/ScreenCapture;->INSTANCE:Lcom/tencent/pandora/livepusher/ScreenCapture;

    return-object v0
.end method

.method private initRecorder()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 178
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_videoPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, "file":Ljava/io/File;
    const-string v3, "pandora"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initRecorder:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    const-string v3, "pandora"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initRecorder, file exists, try to delete it:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 187
    :cond_0
    const-string v3, "pandora"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init mediaRecorder:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    if-nez v3, :cond_1

    .line 191
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    .line 192
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 193
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v6}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 207
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v6}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 208
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v6}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 209
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 210
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_surfaceWidth:I

    iget v5, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_surfaceHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 211
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_videoEncodingBitRate:I

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 213
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 220
    :goto_0
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 225
    :try_start_0
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    .line 226
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 227
    .local v2, "surface":Landroid/view/Surface;
    const-string v3, "pandora"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "media recorder surface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v2    # "surface":Landroid/view/Surface;
    :goto_1
    return-void

    .line 217
    :cond_1
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 232
    sget v3, Lcom/tencent/pandora/livepusher/ScreenCapture;->START_CAPTURE_FAILED:I

    const-string v4, "MediaRecorder.prepare()\u5931\u8d25\uff01"

    invoke-static {v3, v4}, Lcom/tencent/pandora/livepusher/LiveVideo;->pandora_send_unity_message(ILjava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/tencent/pandora/livepusher/ScreenCapture;->releaseRecorder()V

    goto :goto_1
.end method

.method private onActivityResultCallback(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 266
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    :try_start_1
    const-string v1, "pandora"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResultCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :try_start_2
    iget-object v1, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_applicationContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :cond_0
    :goto_0
    :try_start_3
    sget v1, Lcom/tencent/pandora/livepusher/ScreenCapture;->REQUEST_CODE:I

    if-ne p1, v1, :cond_1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    .line 278
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_isRecording:Z

    .line 280
    sget v1, Lcom/tencent/pandora/livepusher/ScreenCapture;->START_CAPTURE_FAILED:I

    const-string/jumbo v2, "\u5f55\u5c4f\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/tencent/pandora/livepusher/LiveVideo;->pandora_send_unity_message(ILjava/lang/String;)V

    .line 283
    const-string v1, "pandora"

    const-string v2, "screen capture failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    monitor-exit p0

    .line 308
    :goto_1
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 300
    :catch_1
    move-exception v0

    .line 301
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    iput-boolean v4, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_isRecording:Z

    goto :goto_1

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_projectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v1, p2, p3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaProjection:Landroid/media/projection/MediaProjection;

    .line 291
    iget-object v1, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaProjection:Landroid/media/projection/MediaProjection;

    if-nez v1, :cond_3

    .line 293
    sget v1, Lcom/tencent/pandora/livepusher/ScreenCapture;->START_CAPTURE_FAILED:I

    const-string/jumbo v2, "\u83b7\u53d6MediaProjection\u5931\u8d25\uff01"

    invoke-static {v1, v2}, Lcom/tencent/pandora/livepusher/LiveVideo;->pandora_send_unity_message(ILjava/lang/String;)V

    .line 294
    monitor-exit p0

    goto :goto_1

    .line 297
    :cond_3
    const-string v1, "pandora"

    const-string v2, "screen capture start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-direct {p0}, Lcom/tencent/pandora/livepusher/ScreenCapture;->onStartRecord()V

    .line 299
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private onStartRecord()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/tencent/pandora/livepusher/ScreenCapture;->initRecorder()V

    .line 258
    invoke-direct {p0}, Lcom/tencent/pandora/livepusher/ScreenCapture;->setUpVirtualDisplay()V

    .line 259
    iget-object v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_isRecording:Z

    .line 261
    return-void
.end method

.method private releaseRecorder()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 240
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    .line 241
    return-void
.end method

.method private setUpVirtualDisplay()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 244
    const-string v0, "pandora"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting up a VirtualDisplay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_surfaceWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_surfaceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_screenDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaProjection:Landroid/media/projection/MediaProjection;

    const-string v1, "ScreenCapture"

    iget v2, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_surfaceWidth:I

    iget v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_surfaceHeight:I

    iget v4, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_screenDensity:I

    const/16 v5, 0x10

    iget-object v6, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    .line 249
    invoke-virtual {v6}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    move-object v8, v7

    .line 246
    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 252
    return-void
.end method


# virtual methods
.method public setContext(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    iget-object v2, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_applicationContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 84
    iput-object p1, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_applicationContext:Landroid/content/Context;

    .line 86
    iget-object v2, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_projectionManager:Landroid/media/projection/MediaProjectionManager;

    if-nez v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_applicationContext:Landroid/content/Context;

    const-string v3, "media_projection"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/projection/MediaProjectionManager;

    iput-object v2, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_projectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 89
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 90
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 91
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 92
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_screenDensity:I

    .line 94
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method public setVideoEncodingBitRate(I)V
    .locals 0
    .param p1, "videoEncodingBitRate"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_videoEncodingBitRate:I

    .line 138
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_surfaceWidth:I

    .line 132
    iput p2, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_surfaceHeight:I

    .line 133
    return-void
.end method

.method public startCapture(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 143
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_applicationContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_projectionManager:Landroid/media/projection/MediaProjectionManager;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_isRecording:Z

    if-eqz v3, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iput-object p1, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_videoPath:Ljava/lang/String;

    .line 148
    const-string v3, "pandora"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCapture: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_surfaceWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_surfaceHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_screenDensity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v3, :cond_2

    .line 154
    invoke-direct {p0}, Lcom/tencent/pandora/livepusher/ScreenCapture;->onStartRecord()V

    goto :goto_0

    .line 159
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v1, "filter":Landroid/content/IntentFilter;
    sget-object v3, Lcom/tencent/pandora/livepusher/ScreenCapture;->ON_ASSISTANT_ACTIVITY_RESULT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_applicationContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_broadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_applicationContext:Landroid/content/Context;

    const-class v4, Lcom/tencent/pandora/livepusher/ScreenCapture$PermissionActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v2, "it":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    sget-object v3, Lcom/tencent/pandora/livepusher/ScreenCapture;->SCREEN_CAPTURE_INTENT:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_projectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v4}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 169
    :try_start_0
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_applicationContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 173
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    sget v3, Lcom/tencent/pandora/livepusher/ScreenCapture;->START_CAPTURE_FAILED:I

    const-string/jumbo v4, "\u5f55\u5c4f\u5931\u8d25"

    invoke-static {v3, v4}, Lcom/tencent/pandora/livepusher/LiveVideo;->pandora_send_unity_message(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public stopCapture()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 99
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_videoPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, "file":Ljava/io/File;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 104
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "mediaScanIntent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 106
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    .end local v2    # "mediaScanIntent":Landroid/content/Intent;
    :goto_0
    iget-boolean v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_isRecording:Z

    if-nez v3, :cond_1

    .line 127
    :goto_1
    return-void

    .line 108
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_2

    .line 117
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 118
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 119
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 120
    iput-object v7, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_mediaRecorder:Landroid/media/MediaRecorder;

    .line 121
    iget-object v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v3}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 122
    iput-object v7, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 125
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tencent/pandora/livepusher/ScreenCapture;->m_isRecording:Z

    goto :goto_1
.end method
