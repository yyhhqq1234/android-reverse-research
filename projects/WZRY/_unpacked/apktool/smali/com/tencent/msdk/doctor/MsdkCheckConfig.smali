.class public Lcom/tencent/msdk/doctor/MsdkCheckConfig;
.super Ljava/lang/Object;
.source "MsdkCheckConfig.java"


# instance fields
.field private final OFFERID:B

.field private final QQAPPID:B

.field private final QQAPPKEY:B

.field private final QQBASEINFO:B

.field private final WXAPPID:B

.field private final WXBASEINFO:B

.field private channelFileName:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private msdkConfigFileName:Ljava/lang/String;

.field private needCheck:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x13

    iput-byte v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->QQBASEINFO:B

    .line 34
    const/16 v0, 0x1c

    iput-byte v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->WXBASEINFO:B

    .line 36
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->QQAPPID:B

    .line 37
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->QQAPPKEY:B

    .line 38
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->WXAPPID:B

    .line 39
    const/16 v0, 0x10

    iput-byte v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->OFFERID:B

    .line 42
    const-string v0, "msdkconfig.ini"

    iput-object v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->msdkConfigFileName:Ljava/lang/String;

    .line 43
    const-string v0, "channel.ini"

    iput-object v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->channelFileName:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    .line 45
    invoke-direct {p0}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->isNeedCheck()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->needCheck:Z

    .line 46
    return-void
.end method

