.class public Lcom/netease/unisdk/ngvoice/NgVoiceManager;
.super Ljava/lang/Object;
.source "NgVoiceManager.java"

# interfaces
.implements Lcom/netease/unisdk/ngvoice/NgVoiceInterface;


# static fields
.field public static final IDLE_STATE:I = 0x0

.field private static final MIN_USABLE_SPACE:I = 0x500000

.field private static final NG_VIDEO_PERMISSIONS_REQUEST_CODE:I = 0x69

.field public static final PLAYING_STATE:I = 0x2

.field public static final RECORDING_STATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ng_voice Manager"

.field private static final VOICE_DIR_NAME:Ljava/lang/String; = "ng_voice"

.field private static final VOICE_FILE_SUFFIX:Ljava/lang/String; = ".amr"

.field private static sInstance:Lcom/netease/unisdk/ngvoice/NgVoiceManager;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

.field private mContext:Landroid/content/Context;

.field private mHttpHelper:Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

.field private mStartRecordTime:J

.field private mState:I

.field private mVoiceFile:Ljava/io/File;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;

    invoke-direct {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;-><init>()V

    iput-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mHttpHelper:Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;

    .line 67
    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->init(III)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Lcom/netease/unisdk/ngvoice/NgVoiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/unisdk/ngvoice/NgVoiceManager;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopRecord(ZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netease/unisdk/ngvoice/NgVoiceManager;J)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;
    .param p1, "x1"    # J

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->getFileDir(J)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->saveDownloadVoiceFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->downloadError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->translateFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopPlayback()V

    return-void
.end method

.method static synthetic access$500(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->startRecord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->startPlayback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->uploadVoiceFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mHttpHelper:Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;

    return-object v0
.end method

.method private checkDirUsable(Ljava/io/File;J)Ljava/io/File;
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "minSpace"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 377
    if-nez p1, :cond_0

    move-object v0, v1

    .line 389
    :goto_0
    return-object v0

    .line 380
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "ng_voice"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    .end local p1    # "file":Ljava/io/File;
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/utils/FileUtil;->createDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    .line 382
    const-string v2, "ng_voice Manager"

    const-string v3, "can\'t create dir <%s>"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netease/unisdk/ngvoice/log/NgLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v0

    .end local v0    # "file":Ljava/io/File;
    .restart local p1    # "file":Ljava/io/File;
    move-object v0, v1

    .line 383
    goto :goto_0

    .line 385
    .end local p1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-direct {p0, v0, p2, p3}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->hasUsableSpace(Ljava/io/File;J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 386
    const-string v2, "ng_voice Manager"

    const-string v3, "<%s> has\'t enough space"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netease/unisdk/ngvoice/log/NgLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v0

    .end local v0    # "file":Ljava/io/File;
    .restart local p1    # "file":Ljava/io/File;
    move-object v0, v1

    .line 387
    goto :goto_0

    .end local p1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :cond_2
    move-object p1, v0

    .line 389
    .end local v0    # "file":Ljava/io/File;
    .restart local p1    # "file":Ljava/io/File;
    goto :goto_0
.end method

.method private checkPermissions(Ljava/lang/String;)Z
    .locals 10
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x17

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 476
    const/4 v3, 0x0

    .line 478
    .local v3, "targetSdkVersion":I
    :try_start_0
    iget-object v6, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 479
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    const-string v6, "ng_voice Manager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "targetSdkVersion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const/4 v2, 0x1

    .line 487
    .local v2, "result":Z
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v9, :cond_0

    .line 488
    if-lt v3, v9, :cond_2

    .line 490
    iget-object v6, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    .line 496
    :cond_0
    :goto_1
    return v2

    .line 480
    .end local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "result":Z
    :cond_1
    move v2, v5

    .line 490
    goto :goto_1

    .line 493
    :cond_2
    iget-object v6, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    move v2, v4

    :goto_2
    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_2
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 709
    sget-object v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->sInstance:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    if-eqz v0, :cond_0

    .line 710
    invoke-static {}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->shutdown()V

    .line 712
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->sInstance:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    .line 713
    return-void
.end method

.method private doDelete(Ljava/io/File;J)V
    .locals 10
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "time"    # J

    .prologue
    const/4 v3, 0x0

    .line 694
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 696
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 706
    .end local v1    # "files":[Ljava/io/File;
    :cond_0
    return-void

    .line 699
    .restart local v1    # "files":[Ljava/io/File;
    :cond_1
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 700
    .local v0, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, p2

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 701
    const-string v5, "ng_voice Manager"

    const-string v6, "delete file :%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v5, v6, v7}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 699
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private downloadError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 625
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$20;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 631
    return-void
.end method

.method private getFileDir(J)Ljava/io/File;
    .locals 3
    .param p1, "minSpace"    # J

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "fileDir":Ljava/io/File;
    invoke-static {}, Lcom/netease/unisdk/ngvoice/utils/StorageUtil;->isSDCardAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/unisdk/ngvoice/utils/StorageUtil;->getExternalFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->checkDirUsable(Ljava/io/File;J)Ljava/io/File;

    move-result-object v0

    .line 365
    if-nez v0, :cond_0

    .line 367
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->checkDirUsable(Ljava/io/File;J)Ljava/io/File;

    move-result-object v0

    .line 373
    :cond_0
    :goto_0
    return-object v0

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->checkDirUsable(Ljava/io/File;J)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/netease/unisdk/ngvoice/NgVoiceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    sget-object v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->sInstance:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    if-nez v0, :cond_1

    .line 72
    const-class v1, Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->sInstance:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->sInstance:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    .line 75
    invoke-static {p0}, Lcom/netease/unisdk/ngvoice/log/NgLog;->checkIsDebug(Landroid/content/Context;)V

    .line 77
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_1
    sget-object v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->sInstance:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private hasUsableSpace(Ljava/io/File;J)Z
    .locals 8
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "minSpace"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 393
    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/utils/StorageUtil;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v0

    .line 394
    .local v0, "usableSize":J
    const-string v4, "ng_voice Manager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " %s :usable size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    cmp-long v4, v0, p2

    if-lez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private requestFocus()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 227
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mAudioManager:Landroid/media/AudioManager;

    .line 228
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 255
    :goto_0
    return v3

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v4, Lcom/netease/unisdk/ngvoice/NgVoiceManager$7;

    invoke-direct {v4, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$7;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 255
    .local v0, "result":I
    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method private saveDownloadVoiceFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 635
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 636
    .local v3, "out":Ljava/io/OutputStream;
    const-wide/16 v6, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/io/InputStream;->skip(J)J

    .line 637
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 639
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    if-lez v2, :cond_0

    .line 640
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 645
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    .end local v3    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 646
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 648
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v4

    .line 642
    .restart local v0    # "buf":[B
    .restart local v2    # "len":I
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 643
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 644
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private startPlayback(Ljava/lang/String;)V
    .locals 6
    .param p1, "voiceFilePath"    # Ljava/lang/String;

    .prologue
    .line 259
    const-string v2, "ng_voice Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start playback in thread : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    const-string v2, "ng_voice Manager"

    const-string v3, "requestFocus error"

    invoke-static {v2, v3}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v2, Lcom/netease/unisdk/ngvoice/NgVoiceManager$8;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$8;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-static {v2}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 317
    :goto_0
    return-void

    .line 270
    :cond_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    .line 273
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, "fis":Ljava/io/FileInputStream;
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 275
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 276
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/netease/unisdk/ngvoice/NgVoiceManager$9;

    invoke-direct {v3, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$9;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 289
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/netease/unisdk/ngvoice/NgVoiceManager$10;

    invoke-direct {v3, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$10;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 304
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 305
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 306
    const/4 v2, 0x2

    iput v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    invoke-direct {p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopPlayback()V

    .line 310
    new-instance v2, Lcom/netease/unisdk/ngvoice/NgVoiceManager$11;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$11;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-static {v2}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private startRecord(Ljava/lang/String;)V
    .locals 8
    .param p1, "voiceFileName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 96
    const-string v2, "ng_voice Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start record in thread : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 98
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    if-nez v2, :cond_1

    .line 102
    new-instance v2, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    invoke-direct {v2}, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;-><init>()V

    iput-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    .line 103
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mHttpHelper:Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;

    iget-object v3, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    invoke-virtual {v2, v3}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->setVoiceSettings(Lcom/netease/unisdk/ngvoice/NgVoiceSettings;)V

    .line 106
    :cond_1
    const-wide/32 v2, 0x500000

    invoke-direct {p0, v2, v3}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->getFileDir(J)Ljava/io/File;

    move-result-object v0

    .line 107
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_2

    .line 108
    const-string v2, "ng_voice Manager"

    const-string v3, "can\'t find a path to save voice file"

    invoke-static {v2, v3}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v2, Lcom/netease/unisdk/ngvoice/NgVoiceManager$1;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$1;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-static {v2}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 202
    :goto_0
    return-void

    .line 119
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".amr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    :cond_3
    invoke-static {v0, p1}, Lcom/netease/unisdk/ngvoice/utils/FileUtil;->createFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mVoiceFile:Ljava/io/File;

    .line 123
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mVoiceFile:Ljava/io/File;

    if-nez v2, :cond_4

    .line 124
    const-string v2, "ng_voice Manager"

    const-string v3, "can\'t create voice file"

    invoke-static {v2, v3}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v2, Lcom/netease/unisdk/ngvoice/NgVoiceManager$2;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$2;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-static {v2}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 133
    :cond_4
    const-string v2, "ng_voice Manager"

    const-string v3, "voice file save path = %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mVoiceFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_5

    .line 136
    invoke-direct {p0, v6, v6}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopRecord(ZZ)V

    .line 138
    :cond_5
    const-string v2, "ng_voice Manager"

    const-string v3, "new MediaRecorder"

    invoke-static {v2, v3}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 142
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 143
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 144
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v3, 0x128e

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 145
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget v3, v3, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->maxDuration:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 146
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mVoiceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    new-instance v3, Lcom/netease/unisdk/ngvoice/NgVoiceManager$3;

    invoke-direct {v3, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$3;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 161
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    new-instance v3, Lcom/netease/unisdk/ngvoice/NgVoiceManager$4;

    invoke-direct {v3, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$4;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 172
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :try_start_1
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mStartRecordTime:J

    .line 200
    iput v7, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    .line 201
    const-string v2, "ng_voice Manager"

    const-string v3, "startRecord end"

    invoke-static {v2, v3}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ng_voice Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, v6, v6}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopRecord(ZZ)V

    .line 176
    new-instance v2, Lcom/netease/unisdk/ngvoice/NgVoiceManager$5;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$5;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-static {v2}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 188
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 189
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "ng_voice Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recorder.start Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, v6, v6}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopRecord(ZZ)V

    .line 191
    new-instance v2, Lcom/netease/unisdk/ngvoice/NgVoiceManager$6;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$6;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-static {v2}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private stopPlayback()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 324
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    .line 328
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private stopRecord(ZZ)V
    .locals 7
    .param p1, "needCallback"    # Z
    .param p2, "needStop"    # Z

    .prologue
    const/4 v6, 0x0

    .line 210
    if-eqz p2, :cond_0

    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 213
    :cond_0
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mVoiceFile:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mStartRecordTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v0, v2, v3

    .line 220
    .local v0, "duration":F
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mVoiceFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onRecordFinish(ZLjava/lang/String;FLjava/lang/String;)V

    .line 222
    .end local v0    # "duration":F
    :cond_1
    iput-object v6, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    .line 223
    const/4 v2, 0x0

    iput v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    .line 224
    return-void

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ng_voice Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopRecord Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private translateFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 346
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$13;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method

.method private uploadVoiceFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mHttpHelper:Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->upload(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 337
    .local v1, "success":Z
    :goto_0
    new-instance v2, Lcom/netease/unisdk/ngvoice/NgVoiceManager$12;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$12;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 343
    return-void

    .line 336
    .end local v1    # "success":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasPermissions()Z
    .locals 3

    .prologue
    .line 400
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-direct {p0, v2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->checkPermissions(Ljava/lang/String;)Z

    move-result v0

    .line 401
    .local v0, "audioPermission":Z
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->checkPermissions(Ljava/lang/String;)Z

    move-result v1

    .line 402
    .local v1, "storagePermission":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public ntCancelRecord()V
    .locals 2

    .prologue
    .line 542
    const-string v0, "ng_voice Manager"

    const-string v1, "nt cancel record ... "

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopRecord(ZZ)V

    .line 545
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mVoiceFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mVoiceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 548
    :cond_0
    return-void
.end method

.method public ntClearVoiceCache(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 672
    invoke-static {}, Lcom/netease/unisdk/ngvoice/utils/StorageUtil;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/unisdk/ngvoice/utils/StorageUtil;->getExternalFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "ng_voice"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->doDelete(Ljava/io/File;J)V

    .line 675
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ng_voice"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->doDelete(Ljava/io/File;J)V

    .line 676
    return-void
.end method

.method public ntDownloadVoiceFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "voiceFileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 568
    const-string v0, "ng_voice Manager"

    const-string v1, "nt download voice file ... key = %s,voiceFileName = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    const-string v0, "ng_voice Manager"

    const-string v1, "network not available"

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v4, p1, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onDownloadFinish(ZLjava/lang/String;Ljava/lang/String;)V

    .line 622
    :goto_0
    return-void

    .line 574
    :cond_0
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public ntGetTranslation(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 654
    const-string v0, "ng_voice Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nt get translation ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    const-string v0, "ng_voice Manager"

    const-string v1, "network not available"

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onTranslateFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :goto_0
    return-void

    .line 660
    :cond_0
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$21;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$21;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public ntGetVoiceAmplitude()F
    .locals 6

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 680
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_1

    .line 681
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    const/high16 v3, 0x43960000    # 300.0f

    div-float v1, v2, v3

    .line 683
    .local v1, "ratio":F
    const/4 v0, 0x0

    .line 684
    .local v0, "db":F
    cmpl-float v2, v1, v4

    if-lez v2, :cond_0

    .line 685
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 688
    :cond_0
    const/high16 v2, 0x428c0000    # 70.0f

    div-float v2, v0, v2

    .line 690
    .end local v0    # "db":F
    .end local v1    # "ratio":F
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public ntStartPlayback(Ljava/lang/String;)V
    .locals 4
    .param p1, "voiceFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 519
    const-string v0, "ng_voice Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nt start playback ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 521
    invoke-direct {p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopPlayback()V

    .line 526
    :cond_0
    :goto_0
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$17;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$17;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    .line 532
    return-void

    .line 522
    :cond_1
    iget v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    if-ne v0, v3, :cond_0

    .line 523
    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopRecord(ZZ)V

    goto :goto_0
.end method

.method public ntStartRecord(Ljava/lang/String;)V
    .locals 4
    .param p1, "voiceFileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 461
    const-string v0, "ng_voice Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nt start record ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 463
    invoke-direct {p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopPlayback()V

    .line 467
    :cond_0
    :goto_0
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$15;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$15;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    .line 473
    return-void

    .line 464
    :cond_1
    iget v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    if-ne v0, v3, :cond_0

    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopRecord(ZZ)V

    goto :goto_0
.end method

.method public ntStopPlayback()V
    .locals 2

    .prologue
    .line 536
    const-string v0, "ng_voice Manager"

    const-string v1, "nt stop playback ... "

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopPlayback()V

    .line 538
    return-void
.end method

.method public ntStopRecord()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 501
    const-string v0, "ng_voice Manager"

    const-string v1, "nt stop record ... "

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    if-eq v0, v2, :cond_1

    .line 506
    :cond_0
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$16;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$16;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopRecord(ZZ)V

    goto :goto_0
.end method

.method public ntUploadVoiceFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 552
    const-string v0, "ng_voice Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nt upload voice file ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    const-string v0, "ng_voice Manager"

    const-string v1, "network not available"

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onUploadFinish(ZLjava/lang/String;Ljava/lang/String;)V

    .line 564
    :goto_0
    return-void

    .line 558
    :cond_0
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$18;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$18;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 407
    const/16 v2, 0x69

    if-ne p1, v2, :cond_1

    .line 408
    if-eqz p3, :cond_1

    .line 409
    const/4 v0, 0x1

    .line 410
    .local v0, "getPermissionFlag":Z
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p3, v2

    .line 411
    .local v1, "res":I
    if-eqz v1, :cond_2

    .line 412
    const/4 v0, 0x0

    .line 416
    .end local v1    # "res":I
    :cond_0
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    invoke-interface {v2, v0}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onRequestPermissions(Z)V

    .line 419
    .end local v0    # "getPermissionFlag":Z
    :cond_1
    return-void

    .line 410
    .restart local v0    # "getPermissionFlag":Z
    .restart local v1    # "res":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public requestPermissions()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 423
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 425
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-direct {p0, v2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->checkPermissions(Ljava/lang/String;)Z

    move-result v0

    .line 426
    .local v0, "audioPermission":Z
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->checkPermissions(Ljava/lang/String;)Z

    move-result v1

    .line 427
    .local v1, "storagePermission":Z
    const-string v2, "ng_voice Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "permission.RECORD_AUDIO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v2, "ng_voice Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "permission.WRITE_EXTERNAL_STORAGE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 430
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    invoke-interface {v2, v5}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onRequestPermissions(Z)V

    .line 457
    .end local v0    # "audioPermission":Z
    .end local v1    # "storagePermission":Z
    :goto_0
    return-void

    .line 432
    .restart local v0    # "audioPermission":Z
    .restart local v1    # "storagePermission":Z
    :cond_0
    new-instance v2, Lcom/netease/unisdk/ngvoice/NgVoiceManager$14;

    invoke-direct {v2, p0, v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$14;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;ZZ)V

    invoke-static {v2}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 455
    .end local v0    # "audioPermission":Z
    .end local v1    # "storagePermission":Z
    :cond_1
    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    invoke-interface {v2, v5}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onRequestPermissions(Z)V

    goto :goto_0
.end method

.method public setCallback(Lcom/netease/unisdk/ngvoice/NgVoiceCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    .line 84
    return-void
.end method

.method public setVoiceSettings(Lcom/netease/unisdk/ngvoice/NgVoiceSettings;)V
    .locals 1
    .param p1, "settings"    # Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    .line 88
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mHttpHelper:Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->setVoiceSettings(Lcom/netease/unisdk/ngvoice/NgVoiceSettings;)V

    .line 89
    return-void
.end method
