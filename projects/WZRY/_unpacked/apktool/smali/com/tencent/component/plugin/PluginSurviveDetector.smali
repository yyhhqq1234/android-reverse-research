.class public abstract Lcom/tencent/component/plugin/PluginSurviveDetector;
.super Ljava/lang/Object;
.source "PluginSurviveDetector.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/PluginSurviveDetector$InstantiationException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginSurviveDetector"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x10
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static instantiate(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/PluginSurviveDetector;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    const/4 v4, 0x0

    .line 31
    if-nez p1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v4

    .line 35
    :cond_1
    iget-object v3, p1, Lcom/tencent/component/plugin/PluginInfo;->surviveDetector:Ljava/lang/String;

    .line 36
    .local v3, "surviveDetector":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 40
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/component/plugin/PluginClassLoader;->obtainClassLoader(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/PluginClassLoader;

    move-result-object v0

    .line 41
    .local v0, "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    invoke-virtual {v0, v3}, Lcom/tencent/component/plugin/PluginClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 42
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "PluginSurviveDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new survive detector for "

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

    .line 43
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/component/plugin/PluginSurviveDetector;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 44
    .end local v0    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lcom/tencent/component/plugin/PluginSurviveDetector$InstantiationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate survive detector "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/tencent/component/plugin/PluginSurviveDetector$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 47
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v4, Lcom/tencent/component/plugin/PluginSurviveDetector$InstantiationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate survive detector "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/tencent/component/plugin/PluginSurviveDetector$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 50
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Lcom/tencent/component/plugin/PluginSurviveDetector$InstantiationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate survive detector "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/tencent/component/plugin/PluginSurviveDetector$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method


# virtual methods
.method public abstract isSurvivable()Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x10
    .end annotation
.end method
