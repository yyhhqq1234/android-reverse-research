.class public final Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
.super Ljava/lang/Object;
.source "OOMMonitorConfig.kt"

# interfaces
.implements Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorConfig$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorConfig$Builder<",
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\"\u0018\u0000 72\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00017B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001a\u001a\u00020\u0002H\u0016J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0005J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0005J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0008J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\nJ\u000e\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0005J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0005J\u000e\u0010\'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0008J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0008J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u0011J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0013J\u000e\u0010/\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u0005J\u000e\u00101\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0016J\u000e\u00103\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u0005J\u000e\u00105\u001a\u00020\u00002\u0006\u00106\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;",
        "Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorConfig$Builder;",
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;",
        "()V",
        "mAnalysisMaxTimesPerVersion",
        "",
        "mAnalysisPeriodPerVersion",
        "mDeviceMemoryThreshold",
        "",
        "mEnableHprofDumpAnalysis",
        "",
        "mFdThreshold",
        "mForceDumpJavaHeapDeltaThreshold",
        "mForceDumpJavaHeapMaxThreshold",
        "mHeapThreshold",
        "Ljava/lang/Float;",
        "mHprofUploader",
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;",
        "mLoopInterval",
        "",
        "mMaxOverThresholdCount",
        "mReportUploader",
        "Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;",
        "mThreadThreshold",
        "Ljava/lang/Integer;",
        "mVssSizeThreshold",
        "build",
        "setAnalysisMaxTimesPerVersion",
        "analysisMaxTimesPerVersion",
        "setAnalysisPeriodPerVersion",
        "analysisPeriodPerVersion",
        "setDeviceMemoryThreshold",
        "deviceMemoryThreshold",
        "setEnableHprofDumpAnalysis",
        "enableHprofDumpAnalysis",
        "setFdThreshold",
        "fdThreshold",
        "setForceDumpJavaHeapDeltaThreshold",
        "forceDumpJavaHeapDeltaThreshold",
        "setForceDumpJavaHeapMaxThreshold",
        "forceDumpJavaHeapMaxThreshold",
        "setHeapThreshold",
        "heapThreshold",
        "setHprofUploader",
        "hprofUploader",
        "setLoopInterval",
        "loopInterval",
        "setMaxOverThresholdCount",
        "maxOverThresholdCount",
        "setReportUploader",
        "reportUploader",
        "setThreadThreshold",
        "threadThreshold",
        "setVssSizeThreshold",
        "vssSizeThreshold",
        "Companion",
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
.field public static final Companion:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;

.field private static final DEFAULT_HEAP_THRESHOLD$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_THREAD_THRESHOLD$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnalysisMaxTimesPerVersion:I

.field private mAnalysisPeriodPerVersion:I

.field private mDeviceMemoryThreshold:F

.field private mEnableHprofDumpAnalysis:Z

.field private mFdThreshold:I

.field private mForceDumpJavaHeapDeltaThreshold:I

.field private mForceDumpJavaHeapMaxThreshold:F

.field private mHeapThreshold:Ljava/lang/Float;

.field private mHprofUploader:Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;

.field private mLoopInterval:J

.field private mMaxOverThresholdCount:I

.field private mReportUploader:Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;

.field private mThreadThreshold:Ljava/lang/Integer;

.field private mVssSizeThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->Companion:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;

    .line 50
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion$DEFAULT_HEAP_THRESHOLD$2;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion$DEFAULT_HEAP_THRESHOLD$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->DEFAULT_HEAP_THRESHOLD$delegate:Lkotlin/Lazy;

    .line 59
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion$DEFAULT_THREAD_THRESHOLD$2;->INSTANCE:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion$DEFAULT_THREAD_THRESHOLD$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->DEFAULT_THREAD_THRESHOLD$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 68
    iput v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mAnalysisMaxTimesPerVersion:I

    const v0, 0x4d3f6400

    .line 69
    iput v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mAnalysisPeriodPerVersion:I

    const v0, 0x37b1d0

    .line 72
    iput v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mVssSizeThreshold:I

    const/16 v0, 0x3e8

    .line 73
    iput v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mFdThreshold:I

    const v0, 0x3d4ccccd    # 0.05f

    .line 75
    iput v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mDeviceMemoryThreshold:F

    const v0, 0x3f666666    # 0.9f

    .line 76
    iput v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mForceDumpJavaHeapMaxThreshold:F

    const v0, 0x55730

    .line 77
    iput v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mForceDumpJavaHeapDeltaThreshold:I

    const/4 v0, 0x3

    .line 78
    iput v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mMaxOverThresholdCount:I

    const-wide/16 v0, 0x3a98

    .line 79
    iput-wide v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mLoopInterval:J

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mEnableHprofDumpAnalysis:Z

    return-void
