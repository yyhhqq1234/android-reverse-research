.class Lcom/samsung/android/game/gamelib/GameServiceHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gamelib/GameServiceHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper$2;->this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "GameServiceHelper"

    const-string v1, "game service connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper$2;->this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-static {p2}, Lcom/samsung/android/game/tencentsdk/ISceneSdkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/gamelib/GameServiceHelper;->access$102(Lcom/samsung/android/game/gamelib/GameServiceHelper;Lcom/samsung/android/game/tencentsdk/ISceneSdkService;)Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper$2;->this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/game/gamelib/GameServiceHelper;->access$200(Lcom/samsung/android/game/gamelib/GameServiceHelper;)Lcom/samsung/android/game/gamelib/GameServiceHelper$BindListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper$2;->this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/game/gamelib/GameServiceHelper;->access$200(Lcom/samsung/android/game/gamelib/GameServiceHelper;)Lcom/samsung/android/game/gamelib/GameServiceHelper$BindListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/game/gamelib/GameServiceHelper$BindListener;->bindCallBack()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "GameServiceHelper"

    const-string v1, "game service disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/game/gamelib/GameServiceHelper$2;->this$0:Lcom/samsung/android/game/gamelib/GameServiceHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/game/gamelib/GameServiceHelper;->access$102(Lcom/samsung/android/game/gamelib/GameServiceHelper;Lcom/samsung/android/game/tencentsdk/ISceneSdkService;)Lcom/samsung/android/game/tencentsdk/ISceneSdkService;

    return-void
.end method
