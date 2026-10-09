.class public Lcom/tencent/component/plugin/PluginShellActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PluginShellActivity.java"


# static fields
.field private static final STATE_PLUGIN_INFO:Ljava/lang/String; = "state_plugin_info"

.field private static final STATE_PLUGIN_PLATFORM_ID:Ljava/lang/String; = "state_plugin_platform_id"

.field private static final TAG:Ljava/lang/String; = "PluginShellActivity"


# instance fields
.field private mCreated:Z

.field private mDefaultThemeResource:I

.field private mPlatformId:Ljava/lang/String;

.field private mPlugin:Lcom/tencent/component/plugin/Plugin;

.field private mPluginClassLoader:Ljava/lang/ClassLoader;

.field private mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

.field private mPluginLayoutInflater:Landroid/view/LayoutInflater;

.field private mPluginListener:Lcom/tencent/component/plugin/PluginManager$PluginListener;

.field private mPluginResourceInit:Z

.field private mPluginResources:Landroid/content/res/Resources;

.field private mPluginTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mCreated:Z

    .line 47
    iput-boolean v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginResourceInit:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/component/plugin/PluginShellActivity;)Lcom/tencent/component/plugin/PluginInfo;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginShellActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    return-object v0
.end method

.method private ensureDefaultThemeResource()V
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mDefaultThemeResource:I

    if-nez v0, :cond_0

    .line 282
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    .line 284
    :cond_0
    return-void
.end method

.method private getCurrPluginFragment()Lcom/tencent/component/plugin/PluginFragment;
    .locals 3

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 223
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/tencent/component/plugin/PluginFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/component/plugin/PluginFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPlatformIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 373
    if-nez p1, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 376
    :goto_0
    return-object v0

    .line 375
    :cond_0
    const-string v1, "__plugin_platform_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "platformId":Ljava/lang/String;
    goto :goto_0
.end method

