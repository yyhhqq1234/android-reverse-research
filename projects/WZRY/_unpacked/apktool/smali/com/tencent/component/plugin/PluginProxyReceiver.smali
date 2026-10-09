.class public Lcom/tencent/component/plugin/PluginProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PluginProxyReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.tencent.component.plugin.receiver"

.field public static final ALARM_ACTION:Ljava/lang/String; = "com.tencent.component.plugin.alarm"

.field private static final MAX_RETRY_TIME:I = 0x3

.field public static final NOTIFICATION_ACTION:Ljava/lang/String; = "com.tencent.component.plugin.notification"

.field public static final PARAMS_ALARM_ID:Ljava/lang/String; = "_plugin_reciever_alarm_id"

.field public static final PARAMS_PLATFORM_CONFIG:Ljava/lang/String; = "_plugin_platform_config_byte"

.field public static final PARAMS_PLUGIN_ID:Ljava/lang/String; = "_plugin_reciever_plugin_id"

.field public static final PARAMS_RETRY_COUNT:Ljava/lang/String; = "_plugin_reciever_retry_count"

.field private static final TAG:Ljava/lang/String; = "PluginProxyReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private notifyPluginAlarm(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p1, "pluginManager"    # Lcom/tencent/component/plugin/PluginManager;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    new-instance v0, Lcom/tencent/component/plugin/PluginProxyReceiver$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/tencent/component/plugin/PluginProxyReceiver$1;-><init>(Lcom/tencent/component/plugin/PluginProxyReceiver;Lcom/tencent/component/plugin/PluginManager;Landroid/content/Intent;)V

    invoke-virtual {p1, p2, v0}, Lcom/tencent/component/plugin/PluginManager;->getPluginInfo(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;)V

    .line 124
    :cond_0
    return-void
.end method

.method private notifyPluginNotification(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p1, "pluginManager"    # Lcom/tencent/component/plugin/PluginManager;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    new-instance v0, Lcom/tencent/component/plugin/PluginProxyReceiver$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/tencent/component/plugin/PluginProxyReceiver$2;-><init>(Lcom/tencent/component/plugin/PluginProxyReceiver;Lcom/tencent/component/plugin/PluginManager;Landroid/content/Intent;)V

    invoke-virtual {p1, p2, v0}, Lcom/tencent/component/plugin/PluginManager;->getPluginInfo(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;)V

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    :try_start_0
    const-class v1, Lcom/tencent/component/plugin/PluginProxyReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 34
    const-string v1, "com.tencent.component.plugin.notification"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/tencent/component/plugin/PluginProxyReceiver;->onReceiveNotification(Landroid/content/Context;Landroid/content/Intent;)V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string v1, "com.tencent.component.plugin.alarm"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/tencent/component/plugin/PluginProxyReceiver;->onReceiveAlarm(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PluginProxyReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onReceiveAlarm(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 46
    .local v7, "extras":Landroid/os/Bundle;
    if-nez v7, :cond_0

    .line 80
    :goto_0
    return-void

    .line 49
    :cond_0
    const-class v0, Lcom/tencent/component/plugin/PluginProxyReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 50
    const-string v0, "_plugin_reciever_plugin_id"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "pluginId":Ljava/lang/String;
    const-string v0, "_plugin_reciever_alarm_id"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "alarmId":Ljava/lang/String;
    const-string v0, "_plugin_platform_config_byte"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 53
    .local v9, "pluginPlatformConfigData":[B
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/tencent/component/utils/ParcelUtil;->readParcelable([BLjava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/tencent/component/plugin/PluginPlatformConfig;

    .line 54
    .local v2, "pluginPlatformConfig":Lcom/tencent/component/plugin/PluginPlatformConfig;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    .line 55
    invoke-static {p1, v2}, Lcom/tencent/component/plugin/PluginManager;->getInstance(Landroid/content/Context;Lcom/tencent/component/plugin/PluginPlatformConfig;)Lcom/tencent/component/plugin/PluginManager;

    move-result-object v8

    .line 56
    .local v8, "pluginManager":Lcom/tencent/component/plugin/PluginManager;
    invoke-virtual {v8}, Lcom/tencent/component/plugin/PluginManager;->isPlatformInitialFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-direct {p0, v8, v3, p2}, Lcom/tencent/component/plugin/PluginProxyReceiver;->notifyPluginAlarm(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    :cond_1
    const-string v0, "_plugin_reciever_retry_count"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 61
    .local v10, "retryCount":I
    const/4 v0, 0x3

    if-ge v10, v0, :cond_3

    .line 63
    :try_start_0
    invoke-static {p1}, Lcom/tencent/component/UtilitiesInitial;->init(Landroid/content/Context;)V

    .line 64
    const-string v0, "PluginProxyReceiver"

    const-string v1, "plugin not loaded,try to start qmi first."

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/tencent/component/plugin/PluginProxyReceiver;->startPlatform(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-static {v8}, Lcom/tencent/component/plugin/PluginAlarmManager;->getInstance(Lcom/tencent/component/plugin/PluginManager;)Lcom/tencent/component/plugin/PluginAlarmManager;

    move-result-object v0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/component/plugin/PluginAlarmManager;->delayAlarm(Landroid/content/Context;Lcom/tencent/component/plugin/PluginPlatformConfig;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v6

    .line 71
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "PluginProxyReceiver"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 68
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v0, "PluginProxyReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ingnore alarm action by start qmi failed.[pluginId:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|platformId:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v8, Lcom/tencent/component/plugin/PluginManager;->pluginPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    iget-object v5, v5, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|alarmId:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 74
    :cond_3
    const-string v0, "PluginProxyReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ingnore alarm action by reach max retry count:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".[pluginId:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|platformId:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v8, Lcom/tencent/component/plugin/PluginManager;->pluginPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    iget-object v5, v5, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|alarmId:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    .end local v8    # "pluginManager":Lcom/tencent/component/plugin/PluginManager;
    .end local v10    # "retryCount":I
    :cond_4
    const-string v0, "PluginProxyReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ingnore alarm action[pluginId:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|alarmId:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onReceiveNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 92
    const-string v5, "_plugin_reciever_plugin_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "pluginId":Ljava/lang/String;
    const-string v5, "_plugin_platform_config_byte"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 94
    .local v4, "pluginPlatformConfigData":[B
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/ParcelUtil;->readParcelable([BLjava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/tencent/component/plugin/PluginPlatformConfig;

    .line 95
    .local v3, "pluginPlatformConfig":Lcom/tencent/component/plugin/PluginPlatformConfig;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_2

    .line 96
    invoke-static {p1, v3}, Lcom/tencent/component/plugin/PluginManager;->getInstance(Landroid/content/Context;Lcom/tencent/component/plugin/PluginPlatformConfig;)Lcom/tencent/component/plugin/PluginManager;

    move-result-object v2

    .line 97
    .local v2, "pluginManager":Lcom/tencent/component/plugin/PluginManager;
    invoke-virtual {v2}, Lcom/tencent/component/plugin/PluginManager;->isPlatformInitialFinish()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    invoke-direct {p0, v2, v1, p2}, Lcom/tencent/component/plugin/PluginProxyReceiver;->notifyPluginNotification(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    :cond_1
    const-string v5, "PluginProxyReceiver"

    const-string v6, "ignore notification by plugin not loaded."

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .end local v2    # "pluginManager":Lcom/tencent/component/plugin/PluginManager;
    :cond_2
    const-string v5, "PluginProxyReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignore notification action[pluginId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startPlatform(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method
