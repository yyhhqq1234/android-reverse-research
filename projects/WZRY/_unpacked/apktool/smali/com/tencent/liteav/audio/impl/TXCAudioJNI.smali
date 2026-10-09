.class public Lcom/tencent/liteav/audio/impl/TXCAudioJNI;
.super Ljava/lang/Object;
.source "TXCAudioJNI.java"


# static fields
.field public static final JNI_LIB_NAME:Ljava/lang/String; = "liteavsdk"

.field static mBGMNotify:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/audio/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->d()V

    .line 23
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeSetTempPath(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendAACData([BJ)V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/liteav/audio/impl/a;->c([BJ)V

    .line 115
    return-void
.end method

.method public static native getBGMDuration(Ljava/lang/String;)I
.end method

.method public static native getCurBGMProgress()J
.end method

.method public static native nativeAppendLibraryPath(Ljava/lang/String;)V
.end method

.method public static nativeCheckTraeEngine(Landroid/content/Context;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 63
    if-nez p0, :cond_0

    .line 64
    const-string v0, "TXCAudioJNI"

    const-string v2, "nativeInitTraeEngine failed, context is null!"

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 110
    :goto_0
    return v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 69
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/lib"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 73
    if-nez v0, :cond_1

    const-string v0, ""

    .line 75
    :cond_1
    const-string v6, "/libtraeimp-rtmp-armeabi-v7a.so"

    .line 76
    const-string v7, "/libtraeimp-rtmp-armeabi.so"

    .line 78
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    move v0, v2

    .line 80
    goto :goto_0

    .line 82
    :cond_2
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    move v0, v2

    .line 84
    goto :goto_0

    .line 86
    :cond_3
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    move v0, v2

    .line 88
    goto/16 :goto_0

    .line 90
    :cond_4
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v2

    .line 92
    goto/16 :goto_0

    .line 94
    :cond_5
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v2

    .line 96
    goto/16 :goto_0

    .line 98
    :cond_6
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v2

    .line 100
    goto/16 :goto_0

    .line 102
    :cond_7
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    move v0, v2

    .line 104
    goto/16 :goto_0

    .line 106
    :cond_8
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 108
    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 110
    goto/16 :goto_0
.end method

.method public static native nativeCreatePlayProcessor(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J
.end method

.method public static native nativeCreateRecordProcessor()J
.end method

.method public static native nativeDestoryPlayProcessor(J)V
.end method

.method public static native nativeDestoryRecordProcessor(J)V
.end method

.method public static native nativeGetAacHeader(III)[B
.end method

.method public static native nativeGetCacheDuration(J)J
.end method

.method public static native nativeGetCacheSize(J)J
.end method

.method public static native nativeGetPlayChannel(J)I
.end method

.method public static native nativeGetPlayLoadingInfo(J)Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;
.end method

.method public static native nativeGetPlaySamplerate(J)I
.end method

.method public static native nativeGetPlaySpeed(J)F
.end method

.method public static nativeInitTraeEngine(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    const-string v0, "TXCAudioJNI"

    const-string v1, "nativeInitTraeEngine failed, context is null!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 46
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 47
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/lib"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 51
    if-nez v0, :cond_1

    const-string v0, ""

    .line 53
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add_libpath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeAppendLibraryPath(Ljava/lang/String;)V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add_libpath:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeAppendLibraryPath(Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add_libpath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeAppendLibraryPath(Ljava/lang/String;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add_libpath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeAppendLibraryPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static nativePlayPorcessorInit(JLandroid/content/Context;IZZ)V
    .locals 0

    .prologue
    .line 34
    if-eqz p4, :cond_0

    .line 35
    invoke-static {p2}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeInitTraeEngine(Landroid/content/Context;)V

    .line 37
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativePlayProcessorInitInternal(JLandroid/content/Context;IZZ)V

    .line 38
    return-void
.end method

.method public static native nativePlayProcess(J[BIJ)[B
.end method

.method private static native nativePlayProcessorInitInternal(JLandroid/content/Context;IZZ)V
.end method

.method public static native nativePlayProcessorSetAudioInfo(JIII)V
.end method

.method public static native nativeQueryData(J)[B
.end method

.method public static native nativeRecordPorcess(J[B)[B
.end method

.method public static nativeRecordProcessorInit(JLandroid/content/Context;IZIII)V
    .locals 0

    .prologue
    .line 27
    if-eqz p4, :cond_0

    .line 28
    invoke-static {p2}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeInitTraeEngine(Landroid/content/Context;)V

    .line 30
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeRecordProcessorInitInternal(JLandroid/content/Context;IZIII)V

    .line 31
    return-void
.end method

.method private static native nativeRecordProcessorInitInternal(JLandroid/content/Context;IZIII)V
.end method

.method public static native nativeSetAutoAdjust(JZ)V
.end method

.method public static native nativeSetAutoAdjustMaxCache(JF)V
.end method

.method public static native nativeSetAutoAdjustMinCache(JF)V
.end method

.method public static native nativeSetCacheTime(JF)V
.end method

.method public static native nativeSetRealTimePlay(JZ)V
.end method

.method public static native nativeSetTempPath(Ljava/lang/String;)V
.end method

.method public static native nativeSetTraeConfig(Ljava/lang/String;)V
.end method

.method public static native nativeTraeRecordSetMute(Z)V
.end method

.method public static native nativeTraeSetReverb(I)V
.end method

.method public static declared-synchronized onBGMNotify(IJJ)V
    .locals 3

    .prologue
    .line 135
    const-class v1, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->mBGMNotify:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 136
    :cond_1
    :try_start_1
    sget-object v0, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->mBGMNotify:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/g;

    .line 137
    if-eqz v0, :cond_0

    .line 138
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    invoke-interface {v0}, Lcom/tencent/liteav/audio/g;->onMixPlayBegin()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 143
    :pswitch_1
    :try_start_2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/liteav/audio/g;->onMixPlayProgress(JJ)V

    goto :goto_0

    .line 146
    :pswitch_2
    long-to-int v2, p1

    invoke-interface {v0, v2}, Lcom/tencent/liteav/audio/g;->onMixPlayComplete(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static onBgmPcm([B)V
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->mBGMNotify:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    sget-object v0, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->mBGMNotify:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/g;

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0, p0}, Lcom/tencent/liteav/audio/g;->onPCMData([B)V

    goto :goto_0
.end method

.method public static onMixPcm([B)V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->mBGMNotify:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    sget-object v0, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->mBGMNotify:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/g;

    .line 164
    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0, p0}, Lcom/tencent/liteav/audio/g;->onMixPcmData([B)V

    goto :goto_0
.end method

.method public static native pauseBGM()V
.end method

.method public static native playBGM(Ljava/lang/String;III)Z
.end method

.method public static native resumeBGM()V
.end method

.method public static native seekBGM(II)V
.end method

.method public static native seekBGMWithBytes(II)V
.end method

.method public static declared-synchronized setBGMNotify(Lcom/tencent/liteav/audio/g;)V
    .locals 2

    .prologue
    .line 118
    const-class v1, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->mBGMNotify:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit v1

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native setBgmPlayRate(F)V
.end method

.method public static native setBgmVolume(F)V
.end method

.method public static native setHeadsetOn(Z)V
.end method

.method public static native setMicVolume(F)V
.end method

.method public static native setMixPlayRate(F)V
.end method

.method public static native stopBGM()V
.end method

.method public static native webrtcAgcCreate(I)I
.end method

.method public static native webrtcAgcFree(I)V
.end method

.method public static native webrtcAgcProcess(I[S[S)V
.end method

.method public static native webrtcAgcProcessBytes(I[B[B)V
.end method

.method public static native writeToFile([B)V
.end method
