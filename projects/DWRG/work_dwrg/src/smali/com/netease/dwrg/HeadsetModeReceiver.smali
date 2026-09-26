.class Lcom/netease/dwrg/HeadsetModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Client.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 86
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 96
    const-string v1, "Headset"

    const-string v2, "I have no idea what the headset state is"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v0    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 88
    .restart local v0    # "state":I
    :pswitch_0
    const-string v1, "Headset"

    const-string v2, "Headset is unplugged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/netease/neox/NativeInterface;->NativeOnHeadset(I)V

    goto :goto_0

    .line 92
    :pswitch_1
    const-string v1, "Headset"

    const-string v2, "Headset is plugged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/netease/neox/NativeInterface;->NativeOnHeadset(I)V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
