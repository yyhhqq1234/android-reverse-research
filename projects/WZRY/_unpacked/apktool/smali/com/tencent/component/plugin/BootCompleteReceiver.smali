.class public abstract Lcom/tencent/component/plugin/BootCompleteReceiver;
.super Ljava/lang/Object;
.source "BootCompleteReceiver.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x6
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/BootCompleteReceiver$InstantiationException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BootCompleteReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static instantiate(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/BootCompleteReceiver;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    const/4 v4, 0x0

    .line 30
    if-nez p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-object v4

    .line 34
    :cond_1
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->bootCompleteReceiver:Ljava/lang/String;

    .line 35
    .local v0, "bootCompleteReceiver":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 39
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/component/plugin/PluginClassLoader;->obtainClassLoader(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/PluginClassLoader;

    move-result-object v1

    .line 40
    .local v1, "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    invoke-virtual {v1, v0}, Lcom/tencent/component/plugin/PluginClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 41
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "BootCompleteReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new boot receiver for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/component/plugin/PluginInfo;->installPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/component/plugin/BootCompleteReceiver;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 43
    .end local v1    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 44
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lcom/tencent/component/plugin/BootCompleteReceiver$InstantiationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate boot receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": make sure class name exists, is public, and has an"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " empty constructor that is public"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/tencent/component/plugin/BootCompleteReceiver$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 46
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 47
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v4, Lcom/tencent/component/plugin/BootCompleteReceiver$InstantiationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate boot receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": make sure class name exists, is public, and has an"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " empty constructor that is public"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/tencent/component/plugin/BootCompleteReceiver$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 49
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    .line 50
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Lcom/tencent/component/plugin/BootCompleteReceiver$InstantiationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate boot receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": make sure class name exists, is public, and has an"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " empty constructor that is public"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/tencent/component/plugin/BootCompleteReceiver$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method


# virtual methods
.method public abstract onBootComplete(Landroid/content/Context;)V
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation
.end method
