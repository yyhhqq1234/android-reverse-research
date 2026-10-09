.class public Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;
.super Ljava/lang/Object;
.source "MSDKLifecycleManager.java"


# static fields
.field private static instance:Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;


# instance fields
.field private Paused:I

.field private Resumed:I

.field private Stopped:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Resumed:I

    .line 19
    iput v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Paused:I

    .line 20
    iput v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Stopped:I

    .line 22
    return-void
.end method

.method private getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 143
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 145
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .end local v1    # "field":Ljava/lang/reflect/Field;
    .local v2, "field":Ljava/lang/reflect/Field;
    move-object v3, v1

    .line 156
    :goto_1
    return-object v3

    .line 149
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    .line 145
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_0
    const/4 v3, 0x0

    move-object v2, v1

    .end local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    goto :goto_1
.end method

.method public static getInstance()Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->instance:Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->instance:Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;

    invoke-direct {v0}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;-><init>()V

    sput-object v0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->instance:Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->instance:Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private replaceInstrumentation(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 110
    new-instance v4, Lcom/tencent/msdk/lifecycle/MSDKInstrumentation;

    invoke-direct {v4}, Lcom/tencent/msdk/lifecycle/MSDKInstrumentation;-><init>()V

    .line 111
    .local v4, "mInstrumentation":Lcom/tencent/msdk/lifecycle/MSDKInstrumentation;
    const-string v6, "mInstrumentation"

    invoke-direct {p0, p1, v6, v4}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    :try_start_0
    const-string v6, "android.app.ActivityThread"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    .local v0, "activityThreadClass":Ljava/lang/Class;
    const-string v6, "currentActivityThread"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    .line 118
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 120
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 122
    .local v1, "currentActivityThread":Ljava/lang/Object;
    const-string v6, "mInstrumentation"

    .line 123
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 124
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 126
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "activityThreadClass":Ljava/lang/Class;
    .end local v1    # "currentActivityThread":Ljava/lang/Object;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    const-string v6, "Lifecycle replaceInstrumentation has exception"

    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 172
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 176
    :try_start_0
    invoke-virtual {v1, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 37
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/tencent/msdk/lifecycle/MSDKLifecycleCallbacks;

    invoke-direct {v1}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleCallbacks;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 39
    const-string v0, "Lifecycle first registerActivityLifecycleCallbacks"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v0, "Lifecycle has registerActivityLifecycleCallbacks"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->replaceInstrumentation(Landroid/app/Activity;)V

    .line 47
    const-string v0, "Lifecycle first replaceInstrumentation"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    const-string v0, "Lifecycle has replaceInstrumentation"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPausedAdd(Z)V
    .locals 4
    .param p1, "isadd"    # Z

    .prologue
    .line 74
    if-nez p1, :cond_0

    iget v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Paused:I

    if-gtz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LifeCycle_OnPaused_error sdk version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LifeCycle_OnPaused_error"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Paused:I

    .line 81
    :cond_0
    if-eqz p1, :cond_1

    .line 82
    iget v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Paused:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Paused:I

    .line 86
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LifeCycle_OnPaused:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Paused:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 88
    return-void

    .line 84
    :cond_1
    iget v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Paused:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Paused:I

    goto :goto_0
.end method

.method public onResumeAdd(Z)V
    .locals 4
    .param p1, "isadd"    # Z

    .prologue
    .line 57
    if-nez p1, :cond_0

    iget v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Resumed:I

    if-gtz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LifeCycle_OnResume_error sdk version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LifeCycle_OnResume_error"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Resumed:I

    .line 64
    :cond_0
    if-eqz p1, :cond_1

    .line 65
    iget v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Resumed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Resumed:I

    .line 69
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LifeCycle_OnResume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Resumed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 71
    return-void

    .line 67
    :cond_1
    iget v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Resumed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Resumed:I

    goto :goto_0
.end method

.method public onStoppedAdd(Z)V
    .locals 4
    .param p1, "isadd"    # Z

    .prologue
    .line 91
    if-nez p1, :cond_0

    iget v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Stopped:I

    if-gtz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LifeCycle_OnStopped_error sdk version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "LifeCycle_OnStopped_error"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Stopped:I

    .line 98
    :cond_0
    if-eqz p1, :cond_1

    .line 99
    iget v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Stopped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Stopped:I

    .line 103
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LifeCycle_OnStopped:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Stopped:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 105
    return-void

    .line 101
    :cond_1
    iget v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Stopped:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/msdk/lifecycle/MSDKLifecycleManager;->Stopped:I

    goto :goto_0
.end method
