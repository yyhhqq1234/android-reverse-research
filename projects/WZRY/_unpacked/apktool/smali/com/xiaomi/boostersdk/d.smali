.class final Lcom/xiaomi/boostersdk/d;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "action_thermal_control_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cur_level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/xiaomi/boostersdk/c;->b()Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/boostersdk/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/boostersdk/c;->b()Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaomi/boostersdk/GameBoosterEngineCallback;->onThermalControlChanged(I)V

    :cond_0
    return-void
.end method