.end method

.method public static final synthetic access$getDEFAULT_HEAP_THRESHOLD$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 47
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->DEFAULT_HEAP_THRESHOLD$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_THREAD_THRESHOLD$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 47
    sget-object v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->DEFAULT_THREAD_THRESHOLD$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;
    .locals 17

    move-object/from16 v0, p0

    .line 150
    iget v2, v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mAnalysisMaxTimesPerVersion:I

    .line 151
    iget v3, v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mAnalysisPeriodPerVersion:I

    .line 152
    iget v8, v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mMaxOverThresholdCount:I

    .line 153
    iget-object v1, v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mHeapThreshold:Ljava/lang/Float;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->Companion:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;->access$getDEFAULT_HEAP_THRESHOLD(Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;)F

    move-result v1

    :goto_0
    move v4, v1

    .line 154
    iget v5, v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mFdThreshold:I

    .line 155
    iget-object v1, v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mThreadThreshold:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->Companion:Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;->access$getDEFAULT_THREAD_THRESHOLD(Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder$Companion;)I

    move-result v1

    :goto_1
    move v6, v1

    .line 156
    iget v7, v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mDeviceMemoryThreshold:F

    .line 157
    iget-wide v11, v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mLoopInterval:J

    .line 158
    iget-boolean v13, v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mEnableHprofDumpAnalysis:Z

    .line 160
    iget v9, v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mForceDumpJavaHeapMaxThreshold:F

    .line 161
    iget v10, v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mForceDumpJavaHeapDeltaThreshold:I

    .line 163
    iget-object v14, v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mHprofUploader:Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;

    .line 164
    iget-object v15, v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mReportUploader:Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;

    .line 149
    new-instance v16, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;-><init>(IIFIIFIFIJZLcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;)V

    return-object v16
.end method

.method public bridge synthetic build()Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorConfig;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->build()Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig;

    move-result-object v0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/base/MonitorConfig;

    return-object v0
.end method

.method public final setAnalysisMaxTimesPerVersion(I)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
    .locals 1

    .line 87
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    .line 88
    iput p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mAnalysisMaxTimesPerVersion:I

    return-object p0
.end method

.method public final setAnalysisPeriodPerVersion(I)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
    .locals 1

    .line 91
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    .line 92
    iput p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mAnalysisPeriodPerVersion:I

    return-object p0
.end method

.method public final setDeviceMemoryThreshold(F)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
    .locals 1

    .line 129
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    .line 130
    iput p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mDeviceMemoryThreshold:F

    return-object p0
.end method

.method public final setEnableHprofDumpAnalysis(Z)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
    .locals 1

    .line 125
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    .line 126
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mEnableHprofDumpAnalysis:Z

    return-object p0
.end method

.method public final setFdThreshold(I)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
    .locals 1

    .line 109
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    .line 110
    iput p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mFdThreshold:I

    return-object p0
.end method

.method public final setForceDumpJavaHeapDeltaThreshold(I)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
    .locals 1

    .line 133
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    .line 134
    iput p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mForceDumpJavaHeapDeltaThreshold:I

    return-object p0
.end method

.method public final setForceDumpJavaHeapMaxThreshold(F)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
    .locals 1

    .line 137
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    .line 138
    iput p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mForceDumpJavaHeapMaxThreshold:F

    return-object p0
.end method

.method public final setHeapThreshold(F)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
    .locals 1

    .line 98
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    .line 99
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mHeapThreshold:Ljava/lang/Float;

    return-object p0
.end method

.method public final setHprofUploader(Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
    .locals 1

    .line 141
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    .line 142
    iput-object p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mHprofUploader:Lcom/netease/androidcrashhandler/jvmDumper/OOMHprofUploader;

    return-object p0
.end method

.method public final setLoopInterval(J)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
    .locals 1

    .line 121
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    .line 122
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mLoopInterval:J

    return-object p0
.end method

.method public final setMaxOverThresholdCount(I)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
    .locals 1

    .line 117
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    .line 118
    iput p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mMaxOverThresholdCount:I

    return-object p0
.end method

.method public final setReportUploader(Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
    .locals 1

    .line 145
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    .line 146
    iput-object p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mReportUploader:Lcom/netease/androidcrashhandler/jvmDumper/OOMReportUploader;

    return-object p0
.end method

.method public final setThreadThreshold(I)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
    .locals 1

    .line 113
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mThreadThreshold:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setVssSizeThreshold(I)Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;
    .locals 1

    .line 105
    move-object v0, p0

    check-cast v0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;

    .line 106
    iput p1, p0, Lcom/netease/androidcrashhandler/jvmDumper/OOMMonitorConfig$Builder;->mVssSizeThreshold:I

    return-object p0
.end method
