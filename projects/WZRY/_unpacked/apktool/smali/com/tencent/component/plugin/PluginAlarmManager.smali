.class public Lcom/tencent/component/plugin/PluginAlarmManager;
.super Ljava/lang/Object;
.source "PluginAlarmManager.java"


# static fields
.field private static final DELAY_ALARM_INTERVAL:J = 0xea60L

.field private static sMaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/component/plugin/PluginAlarmManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pluginProxyReceiver:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/PluginAlarmManager;->sMaps:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "pluginProxyReceiver"    # Ljava/lang/Class;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginAlarmManager;->pluginProxyReceiver:Ljava/lang/Class;

    .line 28
    return-void
.end method

.method private buildAlarmPendingIntent(Lcom/tencent/component/plugin/PluginPlatformConfig;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "pluginPlatformConfig"    # Lcom/tencent/component/plugin/PluginPlatformConfig;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "alarmId"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "args"    # Landroid/os/Bundle;

    .prologue
    .line 139
    if-nez p5, :cond_0

    .line 140
    new-instance p5, Landroid/os/Bundle;

    .end local p5    # "args":Landroid/os/Bundle;
    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 142
    .restart local p5    # "args":Landroid/os/Bundle;
    :cond_0
    const-string v3, "_plugin_reciever_plugin_id"

    invoke-virtual {p5, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v3, "_plugin_reciever_alarm_id"

    invoke-virtual {p5, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-eqz p1, :cond_1

    .line 145
    const-string v3, "_plugin_platform_config_byte"

    invoke-static {p1}, Lcom/tencent/component/utils/ParcelUtil;->writeParcelable(Landroid/os/Parcelable;)[B

    move-result-object v4

    invoke-virtual {p5, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 148
    :cond_1
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 150
    .local v0, "baseContext":Landroid/content/Context;
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginAlarmManager;->pluginProxyReceiver:Ljava/lang/Class;

    if-nez v3, :cond_2

    .line 151
    const-class v3, Lcom/tencent/component/plugin/PluginProxyReceiver;

    iput-object v3, p0, Lcom/tencent/component/plugin/PluginAlarmManager;->pluginProxyReceiver:Ljava/lang/Class;

    .line 154
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginAlarmManager;->pluginProxyReceiver:Ljava/lang/Class;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://gamejoy/plugin/alarm/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 156
    const-string v3, "com.tencent.component.plugin.alarm"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {v1, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 158
    const-class v3, Lcom/tencent/component/plugin/PluginAlarmManager;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 160
    .local v2, "requestCode":I
    const/high16 v3, 0x10000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    return-object v3
.end method

.method private static getInstance(Landroid/content/Context;Ljava/lang/Class;)Lcom/tencent/component/plugin/PluginAlarmManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginProxyReceiver"    # Ljava/lang/Class;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    const-class p1, Lcom/tencent/component/plugin/PluginProxyReceiver;

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "key":Ljava/lang/String;
    sget-object v3, Lcom/tencent/component/plugin/PluginAlarmManager;->sMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/PluginAlarmManager;

    .line 49
    .local v1, "manager":Lcom/tencent/component/plugin/PluginAlarmManager;
    if-nez v1, :cond_2

    .line 50
    const-class v4, Lcom/tencent/component/plugin/PluginAlarmManager;

    monitor-enter v4

    .line 51
    if-nez v1, :cond_1

    .line 52
    :try_start_0
    new-instance v2, Lcom/tencent/component/plugin/PluginAlarmManager;

    invoke-direct {v2, p1}, Lcom/tencent/component/plugin/PluginAlarmManager;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .end local v1    # "manager":Lcom/tencent/component/plugin/PluginAlarmManager;
    .local v2, "manager":Lcom/tencent/component/plugin/PluginAlarmManager;
    :try_start_1
    sget-object v3, Lcom/tencent/component/plugin/PluginAlarmManager;->sMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 55
    .end local v2    # "manager":Lcom/tencent/component/plugin/PluginAlarmManager;
    .restart local v1    # "manager":Lcom/tencent/component/plugin/PluginAlarmManager;
    :cond_1
    :try_start_2
    monitor-exit v4

    .line 57
    :cond_2
    return-object v1

    .line 55
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1    # "manager":Lcom/tencent/component/plugin/PluginAlarmManager;
    .restart local v2    # "manager":Lcom/tencent/component/plugin/PluginAlarmManager;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "manager":Lcom/tencent/component/plugin/PluginAlarmManager;
    .restart local v1    # "manager":Lcom/tencent/component/plugin/PluginAlarmManager;
    goto :goto_0
.end method

.method public static getInstance(Lcom/tencent/component/plugin/Plugin;)Lcom/tencent/component/plugin/PluginAlarmManager;
    .locals 4
    .param p0, "plugin"    # Lcom/tencent/component/plugin/Plugin;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 32
    if-nez p0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-object v2

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/component/plugin/Plugin;->getPluginManager()Lcom/tencent/component/plugin/PluginManager;

    move-result-object v3

    iget-object v0, v3, Lcom/tencent/component/plugin/PluginManager;->pluginPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    .line 36
    .local v0, "pluginPlatformConfig":Lcom/tencent/component/plugin/PluginPlatformConfig;
    if-eqz v0, :cond_0

    .line 39
    iget-object v1, v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->pluginProxyReceiver:Ljava/lang/Class;

    .line 40
    .local v1, "pluginProxyReceiver":Ljava/lang/Class;
    invoke-virtual {p0}, Lcom/tencent/component/plugin/Plugin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/component/plugin/PluginAlarmManager;->getInstance(Landroid/content/Context;Ljava/lang/Class;)Lcom/tencent/component/plugin/PluginAlarmManager;

    move-result-object v2

    goto :goto_0
.end method

.method public static getInstance(Lcom/tencent/component/plugin/PluginManager;)Lcom/tencent/component/plugin/PluginAlarmManager;
    .locals 3
    .param p0, "pluginManager"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    const/4 v2, 0x0

    .line 61
    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v2

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->pluginPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    .line 65
    .local v0, "pluginPlatformConfig":Lcom/tencent/component/plugin/PluginPlatformConfig;
    if-eqz v0, :cond_0

    .line 68
    iget-object v1, v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->pluginProxyReceiver:Ljava/lang/Class;

    .line 69
    .local v1, "pluginProxyReceiver":Ljava/lang/Class;
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginManager;->getPlatformContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/component/plugin/PluginAlarmManager;->getInstance(Landroid/content/Context;Ljava/lang/Class;)Lcom/tencent/component/plugin/PluginAlarmManager;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public cancelAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alarmId"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 126
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/tencent/component/plugin/PluginContextWrapper;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 127
    check-cast v0, Lcom/tencent/component/plugin/PluginContextWrapper;

    invoke-virtual {v0}, Lcom/tencent/component/plugin/PluginContextWrapper;->getPlugin()Lcom/tencent/component/plugin/Plugin;

    move-result-object v9

    .line 128
    .local v9, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v9, :cond_0

    .line 129
    invoke-virtual {v9}, Lcom/tencent/component/plugin/Plugin;->getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v10

    .line 130
    .local v10, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 131
    .local v6, "baseContext":Landroid/content/Context;
    invoke-virtual {v9}, Lcom/tencent/component/plugin/Plugin;->getPluginManager()Lcom/tencent/component/plugin/PluginManager;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/component/plugin/PluginManager;->pluginPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    iget-object v2, v10, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/plugin/PluginAlarmManager;->buildAlarmPendingIntent(Lcom/tencent/component/plugin/PluginPlatformConfig;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 132
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    const-string v0, "alarm"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 133
    .local v7, "manager":Landroid/app/AlarmManager;
    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 136
    .end local v6    # "baseContext":Landroid/content/Context;
    .end local v7    # "manager":Landroid/app/AlarmManager;
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v9    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v10    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_0
    return-void
.end method

.method delayAlarm(Landroid/content/Context;Lcom/tencent/component/plugin/PluginPlatformConfig;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginPlatformConfig"    # Lcom/tencent/component/plugin/PluginPlatformConfig;
    .param p3, "pluginId"    # Ljava/lang/String;
    .param p4, "alarmId"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 91
    .local v5, "args":Landroid/os/Bundle;
    if-nez v5, :cond_0

    .line 92
    new-instance v5, Landroid/os/Bundle;

    .end local v5    # "args":Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 94
    .restart local v5    # "args":Landroid/os/Bundle;
    :cond_0
    const-string v0, "_plugin_reciever_retry_count"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 95
    .local v8, "retyrCount":I
    const-string v0, "_plugin_reciever_retry_count"

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object v4, p1

    .line 96
    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/plugin/PluginAlarmManager;->buildAlarmPendingIntent(Lcom/tencent/component/plugin/PluginPlatformConfig;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 97
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 98
    .local v6, "manager":Landroid/app/AlarmManager;
    const/4 v0, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v10, 0xea60

    add-long/2addr v2, v10

    invoke-virtual {v6, v0, v2, v3, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 99
    return-void
.end method

.method public setAlarm(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;JZ)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "alarmId"    # Ljava/lang/String;
    .param p4, "triggerAtMillis"    # J
    .param p6, "wakeup"    # Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 112
    if-eqz p1, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/tencent/component/plugin/PluginContextWrapper;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 113
    check-cast v2, Lcom/tencent/component/plugin/PluginContextWrapper;

    invoke-virtual {v2}, Lcom/tencent/component/plugin/PluginContextWrapper;->getPlugin()Lcom/tencent/component/plugin/Plugin;

    move-result-object v11

    .line 114
    .local v11, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v11, :cond_0

    .line 115
    invoke-virtual {v11}, Lcom/tencent/component/plugin/Plugin;->getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v12

    .line 116
    .local v12, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 117
    .local v8, "baseContext":Landroid/content/Context;
    invoke-virtual {v11}, Lcom/tencent/component/plugin/Plugin;->getPluginManager()Lcom/tencent/component/plugin/PluginManager;

    move-result-object v2

    iget-object v3, v2, Lcom/tencent/component/plugin/PluginManager;->pluginPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    iget-object v4, v12, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    move-object v2, p0

    move-object/from16 v5, p3

    move-object v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/tencent/component/plugin/PluginAlarmManager;->buildAlarmPendingIntent(Lcom/tencent/component/plugin/PluginPlatformConfig;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 118
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    .line 119
    .local v9, "manager":Landroid/app/AlarmManager;
    if-eqz p6, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-wide/from16 v0, p4

    invoke-virtual {v9, v2, v0, v1, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 122
    .end local v8    # "baseContext":Landroid/content/Context;
    .end local v9    # "manager":Landroid/app/AlarmManager;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v11    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v12    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_0
    return-void

    .line 119
    .restart local v8    # "baseContext":Landroid/content/Context;
    .restart local v9    # "manager":Landroid/app/AlarmManager;
    .restart local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v11    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .restart local v12    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setRepeatingAlarm(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;JJZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "alarmId"    # Ljava/lang/String;
    .param p4, "triggerAtMillis"    # J
    .param p6, "intervalMillis"    # J
    .param p8, "wakeup"    # Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 75
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/tencent/component/plugin/PluginContextWrapper;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 76
    check-cast v1, Lcom/tencent/component/plugin/PluginContextWrapper;

    invoke-virtual {v1}, Lcom/tencent/component/plugin/PluginContextWrapper;->getPlugin()Lcom/tencent/component/plugin/Plugin;

    move-result-object v8

    .line 77
    .local v8, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v8, :cond_0

    .line 78
    invoke-virtual {v8}, Lcom/tencent/component/plugin/Plugin;->getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v9

    .line 79
    .local v9, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 80
    .local v7, "baseContext":Landroid/content/Context;
    invoke-virtual {v8}, Lcom/tencent/component/plugin/Plugin;->getPluginManager()Lcom/tencent/component/plugin/PluginManager;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/component/plugin/PluginManager;->pluginPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    iget-object v2, v9, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/plugin/PluginAlarmManager;->buildAlarmPendingIntent(Lcom/tencent/component/plugin/PluginPlatformConfig;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 82
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {v7, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 83
    .local v0, "manager":Landroid/app/AlarmManager;
    if-eqz p8, :cond_1

    const/4 v1, 0x2

    :goto_0
    move-wide v2, p4

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 87
    .end local v0    # "manager":Landroid/app/AlarmManager;
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v7    # "baseContext":Landroid/content/Context;
    .end local v8    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v9    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_0
    return-void

    .line 83
    .restart local v0    # "manager":Landroid/app/AlarmManager;
    .restart local v6    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v7    # "baseContext":Landroid/content/Context;
    .restart local v8    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .restart local v9    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_1
    const/4 v1, 0x3

    goto :goto_0
.end method
