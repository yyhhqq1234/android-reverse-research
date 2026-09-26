.class public Lcom/netease/dwrg/PushNotificationReceiver;
.super Lcom/netease/pushclient/PushClientReceiver;
.source "PushNotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/netease/pushclient/PushClientReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetNewDevId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "devId"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p2}, Lcom/netease/neox/NativeInterface;->NativeOnRegisterPushService(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public onReceiveNotifyMessage(Landroid/content/Context;Lcom/netease/push/utils/NotifyMessage;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifyMessage"    # Lcom/netease/push/utils/NotifyMessage;

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/netease/pushclient/PushClientReceiver;->onReceiveNotifyMessage(Landroid/content/Context;Lcom/netease/push/utils/NotifyMessage;)V

    .line 28
    return-void
.end method
