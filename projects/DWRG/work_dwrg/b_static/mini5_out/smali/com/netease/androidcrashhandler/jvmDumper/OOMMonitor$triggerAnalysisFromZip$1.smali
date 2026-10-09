.class final Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OOMMonitor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->triggerAnalysisFromZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOOMMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OOMMonitor.kt\ncom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,553:1\n1#2:554\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $crashDir:Ljava/lang/String;

.field final synthetic $hprofPath:Ljava/lang/String;

.field final synthetic $rootPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1;->$hprofPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1;->$crashDir:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1;->$rootPath:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 13

    const-string v0, "trace"

    .line 431
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1;->$hprofPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    iget-object v7, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1;->$hprofPath:Ljava/lang/String;

    const-string v8, ".hprof"

    const-string v9, ".json"

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 443
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 445
    sget-object v4, Lcom/netease/androidcrashhandler/jvmDumper/analysis/HeapAnalysisService;->Companion:Lcom/netease/androidcrashhandler/jvmDumper/analysis/HeapAnalysisService$Companion;

    .line 446
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 447
    iget-object v6, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1;->$rootPath:Ljava/lang/String;

    .line 448
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 449
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    .line 450
    new-instance v9, Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisExtraData;

    invoke-direct {v9}, Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisExtraData;-><init>()V

    const-string v10, "zip_triggered"

    invoke-virtual {v9, v10}, Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisExtraData;->setReason(Ljava/lang/String;)V

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 451
    new-instance v10, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;

    iget-object v11, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1;->$crashDir:Ljava/lang/String;

    invoke-direct {v10, v1, v3, v11, v2}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1$2;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v10, Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisReceiver$ResultCallBack;

    .line 445
    invoke-virtual/range {v4 .. v10}, Lcom/netease/androidcrashhandler/jvmDumper/analysis/HeapAnalysisService$Companion;->startAnalysisService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisExtraData;Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisReceiver$ResultCallBack;)V

    goto :goto_1

    .line 433
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerAnalysisFromZip hprof file invalid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1;->$hprofPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 436
    invoke-static {}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->getInstance()Lcom/netease/androidcrashhandler/zip/ZipProxy;

    move-result-object v1

    .line 437
    iget-object v2, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1;->$crashDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->zipAndUploadDirAsync(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 485
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerAnalysisFromZip err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->getInstance()Lcom/netease/androidcrashhandler/zip/ZipProxy;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1;->$crashDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->zipAndUploadDirAsync(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
