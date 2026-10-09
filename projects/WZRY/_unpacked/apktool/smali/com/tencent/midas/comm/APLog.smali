.class public Lcom/tencent/midas/comm/APLog;
.super Ljava/lang/Object;
.source "APLog.java"


# static fields
.field private static logInfo:Lcom/tencent/midas/comm/APLogInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static logger:Lcom/tencent/midas/comm/log/internal/APLogger;

.field private static shouldPrintLog:Z

.field private static shouldWriteLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/midas/comm/APLog;->logger:Lcom/tencent/midas/comm/log/internal/APLogger;

    .line 16
    new-instance v0, Lcom/tencent/midas/comm/APLogInfo;

    invoke-direct {v0}, Lcom/tencent/midas/comm/APLogInfo;-><init>()V

    sput-object v0, Lcom/tencent/midas/comm/APLog;->logInfo:Lcom/tencent/midas/comm/APLogInfo;

    .line 18
    sput-boolean v1, Lcom/tencent/midas/comm/APLog;->shouldWriteLog:Z

    .line 19
    sput-boolean v1, Lcom/tencent/midas/comm/APLog;->shouldPrintLog:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static closeLog()V
    .locals 0

    .prologue
    .line 137
    invoke-static {}, Lcom/tencent/midas/comm/APLog;->flush()V

    .line 138
    return-void
.end method

