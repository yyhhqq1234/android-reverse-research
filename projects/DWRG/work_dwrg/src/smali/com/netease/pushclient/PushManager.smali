.class public final Lcom/netease/pushclient/PushManager;
.super Ljava/lang/Object;
.source "PushManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/pushclient/PushManager$PushManagerCallback;,
        Lcom/netease/pushclient/PushManager$TaskSubmitter;
    }
.end annotation


# static fields
.field private static PERMISSION_REQ_CODE:I

.field private static final TAG:Ljava/lang/String;

.field private static s_callback:Lcom/netease/pushclient/PushManager$PushManagerCallback;

.field public static s_context:Landroid/content/Context;

.field private static s_initialized:Z

.field private static s_multiPackSupport:Z

.field private static s_permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NGPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netease/pushclient/PushManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/pushclient/PushManager;->s_multiPackSupport:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/pushclient/PushManager;->s_permissions:Ljava/util/List;

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/pushclient/PushManager;->s_initialized:Z

    .line 47
    const/16 v0, 0x3e7

    sput v0, Lcom/netease/pushclient/PushManager;->PERMISSION_REQ_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 101
    invoke-static {}, Lcom/netease/pushclient/PushManager;->initImpl()V

    return-void
.end method

.method static synthetic access$2()Lcom/netease/pushclient/PushManager$PushManagerCallback;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/netease/pushclient/PushManager;->s_callback:Lcom/netease/pushclient/PushManager$PushManagerCallback;

    return-object v0
.end method

