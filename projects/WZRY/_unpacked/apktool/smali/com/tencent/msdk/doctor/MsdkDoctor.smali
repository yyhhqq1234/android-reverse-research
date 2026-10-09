.class public Lcom/tencent/msdk/doctor/MsdkDoctor;
.super Ljava/lang/Object;
.source "MsdkDoctor.java"


# instance fields
.field private checkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/msdk/doctor/CheckBase;",
            ">;"
        }
    .end annotation
.end field

.field private checkedKey:Ljava/lang/String;

.field private ctx:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "configChecked"

    iput-object v0, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkedKey:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    .line 39
    iget-object v0, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/msdk/doctor/checklist/Global;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/doctor/checklist/Global;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/msdk/doctor/checklist/QQ;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/doctor/checklist/QQ;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/msdk/doctor/checklist/WX;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/doctor/checklist/WX;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/msdk/doctor/checklist/Push;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/doctor/checklist/Push;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/msdk/doctor/checklist/WebView;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/doctor/checklist/WebView;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/msdk/doctor/checklist/Notice;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/doctor/checklist/Notice;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/msdk/doctor/checklist/Myapp;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/doctor/checklist/Myapp;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method


# virtual methods
.method public checkAll()Ljava/util/ArrayList;
    .locals 4
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
    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v1, "finalResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 52
    iget-object v3, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 53
    iget-object v3, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/msdk/doctor/CheckBase;

    invoke-virtual {v3}, Lcom/tencent/msdk/doctor/CheckBase;->check()Ljava/util/ArrayList;

    move-result-object v0

    .line 54
    .local v0, "checkResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    .end local v0    # "checkResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_1
    return-object v1
.end method

.method public checkConfig()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 63
    iget-object v6, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    iget-object v7, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkedKey:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    :goto_0
    return v4

    .line 67
    :cond_0
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/msdk/WeGame;->logPlatformSDKVersion()V

    .line 69
    invoke-virtual {p0}, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkWxConfig()Z

    move-result v3

    .line 70
    .local v3, "wxConfig":Z
    invoke-virtual {p0}, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkQQConfig()Z

    move-result v2

    .line 71
    .local v2, "qqConfig":Z
    invoke-virtual {p0}, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkMsdkConfig()Z

    move-result v0

    .line 72
    .local v0, "msdkConfig":Z
    invoke-virtual {p0}, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkOtherConfig()Z

    move-result v1

    .line 74
    .local v1, "otherConfig":Z
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 75
    iget-object v5, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    iget-object v6, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkedKey:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 78
    :cond_1
    const-string v4, "Config Error, Please correct all config error before go on"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    move v4, v5

    .line 79
    goto :goto_0
.end method

.method public checkMsdkConfig()Z
    .locals 8

    .prologue
    .line 193
    const-string v5, "msdkconfig.ini"

    .line 194
    .local v5, "msdkConfigFileName":Ljava/lang/String;
    const/4 v2, 0x1

    .line 195
    .local v2, "isConfigFileExited":Z
    const/4 v3, 0x1

    .line 198
    .local v3, "isDomainRight":Z
    :try_start_0
    iget-object v6, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 199
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 200
    const/4 v2, 0x1

    .line 202
    iget-object v6, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-static {v6}, Lcom/tencent/msdk/config/ConfigManager;->getApiDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "domain":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 204
    const/4 v3, 0x0

    .line 205
    const-string v6, "Msdk: MSDK_URL is not set properly in assets/msdkconfig.ini"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 220
    .end local v0    # "domain":Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    const/4 v6, 0x1

    :goto_1
    return v6

    .line 206
    .restart local v0    # "domain":Ljava/lang/String;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_0

    .line 207
    const/4 v3, 0x0

    .line 208
    const-string v6, "Msdk: MSDK_URL in msdkconfig.ini should not end with \'/\', maybe you should delete the \'/\' "

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    .end local v0    # "domain":Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "Msdk: msdkconfig.ini file must be put into assets dir"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 217
    const/4 v2, 0x0

    goto :goto_0

    .line 211
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    const-string v6, "Msdk: msdkconfig.ini must be put into assets dir"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    const/4 v2, 0x0

    goto :goto_0

    .line 220
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public checkOtherConfig()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public checkQQConfig()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    .line 150
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v10

    iget-object v10, v10, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    invoke-static {v10}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v9

    .line 153
    :cond_1
    const/4 v4, 0x1

    .line 154
    .local v4, "isAuthActivityExisted":Z
    const/4 v5, 0x1

    .line 156
    .local v5, "isQQAppIdRight":Z
    iget-object v10, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, "packageName":Ljava/lang/String;
    const-string v1, "com.tencent.tauth.AuthActivity"

    .line 159
    .local v1, "cls":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x80

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 161
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_4

    .line 162
    const/4 v4, 0x0

    .line 187
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    if-nez v5, :cond_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 166
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v3, "intent":Landroid/content/Intent;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "tencent"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v11

    iget-object v11, v11, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 168
    iget-object v10, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x10000

    invoke-virtual {v10, v3, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 171
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 172
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 173
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 174
    const/4 v5, 0x1

    .line 178
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    if-nez v5, :cond_2

    .line 179
    const-string v10, "QQ AppID for Initialiezed must be the same as configed in AndroidMenifest.xml "

    invoke-static {v10}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 182
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 184
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1
.end method

.method public checkWxConfig()Z
    .locals 15

    .prologue
    const/4 v11, 0x1

    .line 86
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v12

    iget-object v12, v12, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-static {v12}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v11

    .line 89
    :cond_1
    const/4 v4, 0x1

    .line 90
    .local v4, "isWxaExisted":Z
    const/4 v5, 0x1

    .line 91
    .local v5, "isWxaSingleTop":Z
    const/4 v6, 0x1

    .line 92
    .local v6, "isWxaTaskAffinityDiff":Z
    const/4 v3, 0x1

    .line 94
    .local v3, "isWxAppIdRight":Z
    const-string v8, ""

    .line 95
    .local v8, "packageName":Ljava/lang/String;
    iget-object v12, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 96
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".wxapi.WXEntryActivity"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 98
    .local v10, "wxeClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 99
    const/4 v4, 0x1

    .line 100
    iget-object v12, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v8, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x80

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 102
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_4

    .line 103
    const/4 v4, 0x0

    .line 144
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    if-nez v3, :cond_0

    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 105
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_4
    const/4 v4, 0x1

    .line 107
    iget v12, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq v12, v11, :cond_5

    .line 108
    const/4 v5, 0x0

    .line 109
    const-string v12, "LauchMode of WXEntryActivity should be SingleTop"

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 112
    :cond_5
    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 113
    const/4 v6, 0x0

    .line 114
    const-string/jumbo v12, "taskAffinity of WXEntryActivity must different from you app packageName"

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 117
    :cond_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v2, "intent":Landroid/content/Intent;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v13

    iget-object v13, v13, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 119
    iget-object v12, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/high16 v13, 0x10000

    invoke-virtual {v12, v2, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 122
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 123
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 124
    .local v9, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 125
    const/4 v3, 0x1

    .line 130
    .end local v9    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_8
    if-nez v3, :cond_2

    .line 131
    const-string v12, "Weixin AppID for Initialiezed must be the same as configed in AndroidMenifest.xml "

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 134
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Weixin: WXEntryActivity.java must be put into package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".wxapi"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 137
    const/4 v4, 0x0

    .line 138
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 139
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 140
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Weixin: WXEntryActivity.java must be put into package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".wxapi"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1
.end method
