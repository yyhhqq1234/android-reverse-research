.class public Lcom/oppo/oiface/OifaceManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoManager"

.field private static mOppoManager:Lcom/oppo/oiface/OifaceManager; = null

.field private static mService:Lcom/oppo/oiface/IOIfaceService; = null

.field private static final oppoSdkVersion:Ljava/lang/String; = "2.0"


# instance fields
.field private mCallbacks:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    sput-object v0, Lcom/oppo/oiface/OifaceManager;->mOppoManager:Lcom/oppo/oiface/OifaceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "oiface"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/oiface/IOIfaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/oiface/IOIfaceService;

    move-result-object v0

    sput-object v0, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    sget-object v0, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    new-instance v1, Lcom/oppo/oiface/OifaceManager$1;

    invoke-direct {v1, p0}, Lcom/oppo/oiface/OifaceManager$1;-><init>(Lcom/oppo/oiface/OifaceManager;)V

    invoke-interface {v0, v1}, Lcom/oppo/oiface/IOIfaceService;->onSystemNotify(Lcom/oppo/oiface/IOIfaceNotifier;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OppoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOIfaceService onSystemNotify err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "OppoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOIfaceService onSystemNotify error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oppo/oiface/OifaceManager;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/oppo/oiface/OifaceManager;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static getInstance()Lcom/oppo/oiface/OifaceManager;
    .locals 2

    sget-object v0, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    if-nez v0, :cond_1

    const-class v1, Lcom/oppo/oiface/OifaceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oppo/oiface/OifaceManager;

    invoke-direct {v0}, Lcom/oppo/oiface/OifaceManager;-><init>()V

    sput-object v0, Lcom/oppo/oiface/OifaceManager;->mOppoManager:Lcom/oppo/oiface/OifaceManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/oppo/oiface/OifaceManager;->mOppoManager:Lcom/oppo/oiface/OifaceManager;

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
.method public applyHardwareResource(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    invoke-interface {v0, p1}, Lcom/oppo/oiface/IOIfaceService;->applyHardwareResource(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OppoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOIfaceService currentPackage err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "OppoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current package error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getOifaceversion()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    invoke-interface {v2}, Lcom/oppo/oiface/IOIfaceService;->getOifaceversion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OppoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOIfaceService getOifaceversion err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v0, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "OppoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current package error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemStatus(Lcom/oppo/oiface/CallBack;)V
    .locals 1

    sget-object v0, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oppo/oiface/OifaceManager;->mCallbacks:Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    invoke-interface {v0}, Lcom/oppo/oiface/IOIfaceService;->onAppRegister()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateGameInfo(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    invoke-interface {v0, p1}, Lcom/oppo/oiface/IOIfaceService;->updateGameInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OppoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOIfaceService currentPackage err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/oppo/oiface/OifaceManager;->mService:Lcom/oppo/oiface/IOIfaceService;

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "OppoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current package error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
