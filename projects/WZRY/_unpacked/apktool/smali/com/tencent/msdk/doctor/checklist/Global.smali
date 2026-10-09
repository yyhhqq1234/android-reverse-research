.class public Lcom/tencent/msdk/doctor/checklist/Global;
.super Lcom/tencent/msdk/doctor/CheckBase;
.source "Global.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "mContext"    # Landroid/app/Activity;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/tencent/msdk/doctor/CheckBase;-><init>(Landroid/app/Activity;)V

    .line 24
    return-void
.end method

.method private containPermissions(Ljava/util/List;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p2, "needPermissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "permissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "checkResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 104
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing Android Permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return-object v0
.end method


# virtual methods
.method public check()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v2, "checkResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, ""

    .line 31
    .local v7, "packageName":Ljava/lang/String;
    const-string v0, ""

    .line 32
    .local v0, "channel":Ljava/lang/String;
    const-string v1, "CHANNEL"

    .line 33
    .local v1, "channelKey":Ljava/lang/String;
    const/4 v6, 0x0

    .line 34
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    const/16 v10, 0xd

    new-array v5, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "android.permission.INTERNET"

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const-string v11, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v11, v5, v10

    const/4 v10, 0x2

    const-string v11, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v11, v5, v10

    const/4 v10, 0x3

    const-string v11, "android.permission.READ_PHONE_STATE"

    aput-object v11, v5, v10

    const/4 v10, 0x4

    const-string v11, "android.permission.ACCESS_WIFI_STATE"

    aput-object v11, v5, v10

    const/4 v10, 0x5

    const-string v11, "android.permission.CHANGE_WIFI_STATE"

    aput-object v11, v5, v10

    const/4 v10, 0x6

    const-string v11, "android.permission.RESTART_PACKAGES"

    aput-object v11, v5, v10

    const/4 v10, 0x7

    const-string v11, "android.permission.GET_TASKS"

    aput-object v11, v5, v10

    const/16 v10, 0x8

    const-string v11, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    aput-object v11, v5, v10

    const/16 v10, 0x9

    const-string v11, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v11, v5, v10

    const/16 v10, 0xa

    const-string v11, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v11, v5, v10

    const/16 v10, 0xb

    const-string v11, "android.permission.BLUETOOTH"

    aput-object v11, v5, v10

    const/16 v10, 0xc

    const-string v11, "android.permission.BLUETOOTH_ADMIN"

    aput-object v11, v5, v10

    .line 51
    .local v5, "needPermissions":[Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tencent/msdk/pf/WGPfManager;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v10, "00000000"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/tencent/msdk/doctor/checklist/Global;->mContext:Landroid/app/Activity;

    .line 53
    invoke-static {v10, v1}, Lcom/tencent/msdk/config/ConfigManager;->readValueByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 54
    :cond_0
    const-string v10, "You are using a test channel"

    invoke-static {v10}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 59
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/tencent/msdk/doctor/checklist/Global;->mContext:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 60
    .local v9, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/tencent/msdk/doctor/checklist/Global;->mContext:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 61
    if-nez v9, :cond_4

    .line 62
    const-string v10, "PackageManager is null, check fail."

    invoke-static {v10}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 98
    :cond_2
    :goto_1
    return-object v2

    .line 55
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 56
    const-string v10, "channelID is empty"

    invoke-static {v10}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    const/16 v10, 0x1000

    :try_start_0
    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 73
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 74
    .local v8, "permissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v8, v5}, Lcom/tencent/msdk/doctor/checklist/Global;->containPermissions(Ljava/util/List;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 77
    .local v4, "launchIntent":Landroid/content/Intent;
    if-nez v4, :cond_5

    .line 78
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " the package does not contain "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 67
    .end local v4    # "launchIntent":Landroid/content/Intent;
    .end local v8    # "permissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 68
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 69
    const-string v10, "Give sdk a error Activity in Initialized"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "launchIntent":Landroid/content/Intent;
    .restart local v8    # "permissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/tencent/msdk/doctor/checklist/Global;->mContext:Landroid/app/Activity;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 82
    const-string v10, "The Activity of Initialization MSDK isn\'t launch Activity, this may cause the error eassily"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
