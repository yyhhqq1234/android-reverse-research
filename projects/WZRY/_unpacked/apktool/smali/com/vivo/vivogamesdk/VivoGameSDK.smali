.class public Lcom/vivo/vivogamesdk/VivoGameSDK;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "VivoGameSDK"

.field private static volatile instance:Lcom/vivo/vivogamesdk/VivoGameSDK;


# instance fields
.field private SDKVersion:Ljava/lang/String;

.field private VivoGameSDKUtilClass:Ljava/lang/Class;

.field private getFreqLimitLevelMethod:Ljava/lang/reflect/Method;

.field private getInstanceMethod:Ljava/lang/reflect/Method;

.field private getPhoneTemperatureMethod:Ljava/lang/reflect/Method;

.field private getSDKVersionMethod:Ljava/lang/reflect/Method;

.field private isRegisterGame:Z

.field private isSDKSupport:Z

.field private mCallBack:Lcom/vivo/vivogamesdk/GameEngineCallBack;

.field private final mNoteObserver:Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;

.field private final mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private mVivoGameSDKUtilClass:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.log.ctrl"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/vivogamesdk/VivoGameSDK;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->SDKVersion:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->isRegisterGame:Z

    iput-boolean v3, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->isSDKSupport:Z

    new-instance v0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;

    invoke-direct {v0, p0, v1}, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;-><init>(Lcom/vivo/vivogamesdk/VivoGameSDK;Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;)V

    iput-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->mNoteObserver:Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->VivoGameSDKUtilClass:Ljava/lang/Class;

    iput-object v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->mVivoGameSDKUtilClass:Ljava/lang/Object;

    iput-object v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->getInstanceMethod:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->getPhoneTemperatureMethod:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->getFreqLimitLevelMethod:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->getSDKVersionMethod:Ljava/lang/reflect/Method;

    :try_start_0
    const-string v0, "com.vivo.vivogamesdk.VivoSDKUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->VivoGameSDKUtilClass:Ljava/lang/Class;

    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->VivoGameSDKUtilClass:Ljava/lang/Class;

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->getInstanceMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->getInstanceMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->VivoGameSDKUtilClass:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->mVivoGameSDKUtilClass:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->isSDKSupport:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->isSDKSupport:Z

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->VivoGameSDKUtilClass:Ljava/lang/Class;

    const-string v1, "getFreqLimitLevel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->getFreqLimitLevelMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->VivoGameSDKUtilClass:Ljava/lang/Class;

    const-string v1, "getPhoneTemperature"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->getPhoneTemperatureMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->VivoGameSDKUtilClass:Ljava/lang/Class;

    const-string v1, "getSDKVersion"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->getSDKVersionMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->getSDKVersionMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->mVivoGameSDKUtilClass:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->SDKVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iput-boolean v3, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->isSDKSupport:Z

    sget-boolean v1, Lcom/vivo/vivogamesdk/VivoGameSDK;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "VivoGameSDK"

    const-string v2, "get VivoSDKUtil class error, SDK is not support!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/vivo/vivogamesdk/VivoGameSDK;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "VivoGameSDK"

    const-string v2, "SDK not support some method."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private SDKVersionCheck(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    const-string v2, "V\\d\\.\\d\\.\\d"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v1, Lcom/vivo/vivogamesdk/VivoGameSDK;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VivoGameSDK"

    const-string v2, "apiVersion\'s format is error, pls like V1.1.0 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->SDKVersion:Ljava/lang/String;

    const-string v3, "V|\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v2, "V|\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v3

    move v2, v1

    :goto_1
    if-lt v2, v5, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    aget-object v6, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v7, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v6, v7, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    aget-object v6, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v7, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-lt v6, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/vivo/vivogamesdk/VivoGameSDK;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->isRegisterGame:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vivo/vivogamesdk/VivoGameSDK;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->getFreqLimitLevelMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vivo/vivogamesdk/VivoGameSDK;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->mVivoGameSDKUtilClass:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3()Z
    .locals 1

    sget-boolean v0, Lcom/vivo/vivogamesdk/VivoGameSDK;->DEBUG:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vivo/vivogamesdk/VivoGameSDK;)Lcom/vivo/vivogamesdk/GameEngineCallBack;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->mCallBack:Lcom/vivo/vivogamesdk/GameEngineCallBack;

    return-object v0
.end method

.method public static getInstance()Lcom/vivo/vivogamesdk/VivoGameSDK;
    .locals 2

    sget-object v0, Lcom/vivo/vivogamesdk/VivoGameSDK;->instance:Lcom/vivo/vivogamesdk/VivoGameSDK;

    if-nez v0, :cond_1

    const-class v1, Lcom/vivo/vivogamesdk/VivoGameSDK;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vivo/vivogamesdk/VivoGameSDK;->instance:Lcom/vivo/vivogamesdk/VivoGameSDK;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vivo/vivogamesdk/VivoGameSDK;

    invoke-direct {v0}, Lcom/vivo/vivogamesdk/VivoGameSDK;-><init>()V

    sput-object v0, Lcom/vivo/vivogamesdk/VivoGameSDK;->instance:Lcom/vivo/vivogamesdk/VivoGameSDK;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/vivo/vivogamesdk/VivoGameSDK;->instance:Lcom/vivo/vivogamesdk/VivoGameSDK;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getPhoneTemperature()I
    .locals 4

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->isRegisterGame:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/vivo/vivogamesdk/VivoGameSDK;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VivoGameSDK"

    const-string v2, "please register vivogamesdk first!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->getPhoneTemperatureMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->getPhoneTemperatureMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->mVivoGameSDKUtilClass:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public isAvailable(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->isSDKSupport:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    sget-boolean v1, Lcom/vivo/vivogamesdk/VivoGameSDK;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VivoGameSDK"

    const-string v2, "api Version is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->SDKVersion:Ljava/lang/String;

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/vivo/vivogamesdk/VivoGameSDK;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VivoGameSDK"

    const-string v2, "getSDKVersion fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/vivo/vivogamesdk/VivoGameSDK;->SDKVersionCheck(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized registerGame(Ljava/lang/String;Lcom/vivo/vivogamesdk/GameEngineCallBack;)Z
    .locals 3

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->isRegisterGame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/vivo/vivogamesdk/VivoGameSDK;->isAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->isRegisterGame:Z

    iput-object p2, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->mCallBack:Lcom/vivo/vivogamesdk/GameEngineCallBack;

    iget-object v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->mNoteObserver:Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized unregisterGame()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->isRegisterGame:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->isRegisterGame:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK;->mCallBack:Lcom/vivo/vivogamesdk/GameEngineCallBack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
