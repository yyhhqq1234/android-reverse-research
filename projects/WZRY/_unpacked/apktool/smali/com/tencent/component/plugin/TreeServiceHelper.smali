.class public Lcom/tencent/component/plugin/TreeServiceHelper;
.super Ljava/lang/Object;
.source "TreeServiceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TreeServiceHelper"

.field private static final mSetForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final mStartForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final mStopForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private isForeground:Z

.field private mContentResId:I

.field private mContext:Landroid/app/Service;

.field private mHasInit:Z

.field private mIconResId:I

.field private mNM:Landroid/app/NotificationManager;

.field private mServiceClazz:Ljava/lang/Class;

.field private mSetForeground:Ljava/lang/reflect/Method;

.field private mSetForegroundArgs:[Ljava/lang/Object;

.field private mStartForeground:Ljava/lang/reflect/Method;

.field private mStartForegroundArgs:[Ljava/lang/Object;

.field private mStopForeground:Ljava/lang/reflect/Method;

.field private mStopForegroundArgs:[Ljava/lang/Object;

.field private mTitleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStartForegroundSignature:[Ljava/lang/Class;

    .line 19
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStopForegroundSignature:[Ljava/lang/Class;

    .line 20
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/component/plugin/TreeServiceHelper;->mSetForegroundSignature:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;IIILjava/lang/Class;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Service;
    .param p2, "iconResId"    # I
    .param p3, "titleResId"    # I
    .param p4, "contentResId"    # I
    .param p5, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->isForeground:Z

    .line 27
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mSetForegroundArgs:[Ljava/lang/Object;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStartForegroundArgs:[Ljava/lang/Object;

    .line 29
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStopForegroundArgs:[Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mContext:Landroid/app/Service;

    .line 42
    iput p2, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mIconResId:I

    .line 43
    iput p3, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mTitleResId:I

    .line 44
    iput p4, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mContentResId:I

    .line 45
    iput-object p5, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mServiceClazz:Ljava/lang/Class;

    .line 47
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mNM:Landroid/app/NotificationManager;

    .line 48
    return-void
.end method

.method private getContentResId()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mContentResId:I

    if-gtz v0, :cond_0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mContext:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 118
    :cond_0
    iget v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mContentResId:I

    goto :goto_0
.end method

.method private getIconResId()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mIconResId:I

    if-gtz v0, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mContext:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return v0

    .line 95
    :catch_0
    move-exception v0

    .line 98
    :cond_0
    iget v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mIconResId:I

    goto :goto_0
.end method

.method private getTitleResId()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mTitleResId:I

    if-gtz v0, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mContext:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return v0

    .line 105
    :catch_0
    move-exception v0

    .line 108
    :cond_0
    iget v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mTitleResId:I

    goto :goto_0
.end method

.method private declared-synchronized init(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mHasInit:Z

    if-nez v6, :cond_1

    .line 52
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mHasInit:Z

    .line 53
    invoke-direct {p0}, Lcom/tencent/component/plugin/TreeServiceHelper;->getIconResId()I

    move-result v3

    .line 54
    .local v3, "iconResId":I
    invoke-direct {p0}, Lcom/tencent/component/plugin/TreeServiceHelper;->getTitleResId()I

    move-result v5

    .line 55
    .local v5, "titleResId":I
    invoke-direct {p0}, Lcom/tencent/component/plugin/TreeServiceHelper;->getTitleResId()I

    move-result v1

    .line 56
    .local v1, "contentResId":I
    if-lez v3, :cond_0

    if-lez v5, :cond_0

    if-gtz v1, :cond_2

    .line 57
    :cond_0
    const-string v6, "TreeServiceHelper"

    const-string v7, "invalid resource id , ignore init request..."

    invoke-static {v6, v7}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v1    # "contentResId":I
    .end local v3    # "iconResId":I
    .end local v5    # "titleResId":I
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 61
    .restart local v1    # "contentResId":I
    .restart local v3    # "iconResId":I
    .restart local v5    # "titleResId":I
    :cond_2
    :try_start_1
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 62
    iget-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/tencent/component/plugin/TreeServiceHelper;->getIconResId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 64
    iget-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mContext:Landroid/app/Service;

    invoke-virtual {v6}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0}, Lcom/tencent/component/plugin/TreeServiceHelper;->getTitleResId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mContext:Landroid/app/Service;

    invoke-virtual {v6}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0}, Lcom/tencent/component/plugin/TreeServiceHelper;->getContentResId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "content":Ljava/lang/String;
    iget-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 67
    iget-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 68
    iget-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mServiceClazz:Ljava/lang/Class;

    invoke-direct {v8, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v9, 0x0

    invoke-static {p1, v7, v8, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 70
    iget-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 71
    iget-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    iget-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mServiceClazz:Ljava/lang/Class;

    const-string v7, "startForeground"

    sget-object v8, Lcom/tencent/component/plugin/TreeServiceHelper;->mStartForegroundSignature:[Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStartForeground:Ljava/lang/reflect/Method;

    .line 75
    iget-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mServiceClazz:Ljava/lang/Class;

    const-string v7, "stopForeground"

    sget-object v8, Lcom/tencent/component/plugin/TreeServiceHelper;->mStopForegroundSignature:[Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStopForeground:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    :try_start_3
    const-string v6, "TreeServiceHelper"

    const-string v7, "no suchmethod exception"

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStopForeground:Ljava/lang/reflect/Method;

    iput-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStartForeground:Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    :try_start_4
    iget-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mServiceClazz:Ljava/lang/Class;

    const-string v7, "setForeground"

    sget-object v8, Lcom/tencent/component/plugin/TreeServiceHelper;->mSetForegroundSignature:[Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mSetForeground:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 84
    :catch_1
    move-exception v2

    .line 85
    :try_start_5
    const-string v6, "TreeServiceHelper"

    const-string v7, "no suchmethod exception2"

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mSetForeground:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 51
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "contentResId":I
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "iconResId":I
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "titleResId":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mContext:Landroid/app/Service;

    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "TreeServiceHelper"

    const-string v2, "Unable to invoke method"

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "TreeServiceHelper"

    const-string v2, "Unable to invoke method"

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startForegroundCompat(ILandroid/app/Notification;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStartForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStartForegroundArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 150
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStartForegroundArgs:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 151
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStartForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStartForegroundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/tencent/component/plugin/TreeServiceHelper;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mSetForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mSetForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 158
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mSetForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mSetForegroundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/tencent/component/plugin/TreeServiceHelper;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private stopForegroundCompat(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStopForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStopForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 168
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStopForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mStopForegroundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/tencent/component/plugin/TreeServiceHelper;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mSetForeground:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 176
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mSetForegroundArgs:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 177
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mSetForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mSetForegroundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/tencent/component/plugin/TreeServiceHelper;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public setBackground()V
    .locals 2

    .prologue
    .line 136
    iget-boolean v1, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->isForeground:Z

    if-eqz v1, :cond_0

    .line 137
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->isForeground:Z

    .line 138
    invoke-direct {p0}, Lcom/tencent/component/plugin/TreeServiceHelper;->getContentResId()I

    move-result v0

    .line 139
    .local v0, "contentResId":I
    if-lez v0, :cond_0

    .line 140
    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/TreeServiceHelper;->stopForegroundCompat(I)V

    .line 143
    .end local v0    # "contentResId":I
    :cond_0
    return-void
.end method

.method public setForeground()V
    .locals 2

    .prologue
    .line 123
    iget-boolean v1, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->isForeground:Z

    if-nez v1, :cond_0

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->isForeground:Z

    .line 125
    iget-object v1, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->mContext:Landroid/app/Service;

    invoke-direct {p0, v1}, Lcom/tencent/component/plugin/TreeServiceHelper;->init(Landroid/content/Context;)V

    .line 126
    iget-object v1, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/tencent/component/plugin/TreeServiceHelper;->getContentResId()I

    move-result v0

    .line 128
    .local v0, "contentResId":I
    if-lez v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/tencent/component/plugin/TreeServiceHelper;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/component/plugin/TreeServiceHelper;->startForegroundCompat(ILandroid/app/Notification;)V

    .line 133
    .end local v0    # "contentResId":I
    :cond_0
    return-void
.end method
