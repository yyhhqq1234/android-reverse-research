.class public Lcom/tencent/component/utils/log/LogConfig;
.super Ljava/lang/Object;
.source "LogConfig.java"


# static fields
.field public static final DataThreshold:I = 0x2000

.field private static DefFileBlockCount:I = 0x0

.field private static DefFileKeepPeriod:J = 0x0L

.field private static DefFileTraceLevel:I = 0x0

.field public static final Enabled:Z = true

.field public static final FileBlockCount:Ljava/lang/String; = "debug.file.blockcount"

.field public static final FileBlockSize:I = 0x40000

.field public static final FileKeepPeriod:Ljava/lang/String; = "debug.file.keepperiod"

.field public static final FileTraceLevel:Ljava/lang/String; = "debug.file.tracelevel"

.field public static final FileTracerEnabled:Z = true

.field public static final InfiniteTraceFile:Z = false

.field public static final LogcatTracerEnabled:Z = true

.field public static final MinSpaceRequired:J = 0x800000L

.field public static final NeedAttached:Z = false

.field public static final ShowErrorCode:Z = false

.field public static final TimeThreshold:I = 0x2710

.field private static volatile sInstance:Lcom/tencent/component/utils/log/LogConfig;


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const/16 v0, 0x18

    sput v0, Lcom/tencent/component/utils/log/LogConfig;->DefFileBlockCount:I

    .line 32
    const/16 v0, 0x3f

    sput v0, Lcom/tencent/component/utils/log/LogConfig;->DefFileTraceLevel:I

    .line 33
    const-wide/32 v0, 0x240c8400

    sput-wide v0, Lcom/tencent/component/utils/log/LogConfig;->DefFileKeepPeriod:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/tencent/component/ComponentContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "app_log_config"

    invoke-static {v0, v1}, Lcom/tencent/component/cache/sp/PreferenceUtil;->getGlobalPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/utils/log/LogConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/tencent/component/utils/log/LogConfig;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/tencent/component/utils/log/LogConfig;->sInstance:Lcom/tencent/component/utils/log/LogConfig;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lcom/tencent/component/utils/log/LogConfig;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/tencent/component/utils/log/LogConfig;->sInstance:Lcom/tencent/component/utils/log/LogConfig;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/tencent/component/utils/log/LogConfig;

    invoke-direct {v0}, Lcom/tencent/component/utils/log/LogConfig;-><init>()V

    sput-object v0, Lcom/tencent/component/utils/log/LogConfig;->sInstance:Lcom/tencent/component/utils/log/LogConfig;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lcom/tencent/component/utils/log/LogConfig;->sInstance:Lcom/tencent/component/utils/log/LogConfig;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getFileTraceLevel()I
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "debug.file.tracelevel"

    sget v2, Lcom/tencent/component/utils/log/LogConfig;->DefFileTraceLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxFolderSize()I
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "debug.file.blockcount"

    sget v2, Lcom/tencent/component/utils/log/LogConfig;->DefFileBlockCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxKeepPeriod()J
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "debug.file.keepperiod"

    sget-wide v2, Lcom/tencent/component/utils/log/LogConfig;->DefFileKeepPeriod:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setFileTraceLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 107
    move v0, p1

    .line 109
    .local v0, "traceLevel":I
    const/16 v1, 0x3f

    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 110
    :cond_0
    sget v0, Lcom/tencent/component/utils/log/LogConfig;->DefFileTraceLevel:I

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/tencent/component/utils/log/LogConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "debug.file.tracelevel"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method

.method public setMaxFolderSize(J)V
    .locals 5
    .param p1, "maxSize"    # J

    .prologue
    .line 64
    const-wide/32 v2, 0x40000

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 67
    .local v0, "blockCount":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 68
    sget v0, Lcom/tencent/component/utils/log/LogConfig;->DefFileBlockCount:I

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/tencent/component/utils/log/LogConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "debug.file.blockcount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    return-void
.end method

.method public setMaxKeepPeriod(J)V
    .locals 3
    .param p1, "maxPeriod"    # J

    .prologue
    .line 88
    const-wide/32 v0, 0x5265c00

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 89
    sget-wide p1, Lcom/tencent/component/utils/log/LogConfig;->DefFileKeepPeriod:J

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "debug.file.keepperiod"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    return-void
.end method

.method public startListen(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/component/utils/log/LogConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 56
    return-void
.end method
