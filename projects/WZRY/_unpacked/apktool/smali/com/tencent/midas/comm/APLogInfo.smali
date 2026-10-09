.class public Lcom/tencent/midas/comm/APLogInfo;
.super Ljava/lang/Object;
.source "APLogInfo.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MidasComm<Log>"

.field public static final LOG_VERSION_CODE:I = 0x1f

.field public static final LOG_VERSION_NAME:Ljava/lang/String; = "1.2.11"


# instance fields
.field private autoFlush:Z

.field private compressLog:Z

.field private context:Landroid/content/Context;

.field private encryptLog:Z

.field private hasWritePermission:Z

.field private logEnable:Z

.field private logPath:Ljava/lang/String;

.field private logTag:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private printLog:Z

.field private processName:Ljava/lang/String;

.field private writeLog:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/midas/comm/APLogInfo;->context:Landroid/content/Context;

    .line 30
    const-string v0, "Midas"

    iput-object v0, p0, Lcom/tencent/midas/comm/APLogInfo;->logTag:Ljava/lang/String;

    .line 31
    iput-boolean v1, p0, Lcom/tencent/midas/comm/APLogInfo;->logEnable:Z

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/comm/APLogInfo;->logPath:Ljava/lang/String;

    .line 33
    iput-boolean v2, p0, Lcom/tencent/midas/comm/APLogInfo;->hasWritePermission:Z

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/comm/APLogInfo;->pkgName:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/comm/APLogInfo;->processName:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/tencent/midas/comm/APLogInfo;->writeLog:Z

    .line 37
    iput-boolean v2, p0, Lcom/tencent/midas/comm/APLogInfo;->printLog:Z

    .line 38
    iput-boolean v1, p0, Lcom/tencent/midas/comm/APLogInfo;->compressLog:Z

    .line 39
    iput-boolean v1, p0, Lcom/tencent/midas/comm/APLogInfo;->encryptLog:Z

    .line 40
    iput-boolean v1, p0, Lcom/tencent/midas/comm/APLogInfo;->autoFlush:Z

    return-void
.end method

