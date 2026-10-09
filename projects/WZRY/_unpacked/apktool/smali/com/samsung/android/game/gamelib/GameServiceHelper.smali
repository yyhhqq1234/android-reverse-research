.class public Lcom/samsung/android/game/gamelib/GameServiceHelper;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "GameServiceHelper"


# instance fields
.field private mBindListener:Lcom/samsung/android/game/gamelib/GameServiceHelper$BindListener;

.field private mContext:Landroid/content/Context;

.field private mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

.field private mListener:Lcom/samsung/android/game/gamelib/GameServiceHelper$Listener;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    iput-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mListener:Lcom/samsung/android/game/gamelib/GameServiceHelper$Listener;

    iput-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mBindListener:Lcom/samsung/android/game/gamelib/GameServiceHelper$BindListener;

    new-instance v0, Lcom/samsung/android/game/gamelib/GameServiceHelper$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gamelib/GameServiceHelper$2;-><init>(Lcom/samsung/android/game/gamelib/GameServiceHelper;)V

    iput-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gamelib/GameServiceHelper;)Lcom/samsung/android/game/gamelib/GameServiceHelper$Listener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mListener:Lcom/samsung/android/game/gamelib/GameServiceHelper$Listener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/game/gamelib/GameServiceHelper;Lcom/samsung/android/game/tencentsdk/ISceneSdkService;)Lcom/samsung/android/game/tencentsdk/ISceneSdkService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gamelib/GameServiceHelper;)Lcom/samsung/android/game/gamelib/GameServiceHelper$BindListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mBindListener:Lcom/samsung/android/game/gamelib/GameServiceHelper$BindListener;

    return-object v0
.end method


# virtual methods
.method public applyHardwareResource(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    if-nez v1, :cond_0

    const-string v1, "GameServiceHelper"

    const-string v2, "game service is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    invoke-interface {v1, p1}, Lcom/samsung/android/game/tencentsdk/ISceneSdkService;->applyHardwareResource(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public applyThreadGuarantee(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    if-nez v1, :cond_0

    const-string v1, "GameServiceHelper"

    const-string v2, "game service is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    invoke-interface {v1, p1}, Lcom/samsung/android/game/tencentsdk/ISceneSdkService;->applyThreadGuarantee(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public bind(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mContext:Landroid/content/Context;

    const-string v0, "com.enhance.gameservice"

    const-string v1, "com.samsung.android.graphics.optimizingservice"

    iget-object v1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "com.samsung.android.graphics.optimizingservice"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v0, "com.samsung.android.graphics.optimizingservice"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v1, "GameServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "targetPkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.tencentsdk.SceneSdkService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    const-string v1, "GameServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService. ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v1

    const-string v1, "GameServiceHelper"

    const-string v2, "New package doesn\'t exist."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVersion()F
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    if-nez v1, :cond_0

    const-string v1, "GameServiceHelper"

    const-string v2, "game service is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    invoke-interface {v1}, Lcom/samsung/android/game/tencentsdk/ISceneSdkService;->getVersion()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public init()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    if-nez v1, :cond_0

    const-string v1, "GameServiceHelper"

    const-string v2, "game service is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    invoke-interface {v1}, Lcom/samsung/android/game/tencentsdk/ISceneSdkService;->initSceneSdk()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerBindListener(Lcom/samsung/android/game/gamelib/GameServiceHelper$BindListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mBindListener:Lcom/samsung/android/game/gamelib/GameServiceHelper$BindListener;

    return-void
.end method

.method public registerListener(Lcom/samsung/android/game/gamelib/GameServiceHelper$Listener;)Z
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mListener:Lcom/samsung/android/game/gamelib/GameServiceHelper$Listener;

    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mListener:Lcom/samsung/android/game/gamelib/GameServiceHelper$Listener;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/game/tencentsdk/ISceneSdkService;->setSceneSdkListener(Lcom/samsung/android/game/tencentsdk/ISceneSdkListener;)Z
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
    new-instance v0, Lcom/samsung/android/game/gamelib/GameServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gamelib/GameServiceHelper$1;-><init>(Lcom/samsung/android/game/gamelib/GameServiceHelper;)V

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    invoke-interface {v1, v0}, Lcom/samsung/android/game/tencentsdk/ISceneSdkService;->setSceneSdkListener(Lcom/samsung/android/game/tencentsdk/ISceneSdkListener;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public unbind()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GameServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbind can\'t be called. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateGameInfo(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    if-nez v1, :cond_0

    const-string v1, "GameServiceHelper"

    const-string v2, "game service is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper;->mGameServiceBinder:Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    invoke-interface {v1, p1}, Lcom/samsung/android/game/tencentsdk/ISceneSdkService;->updateGameInfo(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
