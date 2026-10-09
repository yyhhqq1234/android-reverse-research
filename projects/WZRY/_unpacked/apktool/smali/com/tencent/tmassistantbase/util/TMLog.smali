.class public Lcom/tencent/tmassistantbase/util/TMLog;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static final INTERNAL:J = 0xea60L

.field protected static final INTERVAL_RETRY_INIT:[I

.field protected static final LOG_CONFIG_FILE_PATH:Ljava/lang/String; = "/tencent/TMAssistantSDK/Logs/logConfig.properties"

.field protected static final LOG_DIR_PATH:Ljava/lang/String; = "/tencent/TMAssistantSDK/Logs/"

.field protected static final LOG_FILE_LENTH:J = 0x7d000L

.field protected static final LOG_FILE_NAME_SUFFIX:Ljava/lang/String; = "_tmlog.txt"

.field public static final PROP_DIR_PATH:Ljava/lang/String; = "logDirPath"

.field public static final PROP_IS_APPEND_LOG_TIME:Ljava/lang/String; = "isAppendLogTime"

.field public static final PROP_IS_APPEND_METHOD_NAME:Ljava/lang/String; = "isAppendMethodName"

.field public static final PROP_IS_USE_WRITER_CACHE:Ljava/lang/String; = "isUseWriterCache"

.field public static final PROP_IS_WRITE_FILE:Ljava/lang/String; = "isWriteLogToFile"

.field public static final PROP_LOGCAT_LEVEL:Ljava/lang/String; = "logcatOutputLevel"

.field public static final PROP_LOG_FILE_LEVEL:Ljava/lang/String; = "logfileOutputLevel"

.field protected static final TAG:Ljava/lang/String; = "TMLog"

.field static a:Ljava/util/concurrent/LinkedBlockingQueue; = null

.field protected static acutualInitRunnable:Ljava/lang/Runnable; = null

.field static b:J = 0x0L

.field static final c:Ljava/util/concurrent/locks/ReentrantLock;

.field protected static context:Landroid/content/Context; = null

.field static d:Ljava/lang/Thread; = null

.field protected static isAppendLogTime:Z = false

.field protected static isAppendMethodName:Z = false

.field protected static final isDebug:Z = true

.field protected static isInitLogFileDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected static isInited:Z

.field protected static isPreExceptionEnospc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected static isUseWriterCache:Z

.field protected static isWriteLogToFile:Z

.field protected static lastLogTime:J

.field protected static logDirPath:Ljava/lang/String;

.field protected static logTime:Ljava/lang/String;

.field protected static logcatOutputLevel:I

.field protected static logfileOutputLevel:I

.field protected static myProcessId:I

.field private static needGetField:Ljava/lang/Boolean;

.field protected static packageName:Ljava/lang/String;

.field protected static retryInitHandler:Landroid/os/Handler;

.field protected static retryInitTimes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static stringBuilderCharBuffer:Ljava/lang/ThreadLocal;

.field private static stringBuilderValueField:Ljava/lang/reflect/Field;

.field protected static timeFormatter:Ljava/text/SimpleDateFormat;

.field protected static writer:Ljava/io/BufferedWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    sput-boolean v2, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile:Z

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->logDirPath:Ljava/lang/String;

    .line 66
    const/4 v0, 0x2

    sput v0, Lcom/tencent/tmassistantbase/util/TMLog;->logcatOutputLevel:I

    .line 71
    const/4 v0, 0x4

    sput v0, Lcom/tencent/tmassistantbase/util/TMLog;->logfileOutputLevel:I

    .line 76
    sput-boolean v3, Lcom/tencent/tmassistantbase/util/TMLog;->isUseWriterCache:Z

    .line 81
    sput-boolean v2, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendMethodName:Z

    .line 86
    sput-boolean v2, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendLogTime:Z

    .line 112
    sput-boolean v2, Lcom/tencent/tmassistantbase/util/TMLog;->isInited:Z

    .line 338
    sput-wide v4, Lcom/tencent/tmassistantbase/util/TMLog;->b:J

    .line 342
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 350
    const-string v0, ""

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->packageName:Ljava/lang/String;

    .line 354
    const-string v0, ""

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->logTime:Ljava/lang/String;

    .line 355
    sput-wide v4, Lcom/tencent/tmassistantbase/util/TMLog;->lastLogTime:J

    .line 356
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->timeFormatter:Ljava/text/SimpleDateFormat;

    .line 358
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->isPreExceptionEnospc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 359
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->isInitLogFileDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 367
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->INTERVAL_RETRY_INIT:[I

    .line 368
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->retryInitTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 369
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->retryInitHandler:Landroid/os/Handler;

    .line 373
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->needGetField:Ljava/lang/Boolean;

    .line 374
    new-instance v0, Lcom/tencent/tmassistantbase/util/TMLog$1;

    invoke-direct {v0}, Lcom/tencent/tmassistantbase/util/TMLog$1;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->stringBuilderCharBuffer:Ljava/lang/ThreadLocal;

    .line 452
    new-instance v0, Lcom/tencent/tmassistantbase/util/TMLog$2;

    invoke-direct {v0}, Lcom/tencent/tmassistantbase/util/TMLog$2;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->acutualInitRunnable:Ljava/lang/Runnable;

    .line 584
    new-instance v0, Lcom/tencent/tmassistantbase/util/TMLog$3;

    invoke-direct {v0}, Lcom/tencent/tmassistantbase/util/TMLog$3;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->d:Ljava/lang/Thread;

    return-void

    .line 367
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x1d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->readLocalConfig()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0}, Lcom/tencent/tmassistantbase/util/TMLog;->writeLogToFile(Ljava/lang/String;)V

    return-void
.end method

.method private static addLogItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 517
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 521
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->obtainStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 523
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendLogTime()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 524
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    :cond_2
    invoke-static {p0}, Lcom/tencent/tmassistantbase/util/TMLog;->getReportLevelString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "|pid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/tencent/tmassistantbase/util/TMLog;->myProcessId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "|tid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    if-eqz p3, :cond_3

    .line 530
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 532
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->addLogToCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private static addLogToCache(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 499
    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    const/4 v0, 0x1

    .line 503
    :goto_0
    return v0

    .line 501
    :catch_0
    move-exception v0

    .line 503
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->initLogFile()V

    return-void
.end method

.method public static closeALLLog()V
    .locals 1

    .prologue
    const/4 v0, 0x7

    .line 315
    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->setLogcatOutputLevel(I)V

    .line 316
    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->setLogfileOutputLevel(I)V

    .line 317
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 169
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    return-void
.end method

.method public static getLogDirPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->logDirPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isSDCardExistAndCanWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tencent/TMAssistantSDK/Logs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->logDirPath:Ljava/lang/String;

    .line 433
    :cond_0
    :goto_0
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->logDirPath:Ljava/lang/String;

    return-object v0

    .line 430
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tencent/TMAssistantSDK/Logs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->logDirPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getLogTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 574
    sget-wide v2, Lcom/tencent/tmassistantbase/util/TMLog;->lastLogTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 575
    sput-wide v0, Lcom/tencent/tmassistantbase/util/TMLog;->lastLogTime:J

    .line 576
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->timeFormatter:Ljava/text/SimpleDateFormat;

    sget-wide v2, Lcom/tencent/tmassistantbase/util/TMLog;->lastLogTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->logTime:Ljava/lang/String;

    .line 578
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->logTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getLogcatOutputLevel()I
    .locals 1

    .prologue
    .line 256
    sget v0, Lcom/tencent/tmassistantbase/util/TMLog;->logcatOutputLevel:I

    return v0
.end method

.method public static getLogfileOutputLevel()I
    .locals 1

    .prologue
    .line 274
    sget v0, Lcom/tencent/tmassistantbase/util/TMLog;->logfileOutputLevel:I

    return v0
.end method

.method private static getReportLevelString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    const-string v0, "D"

    .line 545
    packed-switch p0, :pswitch_data_0

    .line 564
    :goto_0
    return-object v0

    .line 547
    :pswitch_0
    const-string v0, "V"

    goto :goto_0

    .line 550
    :pswitch_1
    const-string v0, "D"

    goto :goto_0

    .line 553
    :pswitch_2
    const-string v0, "I"

    goto :goto_0

    .line 556
    :pswitch_3
    const-string v0, "W"

    goto :goto_0

    .line 559
    :pswitch_4
    const-string v0, "E"

    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    return-void
.end method

.method private static declared-synchronized initLogFile()V
    .locals 8

    .prologue
    .line 618
    const-class v1, Lcom/tencent/tmassistantbase/util/TMLog;

    monitor-enter v1

    :try_start_0
    const-string v0, "TMLog"

    const-string v2, "start to init log file!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 623
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 625
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/tencent/tmassistantbase/util/TMLog;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_tmlog.txt"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 629
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 630
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->writeVersionToFile()V

    .line 631
    sget-object v3, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 632
    sget-object v3, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tencent/tmassistantbase/util/TMLog;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " create newLogFile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 633
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 651
    :cond_1
    :goto_0
    :try_start_2
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v2, 0x2000

    invoke-direct {v0, v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    sput-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    .line 652
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->writeVersionToFile()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 653
    monitor-exit v1

    return-void

    .line 636
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x7d000

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    .line 638
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 639
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 640
    const-string v0, "TMLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old log file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_3
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->writeVersionToFile()V

    .line 643
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/tmassistantbase/util/TMLog;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|newLogFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is existed.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 645
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initTMLog(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 119
    const-class v1, Lcom/tencent/tmassistantbase/util/TMLog;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/tmassistantbase/util/TMLog;->isInited:Z

    if-nez v0, :cond_0

    .line 121
    sput-object p0, Lcom/tencent/tmassistantbase/util/TMLog;->context:Landroid/content/Context;

    .line 122
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->acutualInitRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 123
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/tmassistantbase/util/TMLog;->isInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    monitor-exit v1

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isAppendLogTime()Z
    .locals 1

    .prologue
    .line 303
    sget-boolean v0, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendLogTime:Z

    return v0
.end method

.method public static isAppendMethodName()Z
    .locals 1

    .prologue
    .line 295
    sget-boolean v0, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendMethodName:Z

    return v0
.end method

.method public static isForDebug()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public static isSDCardExistAndCanWrite()Z
    .locals 2

    .prologue
    .line 798
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUseWriterCache()Z
    .locals 1

    .prologue
    .line 287
    sget-boolean v0, Lcom/tencent/tmassistantbase/util/TMLog;->isUseWriterCache:Z

    return v0
.end method

.method public static isWriteLogToFile()Z
    .locals 1

    .prologue
    .line 409
    sget-boolean v0, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile:Z

    return v0
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 186
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogfileOutputLevel()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogcatOutputLevel()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendMethodName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 200
    :cond_2
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogcatOutputLevel()I

    move-result v0

    if-lt p0, v0, :cond_7

    .line 203
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isForDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    if-nez p3, :cond_8

    .line 205
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_3
    :goto_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isForDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    if-nez p3, :cond_9

    .line 213
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_4
    :goto_2
    if-ne p0, v3, :cond_5

    .line 219
    if-nez p3, :cond_a

    .line 220
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_5
    :goto_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_6

    .line 227
    if-nez p3, :cond_b

    .line 228
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_6
    :goto_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    .line 234
    if-nez p3, :cond_c

    .line 235
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_7
    :goto_5
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogfileOutputLevel()I

    move-result v0

    if-lt p0, v0, :cond_0

    .line 245
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/tmassistantbase/util/TMLog;->addLogItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 207
    :cond_8
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 215
    :cond_9
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 222
    :cond_a
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 230
    :cond_b
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 237
    :cond_c
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private static obtainStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    :try_start_0
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->needGetField:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const-class v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->stringBuilderValueField:Ljava/lang/reflect/Field;

    .line 391
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->stringBuilderValueField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 392
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->needGetField:Ljava/lang/Boolean;

    .line 394
    :cond_0
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->stringBuilderValueField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 395
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->stringBuilderValueField:Ljava/lang/reflect/Field;

    sget-object v2, Lcom/tencent/tmassistantbase/util/TMLog;->stringBuilderCharBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_1
    :goto_0
    return-object v0

    .line 397
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static readLocalConfig()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 718
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isSDCardExistAndCanWrite()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 719
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 721
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tencent/TMAssistantSDK/Logs/logConfig.properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 793
    :goto_0
    return-void

    .line 727
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 730
    const-string v0, "isWriteLogToFile"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 731
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 732
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->setWriteLogToFile(Z)V

    .line 738
    :goto_1
    const-string v0, "logfileOutputLevel"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 739
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 741
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->setLogfileOutputLevel(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 748
    :cond_1
    :goto_2
    :try_start_2
    const-string v0, "logcatOutputLevel"

    const-string v4, ""

    invoke-virtual {v1, v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 749
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 751
    :try_start_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->setLogcatOutputLevel(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 758
    :cond_2
    :goto_3
    :try_start_4
    const-string v0, "logDirPath"

    const-string v5, ""

    invoke-virtual {v1, v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->setLogDirPath(Ljava/lang/String;)V

    .line 762
    const-string v5, "isUseWriterCache"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 763
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "false"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 764
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/tencent/tmassistantbase/util/TMLog;->setUseWriterCache(Z)V

    .line 770
    :goto_4
    const-string v6, "isAppendLogTime"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "true"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 772
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/tmassistantbase/util/TMLog;->setAppendLogTime(Z)V

    .line 777
    :goto_5
    const-string v1, "TMLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Properties Local File : isWriteLogToFile = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", fileLevel = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", logcatLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dirPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isUseCache = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isAppendMethodName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendMethodName()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isAppendLogTime = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendLogTime()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string v0, "TMLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log Configs : isWriteLogToFile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogfileOutputLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", logcatLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogcatOutputLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dirPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->getLogDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isUseCache = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isUseWriterCache()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAppendMethodName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendMethodName()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAppendLogTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendLogTime()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 785
    :catch_0
    move-exception v0

    .line 786
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 734
    :cond_3
    const/4 v0, 0x0

    :try_start_5
    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/TMLog;->setWriteLogToFile(Z)V

    goto/16 :goto_1

    .line 742
    :catch_1
    move-exception v0

    .line 743
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_2

    .line 752
    :catch_2
    move-exception v0

    .line 753
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_3

    .line 766
    :cond_4
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/tencent/tmassistantbase/util/TMLog;->setUseWriterCache(Z)V

    goto/16 :goto_4

    .line 774
    :cond_5
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/tmassistantbase/util/TMLog;->setAppendLogTime(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_5

    .line 790
    :cond_6
    invoke-static {v1}, Lcom/tencent/tmassistantbase/util/TMLog;->setWriteLogToFile(Z)V

    goto/16 :goto_0
.end method

.method public static setAppendLogTime(Z)V
    .locals 0

    .prologue
    .line 307
    sput-boolean p0, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendLogTime:Z

    .line 308
    return-void
.end method

.method public static setAppendMethodName(Z)V
    .locals 0

    .prologue
    .line 299
    sput-boolean p0, Lcom/tencent/tmassistantbase/util/TMLog;->isAppendMethodName:Z

    .line 300
    return-void
.end method

.method public static setLogDirPath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 441
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    sput-object p0, Lcom/tencent/tmassistantbase/util/TMLog;->logDirPath:Ljava/lang/String;

    .line 447
    :cond_0
    return-void
.end method

.method public static setLogcatOutputLevel(I)V
    .locals 0

    .prologue
    .line 265
    sput p0, Lcom/tencent/tmassistantbase/util/TMLog;->logcatOutputLevel:I

    .line 266
    return-void
.end method

.method public static setLogfileOutputLevel(I)V
    .locals 0

    .prologue
    .line 283
    sput p0, Lcom/tencent/tmassistantbase/util/TMLog;->logfileOutputLevel:I

    .line 284
    return-void
.end method

.method public static setUseWriterCache(Z)V
    .locals 0

    .prologue
    .line 291
    sput-boolean p0, Lcom/tencent/tmassistantbase/util/TMLog;->isUseWriterCache:Z

    .line 292
    return-void
.end method

.method public static setWriteLogToFile(Z)V
    .locals 0

    .prologue
    .line 417
    sput-boolean p0, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile:Z

    .line 418
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/tencent/tmassistantbase/util/TMLog;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    return-void
.end method

.method private static writeLogToFile(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 663
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    :goto_0
    return-void

    .line 667
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    if-nez v0, :cond_3

    .line 668
    const-string v0, "TMLog"

    const-string v1, "can not write log."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 670
    sget-wide v2, Lcom/tencent/tmassistantbase/util/TMLog;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 671
    sput-wide v0, Lcom/tencent/tmassistantbase/util/TMLog;->b:J

    .line 698
    :cond_1
    :goto_1
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->isPreExceptionEnospc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto :goto_0

    .line 672
    :cond_2
    sget-wide v2, Lcom/tencent/tmassistantbase/util/TMLog;->b:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 674
    :try_start_0
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->initLogFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :goto_2
    sput-wide v0, Lcom/tencent/tmassistantbase/util/TMLog;->b:J

    goto :goto_1

    .line 675
    :catch_0
    move-exception v2

    .line 676
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 682
    :cond_3
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 684
    :try_start_1
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 686
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isUseWriterCache()Z

    move-result v0

    if-nez v0, :cond_4

    .line 687
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 690
    :cond_4
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 693
    :cond_5
    invoke-static {p0}, Lcom/tencent/tmassistantbase/util/TMLog;->addLogToCache(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    const-string v0, "TMLog"

    const-string v1, "addLogToCache failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static writeVersionToFile()V
    .locals 2

    .prologue
    .line 708
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    const-string v1, "SDK_VERSION = 1.0|BUILD_NO = {BuildNo}|RELEASE_DATE: {ReleaseDate}\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 710
    sget-object v0, Lcom/tencent/tmassistantbase/util/TMLog;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 712
    :cond_0
    return-void
.end method
