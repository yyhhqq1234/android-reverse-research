.class public final Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;
.super Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorConfig;
.source "OOMMonitorConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorConfig<",
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001+Bq\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0002\u0010\u0016J\u0006\u0010*\u001a\u00020\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0018R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0018R\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001bR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0018R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u0018\u00a8\u0006,"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;",
        "Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorConfig;",
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;",
        "analysisMaxTimesPerVersion",
        "",
        "analysisPeriodPerVersion",
        "heapThreshold",
        "",
        "fdThreshold",
        "threadThreshold",
        "deviceMemoryThreshold",
        "maxOverThresholdCount",
        "forceDumpJavaHeapMaxThreshold",
        "forceDumpJavaHeapDeltaThreshold",
        "loopInterval",
        "",
        "enableHprofDumpAnalysis",
        "",
        "hprofUploader",
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;",
        "reportUploader",
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;",
        "(IIFIIFIFIJZLcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;)V",
        "getAnalysisMaxTimesPerVersion",
        "()I",
        "getAnalysisPeriodPerVersion",
        "getDeviceMemoryThreshold",
        "()F",
        "getEnableHprofDumpAnalysis",
        "()Z",
        "getFdThreshold",
        "getForceDumpJavaHeapDeltaThreshold",
        "getForceDumpJavaHeapMaxThreshold",
        "getHeapThreshold",
        "getHprofUploader",
        "()Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;",
        "getLoopInterval",
        "()J",
        "getMaxOverThresholdCount",
        "getReportUploader",
        "()Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;",
        "getThreadThreshold",
        "printConfig",
        "Builder",
        "CrashHunterLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final analysisMaxTimesPerVersion:I

.field private final analysisPeriodPerVersion:I

.field private final deviceMemoryThreshold:F

.field private final enableHprofDumpAnalysis:Z

.field private final fdThreshold:I

.field private final forceDumpJavaHeapDeltaThreshold:I

.field private final forceDumpJavaHeapMaxThreshold:F

.field private final heapThreshold:F

.field private final hprofUploader:Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;

.field private final loopInterval:J

.field private final maxOverThresholdCount:I

.field private final reportUploader:Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;

.field private final threadThreshold:I


# direct methods
.method public constructor <init>(IIFIIFIFIJZLcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorConfig;-><init>()V

    .line 28
    iput p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->analysisMaxTimesPerVersion:I

    .line 29
    iput p2, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->analysisPeriodPerVersion:I

    .line 31
    iput p3, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->heapThreshold:F

    .line 32
    iput p4, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->fdThreshold:I

    .line 33
    iput p5, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->threadThreshold:I

    .line 34
    iput p6, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->deviceMemoryThreshold:F

    .line 35
    iput p7, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->maxOverThresholdCount:I

    .line 36
    iput p8, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->forceDumpJavaHeapMaxThreshold:F

    .line 37
    iput p9, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->forceDumpJavaHeapDeltaThreshold:I

    .line 39
    iput-wide p10, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->loopInterval:J

    .line 41
    iput-boolean p12, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->enableHprofDumpAnalysis:Z

    .line 43
    iput-object p13, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->hprofUploader:Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;

    .line 44
    iput-object p14, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->reportUploader:Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;

    return-void
.end method


# virtual methods
.method public final getAnalysisMaxTimesPerVersion()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->analysisMaxTimesPerVersion:I

    return v0
.end method

.method public final getAnalysisPeriodPerVersion()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->analysisPeriodPerVersion:I

    return v0
.end method

.method public final getDeviceMemoryThreshold()F
    .locals 1

    .line 34
    iget v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->deviceMemoryThreshold:F

    return v0
.end method

.method public final getEnableHprofDumpAnalysis()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->enableHprofDumpAnalysis:Z

    return v0
.end method

.method public final getFdThreshold()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->fdThreshold:I

    return v0
.end method

.method public final getForceDumpJavaHeapDeltaThreshold()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->forceDumpJavaHeapDeltaThreshold:I

    return v0
.end method

.method public final getForceDumpJavaHeapMaxThreshold()F
    .locals 1

    .line 36
    iget v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->forceDumpJavaHeapMaxThreshold:F

    return v0
.end method

.method public final getHeapThreshold()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->heapThreshold:F

    return v0
.end method

.method public final getHprofUploader()Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->hprofUploader:Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;

    return-object v0
.end method

.method public final getLoopInterval()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->loopInterval:J

    return-wide v0
.end method

.method public final getMaxOverThresholdCount()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->maxOverThresholdCount:I

    return v0
.end method

.method public final getReportUploader()Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->reportUploader:Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;

    return-object v0
.end method

.method public final getThreadThreshold()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->threadThreshold:I

    return v0
.end method

.method public final printConfig()Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;
    .locals 3

    .line 171
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;

    const-string v0, "OOMMonitorConfig [printConfig] ========== OOMMonitorConfig Info =========="

    .line 172
    invoke-static {v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OOMMonitorConfig [printConfig] analysisMaxTimesPerVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->analysisMaxTimesPerVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OOMMonitorConfig [printConfig] analysisPeriodPerVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->analysisPeriodPerVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OOMMonitorConfig [printConfig] heapThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->heapThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OOMMonitorConfig [printConfig] fdThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->fdThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OOMMonitorConfig [printConfig] threadThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->threadThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OOMMonitorConfig [printConfig] deviceMemoryThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->deviceMemoryThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OOMMonitorConfig [printConfig] maxOverThresholdCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->maxOverThresholdCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OOMMonitorConfig [printConfig] forceDumpJavaHeapMaxThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->forceDumpJavaHeapMaxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OOMMonitorConfig [printConfig] forceDumpJavaHeapDeltaThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->forceDumpJavaHeapDeltaThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OOMMonitorConfig [printConfig] loopInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->loopInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OOMMonitorConfig [printConfig] enableHprofDumpAnalysis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->enableHprofDumpAnalysis:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;)V

    const-string v0, "OOMMonitorConfig [printConfig] ============================================="

    .line 184
    invoke-static {v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;)V

    return-object p0
.end method
