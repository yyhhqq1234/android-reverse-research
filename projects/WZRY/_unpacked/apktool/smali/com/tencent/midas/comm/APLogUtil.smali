.class public Lcom/tencent/midas/comm/APLogUtil;
.super Ljava/lang/Object;
.source "APLogUtil.java"


# static fields
.field private static HAS_INIT_LOG_IN_NEW_PROCESS:Z

.field public static IS_IN_NEW_PROCESS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/midas/comm/APLogUtil;->IS_IN_NEW_PROCESS:Z

    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/midas/comm/APLogUtil;->HAS_INIT_LOG_IN_NEW_PROCESS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flushIfNewProcess()V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/tencent/midas/comm/APLogUtil;->IS_IN_NEW_PROCESS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/midas/comm/APLog;->getLogInfo()Lcom/tencent/midas/comm/APLogInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/midas/comm/APLog;->getLogInfo()Lcom/tencent/midas/comm/APLogInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/midas/comm/APLogInfo;->isAutoFlush()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lcom/tencent/midas/comm/APLog;->flush()V

    .line 61
    :cond_0
    return-void
.end method

.method public static initAPLogIfNewProcess(Landroid/content/Context;ZZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isNewProcess"    # Z
    .param p2, "isLogEnable"    # Z

    .prologue
    const/4 v3, 0x1

    .line 14
    if-eqz p1, :cond_0

    sget-boolean v2, Lcom/tencent/midas/comm/APLogUtil;->HAS_INIT_LOG_IN_NEW_PROCESS:Z

    if-nez v2, :cond_0

    .line 15
    sput-boolean v3, Lcom/tencent/midas/comm/APLogUtil;->IS_IN_NEW_PROCESS:Z

    .line 17
    :try_start_0
    new-instance v1, Lcom/tencent/midas/comm/APLogInfo;

    invoke-direct {v1}, Lcom/tencent/midas/comm/APLogInfo;-><init>()V

    .line 18
    .local v1, "info":Lcom/tencent/midas/comm/APLogInfo;
    invoke-static {}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->getInstance()Lcom/tencent/midas/comm/log/util/APLogDataReporter;

    move-result-object v2

    new-instance v3, Lcom/tencent/midas/comm/APLogUtil$1;

    invoke-direct {v3}, Lcom/tencent/midas/comm/APLogUtil$1;-><init>()V

    invoke-virtual {v2, v3}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->setReporter(Lcom/tencent/midas/comm/log/util/APLogDataReporter$Reporter;)V

    .line 24
    invoke-virtual {v1, p0}, Lcom/tencent/midas/comm/APLogInfo;->setContext(Landroid/content/Context;)V

    .line 25
    invoke-virtual {v1, p2}, Lcom/tencent/midas/comm/APLogInfo;->setLogEnable(Z)V

    .line 26
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/midas/comm/APLogInfo;->setAutoFlush(Z)V

    .line 27
    const-string v2, "TencentPay"

    invoke-virtual {v1, v2}, Lcom/tencent/midas/comm/APLogInfo;->setLogTag(Ljava/lang/String;)V

    .line 28
    invoke-static {v1}, Lcom/tencent/midas/comm/APLog;->init(Lcom/tencent/midas/comm/APLogInfo;)V

    .line 30
    const/4 v2, 0x1

    sput-boolean v2, Lcom/tencent/midas/comm/APLogUtil;->HAS_INIT_LOG_IN_NEW_PROCESS:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "info":Lcom/tencent/midas/comm/APLogInfo;
    :cond_0
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "APLogUtil init"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initAPLogInPlugin(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isLogEnable"    # Z

    .prologue
    .line 39
    :try_start_0
    new-instance v1, Lcom/tencent/midas/comm/APLogInfo;

    invoke-direct {v1}, Lcom/tencent/midas/comm/APLogInfo;-><init>()V

    .line 40
    .local v1, "info":Lcom/tencent/midas/comm/APLogInfo;
    invoke-static {}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->getInstance()Lcom/tencent/midas/comm/log/util/APLogDataReporter;

    move-result-object v2

    new-instance v3, Lcom/tencent/midas/comm/APLogUtil$2;

    invoke-direct {v3}, Lcom/tencent/midas/comm/APLogUtil$2;-><init>()V

    invoke-virtual {v2, v3}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->setReporter(Lcom/tencent/midas/comm/log/util/APLogDataReporter$Reporter;)V

    .line 46
    invoke-virtual {v1, p0}, Lcom/tencent/midas/comm/APLogInfo;->setContext(Landroid/content/Context;)V

    .line 47
    invoke-virtual {v1, p1}, Lcom/tencent/midas/comm/APLogInfo;->setLogEnable(Z)V

    .line 48
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/midas/comm/APLogInfo;->setAutoFlush(Z)V

    .line 49
    const-string v2, "TencentPay"

    invoke-virtual {v1, v2}, Lcom/tencent/midas/comm/APLogInfo;->setLogTag(Ljava/lang/String;)V

    .line 50
    invoke-static {v1}, Lcom/tencent/midas/comm/APLog;->init(Lcom/tencent/midas/comm/APLogInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1    # "info":Lcom/tencent/midas/comm/APLogInfo;
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "APLogUtil init"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
