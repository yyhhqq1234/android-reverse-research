.class Lcom/netease/dwrg/HeadsetModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Client.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 99
    const-string p1, "state"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 100
    const-string p2, "Headset"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 110
    const-string p1, "I have no idea what the headset state is"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_0
    const-string p1, "Headset is plugged"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {v0}, Lcom/netease/neox/NativeInterface;->NativeOnHeadset(I)V

    goto :goto_0

    .line 102
    :cond_1
    const-string p1, "Headset is unplugged"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 103
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnHeadset(I)V

    :cond_2
    :goto_0
    return-void
.end method
