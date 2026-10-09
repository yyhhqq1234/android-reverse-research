.class public Lcom/tencent/midas/comm/log/util/APLogFileUtil;
.super Ljava/lang/Object;
.source "APLogFileUtil.java"


# static fields
.field private static final DEBUG_CONF:Ljava/lang/String; = "MidasLogDebug.ini"

.field private static LOG_KEEP_ALIVE_TIME:I = 0x0

.field private static MAX_DIR_SIZE_MB:I = 0x0

.field private static MAX_LOG_NUM:I = 0x0

.field public static MAX_LOG_SIZE_MB:I = 0x0

.field private static final REMAIN_SDCARD_SPACE:J = 0x14L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x1

    sput v0, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->MAX_LOG_SIZE_MB:I

    .line 25
    const/4 v0, 0x2

    sput v0, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->MAX_LOG_NUM:I

    .line 27
    const/16 v0, 0xf

    sput v0, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->LOG_KEEP_ALIVE_TIME:I

    .line 28
    sget v0, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->LOG_KEEP_ALIVE_TIME:I

    sget v1, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->MAX_LOG_NUM:I

    mul-int/2addr v0, v1

    sget v1, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->MAX_LOG_SIZE_MB:I

    mul-int/2addr v0, v1

    sput v0, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->MAX_DIR_SIZE_MB:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFileUpMaxInDir(Ljava/lang/String;JJI)V
    .locals 21
    .param p0, "dirName"    # Ljava/lang/String;
    .param p1, "maxFileSize"    # J
    .param p3, "maxDirSize"    # J
    .param p5, "keepTime"    # I

    .prologue
    .line 206
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 235
    .end local v3    # "dir":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 210
    .restart local v3    # "dir":Ljava/io/File;
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->getFileOrFilesSize(Ljava/lang/String;)D

    move-result-wide v12

    .line 212
    .local v12, "size":D
    const/4 v10, 0x0

    .line 213
    .local v10, "shouldClean":Z
    move-wide/from16 v0, p3

    long-to-double v14, v0

    cmpl-double v11, v12, v14

    if-ltz v11, :cond_2

    .line 214
    const/4 v10, 0x1

    .line 218
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 219
    .local v2, "childFile":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v11, v2

    if-eqz v11, :cond_0

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 224
    .local v4, "current":J
    array-length v14, v2

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v14, :cond_0

    aget-object v7, v2, v11

    .line 225
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 227
    .local v8, "lastModified":J
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "MidasLog.mmap"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v15

    if-eqz v15, :cond_4

    if-nez v10, :cond_3

    sub-long v16, v4, v8

    mul-int/lit8 v15, p5, 0x18

    mul-int/lit16 v15, v15, 0xe10

    mul-int/lit16 v15, v15, 0x3e8

    int-to-long v0, v15

    move-wide/from16 v18, v0

    cmp-long v15, v16, v18

    if-gtz v15, :cond_3

    invoke-static {v7}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->getFileSize(Ljava/io/File;)J

    move-result-wide v16

    const-wide/16 v18, 0x400

    div-long v16, v16, v18

    const-wide/16 v18, 0x400

    div-long v16, v16, v18

    cmp-long v15, v16, p1

    if-ltz v15, :cond_4

    .line 228
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 232
    .end local v2    # "childFile":[Ljava/io/File;
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "current":J
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "lastModified":J
    .end local v10    # "shouldClean":Z
    .end local v12    # "size":D
    :catch_0
    move-exception v6

    .line 233
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteOldFileToday(Ljava/lang/String;)V
    .locals 1
    .param p0, "dirName"    # Ljava/lang/String;

    .prologue
    .line 121
    sget v0, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->MAX_LOG_NUM:I

    invoke-static {p0, v0}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->deleteOldFileToday(Ljava/lang/String;I)V

    .line 122
    return-void
.end method

