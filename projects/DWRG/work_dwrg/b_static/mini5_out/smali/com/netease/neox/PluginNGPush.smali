.class public Lcom/netease/neox/PluginNGPush;
.super Lcom/netease/neox/PluginBase;
.source "PluginNGPush.java"


# instance fields
.field private m_context:Landroid/app/Activity;

.field private m_is_pushmanager_init:Z

.field private niepush_mode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/netease/neox/PluginBase;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/netease/neox/PluginNGPush;->m_context:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/netease/neox/PluginNGPush;->m_is_pushmanager_init:Z

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/netease/neox/PluginNGPush;->niepush_mode:I

    return-void
.end method

.method public static native NativeOnNotification(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method static synthetic access$000(Lcom/netease/neox/PluginNGPush;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/netease/neox/PluginNGPush;->niepush_mode:I

    return p0
.end method

.method static synthetic access$100(Lcom/netease/neox/PluginNGPush;)Landroid/app/Activity;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/netease/neox/PluginNGPush;->m_context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/neox/PluginNGPush;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/netease/neox/PluginNGPush;->m_is_pushmanager_init:Z

    return p1
.end method

.method private onPushNotification(Lcom/netease/push/utils/NotifyMessage;)V
    .locals 3

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new intent title:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessage;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessage;->getExt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/netease/neox/NXLog;->i(ILjava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/netease/neox/PluginNGPush;->m_context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/neox/ngpush/R$bool;->nxngpush_report_notification:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessage;->getNgpushJson()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 32
    const-string v1, "ngpush"

    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessage;->getNgpushJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    iget-object v1, p0, Lcom/netease/neox/PluginNGPush;->m_context:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessage;->getReqid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/netease/pushclient/PushManager;->reportNotificationOpened(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/netease/neox/PluginNGPush;->m_context:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessage;->getReqid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pushclient/PushManager;->reportNotificationOpened(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 38
    invoke-static {v0}, Lcom/netease/neox/NXLog;->logException(Ljava/lang/Exception;)V

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessage;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/push/utils/NotifyMessage;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/neox/PluginNGPush;->NativeOnNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkNotificationPermit()Z
    .locals 1

    .line 141
    invoke-static {}, Lcom/netease/pushclient/PushManager;->checkNotifySetting()Z

    move-result v0

    return v0
.end method

.method public createPushChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 9

    .line 239
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v8, p8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v8, v0

    :goto_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 241
    invoke-static/range {v1 .. v8}, Lcom/netease/pushclient/PushManager;->createPushChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    return-void
.end method

.method public enableRepeatProtect(Z)V
    .locals 0

    .line 158
    invoke-static {p1}, Lcom/netease/pushclient/PushManager;->enableRepeatProtect(Z)V

    return-void
.end method

.method public enableSound(Z)V
    .locals 0

    .line 154
    invoke-static {p1}, Lcom/netease/pushclient/PushManager;->enableSound(Z)V

    return-void
.end method

.method public enableVibrate(Z)V
    .locals 0

    .line 150
    invoke-static {p1}, Lcom/netease/pushclient/PushManager;->enableVibrate(Z)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "ngpush"

    return-object v0
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/netease/neox/PluginNGPush;->m_is_pushmanager_init:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/netease/pushclient/PushManager;->getDevId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .line 137
    invoke-static {}, Lcom/netease/pushclient/PushManager;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 179
    invoke-static {p1, p2, p3, p4}, Lcom/netease/pushclient/NativePushManager;->newAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/netease/neox/PluginNGPush;->m_context:Landroid/app/Activity;

    .line 53
    :try_start_0
    invoke-static {p1}, Lcom/netease/push/utils/NotifyMessage;->getFrom(Landroid/app/Activity;)Lcom/netease/push/utils/NotifyMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/netease/neox/PluginNGPush;->onPushNotification(Lcom/netease/push/utils/NotifyMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-static {p1}, Lcom/netease/neox/NXLog;->logException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .line 65
    :try_start_0
    invoke-static {p2}, Lcom/netease/push/utils/NotifyMessage;->getFrom(Landroid/content/Intent;)Lcom/netease/push/utils/NotifyMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    invoke-direct {p0, p1}, Lcom/netease/neox/PluginNGPush;->onPushNotification(Lcom/netease/push/utils/NotifyMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-static {p1}, Lcom/netease/neox/NXLog;->logException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 77
    invoke-static {p1, p2, p3}, Lcom/netease/pushclient/PushManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public openNotificationSetting()V
    .locals 0

    .line 146
    invoke-static {}, Lcom/netease/pushclient/PushManager;->goToNotificationSetting()V

    return-void
.end method

.method public removeAllPendingNotifications()V
    .locals 0

    .line 174
    invoke-static {}, Lcom/netease/pushclient/NativePushManager;->removeAllAlarms()Z

    return-void
.end method

.method public removePendingNotification(Ljava/lang/String;)V
    .locals 0

    .line 170
    invoke-static {p1}, Lcom/netease/pushclient/NativePushManager;->removeAlarm(Ljava/lang/String;)Z

    return-void
.end method

.method public setDayRepeat(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x7f

    .line 201
    invoke-static {p1, v0}, Lcom/netease/pushclient/NativePushManager;->setWeekRepeat(Ljava/lang/String;I)Z

    return-void
.end method

.method public setMonthRepeat(Ljava/lang/String;I)V
    .locals 0

    .line 233
    invoke-static {p2}, Lcom/netease/push/utils/PushConstants;->MONTH_DAY(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/netease/pushclient/NativePushManager;->setMonthRepeat(Ljava/lang/String;I)Z

    return-void
.end method

.method public setNiepushMode(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/netease/neox/PluginNGPush;->niepush_mode:I

    return-void
.end method

.method public setOnceInYear(Ljava/lang/String;III)V
    .locals 0

    .line 197
    invoke-static {p1, p2, p3, p4}, Lcom/netease/pushclient/NativePushManager;->setOnce(Ljava/lang/String;III)Z

    return-void
.end method

.method public setOnceLater(Ljava/lang/String;I)V
    .locals 0

    .line 193
    invoke-static {p1, p2}, Lcom/netease/pushclient/NativePushManager;->setOnceLater(Ljava/lang/String;I)Z

    return-void
.end method

.method public setRepeatProtectInterval(I)V
    .locals 0

    .line 162
    invoke-static {p1}, Lcom/netease/pushclient/PushManager;->setRepeatProtectInterval(I)V

    return-void
.end method

.method public setTime(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 189
    invoke-static {p1, p2, p3, p4, p5}, Lcom/netease/pushclient/NativePushManager;->setAlarmTime(Ljava/lang/String;IIILjava/lang/String;)Z

    return-void
.end method

.method public setWeekRepeat(Ljava/lang/String;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p2, 0x40

    goto :goto_0

    :pswitch_1
    const/16 p2, 0x20

    goto :goto_0

    :pswitch_2
    const/16 p2, 0x10

    goto :goto_0

    :pswitch_3
    const/16 p2, 0x8

    goto :goto_0

    :pswitch_4
    const/4 p2, 0x4

    goto :goto_0

    :pswitch_5
    const/4 p2, 0x2

    goto :goto_0

    :pswitch_6
    const/4 p2, 0x1

    .line 229
    :goto_0
    invoke-static {p1, p2}, Lcom/netease/pushclient/NativePushManager;->setWeekRepeat(Ljava/lang/String;I)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startNGPush()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/netease/neox/PluginNGPush;->m_context:Landroid/app/Activity;

    new-instance v1, Lcom/netease/neox/PluginNGPush$1;

    invoke-direct {v1, p0}, Lcom/netease/neox/PluginNGPush$1;-><init>(Lcom/netease/neox/PluginNGPush;)V

    invoke-static {v0, v1}, Lcom/netease/pushclient/PushManager;->init(Landroid/content/Context;Lcom/netease/pushclient/PushManager$PushManagerCallback;)V

    return-void
.end method

.method public startNotification(Ljava/lang/String;)V
    .locals 0

    .line 183
    invoke-static {p1}, Lcom/netease/pushclient/NativePushManager;->startAlarm(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 184
    const-string p1, "NativePushManager startAlarm err"

    invoke-static {p1}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "subscribe: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lcom/netease/neox/NXLog;->i(ILjava/lang/String;)V

    .line 122
    invoke-static {p4, p2, p1, p3, p5}, Lcom/netease/pushclient/PushManager;->subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
