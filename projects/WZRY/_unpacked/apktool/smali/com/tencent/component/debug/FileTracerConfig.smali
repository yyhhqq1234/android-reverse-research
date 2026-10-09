.class public Lcom/tencent/component/debug/FileTracerConfig;
.super Ljava/lang/Object;
.source "FileTracerConfig.java"


# static fields
.field public static final DEF_BUFFER_SIZE:I = 0x1000

.field public static final DEF_FLUSH_INTERVAL:J = 0x2710L

.field public static final DEF_FOLDER_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final DEF_THREAD_NAME:Ljava/lang/String; = "Tracer.File"

.field public static final DEF_TRACE_FILEEXT:Ljava/lang/String; = ".log"

.field private static DEF_TRACE_FOLDER_FILTER:Ljava/io/FileFilter; = null

.field public static final FOREVER:J = 0x7fffffffffffffffL

.field public static final NO_LIMITED:I = 0x7fffffff

.field public static final PRIORITY_BACKGROUND:I = 0xa

.field public static final PRIORITY_STANDARD:I


# instance fields
.field private blockComparetor:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private fileExt:Ljava/lang/String;

.field private flushInterval:J

.field private keepPeriod:J

.field private maxBlockCount:I

.field private maxBlockSize:I

.field private maxBufferSize:I

.field private name:Ljava/lang/String;

.field private priority:I

.field private rootFolder:Ljava/io/File;

.field private traceFilter:Ljava/io/FileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/tencent/component/debug/FileTracerConfig$1;

    invoke-direct {v0}, Lcom/tencent/component/debug/FileTracerConfig$1;-><init>()V

    sput-object v0, Lcom/tencent/component/debug/FileTracerConfig;->DEF_TRACE_FOLDER_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 12
    .param p1, "root"    # Ljava/io/File;

    .prologue
    const v2, 0x7fffffff

    .line 173
    const/16 v4, 0x1000

    const-string v5, "Tracer.File"

    const-wide/16 v6, 0x2710

    const/16 v8, 0xa

    const-string v9, ".log"

    const-wide v10, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v11}, Lcom/tencent/component/debug/FileTracerConfig;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V
    .locals 2
    .param p1, "root"    # Ljava/io/File;
    .param p2, "blockCount"    # I
    .param p3, "blockSize"    # I
    .param p4, "bufferSize"    # I
    .param p5, "threadName"    # Ljava/lang/String;
    .param p6, "interval"    # J
    .param p8, "priority"    # I
    .param p9, "fileExt"    # Ljava/lang/String;
    .param p10, "keepPeriod"    # J

    .prologue
    const v1, 0x7fffffff

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, "Tracer.File"

    iput-object v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->name:Ljava/lang/String;

    .line 122
    iput v1, p0, Lcom/tencent/component/debug/FileTracerConfig;->maxBlockSize:I

    .line 123
    iput v1, p0, Lcom/tencent/component/debug/FileTracerConfig;->maxBlockCount:I

    .line 124
    const/16 v0, 0x1000

    iput v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->maxBufferSize:I

    .line 125
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->flushInterval:J

    .line 127
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->priority:I

    .line 128
    const-string v0, ".log"

    iput-object v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->fileExt:Ljava/lang/String;

    .line 129
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->keepPeriod:J

    .line 131
    new-instance v0, Lcom/tencent/component/debug/FileTracerConfig$2;

    invoke-direct {v0, p0}, Lcom/tencent/component/debug/FileTracerConfig$2;-><init>(Lcom/tencent/component/debug/FileTracerConfig;)V

    iput-object v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->traceFilter:Ljava/io/FileFilter;

    .line 154
    new-instance v0, Lcom/tencent/component/debug/FileTracerConfig$3;

    invoke-direct {v0, p0}, Lcom/tencent/component/debug/FileTracerConfig$3;-><init>(Lcom/tencent/component/debug/FileTracerConfig;)V

    iput-object v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->blockComparetor:Ljava/util/Comparator;

    .line 202
    invoke-virtual {p0, p1}, Lcom/tencent/component/debug/FileTracerConfig;->setRootFolder(Ljava/io/File;)V

    .line 203
    invoke-virtual {p0, p2}, Lcom/tencent/component/debug/FileTracerConfig;->setMaxBlockCount(I)V

    .line 204
    invoke-virtual {p0, p3}, Lcom/tencent/component/debug/FileTracerConfig;->setMaxBlockSize(I)V

    .line 205
    invoke-virtual {p0, p4}, Lcom/tencent/component/debug/FileTracerConfig;->setMaxBufferSize(I)V

    .line 206
    invoke-virtual {p0, p5}, Lcom/tencent/component/debug/FileTracerConfig;->setName(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, p6, p7}, Lcom/tencent/component/debug/FileTracerConfig;->setFlushInterval(J)V

    .line 208
    invoke-virtual {p0, p8}, Lcom/tencent/component/debug/FileTracerConfig;->setPriority(I)V

    .line 209
    invoke-virtual {p0, p9}, Lcom/tencent/component/debug/FileTracerConfig;->setFileExt(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, p10, p11}, Lcom/tencent/component/debug/FileTracerConfig;->setKeepPeriod(J)V

    .line 211
    return-void
