.class public final Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;
.super Ljava/lang/Object;
.source "OOMFileManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOOMFileManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OOMFileManager.kt\ncom/netease/androidcrashhandler/jvmDumper/OOMFileManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,138:1\n1#2:139\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0006H\u0007J\u0010\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010$\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020#H\u0007J\u001a\u0010&\u001a\u0004\u0018\u00010\u00062\u0006\u0010 \u001a\u00020\u00062\u0006\u0010\'\u001a\u00020(H\u0007J\u0008\u0010)\u001a\u00020\u0004H\u0007J\u001c\u0010*\u001a\u00020+2\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u0012H\u0007J\u0012\u0010*\u001a\u00020+2\u0008\u0010-\u001a\u0004\u0018\u00010\u0004H\u0007J\u0008\u0010.\u001a\u00020/H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R!\u0010\u0005\u001a\u00020\u00068FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\tR!\u0010\u000c\u001a\u00020\u00068FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u000b\u0012\u0004\u0008\r\u0010\u0002\u001a\u0004\u0008\u000e\u0010\tR\u000e\u0010\u0010\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R!\u0010\u0014\u001a\u00020\u00068FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u000b\u0012\u0004\u0008\u0015\u0010\u0002\u001a\u0004\u0008\u0016\u0010\tR\u001b\u0010\u0018\u001a\u00020\u00068FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u000b\u001a\u0004\u0008\u0019\u0010\tR!\u0010\u001b\u001a\u00020\u00068FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u000b\u0012\u0004\u0008\u001c\u0010\u0002\u001a\u0004\u0008\u001d\u0010\t\u00a8\u00060"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;",
        "",
        "()V",
        "TIME_FORMAT",
        "",
        "fdDumpDir",
        "Ljava/io/File;",
        "getFdDumpDir$annotations",
        "getFdDumpDir",
        "()Ljava/io/File;",
        "fdDumpDir$delegate",
        "Lkotlin/Lazy;",
        "hprofAnalysisDir",
        "getHprofAnalysisDir$annotations",
        "getHprofAnalysisDir",
        "hprofAnalysisDir$delegate",
        "mPrefix",
        "mRootDirInvoker",
        "Lkotlin/Function1;",
        "mRootPath",
        "manualDumpDir",
        "getManualDumpDir$annotations",
        "getManualDumpDir",
        "manualDumpDir$delegate",
        "rootDir",
        "getRootDir",
        "rootDir$delegate",
        "threadDumpDir",
        "getThreadDumpDir$annotations",
        "getThreadDumpDir",
        "threadDumpDir$delegate",
        "createDumpFile",
        "dumpDir",
        "createHprofAnalysisFile",
        "date",
        "Ljava/util/Date;",
        "createHprofOOMDumpFile",
        "createJsonAnalysisFile",
        "findDumpFileByPid",
        "pid",
        "",
        "getPrefix",
        "init",
        "",
        "rootDirInvoker",
        "rootPath",
        "isSpaceEnough",
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


# static fields
.field public static final INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;

.field private static final TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd_HH-mm-ss_SSS"

.field private static final fdDumpDir$delegate:Lkotlin/Lazy;

.field private static final hprofAnalysisDir$delegate:Lkotlin/Lazy;

.field private static mPrefix:Ljava/lang/String;

.field private static mRootDirInvoker:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static mRootPath:Ljava/lang/String;

.field private static final manualDumpDir$delegate:Lkotlin/Lazy;

.field private static final rootDir$delegate:Lkotlin/Lazy;

.field private static final threadDumpDir$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;

    .line 37
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$rootDir$2;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$rootDir$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->rootDir$delegate:Lkotlin/Lazy;

    .line 45
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$hprofAnalysisDir$2;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$hprofAnalysisDir$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->hprofAnalysisDir$delegate:Lkotlin/Lazy;

    .line 48
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$manualDumpDir$2;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$manualDumpDir$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->manualDumpDir$delegate:Lkotlin/Lazy;

    .line 51
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$threadDumpDir$2;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$threadDumpDir$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->threadDumpDir$delegate:Lkotlin/Lazy;

    .line 54
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$fdDumpDir$2;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager$fdDumpDir$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->fdDumpDir$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMRootDirInvoker$p()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 29
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->mRootDirInvoker:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getMRootPath$p()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->mRootPath:Ljava/lang/String;

    return-object v0
.end method

.method public static final createDumpFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 96
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_dump.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public static final createHprofAnalysisFile(Ljava/util/Date;)Ljava/io/File;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd_HH-mm-ss_SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->mPrefix:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "mPrefix"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".hprof"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public static final createHprofOOMDumpFile(Ljava/util/Date;)Ljava/io/File;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 88
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd_HH-mm-ss_SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getManualDumpDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->mPrefix:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "mPrefix"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".hprof"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getManualDumpDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public static final createJsonAnalysisFile(Ljava/util/Date;)Ljava/io/File;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd_HH-mm-ss_SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->mPrefix:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "mPrefix"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".json"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public static final findDumpFileByPid(Ljava/io/File;J)Ljava/io/File;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 111
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "_dump.txt"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p2, 0x0

    array-length v0, p0

    :goto_0
    if-ge p2, v0, :cond_2

    aget-object v2, p0, p2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static final getFdDumpDir()Ljava/io/File;
    .locals 1

    .line 54
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->fdDumpDir$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static synthetic getFdDumpDir$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getHprofAnalysisDir()Ljava/io/File;
    .locals 1

    .line 45
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->hprofAnalysisDir$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static synthetic getHprofAnalysisDir$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getManualDumpDir()Ljava/io/File;
    .locals 1

    .line 48
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->manualDumpDir$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static synthetic getManualDumpDir$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getPrefix()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 136
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->mPrefix:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "mPrefix"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static final getThreadDumpDir()Ljava/io/File;
    .locals 1

    .line 51
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->threadDumpDir$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static synthetic getThreadDumpDir$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final init(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_0

    .line 65
    sput-object p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->mRootPath:Ljava/lang/String;

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorBuildConfig;->getVERSION_NAME()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->mPrefix:Ljava/lang/String;

    return-void
.end method

.method public static final init(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 58
    sput-object p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->mRootDirInvoker:Lkotlin/jvm/functions/Function1;

    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appdump_oom_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->mPrefix:Ljava/lang/String;

    return-void
.end method

.method public static final isSpaceEnough()Z
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 122
    :try_start_0
    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 123
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->getHprofAnalysisDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 125
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v1

    mul-long v2, v2, v4

    long-to-double v1, v2

    const-wide v3, 0x4133333333333333L    # 1258291.2

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method


# virtual methods
.method public final getRootDir()Ljava/io/File;
    .locals 1

    .line 37
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMFileManager;->rootDir$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method
