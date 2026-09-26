.class public Lcom/netease/ntunisdk/base/update/dex/DexLoader;
.super Ljava/lang/Object;
.source "DexLoader.java"


# static fields
.field private static final CHANNEL_NAME:[Ljava/lang/String;

.field private static final CLASS_NAME:[Ljava/lang/String;

.field private static final METHOD_NAME:[Ljava/lang/String;

.field private static final SP_NAME:Ljava/lang/String; = "unisdk_dynamic_info"

.field private static final TAG:Ljava/lang/String; = "DexLoader"

.field private static sCtxRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static sUpdateCallback:Lcom/netease/ntunisdk/base/update/common/UpdateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ngpush"

    aput-object v1, v0, v2

    sput-object v0, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->CHANNEL_NAME:[Ljava/lang/String;

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.netease.pushclient.PushManager"

    aput-object v1, v0, v2

    sput-object v0, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->CLASS_NAME:[Ljava/lang/String;

    .line 45
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "getSdkVersion"

    aput-object v1, v0, v2

    sput-object v0, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->METHOD_NAME:[Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$1;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/update/dex/DexLoader$1;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->sUpdateCallback:Lcom/netease/ntunisdk/base/update/common/UpdateCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 32
    invoke-static {p0}, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->dealWithResult(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/netease/ntunisdk/base/SdkBase;
    .param p2, "x2"    # Ljava/util/Collection;
    .param p3, "x3"    # Ljava/util/Collection;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static/range {p0 .. p8}, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->startCheckDelay(Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized checkAndDownload(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const-class v3, Lcom/netease/ntunisdk/base/update/dex/DexLoader;

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->sCtxRef:Ljava/lang/ref/WeakReference;

    .line 76
    const-string v2, "unisdk_dynamic_info"

    const-string v4, "channel"

    const-string v5, ""

    invoke-static {v2, v4, v5}, Lcom/netease/ntunisdk/base/update/common/UniSp;->getSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "channelStr":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "channels":[Ljava/lang/String;
    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 83
    :goto_0
    monitor-exit v3

    return-void

    .line 82
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    sget-object v4, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->sUpdateCallback:Lcom/netease/ntunisdk/base/update/common/UpdateCallback;

    invoke-static {v2, v4}, Lcom/netease/ntunisdk/base/update/dex/DexUpdateThread;->startDexThread(Ljava/io/File;Lcom/netease/ntunisdk/base/update/common/UpdateCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    .end local v0    # "channelStr":Ljava/lang/String;
    .end local v1    # "channels":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static dealWithResult(I)V
    .locals 2
    .param p0, "result"    # I

    .prologue
    .line 93
    sparse-switch p0, :sswitch_data_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 95
    :sswitch_0
    const-string v0, "DexLoader"

    const-string v1, "the latest is downloaded to local"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :sswitch_1
    const-string v0, "DexLoader"

    const-string v1, "the latest is downloaded to local"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->sCtxRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->sCtxRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->restartAppDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 106
    :sswitch_2
    const-string v0, "DexLoader"

    const-string v1, "dex invalid"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 111
    :sswitch_3
    const-string v0, "DexLoader"

    const-string v1, "dex check finished."

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :sswitch_4
    const-string v0, "DexLoader"

    const-string v1, "need not to download"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xa -> :sswitch_3
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method private static getOtherSdkVersions()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "unisdk_dynamic_info"

    const-string v7, "channel"

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lcom/netease/ntunisdk/base/update/common/UniSp;->getSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, "channelSb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v6, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->CHANNEL_NAME:[Ljava/lang/String;

    array-length v6, v6

    if-eq v3, v6, :cond_2

    .line 264
    :try_start_0
    sget-object v6, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->CLASS_NAME:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 265
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "DexLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->CLASS_NAME:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v6, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->METHOD_NAME:[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 267
    .local v4, "method":Ljava/lang/reflect/Method;
    const-string v6, "DexLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->METHOD_NAME:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 269
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 270
    .local v5, "ver":Ljava/lang/String;
    const-string v6, "DexLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_0
    sget-object v6, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->CHANNEL_NAME:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v6, "unisdk_dynamic_info"

    sget-object v7, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->CHANNEL_NAME:[Ljava/lang/String;

    aget-object v7, v7, v3

    const-string v8, "unisdk_ver"

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v5, v9}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "ver":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 280
    :catch_0
    move-exception v2

    .line 281
    .local v2, "e":Ljava/lang/Throwable;
    const-string v6, "DexLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOtherSdkVersions: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 284
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    const-string v6, "unisdk_dynamic_info"

    const-string v7, "channel"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v10}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 285
    return-void
.end method

.method private static getUnisdkVersion(Lcom/netease/ntunisdk/base/SdkBase;)Ljava/lang/String;
    .locals 7
    .param p0, "sdk"    # Lcom/netease/ntunisdk/base/SdkBase;

    .prologue
    .line 241
    const-string v4, ""

    .line 242
    .local v4, "ver":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 244
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v5, "getUniSDKVersion"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 245
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 246
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 254
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion()Ljava/lang/String;

    move-result-object v4

    .line 257
    :cond_0
    return-object v4

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 249
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 250
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 251
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 252
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 55
    const-class v5, Lcom/netease/ntunisdk/base/update/dex/DexLoader;

    monitor-enter v5

    :try_start_0
    const-string v6, "unisdk_dynamic_info"

    invoke-static {p0, v6}, Lcom/netease/ntunisdk/base/update/common/UniSp;->initSp(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 57
    .local v0, "appPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 59
    .local v1, "appVerCode":I
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v1, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 60
    const-string v6, "DexLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appVerCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :goto_0
    :try_start_2
    const-string v6, "unisdk_dynamic_info"

    const-string v7, "app_ver"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/netease/ntunisdk/base/update/common/UniSp;->getSpInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-eq v1, v6, :cond_1

    .line 65
    .local v3, "isNewPackage":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 66
    const-string v4, "unisdk_dynamic_info"

    const-string v6, "app_ver"

    const/4 v7, 0x1

    invoke-static {v4, v6, v1, v7}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpInt(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->setUsbTxtPref(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    monitor-exit v5

    return-void

    .line 61
    .end local v3    # "isNewPackage":Z
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v6, "DexLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 55
    .end local v0    # "appPackageName":Ljava/lang/String;
    .end local v1    # "appVerCode":I
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v0    # "appPackageName":Ljava/lang/String;
    .restart local v1    # "appVerCode":I
    :cond_1
    move v3, v4

    .line 64
    goto :goto_1
.end method

.method private static readExternalUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "unipatch_url"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .line 291
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/utils/FileUtil;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    :goto_0
    const-string v3, "DexLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readExternalUrl:, path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", content="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-object v0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "DexLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readExternalUrl exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static restartApp(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    const v2, 0x1e240

    .line 140
    .local v2, "mPendingIntentId":I
    const/high16 v4, 0x10000000

    invoke-static {p0, v2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 141
    .local v1, "mPendingIntent":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 142
    .local v3, "mgr":Landroid/app/AlarmManager;
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    add-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 143
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 144
    return-void
.end method

.method private static restartAppDialog(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    return-void
.end method

.method private static setUsbTxtPref(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    const/4 v6, 0x0

    .line 302
    .local v6, "usb":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "files":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 304
    .local v2, "fileName":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v7, "usb_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, ".txt"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 305
    move-object v6, v2

    .line 309
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 310
    const-string v7, "unisdk_dynamic_info"

    const-string v8, "usb_txt"

    const/4 v9, 0x1

    invoke-static {v7, v8, v6, v9}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    :goto_1
    return-void

    .line 303
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v3    # "files":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Throwable;
    const-string v7, "DexLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static startCheck(Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inst"    # Lcom/netease/ntunisdk/base/SdkBase;
    .param p4, "gameId"    # Ljava/lang/String;
    .param p5, "unibaseVer"    # Ljava/lang/String;
    .param p6, "unisubVer"    # Ljava/lang/String;
    .param p7, "udid"    # Ljava/lang/String;
    .param p8, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            "Ljava/util/Collection",
            "<",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    .local p2, "channelSdks1":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/netease/ntunisdk/base/SdkBase;>;"
    .local p3, "channelSdks2":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/netease/ntunisdk/base/SdkBase;>;"
    new-instance v10, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/netease/ntunisdk/base/update/dex/DexLoader$2;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v10, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    return-void
.end method

.method private static startCheckDelay(Landroid/content/Context;Lcom/netease/ntunisdk/base/SdkBase;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inst"    # Lcom/netease/ntunisdk/base/SdkBase;
    .param p4, "gameId"    # Ljava/lang/String;
    .param p5, "unibaseVer"    # Ljava/lang/String;
    .param p6, "unisubVer"    # Ljava/lang/String;
    .param p7, "udid"    # Ljava/lang/String;
    .param p8, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            "Ljava/util/Collection",
            "<",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/netease/ntunisdk/base/SdkBase;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    .local p2, "channelSdks1":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/netease/ntunisdk/base/SdkBase;>;"
    .local p3, "channelSdks2":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/netease/ntunisdk/base/SdkBase;>;"
    const-string v10, "unisdk_dynamic_info"

    invoke-static {p0, v10}, Lcom/netease/ntunisdk/base/update/common/UniSp;->initSp(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "use_dex"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/netease/ntunisdk/base/update/common/UniSp;->getSpInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_0

    .line 170
    const-string v10, "DexLoader"

    const-string v11, "no dex deploy"

    invoke-static {v10, v11}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local p7    # "udid":Ljava/lang/String;
    .end local p8    # "mac":Ljava/lang/String;
    :goto_0
    return-void

    .line 174
    .restart local p7    # "udid":Ljava/lang/String;
    .restart local p8    # "mac":Ljava/lang/String;
    :cond_0
    new-instance v10, Ljava/io/File;

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    const-string v12, "unipatch_close"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 175
    const-string v10, "DexLoader"

    const-string v11, "unipatch closed."

    invoke-static {v10, v11}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 180
    .local v7, "sets":Ljava/util/Set;, "Ljava/util/Set<Lcom/netease/ntunisdk/base/SdkBase;>;"
    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 182
    move-object/from16 v0, p3

    invoke-interface {v7, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 185
    const-string v10, "UNISDK_UNIPATCH_LOG_URL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 187
    invoke-static {v8}, Lcom/netease/ntunisdk/base/update/common/LogReq;->resetUrl(Ljava/lang/String;)V

    .line 189
    :cond_2
    invoke-static {p0}, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->readExternalUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 190
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 191
    const-string v10, "UNISDK_UNIPATCH_CHECK_URL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 194
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v2, "channelSb":Ljava/lang/StringBuilder;
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/ntunisdk/base/SdkBase;

    .line 196
    .local v6, "sdk":Lcom/netease/ntunisdk/base/SdkBase;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-eqz v10, :cond_4

    .line 197
    const-string v10, ";"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_4
    invoke-virtual {v6}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v10, "unisdk_dynamic_info"

    invoke-virtual {v6}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v11

    const-string v12, "unisdk_ver"

    invoke-static {v6}, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->getUnisdkVersion(Lcom/netease/ntunisdk/base/SdkBase;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v10, v11, v12, v13, v14}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 202
    const-string v10, "unisdk_dynamic_info"

    invoke-virtual {v6}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v11

    const-string v12, "sdk_version"

    invoke-virtual {v6}, Lcom/netease/ntunisdk/base/SdkBase;->getSDKVersion()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v10, v11, v12, v13, v14}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 205
    .end local v6    # "sdk":Lcom/netease/ntunisdk/base/SdkBase;
    :cond_5
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "channel"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 206
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "sdk"

    invoke-virtual/range {p1 .. p1}, Lcom/netease/ntunisdk/base/SdkBase;->getChannel()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "sdk_version"

    invoke-static/range {p1 .. p1}, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->getUnisdkVersion(Lcom/netease/ntunisdk/base/SdkBase;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 209
    invoke-static {}, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->getOtherSdkVersions()V

    .line 212
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_7

    aget-object v3, v1, v4

    .line 213
    .local v3, "fileName":Ljava/lang/String;
    const-string v10, "usb_"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, ".txt"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 214
    const-string v10, "usb_"

    const-string v11, ""

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ".txt"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 215
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "base_init_hash"

    const/4 v12, 0x0

    const-string v13, "_"

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 218
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v10

    .line 221
    :cond_7
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileVersion()Ljava/lang/String;

    move-result-object v9

    .line 222
    .local v9, "value":Ljava/lang/String;
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "mobile_ver"

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v9, "0"

    .end local v9    # "value":Ljava/lang/String;
    :cond_8
    const/4 v12, 0x0

    invoke-static {v10, v11, v9, v12}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 223
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p8

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 224
    .restart local v9    # "value":Ljava/lang/String;
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "probability"

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    const-string v9, "0"

    .end local v9    # "value":Ljava/lang/String;
    :cond_9
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    rem-int/lit8 v12, v12, 0x64

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpInt(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 225
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "extras"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileSDKVersion()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileModel2()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 227
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "game_id"

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-static {v10, v11, v0, v12}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 228
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "check_url"

    const/4 v12, 0x0

    invoke-static {v10, v11, v8, v12}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 229
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "udid"

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string p7, "empty_udid"

    .end local p7    # "udid":Ljava/lang/String;
    :cond_a
    const/4 v12, 0x0

    move-object/from16 v0, p7

    invoke-static {v10, v11, v0, v12}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 230
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "mac"

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    const-string p8, "empty_mac"

    .end local p8    # "mac":Ljava/lang/String;
    :cond_b
    const/4 v12, 0x0

    move-object/from16 v0, p8

    invoke-static {v10, v11, v0, v12}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 231
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "package_name"

    invoke-static {p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 232
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "app_ver"

    invoke-static {p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpInt(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 233
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "dex_cache_path"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 234
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "unibase_sub_ver"

    const/4 v12, 0x0

    move-object/from16 v0, p6

    invoke-static {v10, v11, v0, v12}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 235
    const-string v10, "unisdk_dynamic_info"

    const-string v11, "unibase_ver"

    const/4 v12, 0x1

    move-object/from16 v0, p5

    invoke-static {v10, v11, v0, v12}, Lcom/netease/ntunisdk/base/update/common/UniSp;->setSpString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 237
    invoke-static {p0}, Lcom/netease/ntunisdk/base/update/dex/DexLoader;->checkAndDownload(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
