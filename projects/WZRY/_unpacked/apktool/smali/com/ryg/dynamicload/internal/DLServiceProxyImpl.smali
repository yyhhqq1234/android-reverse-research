.class public Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;
.super Ljava/lang/Object;
.source "DLServiceProxyImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DLServiceProxyImpl"


# instance fields
.field private mProxyService:Landroid/app/Service;

.field private mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 3
    .param p1, "service"    # Landroid/app/Service;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "DLServiceProxyImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLServiceProxyImpl instance service =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;->mProxyService:Landroid/app/Service;

    .line 25
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 30
    sget-object v10, Lcom/ryg/utils/DLConfigs;->sPluginClassloader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 32
    const-string v10, "extra.package"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 33
    .local v7, "packageName":Ljava/lang/String;
    const-string v10, "extra.class"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "clazz":Ljava/lang/String;
    const-string v10, "DLServiceProxyImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "clazz="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " packageName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v10, p0, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;->mProxyService:Landroid/app/Service;

    invoke-static {v10}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginManager;

    move-result-object v8

    .line 37
    .local v8, "pluginManager":Lcom/ryg/dynamicload/internal/DLPluginManager;
    invoke-virtual {v8, v7}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getPackage(Ljava/lang/String;)Lcom/ryg/dynamicload/internal/DLPluginPackage;

    move-result-object v9

    .line 40
    .local v9, "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    :try_start_0
    iget-object v10, v9, Lcom/ryg/dynamicload/internal/DLPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v10, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 41
    .local v5, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v5, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 42
    .local v6, "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 43
    .local v4, "instance":Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Lcom/ryg/dynamicload/DLServicePlugin;

    move-object v10, v0

    iput-object v10, p0, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    .line 44
    iget-object v10, p0, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;->mProxyService:Landroid/app/Service;

    check-cast v10, Lcom/ryg/dynamicload/internal/DLServiceAttachable;

    iget-object v11, p0, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v10, v11, v8}, Lcom/ryg/dynamicload/internal/DLServiceAttachable;->attach(Lcom/ryg/dynamicload/DLServicePlugin;Lcom/ryg/dynamicload/internal/DLPluginManager;)V

    .line 45
    const-string v10, "DLServiceProxyImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "instance = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;->mProxyService:Landroid/app/Service;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v10, p0, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    iget-object v11, p0, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;->mProxyService:Landroid/app/Service;

    invoke-interface {v10, v11, v9}, Lcom/ryg/dynamicload/DLServicePlugin;->attach(Landroid/app/Service;Lcom/ryg/dynamicload/internal/DLPluginPackage;)V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v10, "extra.from"

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    iget-object v10, p0, Lcom/ryg/dynamicload/internal/DLServiceProxyImpl;->mRemoteService:Lcom/ryg/dynamicload/DLServicePlugin;

    invoke-interface {v10}, Lcom/ryg/dynamicload/DLServicePlugin;->onCreate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v5    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v3

    .line 54
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
