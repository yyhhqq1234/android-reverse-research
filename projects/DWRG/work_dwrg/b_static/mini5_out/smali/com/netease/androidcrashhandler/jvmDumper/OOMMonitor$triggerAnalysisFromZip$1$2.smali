.class public final Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;
.super Ljava/lang/Object;
.source "OOMMonitor.kt"

# interfaces
.implements Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisReceiver$ResultCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1;->invoke()V
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
        "com/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2",
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
.field final synthetic $crashDir:Ljava/lang/String;

.field final synthetic $hprofFile:Ljava/io/File;

.field final synthetic $jsonFile:Ljava/io/File;

.field final synthetic $jsonPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;->$hprofFile:Ljava/io/File;

    iput-object p2, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;->$jsonFile:Ljava/io/File;

    iput-object p3, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;->$crashDir:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;->$jsonPath:Ljava/lang/String;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "triggerAnalysisFromZip analysis error"

    .line 453
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;->$hprofFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 455
    iget-object v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;->$jsonFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 457
    invoke-static {}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->getInstance()Lcom/netease/androidcrashhandler/zip/ZipProxy;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;->$crashDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->zipAndUploadDirAsync(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 462
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "triggerAnalysisFromZip analysis success, jsonPath="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;->$jsonPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "trace"

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;->$hprofFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 466
    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;->$crashDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;->$jsonFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;->$jsonFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/CUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerAnalysisFromZip copied json to crashDir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;->$jsonFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 475
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerAnalysisFromZip copy json err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :goto_0
    invoke-static {}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->getInstance()Lcom/netease/androidcrashhandler/zip/ZipProxy;

    move-result-object p1

    .line 480
    iget-object v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;->$crashDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->zipAndUploadDirAsync(Ljava/lang/String;)V

    return-void
.end method