.method private containPermissions(Ljava/util/List;[Ljava/lang/String;)Z
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
            ")Z"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "permissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 173
    .local v0, "containAllPermissions":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 174
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Msdk: Missing Android Permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    .line 173
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_1
    return v0
.end method

.method private getValueFromAssetsFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 151
    .local v2, "properties":Ljava/util/Properties;
    :try_start_0
    iget-object v4, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 152
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    if-eqz v1, :cond_0

    .line 160
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    :cond_0
    :goto_0
    const-string v4, ""

    invoke-virtual {v2, p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "value":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v3

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 154
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Msdk: read assets/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 156
    const-string v3, "error"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    if-eqz v1, :cond_1

    .line 160
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 161
    :catch_2
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 158
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 160
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 163
    :cond_2
    :goto_2
    throw v4

    .line 161
    :catch_3
    move-exception v0

    .line 162
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private isNeedCheck()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 52
    const-string v0, "MSDK_URL"

    .line 53
    .local v0, "urlKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->msdkConfigFileName:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->getValueFromAssetsFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "urlValue":Ljava/lang/String;
    const-string v3, "error"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v2

    .line 56
    :cond_1
    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    const-string v3, "Msdk: MSDK_URL is not set properly in assets/msdkconfig.ini"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_3

    .line 60
    const-string v3, "Msdk: MSDK_URL in msdkconfig.ini should not end with \'/\', maybe you should delete the \'/\' "

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    const-string v3, "msdktest.qq.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "opensdktest.tencent.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "msdkdev.qq.com"

    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 65
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 66
    :cond_5
    const-string v3, "opensdk.tencent.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "msdk.qq.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    const-string v3, "Msdk: MSDK_URL may be illegal, are you sure to use it"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queryBaseInfo(B)Z
    .locals 1
    .param p1, "selectCode"    # B

    .prologue
    .line 142
    const/4 v0, 0x1

    .line 144
    .local v0, "bRet":Z
    return v0
.end method

.method private queryIntentFilter(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "isConfigCorrect":Z
    iget-object v3, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 314
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 315
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    const/4 v0, 0x1

    .line 320
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v0, :cond_2

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Msdk: the intent-filter of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has not be configured correctly"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 323
    :cond_2
    return v0
.end method


# virtual methods
.method public checkAllConfig()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 85
    iget-boolean v1, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->needCheck:Z

    if-nez v1, :cond_1

    .line 86
    const-string v1, "MSDK:MsdkCheckConfig is closed"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->checkBasicConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->checkQQConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->checkWXConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->checkPushConfig()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkBasicConfig()Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 98
    iget-boolean v10, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->needCheck:Z

    if-nez v10, :cond_0

    .line 99
    const-string v9, "MSDK:MsdkCheckConfig is closed"

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 135
    :goto_0
    return v8

    .line 102
    :cond_0
    const-string v5, ""

    .line 103
    .local v5, "packageName":Ljava/lang/String;
    const-string v0, ""

    .line 104
    .local v0, "channel":Ljava/lang/String;
    const-string v1, "CHANNEL"

    .line 105
    .local v1, "channelKey":Ljava/lang/String;
    const/4 v4, 0x0

    .line 106
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    const/16 v10, 0xb

    new-array v3, v10, [Ljava/lang/String;

    const-string v10, "android.permission.INTERNET"

    aput-object v10, v3, v9

    const-string v10, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v10, v3, v8

    const/4 v8, 0x2

    const-string v10, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v10, v3, v8

    const/4 v8, 0x3

    const-string v10, "android.permission.READ_PHONE_STATE"

    aput-object v10, v3, v8

    const/4 v8, 0x4

    const-string v10, "android.permission.ACCESS_WIFI_STATE"

    aput-object v10, v3, v8

    const/4 v8, 0x5

    const-string v10, "android.permission.CHANGE_WIFI_STATE"

    aput-object v10, v3, v8

    const/4 v8, 0x6

    const-string v10, "android.permission.RESTART_PACKAGES"

    aput-object v10, v3, v8

    const/4 v8, 0x7

    const-string v10, "android.permission.GET_TASKS"

    aput-object v10, v3, v8

    const/16 v8, 0x8

    const-string v10, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    aput-object v10, v3, v8

    const/16 v8, 0x9

    const-string v10, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v10, v3, v8

    const/16 v8, 0xa

    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v10, v3, v8

    .line 119
    .local v3, "needPermissions":[Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/msdk/pf/WGPfManager;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v8, "00000000"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->channelFileName:Ljava/lang/String;

    invoke-direct {p0, v1, v8}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->getValueFromAssetsFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 121
    :cond_1
    const-string v8, "Msdk: You are using a test channel"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 126
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 127
    .local v7, "pm":Landroid/content/pm/PackageManager;
    iget-object v8, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 129
    const/16 v8, 0x1000

    :try_start_0
    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 134
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 135
    .local v6, "permissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v6, v3}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->containPermissions(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_0

    .line 122
    .end local v6    # "permissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 123
    const-string v8, "Msdk: channelID is empty"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 130
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v8, v9

    .line 132
    goto/16 :goto_0
.end method

.method public checkPushConfig()Z
    .locals 15

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 397
    iget-boolean v12, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->needCheck:Z

    if-nez v12, :cond_1

    .line 398
    const-string v12, "MSDK:MsdkCheckConfig is closed"

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    move v2, v11

    .line 481
    :cond_0
    :goto_0
    return v2

    .line 401
    :cond_1
    const-string v12, "PUSH"

    iget-object v13, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->msdkConfigFileName:Ljava/lang/String;

    invoke-direct {p0, v12, v13}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->getValueFromAssetsFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 402
    .local v8, "pushSwitch":Ljava/lang/String;
    const-string v12, "false"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move v2, v11

    .line 403
    goto :goto_0

    .line 404
    :cond_2
    const-string/jumbo v12, "true"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 405
    const-string v11, "Msdk: PUSH in assets/msdkconfig.ini is not set properly"

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_3
    const/4 v0, 0x0

    .line 410
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v10, 0x0

    .line 411
    .local v10, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const/4 v9, 0x0

    .line 412
    .local v9, "receiverInfo":Landroid/content/pm/ActivityInfo;
    iget-object v12, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "packageName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".push.ForwardActivity"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 414
    .local v5, "pushActivityName":Ljava/lang/String;
    const-string v7, "com.tencent.msdk.push.HttpPushService"

    .line 415
    .local v7, "pushServiceName":Ljava/lang/String;
    const-string v6, "com.tencent.msdk.push.AlarmReveiver"

    .line 416
    .local v6, "pushReceiverName":Ljava/lang/String;
    const-string v4, ".msdk_push_v_1"

    .line 418
    .local v4, "processName":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 419
    iget-object v12, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x80

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 421
    iget-object v12, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x80

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v10

    .line 423
    iget-object v12, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x80

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 443
    const/4 v2, 0x1

    .line 444
    .local v2, "isCorrect":Z
    iget v12, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v12, v12, 0x20

    const/16 v13, 0x20

    if-eq v12, v13, :cond_4

    .line 445
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msdk: the excludeFromRecents of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " must be true"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 446
    const/4 v2, 0x0

    .line 448
    :cond_4
    iget-boolean v12, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eq v12, v11, :cond_5

    .line 449
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msdk: the exported of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " must be true"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 450
    const/4 v2, 0x0

    .line 452
    :cond_5
    iget v12, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq v12, v11, :cond_6

    .line 453
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msdk: the launchMose of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " must be singleTop"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 454
    const/4 v2, 0x0

    .line 456
    :cond_6
    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 457
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msdk: the taskAffinity of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " must be different from the PackageName of the game: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 459
    const/4 v2, 0x0

    .line 462
    :cond_7
    iget-boolean v12, v10, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eq v12, v11, :cond_8

    .line 463
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Msdk: the exported of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " must be true"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 464
    const/4 v2, 0x0

    .line 471
    :cond_8
    iget-object v11, v10, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 472
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Msdk: the process of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " must be .msdk_push_v_1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 473
    const/4 v2, 0x0

    .line 476
    :cond_9
    iget-object v11, v9, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 477
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Msdk: the process of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " must be .msdk_push_v_1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 478
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 425
    .end local v2    # "isCorrect":Z
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 427
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 428
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Msdk: Lack of activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 430
    :cond_a
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 431
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Msdk: Lack of service: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 433
    :cond_b
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 434
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Msdk: Lack of recevice: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 437
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 439
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Msdk: ForwardActivity.java must be put into package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".push"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public checkQQConfig()Z
    .locals 21

    .prologue
    .line 187
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->needCheck:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 188
    const-string v17, "MSDK:MsdkCheckConfig is closed"

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 189
    const/4 v11, 0x1

    .line 304
    :cond_0
    :goto_0
    return v11

    .line 191
    :cond_1
    const/16 v17, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->queryBaseInfo(B)Z

    move-result v17

    if-nez v17, :cond_2

    .line 192
    const/4 v11, 0x0

    goto :goto_0

    .line 194
    :cond_2
    const/4 v2, 0x0

    .line 195
    .local v2, "activityInfo1":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 196
    .local v3, "activityInfo2":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 197
    .local v14, "packageName":Ljava/lang/String;
    const-string v6, "com.tencent.tauth.AuthActivity"

    .line 198
    .local v6, "cls1":Ljava/lang/String;
    const-string v7, "com.tencent.connect.common.AssistActivity"

    .line 199
    .local v7, "cls2":Ljava/lang/String;
    sget-object v16, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 202
    .local v16, "sdkVersion":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    new-instance v18, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x80

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    new-instance v18, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x80

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 217
    const/4 v11, 0x1

    .line 218
    .local v11, "isCorrect":Z
    iget v0, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 219
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Msdk: the launchMose of "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " be singleTask"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 220
    const/4 v11, 0x0

    .line 222
    :cond_3
    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    const/16 v18, 0x80

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 223
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Msdk: the noHistory of "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " must be true"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 224
    const/4 v11, 0x0

    .line 227
    :cond_4
    iget v0, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 228
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Msdk: the screenOrientation of "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " must be portrait"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 229
    const/4 v11, 0x0

    .line 232
    :cond_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 233
    .local v15, "sdk":I
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ge v15, v0, :cond_a

    .line 234
    const/16 v8, 0xa0

    .line 238
    .local v8, "config":I
    :goto_1
    iget v0, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    move/from16 v17, v0

    and-int v17, v17, v8

    move/from16 v0, v17

    if-eq v0, v8, :cond_6

    .line 239
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ge v15, v0, :cond_b

    .line 240
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Msdk: the configChanges of "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " must be "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "orientation|keyboardHidden"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 246
    :goto_2
    const/4 v11, 0x0

    .line 248
    :cond_6
    iget v0, v3, Landroid/content/pm/ActivityInfo;->theme:I

    move/from16 v17, v0

    const v18, 0x1030010

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 249
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Msdk: the theme of "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " must be Theme.Translucent.NoTitleBar"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 250
    const/4 v11, 0x0

    .line 253
    :cond_7
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v10, "intent":Landroid/content/Intent;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "tencent"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 255
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->queryIntentFilter(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 256
    const-string v17, "Msdk: QQ AppID for Initialiezed must be the same as configed in AndroidMenifest.xml"

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 257
    const/4 v11, 0x0

    .line 258
    goto/16 :goto_0

    .line 206
    .end local v8    # "config":I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "isCorrect":Z
    .end local v15    # "sdk":I
    :catch_0
    move-exception v9

    .line 207
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 208
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 209
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Msdk: Lack of activity: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 211
    :cond_8
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 212
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Msdk: Lack of activity: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 214
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 236
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "isCorrect":Z
    .restart local v15    # "sdk":I
    :cond_a
    const/16 v8, 0x4a0

    .restart local v8    # "config":I
    goto/16 :goto_1

    .line 243
    :cond_b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Msdk: the configChanges of "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " must be "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "orientation|screenSize|keyboardHidden"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 260
    .restart local v10    # "intent":Landroid/content/Intent;
    :cond_c
    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v17, "android.intent.category.DEFAULT"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v17, "android.intent.category.BROWSABLE"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->queryIntentFilter(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 264
    const/4 v11, 0x0

    .line 269
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 270
    .local v13, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 273
    invoke-virtual {v13}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    .line 274
    .local v5, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    .line 277
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_e
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 278
    .local v4, "cName":Ljava/lang/String;
    const-string v18, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 281
    const/4 v12, 0x0

    .line 283
    .local v12, "launchActivity":Landroid/content/pm/ActivityInfo;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    new-instance v19, Landroid/content/ComponentName;

    .line 284
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x80

    .line 283
    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 290
    iget v0, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move/from16 v18, v0

    and-int v18, v18, v8

    move/from16 v0, v18

    if-eq v0, v8, :cond_e

    .line 291
    const/16 v18, 0xd

    move/from16 v0, v18

    if-ge v15, v0, :cond_f

    .line 292
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Msdk: if the game Activity is Launch Activity,the configChanges of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 293
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " must be orientation|keyboardHidden"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 292
    invoke-static/range {v18 .. v18}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 300
    :goto_4
    const/4 v11, 0x0

    goto :goto_3

    .line 286
    :catch_1
    move-exception v9

    .line 287
    .restart local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 288
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 296
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_f
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Msdk: if the game Activity is Launch Activity,the configChanges of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 297
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " must be orientation|screenSize|keyboardHidden"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 296
    invoke-static/range {v18 .. v18}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public checkWXConfig()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 333
    iget-boolean v7, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->needCheck:Z

    if-nez v7, :cond_1

    .line 334
    const-string v7, "MSDK:MsdkCheckConfig is closed"

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    move v3, v6

    .line 389
    :cond_0
    :goto_0
    return v3

    .line 337
    :cond_1
    const/16 v7, 0x1c

    invoke-direct {p0, v7}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->queryBaseInfo(B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, "packageName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".wxapi.WXEntryActivity"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 345
    .local v5, "wxeClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 346
    iget-object v7, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 358
    const/4 v3, 0x1

    .line 359
    .local v3, "isCorrect":Z
    iget v7, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v7, v7, 0x20

    const/16 v8, 0x20

    if-eq v7, v8, :cond_2

    .line 360
    const-string v7, "Msdk: the excludeFromRecents of WXEntryActivity must be true"

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 361
    const/4 v3, 0x0

    .line 363
    :cond_2
    iget-boolean v7, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eq v7, v6, :cond_3

    .line 364
    const-string v7, "Msdk: the exported of WXEntryActivity must be true"

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 365
    const/4 v3, 0x0

    .line 367
    :cond_3
    iget v7, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq v7, v6, :cond_4

    .line 368
    const-string v6, "Msdk: the launchMose of WXEntryActivity must be singleTop"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 369
    const/4 v3, 0x0

    .line 371
    :cond_4
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 372
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Msdk: the taskAffinity of WXEntryActivity must be different from the PackageName of the game: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 373
    const/4 v3, 0x0

    .line 376
    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 377
    .local v2, "intent":Landroid/content/Intent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 378
    invoke-direct {p0, v2, v5}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->queryIntentFilter(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 379
    const-string v6, "Msdk: WeiXin AppID for Initialiezed must be the same as configed in AndroidMenifest.xml"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 380
    const/4 v3, 0x0

    .line 381
    goto/16 :goto_0

    .line 348
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isCorrect":Z
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 350
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Msdk:  Lack of activity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 352
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 354
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Msdk: WXEntryActivity.java must be put into package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".wxapi"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 383
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "isCorrect":Z
    :cond_6
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-direct {p0, v2, v5}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->queryIntentFilter(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 386
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public closeCheck()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->needCheck:Z

    .line 82
    return-void
.end method

.method public openCheck()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->needCheck:Z

    .line 79
    return-void
.end method
