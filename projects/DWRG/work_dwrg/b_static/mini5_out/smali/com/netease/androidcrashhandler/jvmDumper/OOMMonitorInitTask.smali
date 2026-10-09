.class public final Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorInitTask;
.super Ljava/lang/Object;
.source "OOMMonitorInitTask.kt"

# interfaces
.implements Lcom/netease/androidcrashhandler/jvmDumper/base/InitTask;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorInitTask;",
        "Lcom/netease/androidcrashhandler/jvmDumper/base/InitTask;",
        "()V",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
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


# static fields
.field public static final INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorInitTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorInitTask;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorInitTask;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorInitTask;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorInitTask;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .line 16
    new-instance p1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    invoke-direct {p1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;-><init>()V

    const/4 v0, 0x5

    .line 22
    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->setAnalysisMaxTimesPerVersion(I)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    move-result-object p1

    const v0, 0x36ee80

    .line 23
    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->setAnalysisPeriodPerVersion(I)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    move-result-object p1

    const-wide/16 v0, 0x1388

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->setLoopInterval(J)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->setEnableHprofDumpAnalysis(Z)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    move-result-object p1

    .line 26
    new-instance v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorInitTask$init$config$1;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorInitTask$init$config$1;-><init>()V

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->setHprofUploader(Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    move-result-object p1

    .line 32
    new-instance v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorInitTask$init$config$2;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorInitTask$init$config$2;-><init>()V

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->setReportUploader(Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->build()Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->printConfig()Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;

    move-result-object p1

    .line 56
    check-cast p1, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorConfig;

    invoke-static {p1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorManager;->addMonitorConfig(Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorConfig;)Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorManager;

    return-void
.end method
