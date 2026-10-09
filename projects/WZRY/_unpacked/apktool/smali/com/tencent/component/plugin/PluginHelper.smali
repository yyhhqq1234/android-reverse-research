.class public Lcom/tencent/component/plugin/PluginHelper;
.super Ljava/lang/Object;
.source "PluginHelper.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x4
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/PluginHelper$VERSION_CODES;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginHelper"

.field private static sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/component/plugin/PluginHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPlatformId:Ljava/lang/String;

.field private mPluginManager:Lcom/tencent/component/plugin/PluginManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/PluginHelper;->sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager;)V
    .locals 0
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginManager"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginHelper;->mPlatformId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/tencent/component/plugin/PluginHelper;->mPluginManager:Lcom/tencent/component/plugin/PluginManager;

    .line 38
    return-void
.end method

.method public static checkPluginId(Ljava/lang/String;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-static {p0}, Lcom/tencent/component/plugin/PluginHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkPluginInfo(Lcom/tencent/component/plugin/PluginInfo;)Z
    .locals 1
    .param p0, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 341
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static findIntentClass(Landroid/content/Intent;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 316
    if-nez p1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-object v2

    .line 319
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 320
    .local v1, "cmp":Landroid/content/ComponentName;
    :goto_1
    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "clazzName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 328
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v0    # "clazzName":Ljava/lang/String;
    .end local v1    # "cmp":Landroid/content/ComponentName;
    :cond_2
    move-object v1, v2

    .line 319
    goto :goto_1

    .line 329
    .restart local v0    # "clazzName":Ljava/lang/String;
    .restart local v1    # "cmp":Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private generateIntent(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Ljava/lang/String;Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 4
    .param p1, "startContext"    # Landroid/content/Context;
    .param p2, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;
    .param p3, "pluginFragment"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/content/Intent;
    .param p5, "innerUsage"    # Z

    .prologue
    const/4 v0, 0x0

    .line 118
    if-nez p2, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-object v0

    .line 121
    :cond_1
    if-eqz p1, :cond_0

    .line 125
    iget-object v1, p2, Lcom/tencent/component/plugin/PluginInfo;->installPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginHelper;->mPluginManager:Lcom/tencent/component/plugin/PluginManager;

    iget-object v2, p2, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    iget-object v3, p2, Lcom/tencent/component/plugin/PluginInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/component/plugin/PluginManager;->handlePluginUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 131
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 133
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 134
    const-string v1, "__plugin_fragment"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    :cond_3
    if-eqz p4, :cond_4

    .line 138
    const-string v1, "__plugin_data"

    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p4}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x4000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v1, p2, Lcom/tencent/component/plugin/PluginInfo;->extraInfo:Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    iget v1, v1, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->singleTop:I

    if-nez v1, :cond_4

    .line 146
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x20000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eq p1, v1, :cond_5

    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_6

    .line 151
    :cond_5
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    :cond_6
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginHelper;->mPluginManager:Lcom/tencent/component/plugin/PluginManager;

    iget-object v1, v1, Lcom/tencent/component/plugin/PluginManager;->pluginPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    iget-object v1, v1, Lcom/tencent/component/plugin/PluginPlatformConfig;->pluginShellActivityClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 154
    const-string v1, "__intent_plugin"

    iget-object v2, p2, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "__plugin_platform_id"

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginHelper;->mPlatformId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    if-eqz p5, :cond_0

    .line 157
    const-string v1, "__plugin_inner"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public static getInstance(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager;)Lcom/tencent/component/plugin/PluginHelper;
    .locals 5
    .param p0, "platformId"    # Ljava/lang/String;
    .param p1, "pluginManager"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 41
    sget-object v3, Lcom/tencent/component/plugin/PluginHelper;->sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/PluginHelper;

    .line 42
    .local v1, "pluginHelper":Lcom/tencent/component/plugin/PluginHelper;
    if-nez v1, :cond_1

    .line 43
    const-class v4, Lcom/tencent/component/plugin/PluginHelper;

    monitor-enter v4

    .line 44
    :try_start_0
    sget-object v3, Lcom/tencent/component/plugin/PluginHelper;->sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/tencent/component/plugin/PluginHelper;

    move-object v1, v0

    .line 45
    if-nez v1, :cond_0

    .line 46
    new-instance v2, Lcom/tencent/component/plugin/PluginHelper;

    invoke-direct {v2, p0, p1}, Lcom/tencent/component/plugin/PluginHelper;-><init>(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager;)V

    .end local v1    # "pluginHelper":Lcom/tencent/component/plugin/PluginHelper;
    .local v2, "pluginHelper":Lcom/tencent/component/plugin/PluginHelper;
    move-object v1, v2

    .line 48
    .end local v2    # "pluginHelper":Lcom/tencent/component/plugin/PluginHelper;
    .restart local v1    # "pluginHelper":Lcom/tencent/component/plugin/PluginHelper;
    :cond_0
    sget-object v3, Lcom/tencent/component/plugin/PluginHelper;->sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    monitor-exit v4

    .line 51
    :cond_1
    return-object v1

    .line 49
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 345
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindLeafService(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/ServiceConnection;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;
    .param p3, "leafServiceName"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "sc"    # Landroid/content/ServiceConnection;
    .param p6, "flags"    # I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x136
    .end annotation

    .prologue
    .line 248
    if-nez p2, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pluginInfo can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    if-nez p1, :cond_1

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leafServiceName can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginHelper;->mPlatformId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/component/plugin/service/LeafServiceManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/service/LeafServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginHelper;->mPlatformId:Ljava/lang/String;

    iget-object v2, p2, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/component/plugin/service/LeafServiceManager;->bindService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Landroid/os/Bundle;Landroid/os/Looper;)Z

    .line 258
    return-void
.end method

.method public bindLeafService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/ServiceConnection;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceName"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "sc"    # Landroid/content/ServiceConnection;
    .param p6, "flags"    # I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x136
    .end annotation

    .prologue
    .line 232
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pluginId can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iget-object v7, p0, Lcom/tencent/component/plugin/PluginHelper;->mPluginManager:Lcom/tencent/component/plugin/PluginManager;

    new-instance v0, Lcom/tencent/component/plugin/PluginHelper$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/tencent/component/plugin/PluginHelper$2;-><init>(Lcom/tencent/component/plugin/PluginHelper;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/ServiceConnection;I)V

    invoke-virtual {v7, p2, v0}, Lcom/tencent/component/plugin/PluginManager;->getPluginInfo(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;)V

    .line 244
    return-void
.end method

.method public currentVersion()I
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginHelper;->mPluginManager:Lcom/tencent/component/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/tencent/component/plugin/PluginManager;->getPlatformVersion()I

    move-result v0

    return v0
.end method

.method generateInnerIntent(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .param p1, "startContext"    # Landroid/content/Context;
    .param p2, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;
    .param p3, "pluginFragment"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/content/Intent;

    .prologue
    .line 102
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/plugin/PluginHelper;->generateIntent(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Ljava/lang/String;Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public generateIntent(Landroid/content/Context;Lcom/tencent/component/plugin/Plugin;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "startContext"    # Landroid/content/Context;
    .param p2, "plugin"    # Lcom/tencent/component/plugin/Plugin;
    .param p3, "args"    # Landroid/content/Intent;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/tencent/component/plugin/PluginHelper;->generateIntent(Landroid/content/Context;Lcom/tencent/component/plugin/Plugin;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public generateIntent(Landroid/content/Context;Lcom/tencent/component/plugin/Plugin;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "startContext"    # Landroid/content/Context;
    .param p2, "plugin"    # Lcom/tencent/component/plugin/Plugin;
    .param p3, "pluginFragment"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-virtual {p2}, Lcom/tencent/component/plugin/Plugin;->getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/tencent/component/plugin/PluginHelper;->generateIntent(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method generateIntent(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .param p1, "startContext"    # Landroid/content/Context;
    .param p2, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;
    .param p3, "pluginFragment"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/content/Intent;

    .prologue
    .line 89
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/plugin/PluginHelper;->generateIntent(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Ljava/lang/String;Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public startActivity(Landroid/content/Context;Lcom/tencent/component/plugin/Plugin;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "plugin"    # Lcom/tencent/component/plugin/Plugin;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Context can\'t be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 171
    :cond_0
    if-nez p2, :cond_1

    .line 172
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "plugin can\'t be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    :cond_1
    invoke-virtual {p2}, Lcom/tencent/component/plugin/Plugin;->getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v2

    .line 175
    .local v2, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "pluginInfo or pluginId is empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    :cond_3
    invoke-virtual {p2}, Lcom/tencent/component/plugin/Plugin;->getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v3

    iget-object v1, v3, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    .line 179
    .local v1, "pluginId":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/tencent/component/plugin/PluginHelper;->findIntentClass(Landroid/content/Intent;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 180
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_4

    const-class v3, Lcom/tencent/component/plugin/PluginFragment;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 181
    invoke-virtual {p0, p1, v1, v0, p3}, Lcom/tencent/component/plugin/PluginHelper;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)V

    .line 189
    :goto_0
    return-void

    .line 183
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eq p1, v3, :cond_5

    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_6

    .line 185
    :cond_5
    const/high16 v3, 0x10000000

    invoke-virtual {p3, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    :cond_6
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;
    .param p3, "fragmentClassName"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/content/Intent;

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_0
    if-nez p2, :cond_1

    .line 306
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "pluginInfo can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/component/plugin/PluginHelper;->generateInnerIntent(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 309
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_2

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/content/Intent;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/component/plugin/PluginFragment;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    .local p3, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tencent/component/plugin/PluginFragment;>;"
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/tencent/component/plugin/PluginHelper;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 201
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "fragmentClassName"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/content/Intent;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 206
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pluginId can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    if-nez p1, :cond_1

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    iget-object v6, p0, Lcom/tencent/component/plugin/PluginHelper;->mPluginManager:Lcom/tencent/component/plugin/PluginManager;

    new-instance v0, Lcom/tencent/component/plugin/PluginHelper$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/plugin/PluginHelper$1;-><init>(Lcom/tencent/component/plugin/PluginHelper;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v6, p2, v0}, Lcom/tencent/component/plugin/PluginManager;->getPluginInfo(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;)V

    .line 227
    return-void
.end method

.method public startLeafService(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;
    .param p3, "leafServiceName"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x136
    .end annotation

    .prologue
    .line 288
    if-nez p2, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pluginInfo can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    if-nez p1, :cond_1

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leafServiceName can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginHelper;->mPlatformId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/component/plugin/service/LeafServiceManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/service/LeafServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginHelper;->mPlatformId:Ljava/lang/String;

    iget-object v2, p2, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/tencent/component/plugin/service/LeafServiceManager;->startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 298
    return-void
.end method

.method public startLeafService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceName"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x136
    .end annotation

    .prologue
    .line 273
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pluginId can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginHelper;->mPluginManager:Lcom/tencent/component/plugin/PluginManager;

    new-instance v1, Lcom/tencent/component/plugin/PluginHelper$3;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/tencent/component/plugin/PluginHelper$3;-><init>(Lcom/tencent/component/plugin/PluginHelper;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, p2, v1}, Lcom/tencent/component/plugin/PluginManager;->getPluginInfo(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;)V

    .line 285
    return-void
.end method

.method public unbindLeafService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceConnection"    # Landroid/content/ServiceConnection;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x191
    .end annotation

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    if-nez p2, :cond_1

    .line 269
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginHelper;->mPlatformId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/component/plugin/service/LeafServiceManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/service/LeafServiceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/component/plugin/service/LeafServiceManager;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method
