.class Lcom/samsung/android/gamesdk/GameSDKManager$1;
.super Lcom/samsung/android/gamesdk/IGameSDKListener$Stub;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gamesdk/GameSDKManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/gamesdk/GameSDKManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gamesdk/GameSDKManager$1;->this$0:Lcom/samsung/android/gamesdk/GameSDKManager;

    invoke-direct {p0}, Lcom/samsung/android/gamesdk/IGameSDKListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHighTempWarning(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager$1;->this$0:Lcom/samsung/android/gamesdk/GameSDKManager;

    invoke-static {v0}, Lcom/samsung/android/gamesdk/GameSDKManager;->access$000(Lcom/samsung/android/gamesdk/GameSDKManager;)Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/gamesdk/GameSDKManager$Listener;->onHighTempWarning(I)V

    return-void
.end method

.method public onReleasedByTimeout()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKManager$1;->this$0:Lcom/samsung/android/gamesdk/GameSDKManager;

    invoke-static {v0}, Lcom/samsung/android/gamesdk/GameSDKManager;->access$000(Lcom/samsung/android/gamesdk/GameSDKManager;)Lcom/samsung/android/gamesdk/GameSDKManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/gamesdk/GameSDKManager$Listener;->onReleasedByTimeout()V

    return-void
.end method
