.class public Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryReceiver.java"


# instance fields
.field private mBatteryChangeListener:Lcom/netease/unisdk/gmbridge/receiver/IBatteryChangeListener;


# direct methods
.method public constructor <init>(Lcom/netease/unisdk/gmbridge/receiver/IBatteryChangeListener;)V
    .locals 0
    .param p1, "batteryChangeListener"    # Lcom/netease/unisdk/gmbridge/receiver/IBatteryChangeListener;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;->mBatteryChangeListener:Lcom/netease/unisdk/gmbridge/receiver/IBatteryChangeListener;

    .line 19
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 22
    if-nez p2, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 26
    new-instance v0, Lcom/netease/unisdk/gmbridge/device/BatteryInfo;

    invoke-direct {v0}, Lcom/netease/unisdk/gmbridge/device/BatteryInfo;-><init>()V

    .line 27
    .local v0, "batteryInfo":Lcom/netease/unisdk/gmbridge/device/BatteryInfo;
    const-string v5, "level"

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 28
    .local v2, "level":I
    const-string v5, "scal"

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 29
    .local v3, "scal":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v6, v2, 0x64

    div-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/netease/unisdk/gmbridge/device/BatteryInfo;->batteryLevel:Ljava/lang/String;

    .line 31
    const-string v5, "status"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 32
    .local v4, "status":I
    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 34
    .local v1, "isCharging":Z
    :cond_3
    if-eqz v1, :cond_4

    const-string v5, "charging"

    :goto_1
    iput-object v5, v0, Lcom/netease/unisdk/gmbridge/device/BatteryInfo;->batteryStatus:Ljava/lang/String;

    .line 36
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;->mBatteryChangeListener:Lcom/netease/unisdk/gmbridge/receiver/IBatteryChangeListener;

    invoke-interface {v5, v0}, Lcom/netease/unisdk/gmbridge/receiver/IBatteryChangeListener;->onBatteryChanged(Lcom/netease/unisdk/gmbridge/device/BatteryInfo;)V

    goto :goto_0

    .line 34
    :cond_4
    const-string v5, "not charging"

    goto :goto_1
.end method
