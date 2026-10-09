.class public Lcom/samsung/android/gamesdk/GameSDKManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "GameSDKManager"


# instance fields
.field private mListener:Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

.field private mService:Lcom/samsung/android/gamesdk/IGameSDKService;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    iput-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mListener:Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

    const-string v0, "gamesdk"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gamesdk/IGameSDKService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/gamesdk/GameSDKManager;)Lcom/samsung/android/gamesdk/GameSDKManager$Listener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mListener:Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

    return-object v0
.end method

.method public static isAvailable()Z
    .locals 1

    const-string v0, "gamesdk"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getTempLevel()I
    .locals 3

    const/16 v0, -0x3e7

    iget-object v1, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    if-nez v1, :cond_0

    const-string v1, "GameSDKManager"

    const-string v2, "gamesdk system service is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    invoke-interface {v1}, Lcom/samsung/android/gamesdk/IGameSDKService;->getTempLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    if-nez v0, :cond_0

    const-string v0, "GameSDKManager"

    const-string v1, "gamesdk system service is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->getVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, "0"

    goto :goto_0
.end method

.method public initialize()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    if-nez v1, :cond_0

    const-string v1, "GameSDKManager"

    const-string v2, "gamesdk system service is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    invoke-interface {v1}, Lcom/samsung/android/gamesdk/IGameSDKService;->initGameSDK()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLevelWithScene(Ljava/lang/String;II)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    if-nez v1, :cond_0

    const-string v1, "GameSDKManager"

    const-string v2, "gamesdk system service is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/gamesdk/IGameSDKService;->setLevelWithScene(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setListener(Lcom/samsung/android/gamesdk/GameSDKManager$Listener;)Z
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mListener:Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mListener:Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/gamesdk/IGameSDKService;->setGameSDKListener(Lcom/samsung/android/gamesdk/IGameSDKListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/gamesdk/GameSDKManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gamesdk/GameSDKManager$1;-><init>(Lcom/samsung/android/gamesdk/GameSDKManager;)V

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/gamesdk/GameSDKManager;->mService:Lcom/samsung/android/gamesdk/IGameSDKService;

    invoke-interface {v1, v0}, Lcom/samsung/android/gamesdk/IGameSDKService;->setGameSDKListener(Lcom/samsung/android/gamesdk/IGameSDKListener;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
