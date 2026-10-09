.class public Lcom/tencent/midas/comm/log/APLogFileInfo;
.super Ljava/lang/Object;
.source "APLogFileInfo.java"


# static fields
.field public static dirName:Ljava/lang/String;

.field public static fileName:Ljava/lang/String;

.field public static mmapName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, ""

    sput-object v0, Lcom/tencent/midas/comm/log/APLogFileInfo;->fileName:Ljava/lang/String;

    .line 19
    const-string v0, ""

    sput-object v0, Lcom/tencent/midas/comm/log/APLogFileInfo;->dirName:Ljava/lang/String;

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/tencent/midas/comm/log/APLogFileInfo;->mmapName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDirName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 42
    invoke-static {}, Lcom/tencent/midas/comm/APLog;->getLogInfo()Lcom/tencent/midas/comm/APLogInfo;

    move-result-object v0

    .line 43
    .local v0, "logInfo":Lcom/tencent/midas/comm/APLogInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/midas/comm/APLogInfo;->getLogPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 44
    invoke-virtual {v0}, Lcom/tencent/midas/comm/APLogInfo;->getLogPath()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "logPath":Ljava/lang/String;
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/midas/comm/APLogInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v0}, Lcom/tencent/midas/comm/APLogInfo;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/midas/comm/APLogInfo;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .end local v1    # "logPath":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 54
    :cond_2
    const-string v2, "MidasComm<Log>"

    const-string v3, "log info is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v1, ""

    goto :goto_0
.end method

.method private static buildFileName(Z)Ljava/lang/String;
    .locals 7
    .param p0, "useLastFileName"    # Z

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, "fileName":Ljava/lang/StringBuffer;
    :try_start_0
    sget-object v4, Lcom/tencent/midas/comm/log/APLogFileInfo;->dirName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 83
    new-instance v2, Ljava/lang/StringBuffer;

    sget-object v4, Lcom/tencent/midas/comm/log/APLogFileInfo;->dirName:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1    # "fileName":Ljava/lang/StringBuffer;
    .local v2, "fileName":Ljava/lang/StringBuffer;
    :try_start_1
    sget-object v4, Lcom/tencent/midas/comm/log/APLogFileInfo;->dirName:Ljava/lang/String;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 85
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :cond_0
    sget-object v4, Lcom/tencent/midas/comm/log/APLogFileInfo;->dirName:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->getLastLogFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "lastName":Ljava/lang/String;
    if-eqz p0, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v2

    .line 103
    .end local v2    # "fileName":Ljava/lang/StringBuffer;
    .end local v3    # "lastName":Ljava/lang/String;
    .restart local v1    # "fileName":Ljava/lang/StringBuffer;
    :goto_0
    return-object v4

    .line 95
    .end local v1    # "fileName":Ljava/lang/StringBuffer;
    .restart local v2    # "fileName":Ljava/lang/StringBuffer;
    .restart local v3    # "lastName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->getToday()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    invoke-static {v3}, Lcom/tencent/midas/comm/log/APLogFileInfo;->buildFileNumber(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 98
    const-string v4, ".txt"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 103
    .end local v2    # "fileName":Ljava/lang/StringBuffer;
    .end local v3    # "lastName":Ljava/lang/String;
    .restart local v1    # "fileName":Ljava/lang/StringBuffer;
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const-string v4, ""

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v4, "MidasComm<Log>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create log file name error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 100
    .end local v1    # "fileName":Ljava/lang/StringBuffer;
    .restart local v2    # "fileName":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileName":Ljava/lang/StringBuffer;
    .restart local v1    # "fileName":Ljava/lang/StringBuffer;
    goto :goto_2
.end method

.method private static buildFileNumber(Ljava/lang/String;)I
    .locals 6
    .param p0, "lastFileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 59
    const/4 v1, 0x1

    .line 60
    .local v1, "num":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->getToday()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "str":[Ljava/lang/String;
    array-length v3, v2

    if-le v3, v5, :cond_0

    .line 64
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 65
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 71
    .end local v2    # "str":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static buildMmapName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/midas/comm/log/APLogFileInfo;->dirName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MidasLog.mmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static create()V
    .locals 4

    .prologue
    .line 24
    :try_start_0
    invoke-static {}, Lcom/tencent/midas/comm/log/APLogFileInfo;->buildDirName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/midas/comm/log/APLogFileInfo;->dirName:Ljava/lang/String;

    .line 25
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/midas/comm/log/APLogFileInfo;->buildFileName(Z)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/midas/comm/log/APLogFileInfo;->fileName:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/tencent/midas/comm/log/APLogFileInfo;->buildMmapName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/midas/comm/log/APLogFileInfo;->mmapName:Ljava/lang/String;

    .line 28
    const-string v1, "MidasComm<Log>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "log dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/midas/comm/log/APLogFileInfo;->dirName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v1, "MidasComm<Log>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "log file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/midas/comm/log/APLogFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .local v0, "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 30
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 31
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v1, "MidasComm<Log>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file info create error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateFileName()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/midas/comm/log/APLogFileInfo;->buildFileName(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/midas/comm/log/APLogFileInfo;->fileName:Ljava/lang/String;

    .line 76
    return-void
.end method