.method private initLogPath()V
    .locals 4

    .prologue
    .line 97
    iget-boolean v1, p0, Lcom/tencent/midas/comm/APLogInfo;->hasWritePermission:Z

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/tencent/midas/comm/APLogInfo;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "midas"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 99
    .local v0, "f":Ljava/io/File;
    if-nez v0, :cond_2

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/tencent/midas/comm/APLogInfo;->logPath:Ljava/lang/String;

    .line 101
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/tencent/midas/comm/APLogInfo;->logPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "tencent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Midas"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/midas/comm/APLogInfo;->logPath:Ljava/lang/String;

    .line 104
    :cond_1
    return-void

    .line 99
    .restart local v0    # "f":Ljava/io/File;
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initPermission()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/tencent/midas/comm/APLogInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 70
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v2, p0, Lcom/tencent/midas/comm/APLogInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/tencent/midas/comm/APLogInfo;->hasWritePermission:Z

    .line 71
    return-void

    .line 70
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initPkgName()V
    .locals 6

    .prologue
    .line 55
    iget-object v3, p0, Lcom/tencent/midas/comm/APLogInfo;->context:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 66
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/tencent/midas/comm/APLogInfo;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 60
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/tencent/midas/comm/APLogInfo;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 61
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/midas/comm/APLogInfo;->pkgName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :goto_1
    const-string v3, "MidasComm<Log>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get pkgName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/midas/comm/APLogInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "MidasComm<Log>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initProcessName()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 75
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 76
    .local v3, "pid":I
    iget-object v5, p0, Lcom/tencent/midas/comm/APLogInfo;->context:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 77
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 79
    .local v4, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v3, :cond_0

    .line 80
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "names":[Ljava/lang/String;
    array-length v5, v2

    if-le v5, v7, :cond_2

    .line 82
    const/4 v5, 0x1

    aget-object v5, v2, v5

    iput-object v5, p0, Lcom/tencent/midas/comm/APLogInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "names":[Ljava/lang/String;
    .end local v3    # "pid":I
    .end local v4    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    :goto_0
    const-string v5, "MidasComm<Log>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get process name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/midas/comm/APLogInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 84
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v2    # "names":[Ljava/lang/String;
    .restart local v3    # "pid":I
    .restart local v4    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    :try_start_1
    const-string v5, ""

    iput-object v5, p0, Lcom/tencent/midas/comm/APLogInfo;->processName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 90
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "names":[Ljava/lang/String;
    .end local v3    # "pid":I
    .end local v4    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "MidasComm<Log>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get process: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPrintLog(Z)V
    .locals 3
    .param p1, "printLog"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/tencent/midas/comm/APLogInfo;->printLog:Z

    .line 187
    const-string v0, "MidasComm<Log>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set print log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method private setWriteLog(Z)V
    .locals 3
    .param p1, "writeLog"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/tencent/midas/comm/APLogInfo;->writeLog:Z

    .line 178
    const-string v0, "MidasComm<Log>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set write log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/midas/comm/APLogInfo;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getLogPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/tencent/midas/comm/APLogInfo;->logPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tencent/midas/comm/APLogInfo;->logTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tencent/midas/comm/APLogInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/tencent/midas/comm/APLogInfo;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/midas/comm/APLogInfo;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 44
    const-string v0, "MidasComm<Log>"

    const-string v1, "APLogInfo init failed because of null context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/tencent/midas/comm/APLogInfo;->initPkgName()V

    .line 48
    invoke-direct {p0}, Lcom/tencent/midas/comm/APLogInfo;->initPermission()V

    .line 49
    invoke-direct {p0}, Lcom/tencent/midas/comm/APLogInfo;->initProcessName()V

    .line 50
    invoke-direct {p0}, Lcom/tencent/midas/comm/APLogInfo;->initLogPath()V

    .line 51
    const-string v0, "MidasComm<Log>"

    const-string v1, "Log lib versionName: 1.2.11 versionCode: 31"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAutoFlush()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/tencent/midas/comm/APLogInfo;->autoFlush:Z

    return v0
.end method

.method public isCompressLog()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/tencent/midas/comm/APLogInfo;->compressLog:Z

    return v0
.end method

.method public isEncryptLog()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/tencent/midas/comm/APLogInfo;->encryptLog:Z

    return v0
.end method

.method public isHasWritePermission()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/tencent/midas/comm/APLogInfo;->hasWritePermission:Z

    return v0
.end method

.method public isLogEnable()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/tencent/midas/comm/APLogInfo;->logEnable:Z

    return v0
.end method

.method public isPrintLog()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/tencent/midas/comm/APLogInfo;->printLog:Z

    return v0
.end method

.method public isWriteLog()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/tencent/midas/comm/APLogInfo;->writeLog:Z

    return v0
.end method

.method public setAutoFlush(Z)V
    .locals 0
    .param p1, "autoFlush"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/tencent/midas/comm/APLogInfo;->autoFlush:Z

    .line 112
    return-void
.end method

.method public setCompressLog(Z)V
    .locals 3
    .param p1, "compressLog"    # Z

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/tencent/midas/comm/APLogInfo;->compressLog:Z

    .line 212
    const-string v0, "MidasComm<Log>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set compress log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/midas/comm/APLogInfo;->context:Landroid/content/Context;

    .line 116
    return-void
.end method

.method public setEncryptKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "encryptKey"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-static {p1}, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->setEncryptKey(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public setEncryptLog(Z)V
    .locals 3
    .param p1, "encryptLog"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/tencent/midas/comm/APLogInfo;->encryptLog:Z

    .line 221
    const-string v0, "MidasComm<Log>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set encrypt log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public setEncryptProtocolVersion(B)V
    .locals 0
    .param p1, "version"    # B

    .prologue
    .line 233
    invoke-static {p1}, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->setProtocolVersion(B)V

    .line 234
    return-void
.end method

.method public setLogEnable(Z)V
    .locals 0
    .param p1, "logEnable"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/tencent/midas/comm/APLogInfo;->logEnable:Z

    .line 135
    return-void
.end method

.method public setLogParamFromServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/tencent/midas/comm/APLogInfo;->setLogWrite(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/tencent/midas/comm/APLogInfo;->logPath:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setLogTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "logTag"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/tencent/midas/comm/APLogInfo;->logTag:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setLogWrite(Ljava/lang/String;)V
    .locals 6
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 166
    const/4 v1, 0x3

    .line 168
    .local v1, "p":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 172
    :goto_0
    and-int/lit8 v2, v1, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/tencent/midas/comm/APLogInfo;->setPrintLog(Z)V

    .line 173
    and-int/lit8 v2, v1, 0x2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    :goto_2
    invoke-direct {p0, v3}, Lcom/tencent/midas/comm/APLogInfo;->setWriteLog(Z)V

    .line 174
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v2, v4

    .line 172
    goto :goto_1

    :cond_1
    move v3, v4

    .line 173
    goto :goto_2
.end method

.method public shouldPrintLog()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/tencent/midas/comm/APLogInfo;->logEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/midas/comm/APLogInfo;->printLog:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/midas/comm/log/APLogFileInfo;->dirName:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->isDebugMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
