.class public Lcom/tencent/msdk/api/refactor/Router;
.super Ljava/lang/Object;
.source "Router.java"


# static fields
.field private static volatile instance:Lcom/tencent/msdk/api/refactor/Router;

.field private static isLoading:Z

.field private static useCppCode:Z


# instance fields
.field private unifyMSDK:Lcom/tencent/msdk/api/refactor/MSDKInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/api/refactor/Router;->instance:Lcom/tencent/msdk/api/refactor/Router;

    .line 30
    sput-boolean v1, Lcom/tencent/msdk/api/refactor/Router;->useCppCode:Z

    .line 31
    sput-boolean v1, Lcom/tencent/msdk/api/refactor/Router;->isLoading:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/api/refactor/Router;->unifyMSDK:Lcom/tencent/msdk/api/refactor/MSDKInterface;

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/api/refactor/Router;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/tencent/msdk/api/refactor/Router;->instance:Lcom/tencent/msdk/api/refactor/Router;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lcom/tencent/msdk/api/refactor/Router;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/api/refactor/Router;->instance:Lcom/tencent/msdk/api/refactor/Router;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/tencent/msdk/api/refactor/Router;

    invoke-direct {v0}, Lcom/tencent/msdk/api/refactor/Router;-><init>()V

    sput-object v0, Lcom/tencent/msdk/api/refactor/Router;->instance:Lcom/tencent/msdk/api/refactor/Router;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/tencent/msdk/api/refactor/Router;->instance:Lcom/tencent/msdk/api/refactor/Router;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static native getRouterSwitch()Z
.end method


# virtual methods
.method public getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/msdk/api/refactor/Router;->unifyMSDK:Lcom/tencent/msdk/api/refactor/MSDKInterface;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runCppCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/tencent/msdk/api/refactor/Router;->useCppCode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 55
    :try_start_0
    const-string v3, "com.tencent.msdk.api.refactor.MSDKInterfaceImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 57
    .local v2, "unifyMSDKClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 58
    .local v1, "object":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/tencent/msdk/api/refactor/MSDKInterface;

    if-eqz v3, :cond_0

    .line 59
    check-cast v1, Lcom/tencent/msdk/api/refactor/MSDKInterface;

    .end local v1    # "object":Ljava/lang/Object;
    iput-object v1, p0, Lcom/tencent/msdk/api/refactor/Router;->unifyMSDK:Lcom/tencent/msdk/api/refactor/MSDKInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v2    # "unifyMSDKClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public loadConfig()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "loadConfig"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 70
    sget-boolean v0, Lcom/tencent/msdk/api/refactor/Router;->isLoading:Z

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getRouterSwitch()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/msdk/api/refactor/Router;->useCppCode:Z

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[loadConfig]runCppCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/msdk/api/refactor/Router;->useCppCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/msdk/api/refactor/Router;->isLoading:Z

    .line 81
    invoke-virtual {p0}, Lcom/tencent/msdk/api/refactor/Router;->init()V

    goto :goto_0
.end method

.method public runCppCode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 36
    sget-boolean v1, Lcom/tencent/msdk/api/refactor/Router;->isLoading:Z

    if-nez v1, :cond_1

    .line 37
    const-string v1, "Error : Should call WGPlatform.Initialized before use MSDK"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    sget-boolean v1, Lcom/tencent/msdk/api/refactor/Router;->useCppCode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/msdk/api/refactor/Router;->unifyMSDK:Lcom/tencent/msdk/api/refactor/MSDKInterface;

    if-eqz v1, :cond_0

    .line 42
    const/4 v0, 0x1

    goto :goto_0
.end method
