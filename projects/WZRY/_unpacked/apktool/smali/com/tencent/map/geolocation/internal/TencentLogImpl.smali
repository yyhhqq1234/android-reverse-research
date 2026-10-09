.class public final Lcom/tencent/map/geolocation/internal/TencentLogImpl;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Lcom/tencent/map/geolocation/internal/TencentLog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TencentLogImpl"


# instance fields
.field private final mBackupDir:Ljava/io/File;

.field private mEncrypFlag:Z

.field private mHandler:Landroid/os/Handler;

.field private final mKiller:Ljava/lang/Runnable;

.field private mPrepared:Z

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .param p2    # Ljava/io/File;
        .annotation build Lorg/eclipse/jdt/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mEncrypFlag:Z

    .line 39
    iput-object p2, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mBackupDir:Ljava/io/File;

    .line 40
    if-eqz p2, :cond_3

    .line 41
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mPrepared:Z

    .line 43
    iget-boolean v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mPrepared:Z

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "log_worker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mWorker:Landroid/os/HandlerThread;

    .line 45
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 46
    new-instance v0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;

    iget-object v1, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/map/geolocation/internal/TencentLogImpl$LogHandler;-><init>(Lcom/tencent/map/geolocation/internal/TencentLogImpl;Landroid/os/Looper;Lcom/tencent/map/geolocation/internal/TencentLogImpl$1;)V

    iput-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mHandler:Landroid/os/Handler;

    .line 49
    :cond_1
    new-instance v0, Lcom/tencent/map/geolocation/internal/TencentLogImpl$1;

    invoke-direct {v0, p0}, Lcom/tencent/map/geolocation/internal/TencentLogImpl$1;-><init>(Lcom/tencent/map/geolocation/internal/TencentLogImpl;)V

    iput-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mKiller:Ljava/lang/Runnable;

    .line 61
    sget-boolean v0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 62
    const-string v0, "TencentLogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "log dir="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mBackupDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-boolean v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mPrepared:Z

    if-nez v0, :cond_2

    .line 64
    const-string v0, "TencentLogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init failed: mPrepared="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mPrepared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    return-void

    .line 41
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _isPrepared()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/tencent/map/geolocation/internal/TencentLogImpl;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->_isPrepared()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/tencent/map/geolocation/internal/TencentLogImpl;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mPrepared:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tencent/map/geolocation/internal/TencentLogImpl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/map/geolocation/internal/TencentLogImpl;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mWorker:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/map/geolocation/internal/TencentLogImpl;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mEncrypFlag:Z

    return v0
.end method

.method static synthetic access$600(Lcom/tencent/map/geolocation/internal/TencentLogImpl;)Ljava/io/File;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mBackupDir:Ljava/io/File;

    return-object v0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->DEBUG:Z

    return v0
.end method

.method public static setDebugEnabled(Z)V
    .locals 0

    .prologue
    .line 105
    sput-boolean p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->DEBUG:Z

    .line 106
    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->_isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 82
    :cond_0
    return-void
.end method

.method public final getDirString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mBackupDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mBackupDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isPrepared()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mPrepared:Z

    return v0
.end method

.method public final println(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/eclipse/jdt/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->_isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    const-string/jumbo v1, "yyyy-MM-dd kk:mm:ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 123
    :cond_0
    sget-boolean v0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 125
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final setEnCryp(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mEncrypFlag:Z

    .line 86
    return-void
.end method

.method public final shutdown(J)V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->_isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 72
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mKiller:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mKiller:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    :cond_0
    return-void
.end method

.method public final tryRestart()Z
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->_isPrepared()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/map/geolocation/internal/TencentLogImpl;->mKiller:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    const/4 v0, 0x1

    .line 93
    :cond_0
    return v0
.end method