.method private static checkPermissions()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 123
    sget-object v9, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    const-string v10, "checkPermissions"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v9, Lcom/netease/pushclient/PushManager;->s_permissions:Ljava/util/List;

    const-string v10, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    const-string v8, ""

    .line 128
    .local v8, "permissionsToRequest":Ljava/lang/String;
    :try_start_0
    sget-object v9, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    sget-object v10, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x80

    invoke-virtual {v9, v10, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 129
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 130
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 131
    const-string v9, "permissionsToRequest"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 137
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 138
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "arr":[Ljava/lang/String;
    array-length v12, v2

    move v10, v11

    :goto_1
    if-lt v10, v12, :cond_2

    .line 156
    .end local v2    # "arr":[Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/netease/pushclient/PushManager;->requestPermission()V

    .line 157
    return-void

    .line 133
    :catch_0
    move-exception v4

    .line 134
    .local v4, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "Failed to load meta-data permissionsToRequest: "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "arr":[Ljava/lang/String;
    :cond_2
    aget-object v6, v2, v10

    .line 140
    .local v6, "p":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 141
    const-string v9, "-"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 142
    sget-object v9, Lcom/netease/pushclient/PushManager;->s_permissions:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_3
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_1

    .line 144
    :cond_4
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "_p":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    sget-object v9, Lcom/netease/pushclient/PushManager;->s_permissions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 146
    sget-object v9, Lcom/netease/pushclient/PushManager;->s_permissions:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 147
    .local v7, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 148
    sget-object v9, Lcom/netease/pushclient/PushManager;->s_permissions:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    add-int/lit8 v5, v5, -0x1

    .line 145
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private static checkPushServiceType(Landroid/content/Context;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 425
    sget-object v5, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    const-string v6, "checkPushServiceType"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {p0}, Lcom/netease/pushclient/PushManager;->readConfig(Landroid/content/Context;)V

    .line 430
    invoke-static {p0}, Lcom/netease/push/utils/DeviceInfo;->isMIUI(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 431
    const-string v5, "miui"

    invoke-static {v5}, Lcom/netease/pushclient/PushManager;->getAppID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "appid":Ljava/lang/String;
    const-string v5, "miui"

    invoke-static {v5}, Lcom/netease/pushclient/PushManager;->getAppKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "appkey":Ljava/lang/String;
    const/4 v3, 0x1

    .line 435
    .local v3, "jarExist":Z
    :try_start_0
    const-string v5, "com.xiaomi.push.service.XMPushService"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 441
    const-string v5, "miui"

    invoke-static {p0, v5}, Lcom/netease/pushclient/PushManager;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    .line 476
    .end local v0    # "appid":Ljava/lang/String;
    .end local v1    # "appkey":Ljava/lang/String;
    :goto_1
    return-void

    .line 436
    .restart local v0    # "appid":Ljava/lang/String;
    .restart local v1    # "appkey":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 437
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 438
    const/4 v3, 0x0

    goto :goto_0

    .line 446
    .end local v0    # "appid":Ljava/lang/String;
    .end local v1    # "appkey":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "jarExist":Z
    :cond_0
    invoke-static {p0}, Lcom/netease/push/utils/DeviceInfo;->isHuawei(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 447
    const-string v5, "huawei"

    invoke-static {v5}, Lcom/netease/pushclient/PushManager;->getAppID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .restart local v0    # "appid":Ljava/lang/String;
    const/4 v3, 0x1

    .line 450
    .restart local v3    # "jarExist":Z
    :try_start_1
    const-string v5, "com.huawei.android.pushagent.PushEventReceiver"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 455
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_1

    .line 456
    const-string v5, "huawei"

    invoke-static {p0, v5}, Lcom/netease/pushclient/PushManager;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 451
    :catch_1
    move-exception v2

    .line 452
    .restart local v2    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 453
    const/4 v3, 0x0

    goto :goto_2

    .line 461
    .end local v0    # "appid":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "jarExist":Z
    :cond_1
    const-string v5, "gcm"

    invoke-static {v5}, Lcom/netease/pushclient/PushManager;->getSenderID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 462
    .local v4, "senderid":Ljava/lang/String;
    const/4 v3, 0x1

    .line 464
    .restart local v3    # "jarExist":Z
    :try_start_2
    const-string v5, "com.google.android.gms.gcm.GoogleCloudMessaging"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 469
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_2

    .line 470
    const-string v5, "gcm"

    invoke-static {p0, v5}, Lcom/netease/pushclient/PushManager;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 465
    :catch_2
    move-exception v2

    .line 466
    .restart local v2    # "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 467
    const/4 v3, 0x0

    goto :goto_3

    .line 473
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    const-string v5, "niepush"

    invoke-static {p0, v5}, Lcom/netease/pushclient/PushManager;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static enableMultiPackSupport(Z)V
    .locals 0
    .param p0, "v"    # Z

    .prologue
    .line 115
    sput-boolean p0, Lcom/netease/pushclient/PushManager;->s_multiPackSupport:Z

    .line 116
    return-void
.end method

.method public static enableRepeatProtect(Z)V
    .locals 2
    .param p0, "flag"    # Z

    .prologue
    .line 360
    sget-boolean v0, Lcom/netease/pushclient/PushManager;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 361
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/netease/inner/pushclient/PushManager;->enableRepeatProtect(Landroid/content/Context;Z)Z

    .line 363
    :cond_0
    return-void
.end method

.method public static enableSound(Z)V
    .locals 2
    .param p0, "flag"    # Z

    .prologue
    .line 342
    sget-boolean v0, Lcom/netease/pushclient/PushManager;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 343
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/netease/inner/pushclient/PushManager;->enableSound(Landroid/content/Context;Z)Z

    .line 345
    :cond_0
    return-void
.end method

.method public static enableVibrate(Z)V
    .locals 2
    .param p0, "flag"    # Z

    .prologue
    .line 351
    sget-boolean v0, Lcom/netease/pushclient/PushManager;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/netease/inner/pushclient/PushManager;->enableVibrate(Landroid/content/Context;Z)Z

    .line 354
    :cond_0
    return-void
.end method

.method public static getAppID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 393
    sget-boolean v0, Lcom/netease/pushclient/PushManager;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 394
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/netease/inner/pushclient/PushManager;->getAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getAppKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 407
    sget-boolean v0, Lcom/netease/pushclient/PushManager;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/netease/inner/pushclient/PushManager;->getAppKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    return-object v0
.end method

.method public static getDevId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/pushclient/PushManager;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDevId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 301
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    const-string v4, "getDevId"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ctx:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "s_initialized:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/netease/pushclient/PushManager;->s_initialized:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v0, ""

    .line 305
    .local v0, "devid":Ljava/lang/String;
    invoke-static {p0}, Lcom/netease/pushclient/PushManager;->getServiceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "type":Ljava/lang/String;
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "service type:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 308
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "niepush"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/netease/inner/pushclient/PushManager;->getDevId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/netease/pushclient/PushManager;->s_multiPackSupport:Z

    if-eqz v3, :cond_0

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "niepush"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    :cond_0
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "niepush devid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "s_multiPackSupport:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/netease/pushclient/PushManager;->s_multiPackSupport:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_1
    :goto_0
    return-object v0

    .line 315
    :cond_2
    const-string v3, "gcm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 316
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/netease/inner/pushclient/PushManager;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "gcm regid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :cond_3
    const-string v3, "miui"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 319
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/netease/inner/pushclient/PushManager;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "miui"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_4
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "miui devid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    :cond_5
    const-string v3, "huawei"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/netease/inner/pushclient/PushManager;->getRegistrationID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "huawei"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_6
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "huawei devid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "1.2.8"

    return-object v0
.end method

.method public static getSenderID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 376
    sget-boolean v0, Lcom/netease/pushclient/PushManager;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 377
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/netease/inner/pushclient/PushManager;->getSenderID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getServiceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 414
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/inner/pushclient/PushManager;->getServiceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasPermissionDeclared(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 575
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 577
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 578
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    .line 579
    .local v4, "requestedPermissions":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 580
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 582
    :cond_0
    if-eqz v4, :cond_1

    array-length v6, v4

    if-lez v6, :cond_1

    .line 583
    array-length v7, v4

    move v6, v5

    :goto_0
    if-lt v6, v7, :cond_2

    .line 593
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "requestedPermissions":[Ljava/lang/String;
    :cond_1
    :goto_1
    return v5

    .line 583
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "requestedPermissions":[Ljava/lang/String;
    :cond_2
    aget-object v2, v4, v6

    .line 584
    .local v2, "per":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_3

    .line 585
    const/4 v5, 0x1

    goto :goto_1

    .line 583
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 589
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "per":Ljava/lang/String;
    .end local v4    # "requestedPermissions":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "hasPermissionDeclared exception:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;Lcom/netease/pushclient/PushManager$PushManagerCallback;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/netease/pushclient/PushManager$PushManagerCallback;

    .prologue
    const/16 v12, 0x17

    .line 60
    sget-object v9, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "init, context:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v9, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "sdkVersion:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pushclient/PushManager;->getSdkVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v9, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    const-string v10, "verCode:18"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sput-object p0, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    .line 64
    sput-object p1, Lcom/netease/pushclient/PushManager;->s_callback:Lcom/netease/pushclient/PushManager$PushManagerCallback;

    .line 71
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.netease.push.action.service.PUSHSERVICE2"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v7, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 73
    .local v3, "packageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 74
    .local v0, "correctManifest":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "packageThis":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 82
    :goto_0
    if-nez v0, :cond_2

    .line 83
    const-string v1, "The intent-filter for service com.netease.pushservice.PushService in AndroidManifest should be:com.netease.push.action.service.PUSHSERVICE2"

    .line 84
    .local v1, "err":Ljava/lang/String;
    sget-object v9, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v9, Lcom/netease/pushclient/PushManager;->s_callback:Lcom/netease/pushclient/PushManager$PushManagerCallback;

    invoke-interface {v9, v1}, Lcom/netease/pushclient/PushManager$PushManagerCallback;->onInitFailed(Ljava/lang/String;)V

    .line 86
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 75
    .end local v1    # "err":Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 76
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 77
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 79
    goto :goto_0

    .line 89
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    sget-object v9, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v8, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 90
    .local v8, "targetSdkVersion":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .local v2, "osVersion":I
    sget-object v9, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "targetSdkVersion:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v9, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "osVersion:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-lt v8, v12, :cond_3

    if-lt v2, v12, :cond_3

    .line 94
    invoke-static {}, Lcom/netease/pushclient/PushManager;->checkPermissions()V

    .line 99
    :goto_1
    return-void

    .line 96
    :cond_3
    invoke-static {}, Lcom/netease/pushclient/PushManager;->initImpl()V

    .line 97
    sget-object v9, Lcom/netease/pushclient/PushManager;->s_callback:Lcom/netease/pushclient/PushManager$PushManagerCallback;

    invoke-interface {v9}, Lcom/netease/pushclient/PushManager$PushManagerCallback;->onInitSuccess()V

    goto :goto_1
.end method

.method private static initImpl()V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    const-string v1, "initImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v0, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/push/utils/PushSetting;->checkWriteLocation(Landroid/content/Context;)V

    .line 104
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/inner/pushclient/PushManager;->init(Landroid/content/Context;)V

    .line 105
    sget-object v0, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/pushclient/NativePushManager;->init(Landroid/content/Context;)V

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/pushclient/PushManager;->s_initialized:Z

    .line 107
    sget-object v0, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/pushclient/PushManager;->checkPushServiceType(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method private static onRequestPermissionsGranted(ILjava/lang/String;Z)V
    .locals 15
    .param p0, "reqCode"    # I
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    .line 211
    sget-object v11, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    const-string v12, "onRequestPermissionsGranted"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v11, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "reqCode:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v11, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "permission:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v11, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "granted:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v11, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "s_context:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v11, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "s_initialized:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v13, Lcom/netease/pushclient/PushManager;->s_initialized:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-nez p2, :cond_6

    .line 218
    sget-object v11, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "onRequestPermissionsGranted refused, s_context:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget v11, Lcom/netease/pushclient/PushManager;->PERMISSION_REQ_CODE:I

    if-eq v11, p0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    sget-object v11, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    if-eqz v11, :cond_0

    sget-boolean v11, Lcom/netease/pushclient/PushManager;->s_initialized:Z

    if-nez v11, :cond_0

    .line 225
    const-string v10, ""

    .line 226
    .local v10, "title":Ljava/lang/String;
    const-string v4, ""

    .line 227
    .local v4, "msg":Ljava/lang/String;
    const-string v5, "OK"

    .line 229
    .local v5, "ok":Ljava/lang/String;
    :try_start_0
    sget-object v11, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "ngpush_permission_alert_title"

    const-string v13, "string"

    sget-object v14, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 230
    .local v9, "resIDTitle":I
    sget-object v11, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "ngpush_permission_alert_msg"

    const-string v13, "string"

    sget-object v14, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 231
    .local v7, "resIDMsg":I
    sget-object v11, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "ngpush_permission_alert_ok"

    const-string v13, "string"

    sget-object v14, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 232
    .local v8, "resIDOk":I
    if-lez v9, :cond_2

    if-gtz v7, :cond_4

    .line 233
    :cond_2
    invoke-static {}, Lcom/netease/pushclient/PushManager;->initImpl()V

    .line 234
    sget-object v11, Lcom/netease/pushclient/PushManager;->s_callback:Lcom/netease/pushclient/PushManager$PushManagerCallback;

    invoke-interface {v11}, Lcom/netease/pushclient/PushManager$PushManagerCallback;->onInitSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v7    # "resIDMsg":I
    .end local v8    # "resIDOk":I
    .end local v9    # "resIDTitle":I
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 250
    new-instance v11, Landroid/app/AlertDialog$Builder;

    sget-object v12, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 251
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 253
    const/4 v11, -0x1

    new-instance v12, Lcom/netease/pushclient/PushManager$1;

    invoke-direct {v12}, Lcom/netease/pushclient/PushManager$1;-><init>()V

    invoke-virtual {v1, v11, v5, v12}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 261
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 237
    .end local v1    # "alertDialog":Landroid/app/AlertDialog;
    .restart local v7    # "resIDMsg":I
    .restart local v8    # "resIDOk":I
    .restart local v9    # "resIDTitle":I
    :cond_4
    :try_start_1
    sget-object v11, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 238
    sget-object v11, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 239
    if-lez v8, :cond_3

    .line 240
    sget-object v11, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 241
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 242
    const-string v5, "OK"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 263
    .end local v7    # "resIDMsg":I
    .end local v8    # "resIDOk":I
    .end local v9    # "resIDTitle":I
    :cond_5
    invoke-static {}, Lcom/netease/pushclient/PushManager;->initImpl()V

    .line 264
    sget-object v11, Lcom/netease/pushclient/PushManager;->s_callback:Lcom/netease/pushclient/PushManager$PushManagerCallback;

    invoke-interface {v11}, Lcom/netease/pushclient/PushManager$PushManagerCallback;->onInitSuccess()V

    goto/16 :goto_0

    .line 268
    .end local v4    # "msg":Ljava/lang/String;
    .end local v5    # "ok":Ljava/lang/String;
    .end local v10    # "title":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    sget-object v11, Lcom/netease/pushclient/PushManager;->s_permissions:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lt v3, v11, :cond_7

    .line 274
    invoke-static {}, Lcom/netease/pushclient/PushManager;->requestPermission()V

    goto/16 :goto_0

    .line 269
    :cond_7
    sget-object v11, Lcom/netease/pushclient/PushManager;->s_permissions:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 270
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 271
    sget-object v12, Lcom/netease/pushclient/PushManager;->s_permissions:Ljava/util/List;

    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-interface {v12, v3, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p0, "reqCode"    # I
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 195
    sget-object v1, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    const-string v3, "onRequestPermissionsResult"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v1, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "s_context:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v1, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reqCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "permissions:"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    if-lez v1, :cond_1

    aget-object v1, p1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "grantResults:"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p2

    if-lez v1, :cond_2

    aget v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v1, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    if-nez v1, :cond_3

    .line 208
    :cond_0
    :goto_2
    return-void

    .line 198
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 199
    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 203
    :cond_3
    array-length v1, p2

    if-lez v1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 204
    aget v1, p2, v2

    if-nez v1, :cond_4

    const/4 v0, 0x1

    .line 205
    .local v0, "granted":Z
    :goto_3
    sget-object v1, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "permission granted for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    aget-object v1, p1, v2

    invoke-static {p0, v1, v0}, Lcom/netease/pushclient/PushManager;->onRequestPermissionsGranted(ILjava/lang/String;Z)V

    goto :goto_2

    .end local v0    # "granted":Z
    :cond_4
    move v0, v2

    .line 204
    goto :goto_3
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method private static readConfig(Landroid/content/Context;)V
    .locals 15
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 479
    const-string v12, "miui"

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/netease/pushclient/PushManager;->setAppID(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v12, "huawei"

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/netease/pushclient/PushManager;->setAppID(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v12, "miui"

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/netease/pushclient/PushManager;->setAppKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v12, "huawei"

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/netease/pushclient/PushManager;->setAppKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v12, "gcm"

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/netease/pushclient/PushManager;->setSenderID(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 486
    .local v10, "packagename":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ".ngpush.miui"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, "fConf":Ljava/lang/String;
    const/4 v8, 0x0

    .line 489
    .local v8, "jsonStr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v12, v5, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v6

    .line 490
    .local v6, "is":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 491
    .local v2, "count":I
    if-lez v2, :cond_0

    .line 492
    new-array v3, v2, [B

    .line 493
    .local v3, "data":[B
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    .line 494
    new-instance v9, Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-direct {v9, v3, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "jsonStr":Ljava/lang/String;
    .local v9, "jsonStr":Ljava/lang/String;
    move-object v8, v9

    .line 500
    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "jsonStr":Ljava/lang/String;
    .restart local v8    # "jsonStr":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v8, :cond_2

    .line 502
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 503
    .local v7, "jsonObj":Lorg/json/JSONObject;
    const-string v12, "APPID"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "appid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 505
    const-string v12, "miui"

    invoke-static {v12, v0}, Lcom/netease/pushclient/PushManager;->setAppID(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_1
    const-string v12, "APPKEY"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "appkey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 509
    const-string v12, "miui"

    invoke-static {v12, v1}, Lcom/netease/pushclient/PushManager;->setAppKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 518
    .end local v0    # "appid":Ljava/lang/String;
    .end local v1    # "appkey":Ljava/lang/String;
    .end local v7    # "jsonObj":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ".ngpush.huawei"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 519
    const/4 v8, 0x0

    .line 521
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v12, v5, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v6

    .line 522
    .restart local v6    # "is":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 523
    .restart local v2    # "count":I
    if-lez v2, :cond_3

    .line 524
    new-array v3, v2, [B

    .line 525
    .restart local v3    # "data":[B
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    .line 526
    new-instance v9, Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-direct {v9, v3, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v8    # "jsonStr":Ljava/lang/String;
    .restart local v9    # "jsonStr":Ljava/lang/String;
    move-object v8, v9

    .line 532
    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "jsonStr":Ljava/lang/String;
    .restart local v8    # "jsonStr":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    .line 534
    :try_start_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 535
    .restart local v7    # "jsonObj":Lorg/json/JSONObject;
    const-string v12, "APPID"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    .restart local v0    # "appid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 537
    const-string v12, "huawei"

    invoke-static {v12, v0}, Lcom/netease/pushclient/PushManager;->setAppID(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 546
    .end local v0    # "appid":Ljava/lang/String;
    .end local v7    # "jsonObj":Lorg/json/JSONObject;
    :cond_4
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ".ngpush.gcm"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 547
    const/4 v8, 0x0

    .line 549
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v12, v5, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v6

    .line 550
    .restart local v6    # "is":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 551
    .restart local v2    # "count":I
    if-lez v2, :cond_5

    .line 552
    new-array v3, v2, [B

    .line 553
    .restart local v3    # "data":[B
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    .line 554
    new-instance v9, Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-direct {v9, v3, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .end local v8    # "jsonStr":Ljava/lang/String;
    .restart local v9    # "jsonStr":Ljava/lang/String;
    move-object v8, v9

    .line 560
    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "jsonStr":Ljava/lang/String;
    .restart local v8    # "jsonStr":Ljava/lang/String;
    :cond_5
    :goto_4
    if-eqz v8, :cond_6

    .line 562
    :try_start_5
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 563
    .restart local v7    # "jsonObj":Lorg/json/JSONObject;
    const-string v12, "SENDERID"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 564
    .local v11, "senderid":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 565
    const-string v12, "gcm"

    invoke-static {v12, v11}, Lcom/netease/pushclient/PushManager;->setSenderID(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 572
    .end local v7    # "jsonObj":Lorg/json/JSONObject;
    .end local v11    # "senderid":Ljava/lang/String;
    :cond_6
    :goto_5
    return-void

    .line 496
    :catch_0
    move-exception v4

    .line 497
    .local v4, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "config file not found:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", err:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 511
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 512
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v12, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "parse config file:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", err:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 528
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 529
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v12, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "config file not found:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", err:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 539
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 540
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v12, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "parse config file:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", err:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 556
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 557
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v12, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "config file not found:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 567
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v4

    .line 568
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v12, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "parse config file:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", err:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5
.end method

.method private static requestPermission()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 160
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    const-string v4, "requestPermission"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "s_context:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v2, ""

    .line 163
    .local v2, "permission":Ljava/lang/String;
    sget-object v3, Lcom/netease/pushclient/PushManager;->s_permissions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 169
    :goto_0
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "permission:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onRequestPermissionsGranted over, s_context:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v3, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 173
    invoke-static {}, Lcom/netease/pushclient/PushManager;->initImpl()V

    .line 174
    sget-object v3, Lcom/netease/pushclient/PushManager;->s_callback:Lcom/netease/pushclient/PushManager$PushManagerCallback;

    invoke-interface {v3}, Lcom/netease/pushclient/PushManager$PushManagerCallback;->onInitSuccess()V

    .line 192
    :cond_1
    :goto_1
    return-void

    .line 163
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 164
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v2    # "permission":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 166
    .restart local v2    # "permission":Ljava/lang/String;
    goto :goto_0

    .line 179
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_3
    sget-object v3, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 181
    :try_start_0
    sget-object v3, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    sget v5, Lcom/netease/pushclient/PushManager;->PERMISSION_REQ_CODE:I

    invoke-static {v3, v4, v5}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 182
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "requestPermissions "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "requestPermissions "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    sget v3, Lcom/netease/pushclient/PushManager;->PERMISSION_REQ_CODE:I

    invoke-static {v3, v2, v6}, Lcom/netease/pushclient/PushManager;->onRequestPermissionsGranted(ILjava/lang/String;Z)V

    goto :goto_1

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v3, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "has been granted permission:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget v3, Lcom/netease/pushclient/PushManager;->PERMISSION_REQ_CODE:I

    invoke-static {v3, v2, v6}, Lcom/netease/pushclient/PushManager;->onRequestPermissionsGranted(ILjava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method public static setAppID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "serviceType"    # Ljava/lang/String;
    .param p1, "appID"    # Ljava/lang/String;

    .prologue
    .line 387
    sget-boolean v0, Lcom/netease/pushclient/PushManager;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 388
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/netease/inner/pushclient/PushManager;->setAppID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 390
    :cond_0
    return-void
.end method

.method public static setAppKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "serviceType"    # Ljava/lang/String;
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 401
    sget-boolean v0, Lcom/netease/pushclient/PushManager;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 402
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/netease/inner/pushclient/PushManager;->setAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 404
    :cond_0
    return-void
.end method

.method public static setSenderID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "serviceType"    # Ljava/lang/String;
    .param p1, "senderID"    # Ljava/lang/String;

    .prologue
    .line 370
    sget-boolean v0, Lcom/netease/pushclient/PushManager;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 371
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/netease/inner/pushclient/PushManager;->setSenderID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 373
    :cond_0
    return-void
.end method

.method private static setServiceType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 418
    sget-object v0, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    const-string v1, "setServiceType"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    sget-object v0, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ctx:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-object v0, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/inner/pushclient/PushManager;->setServiceType(Landroid/content/Context;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public static startService()V
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    const-string v1, "startService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-boolean v0, Lcom/netease/pushclient/PushManager;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/inner/pushclient/PushManager;->startService(Landroid/content/Context;)V

    .line 288
    :cond_0
    return-void
.end method

.method public static stopService()V
    .locals 2

    .prologue
    .line 291
    sget-object v0, Lcom/netease/pushclient/PushManager;->TAG:Ljava/lang/String;

    const-string v1, "stopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-boolean v0, Lcom/netease/pushclient/PushManager;->s_initialized:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcom/netease/inner/pushclient/PushManager;->getInstance()Lcom/netease/inner/pushclient/PushManager;

    move-result-object v0

    sget-object v1, Lcom/netease/pushclient/PushManager;->s_context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/inner/pushclient/PushManager;->stopService(Landroid/content/Context;)V

    .line 295
    :cond_0
    return-void
.end method
