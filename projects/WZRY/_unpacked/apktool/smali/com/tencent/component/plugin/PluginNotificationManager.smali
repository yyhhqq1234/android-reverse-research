.class public Lcom/tencent/component/plugin/PluginNotificationManager;
.super Ljava/lang/Object;
.source "PluginNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginNotificationManager"

.field private static sMaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/component/plugin/PluginNotificationManager;",
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
    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/PluginNotificationManager;->sMaps:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "pluginProxyReceiver"    # Ljava/lang/Class;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginNotificationManager;->pluginProxyReceiver:Ljava/lang/Class;

    .line 34
    return-void
.end method

.method private static buildNotification(Landroid/content/Context;Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;)Landroid/app/Notification;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginNotification"    # Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;

    .prologue
    const/4 v7, -0x1

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, "baseContext":Landroid/content/Context;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v2, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 80
    .local v3, "icon":I
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 81
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 82
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 84
    :cond_0
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->contentTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->contentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 87
    :cond_1
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->contentText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 88
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->contentText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 90
    :cond_2
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->subText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 91
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->subText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 93
    :cond_3
    iget v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->progressMax:I

    if-lez v4, :cond_4

    iget v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->progress:I

    if-ltz v4, :cond_4

    .line 94
    iget v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->progressMax:I

    iget v5, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->progress:I

    iget-boolean v6, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->progressIndeterminate:Z

    invoke-virtual {v2, v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 96
    :cond_4
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->largeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5

    .line 97
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->largeIcon:Landroid/graphics/drawable/Drawable;

    .line 99
    :cond_5
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->largeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 100
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->largeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v4}, Lcom/tencent/component/plugin/PluginNotificationManager;->createBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_6

    .line 102
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 105
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    iget-boolean v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->ongoing:Z

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 106
    iget-boolean v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->onlyAlertOnce:Z

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 107
    iget-boolean v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->autoCancel:Z

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 109
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->vibratePattern:[J

    if-eqz v4, :cond_7

    .line 110
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->vibratePattern:[J

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 112
    :cond_7
    iget v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->number:I

    if-eq v4, v7, :cond_8

    .line 113
    iget v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->number:I

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 115
    :cond_8
    iget v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->priority:I

    if-eq v4, v7, :cond_9

    .line 116
    iget v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->priority:I

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 118
    :cond_9
    iget-wide v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->when:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_a

    .line 119
    iget-wide v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->when:J

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 121
    :cond_a
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_b

    .line 122
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 125
    :cond_b
    iget-boolean v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->useChronometer:Z

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 126
    iget-boolean v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->setLigths:Z

    if-eqz v4, :cond_c

    .line 127
    iget v4, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->ledARGB:I

    iget v5, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->ledOnMS:I

    iget v6, p1, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->ledOffMS:I

    invoke-virtual {v2, v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 130
    :cond_c
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    return-object v4
.end method

.method private static createBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 134
    if-nez p0, :cond_0

    .line 156
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v5

    .line 137
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    .line 138
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    instance-of v6, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_1

    .line 139
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_2

    :goto_2
    move-object v5, v0

    goto :goto_0

    .line 147
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 148
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 149
    .local v3, "height":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 151
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 152
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "height":I
    .end local v4    # "width":I
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/Throwable;
    const-string v6, "PluginNotificationManager"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Throwable;
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object v0, v5

    .line 156
    goto :goto_2
.end method

.method public static getInstance(Lcom/tencent/component/plugin/Plugin;)Lcom/tencent/component/plugin/PluginNotificationManager;
    .locals 7
    .param p0, "plugin"    # Lcom/tencent/component/plugin/Plugin;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 38
    if-nez p0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-object v1

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/component/plugin/Plugin;->getPluginManager()Lcom/tencent/component/plugin/PluginManager;

    move-result-object v5

    iget-object v3, v5, Lcom/tencent/component/plugin/PluginManager;->pluginPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    .line 42
    .local v3, "pluginPlatformConfig":Lcom/tencent/component/plugin/PluginPlatformConfig;
    if-eqz v3, :cond_0

    .line 45
    iget-object v4, v3, Lcom/tencent/component/plugin/PluginPlatformConfig;->pluginProxyReceiver:Ljava/lang/Class;

    .line 46
    .local v4, "pluginProxyReceiver":Ljava/lang/Class;
    if-nez v4, :cond_2

    .line 47
    const-class v4, Lcom/tencent/component/plugin/PluginProxyReceiver;

    .line 49
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "key":Ljava/lang/String;
    sget-object v5, Lcom/tencent/component/plugin/PluginNotificationManager;->sMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/PluginNotificationManager;

    .line 51
    .local v1, "manager":Lcom/tencent/component/plugin/PluginNotificationManager;
    if-nez v1, :cond_0

    .line 52
    const-class v6, Lcom/tencent/component/plugin/PluginNotificationManager;

    monitor-enter v6

    .line 53
    if-nez v1, :cond_3

    .line 54
    :try_start_0
    new-instance v2, Lcom/tencent/component/plugin/PluginNotificationManager;

    invoke-direct {v2, v4}, Lcom/tencent/component/plugin/PluginNotificationManager;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v1    # "manager":Lcom/tencent/component/plugin/PluginNotificationManager;
    .local v2, "manager":Lcom/tencent/component/plugin/PluginNotificationManager;
    :try_start_1
    sget-object v5, Lcom/tencent/component/plugin/PluginNotificationManager;->sMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 57
    .end local v2    # "manager":Lcom/tencent/component/plugin/PluginNotificationManager;
    .restart local v1    # "manager":Lcom/tencent/component/plugin/PluginNotificationManager;
    :cond_3
    :try_start_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .end local v1    # "manager":Lcom/tencent/component/plugin/PluginNotificationManager;
    .restart local v2    # "manager":Lcom/tencent/component/plugin/PluginNotificationManager;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "manager":Lcom/tencent/component/plugin/PluginNotificationManager;
    .restart local v1    # "manager":Lcom/tencent/component/plugin/PluginNotificationManager;
    goto :goto_1
.end method

.method private showNotificationInner(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "pluginId"    # Ljava/lang/String;
    .param p4, "notificationId"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 208
    .local v0, "id":I
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 209
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v1, v0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 210
    return-void
.end method


# virtual methods
.method public cancelNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationId"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 65
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    instance-of v4, p1, Lcom/tencent/component/plugin/PluginContextWrapper;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 66
    check-cast v4, Lcom/tencent/component/plugin/PluginContextWrapper;

    invoke-virtual {v4}, Lcom/tencent/component/plugin/PluginContextWrapper;->getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v3

    .line 67
    .local v3, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, "baseContext":Landroid/content/Context;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 70
    .local v1, "id":I
    const-string v4, "notification"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 71
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 74
    .end local v0    # "baseContext":Landroid/content/Context;
    .end local v1    # "id":I
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    .end local v3    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_0
    return-void
.end method

.method public shoNotification(Landroid/content/Context;Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginNotification"    # Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;
    .param p3, "notificationId"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x191
    .end annotation

    .prologue
    .line 164
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/component/plugin/PluginNotificationManager;->shoNotification(Landroid/content/Context;Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 165
    return-void
.end method

.method public shoNotification(Landroid/content/Context;Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginNotification"    # Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;
    .param p3, "notificationId"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "handleByPlugin"    # Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 178
    if-eqz p1, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p2, :cond_3

    instance-of v5, p1, Lcom/tencent/component/plugin/PluginContextWrapper;

    if-eqz v5, :cond_3

    move-object v5, p1

    .line 179
    check-cast v5, Lcom/tencent/component/plugin/PluginContextWrapper;

    invoke-virtual {v5}, Lcom/tencent/component/plugin/PluginContextWrapper;->getPlugin()Lcom/tencent/component/plugin/Plugin;

    move-result-object v3

    .line 180
    .local v3, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v3, :cond_3

    .line 181
    invoke-virtual {v3}, Lcom/tencent/component/plugin/Plugin;->getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v4

    .line 182
    .local v4, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 183
    .local v0, "baseContext":Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/tencent/component/plugin/PluginNotificationManager;->buildNotification(Landroid/content/Context;Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;)Landroid/app/Notification;

    move-result-object v2

    .line 184
    .local v2, "notification":Landroid/app/Notification;
    if-eqz p5, :cond_2

    .line 185
    if-nez p4, :cond_0

    .line 186
    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "args":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 188
    .restart local p4    # "args":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 189
    const-string v5, "_plugin_platform_config_byte"

    invoke-virtual {v3}, Lcom/tencent/component/plugin/Plugin;->getPluginManager()Lcom/tencent/component/plugin/PluginManager;

    move-result-object v6

    iget-object v6, v6, Lcom/tencent/component/plugin/PluginManager;->pluginPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    invoke-static {v6}, Lcom/tencent/component/utils/ParcelUtil;->writeParcelable(Landroid/os/Parcelable;)[B

    move-result-object v6

    invoke-virtual {p4, v5, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 190
    const-string v5, "_plugin_reciever_plugin_id"

    iget-object v6, v4, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {p4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v5, p0, Lcom/tencent/component/plugin/PluginNotificationManager;->pluginProxyReceiver:Ljava/lang/Class;

    if-nez v5, :cond_1

    .line 192
    const-class v5, Lcom/tencent/component/plugin/PluginProxyReceiver;

    iput-object v5, p0, Lcom/tencent/component/plugin/PluginNotificationManager;->pluginProxyReceiver:Ljava/lang/Class;

    .line 194
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/tencent/component/plugin/PluginNotificationManager;->pluginProxyReceiver:Ljava/lang/Class;

    invoke-direct {v1, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 196
    const-string v5, "com.tencent.component.plugin.notification"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {v1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 199
    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    invoke-static {v0, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 201
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v5, v4, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v5, p3}, Lcom/tencent/component/plugin/PluginNotificationManager;->showNotificationInner(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v0    # "baseContext":Landroid/content/Context;
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v3    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v4    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_3
    return-void
.end method
