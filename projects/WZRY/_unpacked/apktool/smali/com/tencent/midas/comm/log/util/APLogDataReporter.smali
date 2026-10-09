.class public Lcom/tencent/midas/comm/log/util/APLogDataReporter;
.super Ljava/lang/Object;
.source "APLogDataReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/midas/comm/log/util/APLogDataReporter$Reporter;,
        Lcom/tencent/midas/comm/log/util/APLogDataReporter$Holder;
    }
.end annotation


# static fields
.field public static final MIDAS_LOG_ERROR_APPEND:Ljava/lang/String; = "sdk.log.error.append"

.field public static final MIDAS_LOG_ERROR_CLOSE:Ljava/lang/String; = "sdk.log.error.close"

.field public static final MIDAS_LOG_ERROR_CREATE_THREAD:Ljava/lang/String; = "sdk.log.error.create.thread"

.field public static final MIDAS_LOG_ERROR_CREATE_WRITER:Ljava/lang/String; = "sdk.log.error.create.writer"

.field public static final MIDAS_LOG_ERROR_FLUSH:Ljava/lang/String; = "sdk.log.error.flush"

.field public static final MIDAS_LOG_ERROR_INIT:Ljava/lang/String; = "sdk.log.error.init"

.field public static final MIDAS_LOG_ERROR_MMAP_OPEN:Ljava/lang/String; = "sdk.log.error.mmap.open"

.field public static final MIDAS_LOG_ERROR_NO_PKGNAME:Ljava/lang/String; = "sdk.log.error.no.pkgname"

.field public static final MIDAS_LOG_ERROR_NO_SDCARD:Ljava/lang/String; = "sdk.log.error.sd.notexist"

.field public static final MIDAS_LOG_ERROR_PERMISSION:Ljava/lang/String; = "sdk.log.error.permission"

.field public static final MIDAS_LOG_ERROR_PRINT:Ljava/lang/String; = "sdk.log.error.print"

.field public static final MIDAS_LOG_ERROR_PROCESS:Ljava/lang/String; = "sdk.log.error.process"

.field public static final MIDAS_LOG_ERROR_SDCARD_NOSPACE:Ljava/lang/String; = "sdk.log.error.sd.nospace"

.field public static final MIDAS_LOG_ERROR_UPLOAD:Ljava/lang/String; = "sdk.log.error.upload"

.field public static final MIDAS_LOG_ERROR_WRITE:Ljava/lang/String; = "sdk.log.error.write"

.field public static final MIDAS_LOG_INIT:Ljava/lang/String; = "sdk.log.init"


# instance fields
.field private reporter:Lcom/tencent/midas/comm/log/util/APLogDataReporter$Reporter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/midas/comm/log/util/APLogDataReporter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/midas/comm/log/util/APLogDataReporter$1;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/midas/comm/log/util/APLogDataReporter;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/tencent/midas/comm/log/util/APLogDataReporter$Holder;->access$100()Lcom/tencent/midas/comm/log/util/APLogDataReporter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getReporter()Lcom/tencent/midas/comm/log/util/APLogDataReporter$Reporter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->reporter:Lcom/tencent/midas/comm/log/util/APLogDataReporter$Reporter;

    return-object v0
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "extend"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v0, "launchpay"

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "extend"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->reporter:Lcom/tencent/midas/comm/log/util/APLogDataReporter$Reporter;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->reporter:Lcom/tencent/midas/comm/log/util/APLogDataReporter$Reporter;

    invoke-interface {v1, p1, p2, p3}, Lcom/tencent/midas/comm/log/util/APLogDataReporter$Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MidasComm<Log>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reportTimeEx(Ljava/lang/String;J)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "timeStart"    # J

    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, p2

    .line 67
    .local v0, "time":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setReporter(Lcom/tencent/midas/comm/log/util/APLogDataReporter$Reporter;)V
    .locals 0
    .param p1, "reporter"    # Lcom/tencent/midas/comm/log/util/APLogDataReporter$Reporter;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->reporter:Lcom/tencent/midas/comm/log/util/APLogDataReporter$Reporter;

    .line 48
    return-void
.end method
