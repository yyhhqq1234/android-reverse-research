.class Lcom/tencent/component/plugin/PluginClassLoader$PluginDexClassLoader;
.super Ldalvik/system/DexClassLoader;
.source "PluginClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluginDexClassLoader"
.end annotation


# instance fields
.field public volatile classLoaderInterceptor:Lcom/tencent/component/plugin/PluginClassLoaderInterceptor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/lang/String;
    .param p3, "libraryPath"    # Ljava/lang/String;
    .param p4, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3, p4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 166
    return-void
.end method


# virtual methods
.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 192
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/component/plugin/PluginClassLoader$PluginDexClassLoader;->loadSelfClassOnly(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    :goto_0
    if-nez v0, :cond_1

    .line 199
    invoke-static {}, Lcom/tencent/component/plugin/PluginClassLoader;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 200
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ClassLoader;>;>;"
    if-eqz v2, :cond_1

    .line 201
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 202
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ClassLoader;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    .line 203
    .local v3, "value":Ljava/lang/ClassLoader;
    if-eqz v3, :cond_0

    if-eq v3, p0, :cond_0

    instance-of v5, v3, Lcom/tencent/component/plugin/PluginClassLoader$PluginDexClassLoader;

    if-eqz v5, :cond_0

    .line 207
    :try_start_1
    check-cast v3, Lcom/tencent/component/plugin/PluginClassLoader$PluginDexClassLoader;

    .end local v3    # "value":Ljava/lang/ClassLoader;
    invoke-virtual {v3, p1}, Lcom/tencent/component/plugin/PluginClassLoader$PluginDexClassLoader;->loadSelfClassOnly(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 211
    :goto_1
    if-eqz v0, :cond_0

    .line 219
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ClassLoader;>;"
    .end local v2    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ClassLoader;>;>;"
    :cond_1
    if-nez v0, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginClassLoader$PluginDexClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 224
    :cond_2
    return-object v0

    .line 193
    :catch_0
    move-exception v4

    goto :goto_0

    .line 208
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ClassLoader;>;"
    .restart local v2    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ClassLoader;>;>;"
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method loadSelfClassOnly(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/tencent/component/plugin/PluginClassLoader$PluginDexClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 170
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 171
    const/4 v1, 0x1

    .line 172
    .local v1, "intercept":Z
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginClassLoader$PluginDexClassLoader;->classLoaderInterceptor:Lcom/tencent/component/plugin/PluginClassLoaderInterceptor;

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginClassLoader$PluginDexClassLoader;->classLoaderInterceptor:Lcom/tencent/component/plugin/PluginClassLoaderInterceptor;

    invoke-virtual {v2, p1}, Lcom/tencent/component/plugin/PluginClassLoaderInterceptor;->interceptClass(Ljava/lang/String;)Z

    move-result v1

    .line 175
    :cond_0
    if-eqz v1, :cond_1

    .line 177
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/component/plugin/PluginClassLoader$PluginDexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 183
    .end local v1    # "intercept":Z
    :cond_1
    :goto_0
    return-object v0

    .line 178
    .restart local v1    # "intercept":Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method