.end method

.method static synthetic access$000(Ljava/io/File;)I
    .locals 1
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/tencent/component/debug/FileTracerConfig;->getBlockCountFromFile(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method private ensureBlockCount(Ljava/io/File;)Ljava/io/File;
    .locals 8
    .param p1, "folder"    # Ljava/io/File;

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/tencent/component/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 269
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v5, v1

    if-nez v5, :cond_2

    .line 271
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tencent/component/debug/FileTracerConfig;->getFileExt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    :cond_1
    return-object v4

    .line 274
    :cond_2
    invoke-virtual {p0, v1}, Lcom/tencent/component/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    .line 276
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v1, v5

    .line 278
    .local v4, "resu":Ljava/io/File;
    array-length v5, v1

    invoke-virtual {p0}, Lcom/tencent/component/debug/FileTracerConfig;->getMaxBlockCount()I

    move-result v6

    sub-int v0, v5, v6

    .line 280
    .local v0, "cleanCount":I
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {p0}, Lcom/tencent/component/debug/FileTracerConfig;->getMaxBlockSize()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 283
    invoke-static {v4}, Lcom/tencent/component/debug/FileTracerConfig;->getBlockCountFromFile(Ljava/io/File;)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 284
    .local v3, "newIndex":I
    new-instance v4, Ljava/io/File;

    .end local v4    # "resu":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tencent/component/debug/FileTracerConfig;->getFileExt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    .restart local v4    # "resu":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    .line 290
    .end local v3    # "newIndex":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 292
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getBlockCountFromFile(Ljava/io/File;)I
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 403
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "fileName":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 407
    .local v2, "p":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 414
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "p":I
    :goto_0
    return v3

    .line 411
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static getTimeFromFolder(Ljava/io/File;)J
    .locals 4
    .param p0, "folder"    # Ljava/io/File;

    .prologue
    .line 111
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 117
    .end local v1    # "formatter":Ljava/text/SimpleDateFormat;
    :goto_0
    return-wide v2

    .line 115
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private getWorkFile(J)Ljava/io/File;
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/tencent/component/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v0

    .line 234
    .local v0, "folder":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/tencent/component/debug/FileTracerConfig;->ensureBlockCount(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public cleanWorkFolders()V
    .locals 10

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/tencent/component/debug/FileTracerConfig;->getRootFolder()Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_1

    .line 337
    :cond_0
    return-void

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/component/debug/FileTracerConfig;->getRootFolder()Ljava/io/File;

    move-result-object v4

    sget-object v5, Lcom/tencent/component/debug/FileTracerConfig;->DEF_TRACE_FOLDER_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 323
    .local v1, "folders":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 328
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 330
    .local v0, "folder":Ljava/io/File;
    invoke-static {v0}, Lcom/tencent/component/debug/FileTracerConfig;->getTimeFromFolder(Ljava/io/File;)J

    move-result-wide v2

    .line 332
    .local v2, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {p0}, Lcom/tencent/component/debug/FileTracerConfig;->getKeepPeriod()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 334
    invoke-static {v0}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V

    .line 328
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;
    .locals 1
    .param p1, "folder"    # Ljava/io/File;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->traceFilter:Ljava/io/FileFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getCurrFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/component/debug/FileTracerConfig;->getWorkFile(J)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFileExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->fileExt:Ljava/lang/String;

    return-object v0
.end method

.method public getFlushInterval()J
    .locals 2

    .prologue
    .line 504
    iget-wide v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->flushInterval:J

    return-wide v0
.end method

.method public getKeepPeriod()J
    .locals 2

    .prologue
    .line 588
    iget-wide v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->keepPeriod:J

    return-wide v0
.end method

.method public getMaxBlockCount()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->maxBlockCount:I

    return v0
.end method

.method public getMaxBlockSize()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->maxBlockSize:I

    return v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->maxBufferSize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->priority:I

    return v0
.end method

.method public getRootFolder()Ljava/io/File;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->rootFolder:Ljava/io/File;

    return-object v0
.end method

.method public getSizeOfBlocks(Ljava/io/File;)J
    .locals 4
    .param p1, "folder"    # Ljava/io/File;

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/tencent/component/debug/FileTracerConfig;->ensureBlockCount(Ljava/io/File;)Ljava/io/File;

    .line 351
    invoke-virtual {p0, p1}, Lcom/tencent/component/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 353
    .local v0, "blockFiles":[Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/tencent/component/debug/FileTracerConfig;->getSizeOfBlocks([Ljava/io/File;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getSizeOfBlocks([Ljava/io/File;)J
    .locals 8
    .param p1, "blockFiles"    # [Ljava/io/File;

    .prologue
    .line 365
    const-wide/16 v2, 0x0

    .line 367
    .local v2, "size":J
    array-length v4, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, p1, v1

    .line 369
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 371
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 367
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-wide v2
.end method

.method public getWorkFolder(J)Ljava/io/File;
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 247
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/tencent/component/debug/FileTracerConfig;->getRootFolder()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    .local v0, "workFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 251
    return-object v0
.end method

.method public setFileExt(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileExt"    # Ljava/lang/String;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/tencent/component/debug/FileTracerConfig;->fileExt:Ljava/lang/String;

    .line 579
    return-void
.end method

.method public setFlushInterval(J)V
    .locals 1
    .param p1, "flushInterval"    # J

    .prologue
    .line 515
    iput-wide p1, p0, Lcom/tencent/component/debug/FileTracerConfig;->flushInterval:J

    .line 516
    return-void
.end method

.method public setKeepPeriod(J)V
    .locals 1
    .param p1, "keepPeriod"    # J

    .prologue
    .line 598
    iput-wide p1, p0, Lcom/tencent/component/debug/FileTracerConfig;->keepPeriod:J

    .line 599
    return-void
.end method

.method public setMaxBlockCount(I)V
    .locals 0
    .param p1, "maxBlockCount"    # I

    .prologue
    .line 478
    iput p1, p0, Lcom/tencent/component/debug/FileTracerConfig;->maxBlockCount:I

    .line 479
    return-void
.end method

.method public setMaxBlockSize(I)V
    .locals 0
    .param p1, "maxBlockSize"    # I

    .prologue
    .line 457
    iput p1, p0, Lcom/tencent/component/debug/FileTracerConfig;->maxBlockSize:I

    .line 458
    return-void
.end method

.method public setMaxBufferSize(I)V
    .locals 0
    .param p1, "maxBufferSize"    # I

    .prologue
    .line 494
    iput p1, p0, Lcom/tencent/component/debug/FileTracerConfig;->maxBufferSize:I

    .line 495
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/tencent/component/debug/FileTracerConfig;->name:Ljava/lang/String;

    .line 437
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 557
    iput p1, p0, Lcom/tencent/component/debug/FileTracerConfig;->priority:I

    .line 558
    return-void
.end method

.method public setRootFolder(Ljava/io/File;)V
    .locals 0
    .param p1, "rootFolder"    # Ljava/io/File;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/tencent/component/debug/FileTracerConfig;->rootFolder:Ljava/io/File;

    .line 537
    return-void
.end method

.method public sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;
    .locals 1
    .param p1, "blockFiles"    # [Ljava/io/File;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracerConfig;->blockComparetor:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 389
    return-object p1
.end method