.method private static composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/tencent/midas/comm/APLog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "msg":Ljava/lang/String;
    sget-boolean v1, Lcom/tencent/midas/comm/APLog;->shouldPrintLog:Z

    if-eqz v1, :cond_0

    .line 67
    const/4 v1, 0x2

    sget-object v2, Lcom/tencent/midas/comm/APLog;->logInfo:Lcom/tencent/midas/comm/APLogInfo;

    invoke-virtual {v2}, Lcom/tencent/midas/comm/APLogInfo;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/midas/comm/log/internal/APLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-static {v0}, Lcom/tencent/midas/comm/APLog;->writeLog(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p0, p1}, Lcom/tencent/midas/comm/APLog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "msg":Ljava/lang/String;
    sget-boolean v1, Lcom/tencent/midas/comm/APLog;->shouldPrintLog:Z

    if-eqz v1, :cond_0

    .line 94
    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/midas/comm/APLog;->logInfo:Lcom/tencent/midas/comm/APLogInfo;

    invoke-virtual {v2}, Lcom/tencent/midas/comm/APLogInfo;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/midas/comm/log/internal/APLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    invoke-static {v0}, Lcom/tencent/midas/comm/APLog;->writeLog(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static flush()V
    .locals 4

    .prologue
    .line 142
    :try_start_0
    sget-object v1, Lcom/tencent/midas/comm/APLog;->logger:Lcom/tencent/midas/comm/log/internal/APLogger;

    if-eqz v1, :cond_0

    .line 143
    sget-object v1, Lcom/tencent/midas/comm/APLog;->logger:Lcom/tencent/midas/comm/log/internal/APLogger;

    invoke-virtual {v1}, Lcom/tencent/midas/comm/log/internal/APLogger;->flush()V

    .line 144
    const-string v1, "MidasComm<Log>"

    const-string v2, "Log flushing...!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .local v0, "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 146
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 147
    .restart local v0    # "ex":Ljava/lang/Throwable;
    const-string v1, "MidasComm<Log>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flush log error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getLogInfo()Lcom/tencent/midas/comm/APLogInfo;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/tencent/midas/comm/APLog;->logInfo:Lcom/tencent/midas/comm/APLogInfo;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/tencent/midas/comm/APLog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "msg":Ljava/lang/String;
    sget-boolean v1, Lcom/tencent/midas/comm/APLog;->shouldPrintLog:Z

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, 0x3

    sget-object v2, Lcom/tencent/midas/comm/APLog;->logInfo:Lcom/tencent/midas/comm/APLogInfo;

    invoke-virtual {v2}, Lcom/tencent/midas/comm/APLogInfo;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/midas/comm/log/internal/APLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    invoke-static {v0}, Lcom/tencent/midas/comm/APLog;->writeLog(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static init(Lcom/tencent/midas/comm/APLogInfo;)V
    .locals 6
    .param p0, "info"    # Lcom/tencent/midas/comm/APLogInfo;

    .prologue
    .line 26
    :try_start_0
    const-string v1, "MidasComm<Log>"

    const-string v2, "Log init"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    if-nez p0, :cond_0

    .line 28
    const-string v1, "MidasComm<Log>"

    const-string v2, "Log init failed: info null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-static {}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->getInstance()Lcom/tencent/midas/comm/log/util/APLogDataReporter;

    move-result-object v1

    const-string v2, "init"

    const-string v3, "sdk.log.init"

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sput-object p0, Lcom/tencent/midas/comm/APLog;->logInfo:Lcom/tencent/midas/comm/APLogInfo;

    .line 34
    sget-object v1, Lcom/tencent/midas/comm/APLog;->logInfo:Lcom/tencent/midas/comm/APLogInfo;

    invoke-virtual {v1}, Lcom/tencent/midas/comm/APLogInfo;->init()V

    .line 36
    invoke-static {}, Lcom/tencent/midas/comm/log/APLogFileInfo;->create()V

    .line 38
    sget-object v1, Lcom/tencent/midas/comm/APLog;->logInfo:Lcom/tencent/midas/comm/APLogInfo;

    invoke-virtual {v1}, Lcom/tencent/midas/comm/APLogInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->readLogKeepConf(Landroid/content/Context;)V

    .line 39
    sget-object v1, Lcom/tencent/midas/comm/log/APLogFileInfo;->dirName:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->initLogDir(Ljava/lang/String;)Z

    .line 41
    sget-object v1, Lcom/tencent/midas/comm/APLog;->logInfo:Lcom/tencent/midas/comm/APLogInfo;

    invoke-virtual {v1}, Lcom/tencent/midas/comm/APLogInfo;->shouldPrintLog()Z

    move-result v1

    sput-boolean v1, Lcom/tencent/midas/comm/APLog;->shouldPrintLog:Z

    .line 42
    sget-object v1, Lcom/tencent/midas/comm/APLog;->logInfo:Lcom/tencent/midas/comm/APLogInfo;

    invoke-virtual {v1}, Lcom/tencent/midas/comm/APLogInfo;->isWriteLog()Z

    move-result v1

    sput-boolean v1, Lcom/tencent/midas/comm/APLog;->shouldWriteLog:Z

    .line 44
    invoke-static {}, Lcom/tencent/midas/comm/log/internal/APLogger;->open()Lcom/tencent/midas/comm/log/internal/APLogger;

    move-result-object v1

    sput-object v1, Lcom/tencent/midas/comm/APLog;->logger:Lcom/tencent/midas/comm/log/internal/APLogger;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->getInstance()Lcom/tencent/midas/comm/log/util/APLogDataReporter;

    move-result-object v1

    const-string v2, "init"

    const-string v3, "sdk.log.error.init"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "MidasComm<Log>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log init failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p0, p1}, Lcom/tencent/midas/comm/APLog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/midas/comm/APLog;->writeLog(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static s(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "isRelease"    # Z
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p1, p2}, Lcom/tencent/midas/comm/APLog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "msg":Ljava/lang/String;
    sget-boolean v1, Lcom/tencent/midas/comm/APLog;->shouldPrintLog:Z

    if-eqz v1, :cond_0

    if-nez p0, :cond_0

    .line 104
    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/midas/comm/APLog;->logInfo:Lcom/tencent/midas/comm/APLogInfo;

    invoke-virtual {v2}, Lcom/tencent/midas/comm/APLogInfo;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/midas/comm/log/internal/APLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-static {v0}, Lcom/tencent/midas/comm/APLog;->writeLog(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p0, p1}, Lcom/tencent/midas/comm/APLog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "msg":Ljava/lang/String;
    sget-boolean v1, Lcom/tencent/midas/comm/APLog;->shouldPrintLog:Z

    if-eqz v1, :cond_0

    .line 76
    const/4 v1, 0x1

    sget-object v2, Lcom/tencent/midas/comm/APLog;->logInfo:Lcom/tencent/midas/comm/APLogInfo;

    invoke-virtual {v2}, Lcom/tencent/midas/comm/APLogInfo;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/midas/comm/log/internal/APLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-static {v0}, Lcom/tencent/midas/comm/APLog;->writeLog(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p0, p1}, Lcom/tencent/midas/comm/APLog;->composeLogMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "msg":Ljava/lang/String;
    sget-boolean v1, Lcom/tencent/midas/comm/APLog;->shouldPrintLog:Z

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x4

    sget-object v2, Lcom/tencent/midas/comm/APLog;->logInfo:Lcom/tencent/midas/comm/APLogInfo;

    invoke-virtual {v2}, Lcom/tencent/midas/comm/APLogInfo;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/midas/comm/log/internal/APLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-static {v0}, Lcom/tencent/midas/comm/APLog;->writeLog(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private static write(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 128
    :try_start_0
    sget-object v1, Lcom/tencent/midas/comm/APLog;->logger:Lcom/tencent/midas/comm/log/internal/APLogger;

    if-eqz v1, :cond_0

    .line 129
    sget-object v1, Lcom/tencent/midas/comm/APLog;->logger:Lcom/tencent/midas/comm/log/internal/APLogger;

    invoke-virtual {v1, p0}, Lcom/tencent/midas/comm/log/internal/APLogger;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MidasComm<Log>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log write error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static writeLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-boolean v0, Lcom/tencent/midas/comm/APLog;->shouldWriteLog:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p0}, Lcom/tencent/midas/comm/APLog;->write(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method