.method private handlePluginNewIntent(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x2

    const v13, -0x20000001

    const/4 v10, 0x0

    const/4 v2, 0x1

    .line 521
    if-nez p1, :cond_0

    .line 522
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "invalid intent null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    .line 527
    .local v1, "currPluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getCurrPluginFragment()Lcom/tencent/component/plugin/PluginFragment;

    move-result-object v0

    .line 530
    .local v0, "currFragment":Lcom/tencent/component/plugin/PluginFragment;
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginShellActivity;->loadPluginIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 531
    .local v4, "newId":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginShellActivity;->loadPluginFragmentFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, "newFragment":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginShellActivity;->loadPluginInfoFromIntent(Landroid/content/Intent;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v6

    .line 536
    .local v6, "newPluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-nez v6, :cond_1

    if-eqz v4, :cond_1

    iget-object v11, v1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 537
    move-object v6, v1

    .line 539
    :cond_1
    if-eqz v6, :cond_2

    if-nez v3, :cond_4

    .line 540
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid plugin "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v6, :cond_3

    .end local v6    # "newPluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :goto_0
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", or fragment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .restart local v6    # "newPluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_3
    move-object v6, v4

    goto :goto_0

    .line 545
    :cond_4
    iget-object v11, v6, Lcom/tencent/component/plugin/PluginInfo;->extraInfo:Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    iget v9, v11, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->singleTop:I

    .line 547
    .local v9, "singleTop":I
    if-eq v9, v2, :cond_5

    if-ne v9, v12, :cond_7

    :cond_5
    move v7, v2

    .line 550
    .local v7, "permit":Z
    :goto_1
    if-ne v9, v2, :cond_9

    .line 551
    iget-object v11, v6, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    iget-object v12, v1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v0, :cond_8

    .line 558
    .local v2, "current":Z
    :goto_2
    if-eqz v7, :cond_d

    .line 559
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 560
    .local v5, "newIntent":Landroid/content/Intent;
    if-eqz v2, :cond_c

    .line 562
    invoke-direct {p0, v5}, Lcom/tencent/component/plugin/PluginShellActivity;->loadPluginFragmentArgsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v8

    .line 563
    .local v8, "pluginData":Landroid/os/Bundle;
    if-eqz v8, :cond_6

    .line 565
    invoke-virtual {v5, v8}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    .line 567
    :cond_6
    invoke-virtual {v0, v5}, Lcom/tencent/component/plugin/PluginFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 582
    .end local v8    # "pluginData":Landroid/os/Bundle;
    :goto_3
    return-void

    .end local v2    # "current":Z
    .end local v5    # "newIntent":Landroid/content/Intent;
    .end local v7    # "permit":Z
    :cond_7
    move v7, v10

    .line 547
    goto :goto_1

    .restart local v7    # "permit":Z
    :cond_8
    move v2, v10

    .line 551
    goto :goto_2

    .line 552
    :cond_9
    if-ne v9, v12, :cond_b

    .line 553
    iget-object v11, v6, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    iget-object v12, v1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .restart local v2    # "current":Z
    :goto_4
    goto :goto_2

    .end local v2    # "current":Z
    :cond_a
    move v2, v10

    goto :goto_4

    .line 555
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "current":Z
    goto :goto_2

    .line 570
    .restart local v5    # "newIntent":Landroid/content/Intent;
    :cond_c
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v10

    and-int/2addr v10, v13

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 571
    invoke-virtual {p0, v5}, Lcom/tencent/component/plugin/PluginShellActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 578
    .end local v5    # "newIntent":Landroid/content/Intent;
    :cond_d
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 579
    .restart local v5    # "newIntent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v10

    and-int/2addr v10, v13

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 580
    invoke-virtual {p0, v5}, Lcom/tencent/component/plugin/PluginShellActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method private initPlugin(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 120
    if-nez p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tencent/component/plugin/PluginShellActivity;->getPlatformIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPlatformId:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tencent/component/plugin/PluginShellActivity;->loadPluginInfoFromIntent(Landroid/content/Intent;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v1

    .line 127
    .local v1, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :goto_0
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPlatformId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    .end local v1    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :goto_1
    return v2

    .line 124
    :cond_0
    const-string v3, "state_plugin_platform_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPlatformId:Ljava/lang/String;

    .line 125
    const-string v3, "state_plugin_info"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/PluginInfo;

    .restart local v1    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    goto :goto_0

    .line 130
    :cond_1
    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 131
    .local v0, "plugin":Lcom/tencent/component/plugin/Plugin;
    :goto_2
    if-eqz v1, :cond_2

    if-nez v0, :cond_5

    .line 132
    :cond_2
    const-string v3, "PluginShellActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to init plugin for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    .end local v1    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    .end local v0    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .restart local v1    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_3
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPlatformId:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/tencent/component/plugin/PluginManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/Plugin;

    move-result-object v0

    goto :goto_2

    .line 132
    .restart local v0    # "plugin":Lcom/tencent/component/plugin/Plugin;
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/tencent/component/plugin/PluginShellActivity;->loadPluginIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 135
    :cond_5
    iget v2, v1, Lcom/tencent/component/plugin/PluginInfo;->theme:I

    invoke-static {v2}, Lcom/tencent/component/plugin/PluginShellActivity;->isFrameworkResource(I)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Lcom/tencent/component/plugin/PluginShellActivity;->isFrameworkPlugin(Lcom/tencent/component/plugin/PluginInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, v1, Lcom/tencent/component/plugin/PluginInfo;->theme:I

    if-eqz v2, :cond_7

    .line 138
    :cond_6
    iget v2, v1, Lcom/tencent/component/plugin/PluginInfo;->theme:I

    invoke-virtual {p0, v2}, Lcom/tencent/component/plugin/PluginShellActivity;->setTheme(I)V

    .line 141
    :cond_7
    invoke-virtual {v0}, Lcom/tencent/component/plugin/Plugin;->notifyStartIfNeeded()V

    .line 143
    iput-object v1, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    .line 144
    iput-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    .line 145
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginClassLoader:Ljava/lang/ClassLoader;

    .line 146
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private initPluginFragment(Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 150
    if-eqz p1, :cond_0

    .line 173
    :goto_0
    return v6

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    .line 154
    .local v2, "plugin":Lcom/tencent/component/plugin/Plugin;
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 155
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/tencent/component/plugin/PluginShellActivity;->loadPluginFragmentFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "pluginFragment":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/tencent/component/plugin/PluginShellActivity;->loadPluginFragmentArgsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v3

    .line 157
    .local v3, "pluginArgs":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 159
    .local v0, "fragment":Lcom/tencent/component/plugin/PluginFragment;
    :try_start_0
    invoke-static {v2, v4, v3}, Lcom/tencent/component/plugin/PluginFragment;->instantiate(Lcom/tencent/component/plugin/Plugin;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/component/plugin/PluginFragment;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :goto_1
    if-nez v0, :cond_1

    .line 164
    const-string v6, "PluginShellActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to init plugin fragment for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v6, 0x0

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v0, p0}, Lcom/tencent/component/plugin/PluginFragment;->beforeAddActivity(Landroid/app/Activity;)V

    .line 169
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 170
    .local v5, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v7, 0x1020002

    invoke-virtual {v5, v7, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 172
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 160
    .end local v5    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private initPluginResources()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 185
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    .line 186
    .local v2, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    .line 188
    .local v1, "plugin":Lcom/tencent/component/plugin/Plugin;
    invoke-static {v2}, Lcom/tencent/component/plugin/PluginShellActivity;->isFrameworkPlugin(Lcom/tencent/component/plugin/PluginInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v4

    .line 193
    :cond_1
    new-instance v5, Lcom/tencent/component/plugin/PluginLayoutInflater;

    invoke-direct {v5, p0, v1}, Lcom/tencent/component/plugin/PluginLayoutInflater;-><init>(Landroid/content/Context;Lcom/tencent/component/plugin/Plugin;)V

    iput-object v5, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginLayoutInflater:Landroid/view/LayoutInflater;

    .line 195
    iget-object v5, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPlatformId:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/tencent/component/plugin/PluginManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/tencent/component/plugin/PluginManager;->getPluginResources(Lcom/tencent/component/plugin/PluginInfo;)Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginResources:Landroid/content/res/Resources;

    .line 196
    iget-object v5, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginResources:Landroid/content/res/Resources;

    if-nez v5, :cond_2

    .line 197
    const-string v4, "PluginShellActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to init plugin resources for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v4, 0x0

    goto :goto_0

    .line 200
    :cond_2
    iget-object v5, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginTheme:Landroid/content/res/Resources$Theme;

    .line 202
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->ensureDefaultThemeResource()V

    .line 205
    iget v5, v2, Lcom/tencent/component/plugin/PluginInfo;->theme:I

    if-eqz v5, :cond_4

    iget v3, v2, Lcom/tencent/component/plugin/PluginInfo;->theme:I

    .line 206
    .local v3, "theme":I
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 207
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    if-eqz v0, :cond_3

    .line 208
    iget-object v5, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 210
    :cond_3
    if-eqz v3, :cond_0

    .line 211
    iget-object v5, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 205
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v3    # "theme":I
    :cond_4
    iget v3, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mDefaultThemeResource:I

    goto :goto_1
.end method

.method private initPluginResourcesIfNeeded()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginResourceInit:Z

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->initPluginResources()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginResourceInit:Z

    .line 181
    iget-boolean v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginResourceInit:Z

    goto :goto_0
.end method

.method private static isFrameworkPlugin(Lcom/tencent/component/plugin/PluginInfo;)Z
    .locals 1
    .param p0, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 403
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginInfo;->isInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFrameworkResource(I)Z
    .locals 2
    .param p0, "resid"    # I

    .prologue
    const/4 v0, 0x1

    .line 399
    ushr-int/lit8 v1, p0, 0x18

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadPluginFragmentArgsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 393
    const/4 v0, 0x0

    .line 394
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "__plugin_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private loadPluginFragmentFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 386
    if-nez p1, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 388
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "__plugin_fragment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadPluginIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 380
    if-nez p1, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 382
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "__intent_plugin"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadPluginInfoFromIntent(Landroid/content/Intent;)Lcom/tencent/component/plugin/PluginInfo;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 356
    if-nez p1, :cond_0

    .line 369
    :goto_0
    return-object v3

    .line 358
    :cond_0
    const/4 v2, 0x0

    .line 359
    .local v2, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    const-string v4, "__plugin_inner"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 360
    const-string v4, "__plugin_inner"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    check-cast v2, Lcom/tencent/component/plugin/PluginInfo;

    .line 362
    .restart local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_1
    if-nez v2, :cond_2

    .line 363
    const-string v4, "__intent_plugin"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "id":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginShellActivity;->getPlatformIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "platformId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 366
    if-nez v0, :cond_3

    move-object v2, v3

    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "platformId":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v3, v2

    .line 369
    goto :goto_0

    .line 366
    .restart local v0    # "id":Ljava/lang/String;
    .restart local v1    # "platformId":Ljava/lang/String;
    :cond_3
    invoke-static {p0, v1}, Lcom/tencent/component/plugin/PluginManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/component/plugin/PluginManager;->loadPluginInfoSync(Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v2

    goto :goto_1
.end method

.method private registerPluginListener()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginListener:Lcom/tencent/component/plugin/PluginManager$PluginListener;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Lcom/tencent/component/plugin/PluginShellActivity$1;

    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/PluginShellActivity$1;-><init>(Lcom/tencent/component/plugin/PluginShellActivity;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginListener:Lcom/tencent/component/plugin/PluginManager$PluginListener;

    .line 338
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPlatformId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/component/plugin/PluginManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginListener:Lcom/tencent/component/plugin/PluginManager$PluginListener;

    invoke-virtual {v0, v1}, Lcom/tencent/component/plugin/PluginManager;->addPluginListener(Lcom/tencent/component/plugin/PluginManager$PluginListener;)V

    .line 340
    :cond_0
    return-void
.end method

.method private unregisterPluginListener()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginListener:Lcom/tencent/component/plugin/PluginManager$PluginListener;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPlatformId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/component/plugin/PluginManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginListener:Lcom/tencent/component/plugin/PluginManager$PluginListener;

    invoke-virtual {v0, v1}, Lcom/tencent/component/plugin/PluginManager;->removePluginListener(Lcom/tencent/component/plugin/PluginManager$PluginListener;)V

    .line 346
    :cond_0
    return-void
.end method


# virtual methods
.method beforeAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mCreated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->initPluginResourcesIfNeeded()Z

    .line 115
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getCurrPluginFragment()Lcom/tencent/component/plugin/PluginFragment;

    move-result-object v0

    .line 470
    .local v0, "pluginFragment":Lcom/tencent/component/plugin/PluginFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/component/plugin/PluginFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    const/4 v1, 0x1

    .line 473
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getCurrPluginFragment()Lcom/tencent/component/plugin/PluginFragment;

    move-result-object v0

    .line 452
    .local v0, "pluginFragment":Lcom/tencent/component/plugin/PluginFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/component/plugin/PluginFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    const/4 v1, 0x1

    .line 455
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 248
    .local v1, "resources":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 249
    .local v0, "assets":Landroid/content/res/AssetManager;
    :goto_0
    if-eqz v0, :cond_1

    .end local v0    # "assets":Landroid/content/res/AssetManager;
    :goto_1
    return-object v0

    .line 248
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    .restart local v0    # "assets":Landroid/content/res/AssetManager;
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginClassLoader:Ljava/lang/ClassLoader;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginLayoutInflater:Landroid/view/LayoutInflater;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlatformContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPlatformId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/component/plugin/PluginManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/component/plugin/PluginManager;->getPlatformContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginResources:Landroid/content/res/Resources;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginTheme:Landroid/content/res/Resources$Theme;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 272
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 273
    if-eqz p3, :cond_0

    iget v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mDefaultThemeResource:I

    if-nez v0, :cond_0

    .line 275
    iput p2, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mDefaultThemeResource:I

    .line 277
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 103
    iget-boolean v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mCreated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->initPluginResourcesIfNeeded()Z

    .line 106
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getCurrPluginFragment()Lcom/tencent/component/plugin/PluginFragment;

    move-result-object v0

    .line 410
    .local v0, "pluginFragment":Lcom/tencent/component/plugin/PluginFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/component/plugin/PluginFragment;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 413
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginShellActivity;->initPlugin(Landroid/os/Bundle;)Z

    move-result v0

    .line 54
    .local v0, "pluginInit":Z
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->finish()V

    .line 74
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->initPluginResourcesIfNeeded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->finish()V

    goto :goto_0

    .line 66
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginShellActivity;->initPluginFragment(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->finish()V

    goto :goto_0

    .line 71
    :cond_2
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->registerPluginListener()V

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mCreated:Z

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 87
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->unregisterPluginListener()V

    .line 88
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getCurrPluginFragment()Lcom/tencent/component/plugin/PluginFragment;

    move-result-object v0

    .line 488
    .local v0, "pluginFragment":Lcom/tencent/component/plugin/PluginFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/component/plugin/PluginFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    const/4 v1, 0x1

    .line 491
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getCurrPluginFragment()Lcom/tencent/component/plugin/PluginFragment;

    move-result-object v0

    .line 497
    .local v0, "pluginFragment":Lcom/tencent/component/plugin/PluginFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/component/plugin/PluginFragment;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    const/4 v1, 0x1

    .line 500
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getCurrPluginFragment()Lcom/tencent/component/plugin/PluginFragment;

    move-result-object v0

    .line 506
    .local v0, "pluginFragment":Lcom/tencent/component/plugin/PluginFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/component/plugin/PluginFragment;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    const/4 v1, 0x1

    .line 509
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getCurrPluginFragment()Lcom/tencent/component/plugin/PluginFragment;

    move-result-object v0

    .line 514
    .local v0, "pluginFragment":Lcom/tencent/component/plugin/PluginFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/component/plugin/PluginFragment;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    const/4 v1, 0x1

    .line 517
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getCurrPluginFragment()Lcom/tencent/component/plugin/PluginFragment;

    move-result-object v0

    .line 479
    .local v0, "pluginFragment":Lcom/tencent/component/plugin/PluginFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/component/plugin/PluginFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    const/4 v1, 0x1

    .line 482
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 418
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 419
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginShellActivity;->handlePluginNewIntent(Landroid/content/Intent;)V

    .line 420
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getCurrPluginFragment()Lcom/tencent/component/plugin/PluginFragment;

    move-result-object v0

    .line 587
    .local v0, "pluginFragment":Lcom/tencent/component/plugin/PluginFragment;
    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/component/plugin/PluginFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    const-string v0, "state_plugin_platform_id"

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPlatformId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "state_plugin_info"

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 95
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getCurrPluginFragment()Lcom/tencent/component/plugin/PluginFragment;

    move-result-object v0

    .line 461
    .local v0, "pluginFragment":Lcom/tencent/component/plugin/PluginFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/component/plugin/PluginFragment;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    const/4 v1, 0x1

    .line 464
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 424
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserInteraction()V

    .line 425
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getCurrPluginFragment()Lcom/tencent/component/plugin/PluginFragment;

    move-result-object v0

    .line 426
    .local v0, "pluginFragment":Lcom/tencent/component/plugin/PluginFragment;
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Lcom/tencent/component/plugin/PluginFragment;->onUserInteraction()V

    .line 429
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 433
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserLeaveHint()V

    .line 434
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getCurrPluginFragment()Lcom/tencent/component/plugin/PluginFragment;

    move-result-object v0

    .line 435
    .local v0, "pluginFragment":Lcom/tencent/component/plugin/PluginFragment;
    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Lcom/tencent/component/plugin/PluginFragment;->onUserLeaveHint()V

    .line 438
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 442
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 443
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getCurrPluginFragment()Lcom/tencent/component/plugin/PluginFragment;

    move-result-object v0

    .line 444
    .local v0, "pluginFragment":Lcom/tencent/component/plugin/PluginFragment;
    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0, p1}, Lcom/tencent/component/plugin/PluginFragment;->onWindowFocusChanged(Z)V

    .line 447
    :cond_0
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;->mPluginTheme:Landroid/content/res/Resources$Theme;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->ensureDefaultThemeResource()V

    .line 266
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    goto :goto_0
.end method
