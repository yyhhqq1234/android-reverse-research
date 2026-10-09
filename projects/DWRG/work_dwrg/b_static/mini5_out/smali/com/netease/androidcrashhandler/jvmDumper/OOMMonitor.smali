.class public final Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;
.super Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor;
.source "OOMMonitor.kt"

# interfaces
.implements Lcom/netease/androidcrashhandler/unknownCrash/AppLifeCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor<",
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;",
        ">;",
        "Lcom/netease/androidcrashhandler/unknownCrash/AppLifeCallback;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOOMMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OOMMonitor.kt\ncom/netease/androidcrashhandler/jvmDumper/OOMMonitor\n+ 2 Monitor.kt\ncom/netease/androidcrashhandler/jvmDumper/base/Monitor\n+ 3 Monitor.kt\ncom/netease/androidcrashhandler/jvmDumper/base/Monitor$throwIfNotInitialized$1\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,553:1\n34#2,14:554\n49#2,3:569\n34#2,14:572\n49#2,3:587\n36#3:568\n36#3:586\n1#4:590\n18#5:591\n18#5:593\n18#5:595\n26#6:592\n26#6:594\n26#6:596\n*S KotlinDebug\n*F\n+ 1 OOMMonitor.kt\ncom/netease/androidcrashhandler/jvmDumper/OOMMonitor\n*L\n100#1:554,14\n100#1:569,3\n126#1:572,14\n126#1:587,3\n100#1:568\n126#1:586\n219#1:591\n256#1:593\n300#1:595\n219#1:592\n256#1:594\n300#1:596\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\u0008\u0010\u0019\u001a\u00020\u0018H\u0002J\u0008\u0010\u001a\u001a\u00020\u0011H\u0014J\u0018\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0002H\u0016J\u0006\u0010\u001f\u001a\u00020\u000bJ\u0010\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u000bH\u0016J\u0008\u0010\"\u001a\u00020\u000bH\u0002J\u0008\u0010#\u001a\u00020\u0018H\u0002J\u0012\u0010$\u001a\u00020\u00182\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0012\u0010\'\u001a\u00020\u00182\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0012\u0010(\u001a\u00020\u00182\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0012\u0010)\u001a\u00020\u00182\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0008\u0010*\u001a\u00020\u0018H\u0002J\u0008\u0010+\u001a\u00020\u0018H\u0002J \u0010,\u001a\u00020\u00182\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020\u0006H\u0002J \u00101\u001a\u00020\u00182\u0006\u00102\u001a\u00020\u000b2\u0006\u00103\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u0011H\u0016J\u0008\u00105\u001a\u00020\u0018H\u0016J\u0008\u00106\u001a\u00020\u0016H\u0002J\u001e\u00107\u001a\u00020\u00182\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u00062\u0006\u0010:\u001a\u00020\u0006R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;",
        "Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor;",
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;",
        "Lcom/netease/androidcrashhandler/unknownCrash/AppLifeCallback;",
        "()V",
        "TAG",
        "",
        "mForegroundPendingRunnables",
        "",
        "Ljava/lang/Runnable;",
        "mHasDumped",
        "",
        "mHasProcessOldHprof",
        "mIsAnalysisHprof",
        "mIsLoopPendingStart",
        "mIsLoopStarted",
        "mMonitorInitTime",
        "",
        "mOOMTrackers",
        "Lcom/netease/androidcrashhandler/jvmDumper/tracker/OOMTracker;",
        "mTrackReasons",
        "call",
        "Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState;",
        "cleanOldHprofFiles",
        "",
        "dumpAndAnalysis",
        "getLoopInterval",
        "init",
        "commonConfig",
        "Lcom/netease/androidcrashhandler/jvmDumper/base/CommonConfig;",
        "monitorConfig",
        "isAnalysisHprof",
        "isAppForeground",
        "isForeground",
        "isExceedAnalysisTimes",
        "manualDumpHprof",
        "onActivityCreate",
        "activity",
        "Landroid/app/Activity;",
        "onActivityDestroy",
        "onActivityStart",
        "onActivityStop",
        "processOldHprofFile",
        "reAnalysisHprof",
        "startAnalysisService",
        "hprofFile",
        "Ljava/io/File;",
        "jsonFile",
        "reason",
        "startLoop",
        "clearQueue",
        "postAtFront",
        "delayMillis",
        "stopLoop",
        "trackOOM",
        "triggerAnalysisFromZip",
        "rootPath",
        "hprofPath",
        "crashDir",
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
.field public static final INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;

