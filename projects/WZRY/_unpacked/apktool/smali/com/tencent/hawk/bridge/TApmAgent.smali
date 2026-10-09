.class public Lcom/tencent/hawk/bridge/TApmAgent;
.super Ljava/lang/Object;
.source "TApmAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/hawk/bridge/TApmAgent$Reflection;
    }
.end annotation


# static fields
.field private static final CLASS_COCOS_ACTIVITY:Ljava/lang/String; = "org.cocos2dx.lib.Cocos2dxActivity"

.field private static final CLASS_UNITY_PLAYER:Ljava/lang/String; = "com.unity3d.player.UnityPlayer"

.field private static localActivity:Landroid/app/Activity;

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

.field private static sFullClassName:Ljava/lang/String;

.field private static sGameType:I

.field private static sHandler:Landroid/os/Handler;

.field private static sMethodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    sput-object v1, Lcom/tencent/hawk/bridge/TApmAgent;->sHandler:Landroid/os/Handler;

    .line 26
    const/4 v0, 0x1

    sput v0, Lcom/tencent/hawk/bridge/TApmAgent;->sGameType:I

    .line 27
    sput-object v1, Lcom/tencent/hawk/bridge/TApmAgent;->sContext:Ljava/lang/ref/WeakReference;

    .line 29
    sput-object v1, Lcom/tencent/hawk/bridge/TApmAgent;->sFullClassName:Ljava/lang/String;

    .line 30
    sput-object v1, Lcom/tencent/hawk/bridge/TApmAgent;->sMethodName:Ljava/lang/String;

    .line 83
    sput-object v1, Lcom/tencent/hawk/bridge/TApmAgent;->localActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginTag(Ljava/lang/String;)V
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 306
    new-instance v0, Lcom/tencent/hawk/bridge/TApmAgent$8;

    invoke-direct {v0, p0}, Lcom/tencent/hawk/bridge/TApmAgent$8;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/hawk/bridge/TApmAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    .line 311
    return-void
.end method

