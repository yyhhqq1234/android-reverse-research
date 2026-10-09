.class public final Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$startAnalysisService$2;
.super Ljava/lang/Object;
.source "OOMMonitor.kt"

# interfaces
.implements Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisReceiver$ResultCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->startAnalysisService(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/netease/androidcrashhandler/jvmDumper/OOMMonitor$startAnalysisService$2",
        "Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisReceiver$ResultCallBack;",
        "onError",
        "",
        "onSuccess",
        "reason",
        "",
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
.field final synthetic $hprofFile:Ljava/io/File;

.field final synthetic $jsonFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$startAnalysisService$2;->$hprofFile:Ljava/io/File;

    iput-object p2, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$startAnalysisService$2;->$jsonFile:Ljava/io/File;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "heap analysis error, do file delete"

    .line 346
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$startAnalysisService$2;->$hprofFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 349
    iget-object v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$startAnalysisService$2;->$jsonFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 350
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->access$setMIsAnalysisHprof$p(Z)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6

    const-string v0, "trace"

    const-string v1, "heap analysis success, do upload"

    .line 354
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 356
    :try_start_0
    iget-object v2, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$startAnalysisService$2;->$jsonFile:Ljava/io/File;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 357
    sget-object v3, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->access$setMIsAnalysisHprof$p(Z)V

    .line 358
    sget-object v3, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;

    invoke-static {v3}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->access$getMonitorConfig(Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->getReportUploader()Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$startAnalysisService$2;->$hprofFile:Ljava/io/File;

    iget-object v5, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$startAnalysisService$2;->$jsonFile:Ljava/io/File;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {v3, v4, v5, v2, p1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;->upload(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_1
    sget-object p1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;

    invoke-static {p1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->access$getMonitorConfig(Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->getHprofUploader()Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 360
    iget-object v2, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$startAnalysisService$2;->$hprofFile:Ljava/io/File;

    .line 361
    sget-object v3, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;->ORIGIN:Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

    .line 359
    invoke-interface {p1, v2, v3}, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;->upload(Ljava/io/File;Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 364
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAnalysisService onSuccess err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    sget-object p1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->access$setMIsAnalysisHprof$p(Z)V

    .line 367
    iget-object p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$startAnalysisService$2;->$hprofFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 368
    iget-object p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$startAnalysisService$2;->$jsonFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_0
    return-void
.end method