.method public static deleteOldFileToday(Ljava/lang/String;I)V
    .locals 8
    .param p0, "dirName"    # Ljava/lang/String;
    .param p1, "keepNum"    # I

    .prologue
    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->getToday()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "prefix":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->getLogFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 128
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 129
    .local v3, "len":I
    if-lt v3, p1, :cond_1

    if-lez p1, :cond_1

    .line 130
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 131
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 132
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 133
    const-string v5, "MidasComm<Log>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sub-int v5, v3, p1

    if-ge v2, v5, :cond_0

    .line 135
    const-string v5, "MidasComm<Log>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 130
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public static getFileOrFilesSize(Ljava/lang/String;)D
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x400

    .line 39
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v3, "file":Ljava/io/File;
    const-wide/16 v0, 0x0

    .line 43
    .local v0, "blockSize":J
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    invoke-static {v3}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->getFileSizes(Ljava/io/File;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 51
    :goto_0
    div-long v4, v0, v6

    div-long/2addr v4, v6

    long-to-double v4, v4

    return-wide v4

    .line 46
    :cond_0
    :try_start_1
    invoke-static {v3}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->getFileSize(Ljava/io/File;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v2

    .line 49
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getFileSize(Ljava/io/File;)J
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    const-wide/16 v2, 0x0

    .line 62
    .local v2, "size":J
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/FileInputStream;

    .end local v0    # "fis":Ljava/io/FileInputStream;
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 65
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    int-to-long v2, v1

    .line 69
    .end local v0    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-wide v2

    .line 67
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0
.end method

.method private static getFileSizes(Ljava/io/File;)J
    .locals 6
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    const-wide/16 v2, 0x0

    .line 81
    .local v2, "size":J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 82
    .local v0, "flist":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 83
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->getFileSizes(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 82
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1

    .line 89
    :cond_1
    return-wide v2
.end method

.method public static getLastLogFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "dirName"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->getToday()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->getLogFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 147
    .local v0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 150
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getLogFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "dirName"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    new-instance v2, Lcom/tencent/midas/comm/log/util/APLogFileUtil$1;

    invoke-direct {v2, p1}, Lcom/tencent/midas/comm/log/util/APLogFileUtil$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 163
    .local v1, "files":[Ljava/io/File;
    new-instance v2, Lcom/tencent/midas/comm/log/util/APLogFileUtil$2;

    invoke-direct {v2}, Lcom/tencent/midas/comm/log/util/APLogFileUtil$2;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 185
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    .end local v1    # "files":[Ljava/io/File;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public static getSDCardSpace()D
    .locals 14

    .prologue
    .line 98
    const-wide/16 v8, 0x0

    .line 101
    .local v8, "size":J
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 102
    .local v3, "path":Ljava/io/File;
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 104
    .local v6, "sf":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    .line 106
    .local v0, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v4, v7

    .line 110
    .local v4, "freeBlocks":J
    mul-long v10, v4, v0

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    const-wide/16 v12, 0x400

    div-long v8, v10, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "blockSize":J
    .end local v3    # "path":Ljava/io/File;
    .end local v4    # "freeBlocks":J
    .end local v6    # "sf":Landroid/os/StatFs;
    :goto_0
    long-to-double v10, v8

    return-wide v10

    .line 112
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "MidasComm<Log>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSDCardSpace: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-wide/16 v8, 0x0

    goto :goto_0
.end method

.method public static getToday()Ljava/lang/String;
    .locals 4

    .prologue
    .line 191
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 192
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 193
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static initLogDir(Ljava/lang/String;)Z
    .locals 9
    .param p0, "dirName"    # Ljava/lang/String;

    .prologue
    .line 239
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v8

    .line 242
    .local v8, "flag":Z
    const-string v1, "MidasComm<Log>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create log dir result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "flag":Z
    :goto_0
    return v8

    .line 245
    .restart local v7    # "file":Ljava/io/File;
    :cond_0
    sget v1, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->MAX_LOG_SIZE_MB:I

    int-to-long v2, v1

    sget v1, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->MAX_DIR_SIZE_MB:I

    int-to-long v4, v1

    sget v6, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->LOG_KEEP_ALIVE_TIME:I

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->deleteFileUpMaxInDir(Ljava/lang/String;JJI)V

    .line 246
    sget v1, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->MAX_LOG_NUM:I

    invoke-static {p0, v1}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->deleteOldFileToday(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    const/4 v8, 0x1

    goto :goto_0

    .line 249
    .end local v7    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MidasComm<Log>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init log dir error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isDebugMode(Ljava/lang/String;)Z
    .locals 3
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 256
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MidasLogDebug.ini"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "conf":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static readLogKeepConf(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    const-string v6, "TencentUnipay"

    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 263
    .local v1, "preference":Landroid/content/SharedPreferences;
    const-string v6, "log_keep_size"

    const-string v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "size":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 266
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 267
    .local v2, "s":I
    if-lez v2, :cond_0

    .line 268
    sput v2, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->MAX_LOG_SIZE_MB:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v2    # "s":I
    :cond_0
    :goto_0
    const-string v6, "log_keep_time"

    const-string v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, "time":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 278
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 279
    .local v4, "t":I
    if-lez v4, :cond_1

    .line 280
    sput v4, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->LOG_KEEP_ALIVE_TIME:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    .end local v4    # "t":I
    :cond_1
    :goto_1
    return-void

    .line 270
    .end local v5    # "time":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "MidasComm<Log>"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read log keep size config error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "time":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 283
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "MidasComm<Log>"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read log keep time config error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
