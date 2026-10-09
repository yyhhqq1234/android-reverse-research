.class public Lcom/tencent/bugly/agent/GameAgent;
.super Ljava/lang/Object;
.source "GameAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/agent/GameAgent$Reflection;
    }
.end annotation


# static fields
.field private static final CLASS_COCOS_ACTIVITY:Ljava/lang/String; = "org.cocos2dx.lib.Cocos2dxActivity"

.field private static final CLASS_UNITY_PLAYER:Ljava/lang/String; = "com.unity3d.player.UnityPlayer"

.field private static final CRASH_REPORT_CLASS_SUFFIX:Ljava/lang/String; = "crashreport.CrashReport"

.field private static final GAME_TYPE_COCOS:I = 0x1

.field private static final GAME_TYPE_UNITY:I = 0x2

.field private static final LOG_LEVEL_DEBUG:I = 0x1

.field private static final LOG_LEVEL_ERROR:I = 0x4

.field private static final LOG_LEVEL_INFO:I = 0x2

.field private static final LOG_LEVEL_VERBOSE:I = 0x0

.field private static final LOG_LEVEL_WARN:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "CrashReport-GameAgent"

.field private static final OLD_STRATEGY_CLASS_SUFFIX:Ljava/lang/String; = "crashreport.CrashReport$UserStrategy"

.field private static final STRATEGY_CLASS_SUFFIX:Ljava/lang/String; = "BuglyStrategy"

.field private static final TYPE_COCOS2DX_JS_CRASH:I = 0x5

.field private static final TYPE_COCOS2DX_LUA_CRASH:I = 0x6

.field private static final TYPE_U3D_CRASH:I = 0x4

.field private static final VERSION:Ljava/lang/String; = "2.0"

.field private static sAppChannel:Ljava/lang/String;

.field private static sAppVersion:Ljava/lang/String;

.field private static sContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static sGameType:I

.field private static sHandler:Landroid/os/Handler;

.field private static sIsDebug:Z

.field private static sUserId:Ljava/lang/String;

.field private static sdkPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    const-string v0, "com.tencent.bugly"

    sput-object v0, Lcom/tencent/bugly/agent/GameAgent;->sdkPackageName:Ljava/lang/String;

    .line 48
    sput-object v1, Lcom/tencent/bugly/agent/GameAgent;->sHandler:Landroid/os/Handler;

    .line 49
    sput-object v1, Lcom/tencent/bugly/agent/GameAgent;->sAppVersion:Ljava/lang/String;

    .line 50
    sput-object v1, Lcom/tencent/bugly/agent/GameAgent;->sAppChannel:Ljava/lang/String;

    .line 51
    sput-object v1, Lcom/tencent/bugly/agent/GameAgent;->sUserId:Ljava/lang/String;

    .line 52
    sput-boolean v2, Lcom/tencent/bugly/agent/GameAgent;->sIsDebug:Z

    .line 53
    sput v2, Lcom/tencent/bugly/agent/GameAgent;->sGameType:I

    .line 54
    sput-object v1, Lcom/tencent/bugly/agent/GameAgent;->sContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 22
    invoke-static {}, Lcom/tencent/bugly/agent/GameAgent;->exitApplication()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/tencent/bugly/agent/GameAgent;->sIsDebug:Z

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/tencent/bugly/agent/GameAgent;->convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/tencent/bugly/agent/GameAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(J)V
    .locals 0

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/tencent/bugly/agent/GameAgent;->delayExit(J)V

    return-void
.end method

.method private static convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    sget-object v1, Lcom/tencent/bugly/agent/GameAgent;->sdkPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 219
    const-string v1, "com.tencent.bugly"

    sput-object v1, Lcom/tencent/bugly/agent/GameAgent;->sdkPackageName:Ljava/lang/String;

    .line 221
    :cond_0
    sget-object v1, Lcom/tencent/bugly/agent/GameAgent;->sdkPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static delayExit(J)V
    .locals 4

    .prologue
    .line 191
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 193
    sget-object v2, Lcom/tencent/bugly/agent/GameAgent;->sHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 194
    sget-object v2, Lcom/tencent/bugly/agent/GameAgent;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/bugly/agent/GameAgent$1;

    invoke-direct {v3}, Lcom/tencent/bugly/agent/GameAgent$1;-><init>()V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    :goto_0
    return-void

    .line 202
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 203
    invoke-static {}, Lcom/tencent/bugly/agent/GameAgent;->exitApplication()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private static exitApplication()V
    .locals 7

    .prologue
    .line 179
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 180
    const/4 v1, 0x3

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Exit application by kill process[%d]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/bugly/agent/GameAgent;->printLog(ILjava/lang/String;)V

    .line 182
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 183
    return-void
.end method

