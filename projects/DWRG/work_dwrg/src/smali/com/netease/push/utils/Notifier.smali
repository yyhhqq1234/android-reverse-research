.class public Lcom/netease/push/utils/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# static fields
.field private static final GROUP_KEY_NGPUSH:Ljava/lang/String; = "group_key_ngpush"

.field private static final TAG:Ljava/lang/String; = "Notifier"

.field private static final random:Ljava/util/Random;


# instance fields
.field private context:Landroid/content/Context;

.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/netease/push/utils/Notifier;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    .line 28
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/netease/push/utils/Notifier;->notificationManager:Landroid/app/NotificationManager;

    .line 29
    return-void
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "Notifier"

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method


# virtual methods
.method public notify(Lcom/netease/push/utils/NotifyMessage;Lcom/netease/push/utils/AppInfo;)V
    .locals 8
    .param p1, "notifyMessage"    # Lcom/netease/push/utils/NotifyMessage;
    .param p2, "appInfo"    # Lcom/netease/push/utils/AppInfo;

    .prologue
    .line 32
    const-string v5, "Notifier"

    const-string v6, "notify"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v5, "Notifier"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "notifyMessage="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v5, "Notifier"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "appInfo="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    sget-object v5, Lcom/netease/push/utils/Notifier;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 39
    .local v4, "msgId":I
    iget-object v5, p0, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p2, Lcom/netease/push/utils/AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 40
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x24000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    const-string v5, "NOTIFICATION_TITLE"

    iget-object v6, p1, Lcom/netease/push/utils/NotifyMessage;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v5, "NOTIFICATION_MESSAGE"

    iget-object v6, p1, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v5, "NOTIFICATION_EXT"

    iget-object v6, p1, Lcom/netease/push/utils/NotifyMessage;->mExt:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v5, p0, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 48
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    .local v3, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget v5, p1, Lcom/netease/push/utils/NotifyMessage;->mIcon:I

    if-lez v5, :cond_4

    .line 50
    iget v5, p1, Lcom/netease/push/utils/NotifyMessage;->mIcon:I

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 54
    :goto_1
    const-string v5, "group_key_ngpush"

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 55
    iget-object v5, p1, Lcom/netease/push/utils/NotifyMessage;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 56
    iget-object v5, p1, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "defaults":I
    iget-boolean v5, p2, Lcom/netease/push/utils/AppInfo;->mbEnableSound:Z

    if-eqz v5, :cond_2

    .line 59
    or-int/lit8 v1, v1, 0x1

    .line 61
    :cond_2
    iget-boolean v5, p2, Lcom/netease/push/utils/AppInfo;->mbEnableVibrate:Z

    if-eqz v5, :cond_3

    .line 62
    or-int/lit8 v1, v1, 0x2

    .line 64
    :cond_3
    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 65
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 66
    iget-object v5, p1, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 67
    new-instance v5, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    iget-object v6, p1, Lcom/netease/push/utils/NotifyMessage;->mMsg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 68
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 70
    iget-object v5, p0, Lcom/netease/push/utils/Notifier;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 52
    .end local v1    # "defaults":I
    :cond_4
    iget-object v5, p0, Lcom/netease/push/utils/Notifier;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1
.end method