.field private static final TAG:Ljava/lang/String; = "trace"

.field private static mForegroundPendingRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mHasDumped:Z

.field private static volatile mHasProcessOldHprof:Z

.field private static volatile mIsAnalysisHprof:Z

.field private static volatile mIsLoopPendingStart:Z

.field private static volatile mIsLoopStarted:Z

.field private static mMonitorInitTime:J

.field private static final mOOMTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/androidcrashhandler/jvmDumper/tracker/OOMTracker;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTrackReasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Whg26s98hlkEfAaOrTkS7ivozG4(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->startAnalysisService$lambda$4(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nVf-jDHdaV8wCZCHxrjdxKeNe98()V
    .locals 0

    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->startLoop$lambda$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netease/androidcrashhandler/jvmDumper/tracker/OOMTracker;

    .line 59
    new-instance v1, Lcom/netease/androidcrashhandler/jvmDumper/tracker/HeapOOMTracker;

    invoke-direct {v1}, Lcom/netease/androidcrashhandler/jvmDumper/tracker/HeapOOMTracker;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/netease/androidcrashhandler/jvmDumper/tracker/ThreadOOMTracker;

    invoke-direct {v1}, Lcom/netease/androidcrashhandler/jvmDumper/tracker/ThreadOOMTracker;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/netease/androidcrashhandler/jvmDumper/tracker/FdOOMTracker;

    invoke-direct {v1}, Lcom/netease/androidcrashhandler/jvmDumper/tracker/FdOOMTracker;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 60
    new-instance v1, Lcom/netease/androidcrashhandler/jvmDumper/tracker/FastHugeMemoryOOMTracker;

    invoke-direct {v1}, Lcom/netease/androidcrashhandler/jvmDumper/tracker/FastHugeMemoryOOMTracker;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 58
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mOOMTrackers:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mTrackReasons:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mForegroundPendingRunnables:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor;-><init>()V

    return-void
.end method

.method public static final synthetic access$dumpAndAnalysis(Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->dumpAndAnalysis()V

    return-void
.end method

.method public static final synthetic access$getMTrackReasons$p()Ljava/util/List;
    .locals 1

    .line 55
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mTrackReasons:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getMonitorConfig(Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->getMonitorConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;

    return-object p0
.end method

.method public static final synthetic access$processOldHprofFile(Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->processOldHprofFile()V

    return-void
.end method

.method public static final synthetic access$setMIsAnalysisHprof$p(Z)V
    .locals 0

    .line 55
    sput-boolean p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mIsAnalysisHprof:Z

    return-void
.end method

.method private final cleanOldHprofFiles()V
    .locals 10

    const-string v0, "trace"

    .line 219
    :try_start_0
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/io/File;

    :cond_0
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    .line 220
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 222
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getPrefix()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v6, v7, v2, v9, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete other files "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 228
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".hprof"

    invoke-static {v6, v7, v2, v9, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete old hprof file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 232
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".json"

    invoke-static {v6, v7, v2, v9, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 233
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete old json file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanOldHprofFiles err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private final dumpAndAnalysis()V
    .locals 13

    const-string v0, "trace"

    const-string v1, "dumpAndAnalysis"

    .line 375
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;

    .line 377
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->isSpaceEnough()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "available space not enough"

    .line 378
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_0
    sget-boolean v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mHasDumped:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 384
    sput-boolean v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mHasDumped:Z

    .line 386
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 388
    invoke-static {v2}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->createJsonAnalysisFile(Ljava/util/Date;)Ljava/io/File;

    move-result-object v3

    .line 389
    invoke-static {v2}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->createHprofAnalysisFile(Ljava/util/Date;)Ljava/io/File;

    move-result-object v2

    .line 390
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 391
    invoke-virtual {v2, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 392
    invoke-virtual {v2, v1}, Ljava/io/File;->setReadable(Z)Z

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hprof analysis dir:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/fastdump/ForkJvmHeapDumper;->getInstance()Lcom/netease/androidcrashhandler/jvmDumper/fastdump/ForkJvmHeapDumper;

    move-result-object v1

    .line 398
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/netease/androidcrashhandler/jvmDumper/fastdump/ForkJvmHeapDumper;->dump(Ljava/lang/String;)Z

    const-string v1, "end hprof dump"

    .line 401
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    .line 402
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    const-string v1, "start hprof analysis"

    .line 403
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mTrackReasons:Ljava/util/List;

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3f

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v3, v1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->startAnalysisService(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 406
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 376
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 406
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 407
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onJvmThreshold Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final isExceedAnalysisTimes()Z
    .locals 6

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->getFirstLaunchTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 168
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->getMonitorConfig()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->getAnalysisPeriodPerVersion()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    .line 169
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->resetAnalysisTimes()V

    .line 170
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->increaseAnalysisTimes()V

    .line 171
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->setFirstLaunchTime(J)V

    return v4

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OOMPreferenceManager.getAnalysisTimes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->getAnalysisTimes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " monitorConfig.analysisMaxTimesPerVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->getMonitorConfig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->getAnalysisMaxTimesPerVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    .line 174
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorBuildConfig;->getDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 183
    :cond_1
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->getAnalysisTimes()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->getMonitorConfig()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->getAnalysisMaxTimesPerVersion()I

    move-result v2

    if-lt v0, v2, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_3

    const-string v0, "current version is out of max analysis times!"

    .line 184
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v4
.end method

.method private final manualDumpHprof()V
    .locals 6

    .line 300
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getManualDumpDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/io/File;

    :cond_0
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "manualDumpHprof upload:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "trace"

    invoke-static {v5, v4}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->getMonitorConfig()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->getHprofUploader()Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v5, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;->STRIPPED:Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;

    invoke-interface {v4, v3, v5}, Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;->upload(Ljava/io/File;Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader$HprofType;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final processOldHprofFile()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "processHprofFile"

    .line 244
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-boolean v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mHasProcessOldHprof:Z

    if-eqz v1, :cond_0

    const-string v1, "has process old hprof file"

    .line 246
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 249
    sput-boolean v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mHasProcessOldHprof:Z

    .line 250
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->reAnalysisHprof()V

    .line 251
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->manualDumpHprof()V

    return-void
.end method

.method private final reAnalysisHprof()V
    .locals 18

    const-string v1, "trace"

    .line 256
    :try_start_0
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/io/File;

    :cond_0
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_6

    aget-object v5, v0, v4

    .line 257
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 259
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "appdump_oom_"

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v6, v7, v2, v9, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete other  files "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    .line 265
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".hprof"

    invoke-static {v6, v7, v2, v9, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "delete old hprof file "

    const-wide/32 v10, 0x240c8400

    if-eqz v6, :cond_4

    .line 266
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".hprof"

    const-string v14, ".json"

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 270
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-nez v16, :cond_2

    const-string v12, "last analysis isn\'t succeed, delete file"

    goto :goto_1

    :cond_2
    const-string v12, "delete old files"

    .line 268
    :goto_1
    invoke-static {v1, v12}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 274
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 276
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    sub-long/2addr v12, v14

    cmp-long v6, v12, v10

    if-lez v6, :cond_4

    .line 278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 283
    :cond_4
    :goto_2
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    const-string v12, ".json"

    invoke-static {v6, v12, v2, v9, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    sub-long/2addr v8, v12

    cmp-long v6, v8, v10

    if-lez v6, :cond_5

    .line 286
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 291
    :cond_6
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getThreadDumpDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/CUtil;->deleteFilesInFolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 292
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getFdDumpDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/CUtil;->deleteFilesInFolder(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 294
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reAnalysisHprof err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private final startAnalysisService(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .line 311
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-string v2, "trace"

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 312
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    const-string p1, "hprof file size 0"

    .line 313
    invoke-static {v2, p1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 317
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->isForeground()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "try startAnalysisService, but not foreground"

    .line 318
    invoke-static {v2, v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mForegroundPendingRunnables:Ljava/util/List;

    new-instance v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 328
    sput-boolean v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mIsAnalysisHprof:Z

    const-string v0, "startAnalysisService"

    .line 329
    invoke-static {v2, v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->increaseAnalysisTimes()V

    .line 332
    new-instance v6, Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisExtraData;

    invoke-direct {v6}, Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisExtraData;-><init>()V

    .line 333
    invoke-virtual {v6, p3}, Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisExtraData;->setReason(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_3

    const-string p3, ""

    :cond_3
    invoke-virtual {v6, p3}, Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisExtraData;->setCurrentPage(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mMonitorInitTime:J

    sub-long/2addr v0, v2

    const/16 p3, 0x3e8

    int-to-long v2, p3

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisExtraData;->setUsageSeconds(Ljava/lang/String;)V

    .line 338
    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/analysis/HeapAnalysisService;->Companion:Lcom/netease/androidcrashhandler/jvmDumper/analysis/HeapAnalysisService$Companion;

    .line 339
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 340
    sget-object p3, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;

    invoke-virtual {p3}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getRootDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    .line 344
    new-instance p3, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$startAnalysisService$2;

    invoke-direct {p3, p1, p2}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$startAnalysisService$2;-><init>(Ljava/io/File;Ljava/io/File;)V

    move-object v7, p3

    check-cast v7, Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisReceiver$ResultCallBack;

    .line 338
    invoke-virtual/range {v1 .. v7}, Lcom/netease/androidcrashhandler/jvmDumper/analysis/HeapAnalysisService$Companion;->startAnalysisService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisExtraData;Lcom/netease/androidcrashhandler/jvmDumper/analysis/AnalysisReceiver$ResultCallBack;)V

    return-void
.end method

.method private static final startAnalysisService$lambda$4(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 320
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->startAnalysisService(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private static final startLoop$lambda$1()V
    .locals 5

    .line 118
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$startLoop$2$1;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$startLoop$2$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/netease/androidcrashhandler/jvmDumper/base/Monitor_ThreadKt;->async$default(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private final trackOOM()Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState;
    .locals 6

    const-string v0, "trace"

    const-string v1, "trackOOM start"

    .line 189
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/tracker/model/SystemInfo;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/tracker/model/SystemInfo;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/jvmDumper/tracker/model/SystemInfo;->refresh()V

    .line 192
    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mTrackReasons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 193
    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mOOMTrackers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/androidcrashhandler/jvmDumper/tracker/OOMTracker;

    .line 194
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/jvmDumper/tracker/OOMTracker;->track()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    sget-object v3, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mTrackReasons:Ljava/util/List;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/jvmDumper/tracker/OOMTracker;->reason()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_1
    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mTrackReasons:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->getMonitorConfig()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->getEnableHprofDumpAnalysis()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->isExceedAnalysisTimes()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Triggered, but exceed analysis times or period!"

    .line 201
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    .line 203
    sget-object v4, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$trackOOM$1;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$trackOOM$1;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v3, v5}, Lcom/netease/androidcrashhandler/jvmDumper/base/Monitor_ThreadKt;->async$default(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_1
    const-string v1, "has dumped! only dump once"

    .line 208
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState$Terminate;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState$Terminate;

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState;

    return-object v0

    .line 211
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTrackReasons:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not enableHprofDumpAnalysis"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState$Continue;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState$Continue;

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState;

    return-object v0
.end method


# virtual methods
.method public call()Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState;
    .locals 4

    const-string v0, "trace"

    .line 142
    :try_start_0
    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorManager;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorManager;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorManager;->getCommonConfig$CrashHunterLib_release()Lcom/netease/androidcrashhandler/jvmDumper/base/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/CommonConfig;->getSdkVersionMatch$CrashHunterLib_release()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SDK_INT not match"

    .line 143
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState$Terminate;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState$Terminate;

    check-cast v1, Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState;

    return-object v1

    .line 147
    :cond_0
    sget-boolean v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mHasDumped:Z

    if-eqz v1, :cond_1

    const-string v1, "has dumped! only dump once"

    .line 148
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState$Terminate;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState$Terminate;

    check-cast v1, Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState;

    return-object v1

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->trackOOM()Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 154
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call() unhandled err, loop will continue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState$Continue;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState$Continue;

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->call()Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor$LoopState;

    move-result-object v0

    return-object v0
.end method

.method protected getLoopInterval()J
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->getMonitorConfig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;->getLoopInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Lcom/netease/androidcrashhandler/jvmDumper/base/CommonConfig;Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;)V
    .locals 2

    .line 85
    invoke-super {p0, p1, p2}, Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor;->init(Lcom/netease/androidcrashhandler/jvmDumper/base/CommonConfig;Ljava/lang/Object;)V

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mMonitorInitTime:J

    .line 89
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/jvmDumper/base/CommonConfig;->getSharedPreferencesInvoker()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMPreferenceManager;->init(Lkotlin/jvm/functions/Function1;)V

    .line 90
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/jvmDumper/base/CommonConfig;->getRootFileInvoker()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->init(Lkotlin/jvm/functions/Function1;)V

    .line 92
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mOOMTrackers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/androidcrashhandler/jvmDumper/tracker/OOMTracker;

    .line 93
    invoke-virtual {v1, p1, p2}, Lcom/netease/androidcrashhandler/jvmDumper/tracker/OOMTracker;->init(Lcom/netease/androidcrashhandler/jvmDumper/base/CommonConfig;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "trace"

    const-string p2, "init OOMMonitor finish"

    .line 95
    invoke-static {p1, p2}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic init(Lcom/netease/androidcrashhandler/jvmDumper/base/CommonConfig;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p2, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;

    invoke-virtual {p0, p1, p2}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->init(Lcom/netease/androidcrashhandler/jvmDumper/base/CommonConfig;Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;)V

    return-void
.end method

.method public final isAnalysisHprof()Z
    .locals 1

    .line 414
    sget-boolean v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mIsAnalysisHprof:Z

    return v0
.end method

.method public isAppForeground(Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 531
    :cond_0
    sget-object p1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mForegroundPendingRunnables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 533
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isAppForeground foreground, run pending runnables size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mForegroundPendingRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "trace"

    invoke-static {v0, p1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 537
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mForegroundPendingRunnables:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 538
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mForegroundPendingRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    .line 541
    new-instance v2, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$isAppForeground$1;

    invoke-direct {v2, p1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$isAppForeground$1;-><init>(Ljava/util/List;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/netease/androidcrashhandler/jvmDumper/base/Monitor_ThreadKt;->async$default(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public onActivityCreate(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroy(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStart(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStop(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public startLoop(ZZJ)V
    .locals 2

    .line 562
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/base/Monitor;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/Monitor;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/base/Monitor_ProcessKt;->isMainProcess()Z

    move-result v0

    const-string v1, "trace"

    if-nez v0, :cond_0

    const-string p1, "startLoop() not main process"

    .line 103
    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "startLoop()"

    .line 107
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-boolean v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mIsLoopStarted:Z

    if-eqz v0, :cond_1

    const-string p1, "startLoop() already started"

    .line 110
    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 113
    sput-boolean v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mIsLoopStarted:Z

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor;->startLoop(ZZJ)V

    .line 116
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->getLoopHandler()Landroid/os/Handler;

    move-result-object p1

    sget-object p2, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$$ExternalSyntheticLambda1;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$$ExternalSyntheticLambda1;

    const-wide/32 p3, 0xea60

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 566
    :cond_2
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorBuildConfig;->getDEBUG()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 568
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Monitor is not initialized"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopLoop()V
    .locals 2

    .line 580
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/base/Monitor;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/Monitor;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/base/Monitor_ProcessKt;->isMainProcess()Z

    move-result v0

    const-string v1, "trace"

    if-nez v0, :cond_0

    const-string v0, "startLoop() not main process"

    .line 129
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 133
    :cond_0
    invoke-super {p0}, Lcom/netease/androidcrashhandler/jvmDumper/base/loop/LoopMonitor;->stopLoop()V

    const-string v0, "stopLoop()"

    .line 135
    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 137
    sput-boolean v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor;->mIsLoopStarted:Z

    return-void

    .line 584
    :cond_1
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorBuildConfig;->getDEBUG()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 586
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Monitor is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final triggerAnalysisFromZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerAnalysisFromZip hprof="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " crashDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {v1, v0}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1;

    invoke-direct {v0, p2, p3, p1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitor$triggerAnalysisFromZip$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-wide/16 p1, 0x0

    const/4 p3, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Lcom/netease/androidcrashhandler/jvmDumper/base/Monitor_ThreadKt;->async$default(JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method
