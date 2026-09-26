.class Lcom/netease/dwrg/RingerModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Client.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 75
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    invoke-static {v1}, Lcom/netease/neox/NativeInterface;->NativeOnRingerMode(I)V

    .line 78
    :cond_0
    return-void
.end method