.method private static getActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    sget-object v1, Lcom/tencent/bugly/agent/GameAgent;->sContext:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/bugly/agent/GameAgent;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    sget-object v0, Lcom/tencent/bugly/agent/GameAgent;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 155
    :goto_0
    return-object v0

    .line 144
    :cond_0
    sget v1, Lcom/tencent/bugly/agent/GameAgent;->sGameType:I

    packed-switch v1, :pswitch_data_0

    .line 152
    const-string v1, "CrashReport-GameAgent"

    const-string v2, "Game type has not been set."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :pswitch_0
    invoke-static {}, Lcom/tencent/bugly/agent/GameAgent;->getCocosActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_1
    invoke-static {}, Lcom/tencent/bugly/agent/GameAgent;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/tencent/bugly/agent/GameAgent;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCocosActivity()Landroid/app/Activity;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 127
    :try_start_0
    const-string v0, "org.cocos2dx.lib.Cocos2dxActivity"

    const-string v2, "getContext"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/bugly/agent/GameAgent$Reflection;->access$100(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 129
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const-string v2, "CrashReport-GameAgent"

    const-string v3, "Failed to get the current activity from UnityPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    .line 136
    goto :goto_0
.end method

.method public static getUnityActivity()Landroid/app/Activity;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 108
    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    const-string v2, "currentActivity"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/tencent/bugly/agent/GameAgent$Reflection;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 110
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v2, "CrashReport-GameAgent"

    const-string v3, "Failed to get the current activity from UnityPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    .line 117
    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "2.0"

    return-object v0
.end method

.method private static initCrashReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 304
    invoke-static {}, Lcom/tencent/bugly/agent/GameAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 305
    if-nez v0, :cond_0

    .line 306
    const-string v0, "Context is null. bugly initialize terminated."

    invoke-static {v2, v0}, Lcom/tencent/bugly/agent/GameAgent;->printLog(ILjava/lang/String;)V

    .line 349
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    const-string v0, "Please input appid when initCrashReport."

    invoke-static {v2, v0}, Lcom/tencent/bugly/agent/GameAgent;->printLog(ILjava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tencent/bugly/agent/GameAgent;->sHandler:Landroid/os/Handler;

    .line 314
    invoke-static {v0, p1, p2, p4, p5}, Lcom/tencent/bugly/agent/GameAgent;->newStrategy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v1

    .line 315
    new-instance v2, Lcom/tencent/bugly/agent/GameAgent$2;

    invoke-direct {v2, v1, v0, p0, p3}, Lcom/tencent/bugly/agent/GameAgent$2;-><init>(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/bugly/agent/GameAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static initCrashReport(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 298
    invoke-static {p1}, Lcom/tencent/bugly/agent/GameAgent;->setLogEnable(Z)V

    .line 299
    sget-object v1, Lcom/tencent/bugly/agent/GameAgent;->sAppChannel:Ljava/lang/String;

    sget-object v2, Lcom/tencent/bugly/agent/GameAgent;->sAppVersion:Ljava/lang/String;

    sget-object v3, Lcom/tencent/bugly/agent/GameAgent;->sUserId:Ljava/lang/String;

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/agent/GameAgent;->initCrashReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 300
    return-void
.end method

.method private static newStrategy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 264
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 294
    :goto_0
    return-object v0

    .line 267
    :cond_1
    const-string v0, "crashreport.CrashReport$UserStrategy"

    invoke-static {v0}, Lcom/tencent/bugly/agent/GameAgent;->convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/tencent/bugly/agent/GameAgent$Reflection;->access$300(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_2

    .line 271
    :try_start_0
    const-string v2, "BuglyStrategy"

    invoke-static {v2}, Lcom/tencent/bugly/agent/GameAgent;->convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 272
    const-string v3, "setAppChannel"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 273
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v3, "setAppVersion"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 276
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v3, "setAppReportDelay"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 279
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_2
    :goto_1
    move-object v0, v1

    .line 294
    goto :goto_0

    .line 284
    :catch_1
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 286
    :catch_2
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 288
    :catch_3
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 290
    :catch_4
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static postCocosException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 542
    :try_start_0
    const-string v0, "stack traceback"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 543
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 546
    :goto_0
    :try_start_1
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 547
    if-lez v0, :cond_0

    .line 548
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 551
    :cond_0
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 553
    if-lez v0, :cond_6

    .line 554
    const/4 v1, 0x0

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 557
    :goto_1
    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 558
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 559
    :cond_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 560
    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    :cond_2
    :goto_2
    move-object v2, p1

    .line 573
    :goto_3
    new-instance v0, Lcom/tencent/bugly/agent/GameAgent$11;

    move v1, p0

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/agent/GameAgent$11;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/tencent/bugly/agent/GameAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    .line 585
    return-void

    :cond_3
    move-object p1, p2

    .line 562
    goto :goto_2

    .line 565
    :catch_0
    move-exception v0

    move-object v4, p3

    .line 567
    :goto_4
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move-object v2, p2

    .line 568
    goto :goto_3

    .line 565
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    move-object v2, p1

    goto :goto_3

    :cond_6
    move-object v0, v4

    goto :goto_1

    :cond_7
    move-object v4, p3

    goto :goto_0
.end method

.method public static postException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 616
    packed-switch p0, :pswitch_data_0

    .line 625
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The category of exception posted is unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/bugly/agent/GameAgent;->printLog(ILjava/lang/String;)V

    .line 628
    :goto_0
    return-void

    .line 619
    :pswitch_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/agent/GameAgent;->postCocosException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 622
    :pswitch_1
    invoke-static {p1, p2, p3, p4}, Lcom/tencent/bugly/agent/GameAgent;->postUnityException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 616
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static postUnityException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 592
    new-instance v0, Lcom/tencent/bugly/agent/GameAgent$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/bugly/agent/GameAgent$12;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/tencent/bugly/agent/GameAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    .line 603
    return-void
.end method

.method private static printLog(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    const-string v0, "CrashReport-GameAgent"

    invoke-static {p0, v0, p1}, Lcom/tencent/bugly/agent/GameAgent;->setLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static printLog(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string v0, "<Log>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {v1, p0}, Lcom/tencent/bugly/agent/GameAgent;->printLog(ILjava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    const-string v0, "<LogDebug>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/tencent/bugly/agent/GameAgent;->printLog(ILjava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    const-string v0, "<LogInfo>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    invoke-static {v1, p0}, Lcom/tencent/bugly/agent/GameAgent;->printLog(ILjava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_3
    const-string v0, "<LogWarning>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    invoke-static {v2, p0}, Lcom/tencent/bugly/agent/GameAgent;->printLog(ILjava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_4
    const-string v0, "<LogAssert>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 81
    invoke-static {v2, p0}, Lcom/tencent/bugly/agent/GameAgent;->printLog(ILjava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_5
    const-string v0, "<LogError>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    invoke-static {v3, p0}, Lcom/tencent/bugly/agent/GameAgent;->printLog(ILjava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_6
    const-string v0, "<LogException>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 85
    invoke-static {v3, p0}, Lcom/tencent/bugly/agent/GameAgent;->printLog(ILjava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_7
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/tencent/bugly/agent/GameAgent;->printLog(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static putUserData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 434
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    new-instance v0, Lcom/tencent/bugly/agent/GameAgent$7;

    invoke-direct {v0, p0, p1}, Lcom/tencent/bugly/agent/GameAgent$7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/bugly/agent/GameAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static removeUserData(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 453
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    :goto_0
    return-void

    .line 456
    :cond_0
    new-instance v0, Lcom/tencent/bugly/agent/GameAgent$8;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/agent/GameAgent$8;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/bugly/agent/GameAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static runTaskInUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/tencent/bugly/agent/GameAgent;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 377
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 380
    :cond_0
    sput-object p0, Lcom/tencent/bugly/agent/GameAgent;->sAppChannel:Ljava/lang/String;

    .line 381
    new-instance v0, Lcom/tencent/bugly/agent/GameAgent$4;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/agent/GameAgent$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/bugly/agent/GameAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 357
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 360
    :cond_0
    sput-object p0, Lcom/tencent/bugly/agent/GameAgent;->sAppVersion:Ljava/lang/String;

    .line 361
    new-instance v0, Lcom/tencent/bugly/agent/GameAgent$3;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/agent/GameAgent$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/bugly/agent/GameAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setGameType(I)V
    .locals 0

    .prologue
    .line 242
    sput p0, Lcom/tencent/bugly/agent/GameAgent;->sGameType:I

    .line 243
    return-void
.end method

.method public static setLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 494
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 515
    const/4 v0, 0x0

    .line 518
    :goto_1
    if-eqz v0, :cond_0

    .line 519
    new-instance v1, Lcom/tencent/bugly/agent/GameAgent$10;

    invoke-direct {v1, v0, p1, p2}, Lcom/tencent/bugly/agent/GameAgent$10;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/bugly/agent/GameAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 500
    :pswitch_0
    const-string/jumbo v0, "v"

    goto :goto_1

    .line 503
    :pswitch_1
    const-string v0, "d"

    goto :goto_1

    .line 506
    :pswitch_2
    const-string v0, "i"

    goto :goto_1

    .line 509
    :pswitch_3
    const-string/jumbo v0, "w"

    goto :goto_1

    .line 512
    :pswitch_4
    const-string v0, "e"

    goto :goto_1

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static setLogEnable(Z)V
    .locals 0

    .prologue
    .line 251
    sput-boolean p0, Lcom/tencent/bugly/agent/GameAgent;->sIsDebug:Z

    .line 252
    return-void
.end method

.method public static setSdkConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 473
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    new-instance v0, Lcom/tencent/bugly/agent/GameAgent$9;

    invoke-direct {v0, p0, p1}, Lcom/tencent/bugly/agent/GameAgent$9;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/bugly/agent/GameAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setSdkPackageName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 235
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    sput-object p0, Lcom/tencent/bugly/agent/GameAgent;->sdkPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 397
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 400
    :cond_0
    sput-object p0, Lcom/tencent/bugly/agent/GameAgent;->sUserId:Ljava/lang/String;

    .line 401
    new-instance v0, Lcom/tencent/bugly/agent/GameAgent$5;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/agent/GameAgent$5;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/bugly/agent/GameAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setUserSceneTag(I)V
    .locals 1

    .prologue
    .line 417
    new-instance v0, Lcom/tencent/bugly/agent/GameAgent$6;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/agent/GameAgent$6;-><init>(I)V

    invoke-static {v0}, Lcom/tencent/bugly/agent/GameAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method
