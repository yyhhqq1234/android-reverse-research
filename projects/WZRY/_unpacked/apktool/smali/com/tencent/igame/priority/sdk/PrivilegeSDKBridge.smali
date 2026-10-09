.class public Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static a:Lcom/tencent/igame/priority/sdk/IGamePriority;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Lcom/tencent/igame/priority/sdk/IGamePriority;
    .locals 1

    sget-object v0, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/igame/priority/sdk/IGamePriority;)Lcom/tencent/igame/priority/sdk/IGamePriority;
    .locals 0

    sput-object p0, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    return-object p0
.end method

.method public static askPriority()V
    .locals 2

    sget-object v0, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/igame/priority/sdk/h;

    invoke-direct {v1}, Lcom/tencent/igame/priority/sdk/h;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static clearData()V
    .locals 2

    sget-object v0, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/igame/priority/sdk/i;

    invoke-direct {v1}, Lcom/tencent/igame/priority/sdk/i;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static getSDKEdition()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/tencent/igame/priority/sdk/IGamePriority;->getSDKEdition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/igame/priority/sdk/d;

    invoke-direct {v1}, Lcom/tencent/igame/priority/sdk/d;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static logAppInfo(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/igame/priority/sdk/k;

    invoke-direct {v1, p0}, Lcom/tencent/igame/priority/sdk/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/igame/priority/sdk/g/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static setDebuggable(Z)V
    .locals 2

    sget-object v0, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/igame/priority/sdk/j;

    invoke-direct {v1, p0}, Lcom/tencent/igame/priority/sdk/j;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static setListener(Lcom/tencent/igame/priority/sdk/IGamePriorityListener;)V
    .locals 2

    sget-object v0, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/igame/priority/sdk/f;

    invoke-direct {v1, p0}, Lcom/tencent/igame/priority/sdk/f;-><init>(Lcom/tencent/igame/priority/sdk/IGamePriorityListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static setProgressListener(Lcom/tencent/igame/priority/sdk/PriorityProgressListener;)V
    .locals 2

    sget-object v0, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/igame/priority/sdk/g;

    invoke-direct {v1, p0}, Lcom/tencent/igame/priority/sdk/g;-><init>(Lcom/tencent/igame/priority/sdk/PriorityProgressListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static setUserId(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/tencent/igame/priority/sdk/PrivilegeSDKBridge;->a:Lcom/tencent/igame/priority/sdk/IGamePriority;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/igame/priority/sdk/e;

    invoke-direct {v1, p0, p1}, Lcom/tencent/igame/priority/sdk/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