.method public static checkDCLS()I
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkAgent;->checkDCLS(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static enableDebugMode()V
    .locals 0

    .prologue
    .line 274
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->enableDebugMode()V

    .line 275
    return-void
.end method

.method public static endTag()V
    .locals 1

    .prologue
    .line 314
    new-instance v0, Lcom/tencent/hawk/bridge/TApmAgent$9;

    invoke-direct {v0}, Lcom/tencent/hawk/bridge/TApmAgent$9;-><init>()V

    invoke-static {v0}, Lcom/tencent/hawk/bridge/TApmAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method

.method private static getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/tencent/hawk/bridge/TApmAgent;->localActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/tencent/hawk/bridge/TApmAgent;->localActivity:Landroid/app/Activity;

    .line 107
    :goto_0
    return-object v0

    .line 93
    :cond_0
    sget v0, Lcom/tencent/hawk/bridge/TApmAgent;->sGameType:I

    packed-switch v0, :pswitch_data_0

    .line 104
    const-string/jumbo v0, "unknown game engine..."

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 107
    :goto_1
    sget-object v0, Lcom/tencent/hawk/bridge/TApmAgent;->localActivity:Landroid/app/Activity;

    goto :goto_0

    .line 95
    :pswitch_0
    invoke-static {}, Lcom/tencent/hawk/bridge/TApmAgent;->getCocosActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/tencent/hawk/bridge/TApmAgent;->localActivity:Landroid/app/Activity;

    goto :goto_1

    .line 98
    :pswitch_1
    invoke-static {}, Lcom/tencent/hawk/bridge/TApmAgent;->getUnityActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/tencent/hawk/bridge/TApmAgent;->localActivity:Landroid/app/Activity;

    goto :goto_1

    .line 101
    :pswitch_2
    invoke-static {}, Lcom/tencent/hawk/bridge/TApmAgent;->getSRDActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/tencent/hawk/bridge/TApmAgent;->localActivity:Landroid/app/Activity;

    goto :goto_1

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getApplicationContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lcom/tencent/hawk/bridge/TApmAgent;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 112
    .local v0, "localActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCocosActivity()Landroid/app/Activity;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 47
    const-string/jumbo v3, "try get cocos activity"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 49
    :try_start_0
    const-string v3, "org.cocos2dx.lib.Cocos2dxActivity"

    const-string v4, "getContext"

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-static {v3, v4, v5, v6}, Lcom/tencent/hawk/bridge/TApmAgent$Reflection;->access$1(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 50
    .local v1, "localObject":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 51
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "localObject":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 52
    .restart local v1    # "localObject":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "localException":Ljava/lang/Exception;
    const-string v3, "Failed to get the current activity from Cocos2Dx"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "localException":Ljava/lang/Exception;
    :cond_0
    move-object v1, v2

    .line 57
    goto :goto_0
.end method

.method public static getSRDActivity()Landroid/app/Activity;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 61
    const-string/jumbo v3, "try get independent RD activity"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 62
    sget-object v3, Lcom/tencent/hawk/bridge/TApmAgent;->sFullClassName:Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/tencent/hawk/bridge/TApmAgent;->sMethodName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 63
    :cond_0
    const-string v3, "FullClassName or Method name is null"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    move-object v1, v2

    .line 80
    :goto_0
    return-object v1

    .line 68
    :cond_1
    :try_start_0
    sget-object v3, Lcom/tencent/hawk/bridge/TApmAgent;->sFullClassName:Ljava/lang/String;

    sget-object v4, Lcom/tencent/hawk/bridge/TApmAgent;->sMethodName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-static {v3, v4, v5, v6}, Lcom/tencent/hawk/bridge/TApmAgent$Reflection;->access$1(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, "localObject":Ljava/lang/Object;
    if-eqz v1, :cond_2

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 71
    const-string v3, "get independent RD activity successed"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 72
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "localException":Ljava/lang/Exception;
    const-string v3, "Failed to get the current activity from independent RD engine"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "localException":Ljava/lang/Exception;
    :cond_2
    move-object v1, v2

    .line 80
    goto :goto_0
.end method

.method public static getUnityActivity()Landroid/app/Activity;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 33
    const-string/jumbo v3, "try get unity activity"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 35
    :try_start_0
    const-string v3, "com.unity3d.player.UnityPlayer"

    const-string v4, "currentActivity"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/tencent/hawk/bridge/TApmAgent$Reflection;->access$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    .local v1, "localObject":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 37
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "localObject":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 38
    .restart local v1    # "localObject":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "localException":Ljava/lang/Exception;
    const-string v3, "Failed to get the current activity from UnityPlayer"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "localException":Ljava/lang/Exception;
    :cond_0
    move-object v1, v2

    .line 43
    goto :goto_0
.end method

.method public static initHawk()V
    .locals 6

    .prologue
    .line 158
    invoke-static {}, Lcom/tencent/hawk/bridge/TApmAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    .local v0, "localContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 160
    const-string v4, "Context is null. tapm initialize terminated."

    invoke-static {v4}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 164
    :cond_0
    const/16 v4, 0x1f01

    invoke-static {v4}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "renderer":Ljava/lang/String;
    const/16 v4, 0x1f02

    invoke-static {v4}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "version":Ljava/lang/String;
    const/16 v4, 0x1f00

    invoke-static {v4}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "vendror":Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 169
    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 170
    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 172
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v4, Lcom/tencent/hawk/bridge/TApmAgent;->sHandler:Landroid/os/Handler;

    .line 174
    new-instance v4, Lcom/tencent/hawk/bridge/TApmAgent$2;

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/tencent/hawk/bridge/TApmAgent$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/tencent/hawk/bridge/TApmAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static initHawk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "gpuvendor"    # Ljava/lang/String;
    .param p1, "gpurenderer"    # Ljava/lang/String;
    .param p2, "gpuversion"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {}, Lcom/tencent/hawk/bridge/TApmAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    .local v0, "localContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 141
    const-string v1, "Context is null. tapm initialize terminated."

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tencent/hawk/bridge/TApmAgent;->sHandler:Landroid/os/Handler;

    .line 147
    new-instance v1, Lcom/tencent/hawk/bridge/TApmAgent$1;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/tencent/hawk/bridge/TApmAgent$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/hawk/bridge/TApmAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static markLevelFin()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/tencent/hawk/bridge/TApmAgent$5;

    invoke-direct {v0}, Lcom/tencent/hawk/bridge/TApmAgent$5;-><init>()V

    invoke-static {v0}, Lcom/tencent/hawk/bridge/TApmAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method public static markLevelLoad(Ljava/lang/String;I)V
    .locals 1
    .param p0, "paramString"    # Ljava/lang/String;
    .param p1, "quality"    # I

    .prologue
    .line 184
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Lcom/tencent/hawk/bridge/TApmAgent$3;

    invoke-direct {v0, p0, p1}, Lcom/tencent/hawk/bridge/TApmAgent$3;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/tencent/hawk/bridge/TApmAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static markLevelLoadCompleted()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/tencent/hawk/bridge/TApmAgent$4;

    invoke-direct {v0}, Lcom/tencent/hawk/bridge/TApmAgent$4;-><init>()V

    invoke-static {v0}, Lcom/tencent/hawk/bridge/TApmAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method public static postNTL(II)V
    .locals 0
    .param p0, "latency"    # I
    .param p1, "serverip"    # I

    .prologue
    .line 267
    invoke-static {p0, p1}, Lcom/tencent/hawk/bridge/HawkAgent;->postNTL(II)V

    .line 268
    return-void
.end method

.method public static putKVArrD(Ljava/lang/String;[D)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "jarray"    # [D

    .prologue
    .line 331
    return-void
.end method

.method public static putKVArrI(Ljava/lang/String;[II)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "values"    # [I
    .param p2, "length"    # I

    .prologue
    .line 323
    return-void
.end method

.method public static putKVArrS(Ljava/lang/String;Lcom/tencent/hawk/bridge/JArrS;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "jarray"    # Lcom/tencent/hawk/bridge/JArrS;

    .prologue
    .line 327
    return-void
.end method

.method public static putKVD(Ljava/lang/String;D)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # D

    .prologue
    .line 298
    invoke-static {p0, p1, p2}, Lcom/tencent/hawk/bridge/HawkAgent;->putKVD(Ljava/lang/String;D)V

    .line 299
    return-void
.end method

.method public static putKVI(Ljava/lang/String;I)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 282
    invoke-static {p0, p1}, Lcom/tencent/hawk/bridge/HawkAgent;->putKVI(Ljava/lang/String;I)V

    .line 283
    return-void
.end method

.method public static putKVS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-static {p0, p1}, Lcom/tencent/hawk/bridge/HawkAgent;->putKVS(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method private static runTaskInUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "paramRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 119
    invoke-static {}, Lcom/tencent/hawk/bridge/TApmAgent;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 120
    .local v0, "localActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 1
    .param p0, "appid"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 243
    :cond_0
    new-instance v0, Lcom/tencent/hawk/bridge/TApmAgent$7;

    invoke-direct {v0, p0}, Lcom/tencent/hawk/bridge/TApmAgent$7;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/hawk/bridge/TApmAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setContextInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "fullClassName"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v0, 0x3

    sput v0, Lcom/tencent/hawk/bridge/TApmAgent;->sGameType:I

    .line 133
    sput-object p0, Lcom/tencent/hawk/bridge/TApmAgent;->sFullClassName:Ljava/lang/String;

    .line 134
    sput-object p1, Lcom/tencent/hawk/bridge/TApmAgent;->sMethodName:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public static setGameType(I)V
    .locals 0
    .param p0, "paramInt"    # I

    .prologue
    .line 127
    sput p0, Lcom/tencent/hawk/bridge/TApmAgent;->sGameType:I

    .line 128
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1
    .param p0, "userid"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 226
    :cond_0
    new-instance v0, Lcom/tencent/hawk/bridge/TApmAgent$6;

    invoke-direct {v0, p0}, Lcom/tencent/hawk/bridge/TApmAgent$6;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/hawk/bridge/TApmAgent;->runTaskInUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
