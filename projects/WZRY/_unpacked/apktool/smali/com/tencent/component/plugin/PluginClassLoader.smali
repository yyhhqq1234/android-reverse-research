.class public final Lcom/tencent/component/plugin/PluginClassLoader;
.super Ljava/lang/Object;
.source "PluginClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/PluginClassLoader$PluginDexClassLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginClassLoader"

.field private static final sClassLoaderMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/component/plugin/PluginClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCorePluginClassLoaderMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUniqueLock:Lcom/tencent/component/utils/UniqueLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/component/utils/UniqueLock",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClassLoader:Ljava/lang/ClassLoader;

.field private final mClassMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/io/File;

.field private final mInitFileSize:J

.field private final mInitFileTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/PluginClassLoader;->sCorePluginClassLoaderMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/PluginClassLoader;->sClassLoaderMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    new-instance v0, Lcom/tencent/component/utils/UniqueLock;

    invoke-direct {v0}, Lcom/tencent/component/utils/UniqueLock;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/PluginClassLoader;->sUniqueLock:Lcom/tencent/component/utils/UniqueLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    const-wide/16 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mClassMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 41
    :goto_0
    iput-object v0, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mClassLoader:Ljava/lang/ClassLoader;

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mFile:Ljava/io/File;

    .line 43
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mFile:Ljava/io/File;

    if-nez v0, :cond_3

    move-wide v0, v2

    :goto_2
    iput-wide v0, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mInitFileSize:J

    .line 44
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mFile:Ljava/io/File;

    if-nez v0, :cond_4

    :goto_3
    iput-wide v2, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mInitFileTime:J

    .line 45
    iget-boolean v0, p3, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/tencent/component/plugin/PluginClassLoader;->sCorePluginClassLoaderMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p3, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    return-void

    .line 40
    :cond_1
    new-instance v0, Lcom/tencent/component/plugin/PluginClassLoader$PluginDexClassLoader;

    iget-object v1, p3, Lcom/tencent/component/plugin/PluginInfo;->dexOptimizeDir:Ljava/lang/String;

    .line 41
    invoke-static {v1}, Lcom/tencent/component/plugin/PluginClassLoader;->ensureDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p3, Lcom/tencent/component/plugin/PluginInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/component/plugin/PluginClassLoader;->ensureDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, p2, v1, v4, v5}, Lcom/tencent/component/plugin/PluginClassLoader$PluginDexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 42
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_2

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    goto :goto_3
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/tencent/component/plugin/PluginClassLoader;->sCorePluginClassLoaderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static ensureDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 94
    if-eqz p0, :cond_0

    .line 95
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/component/plugin/PluginClassLoader;->ensureDir(Ljava/io/File;)Z

    .line 97
    :cond_0
    return-object p0
.end method

.method private static ensureDir(Ljava/io/File;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/tencent/component/plugin/PluginClassLoader;->isDirValid(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    invoke-static {p0}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V

    .line 106
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDirValid(Ljava/io/File;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 90
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static obtainClassLoader(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/PluginClassLoader;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 134
    iget-object v6, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    .line 135
    .local v6, "pluginId":Ljava/lang/String;
    iget-object v7, p1, Lcom/tencent/component/plugin/PluginInfo;->installPath:Ljava/lang/String;

    .line 136
    .local v7, "pluginPath":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 137
    const-string v6, ""

    .line 139
    :cond_0
    sget-object v8, Lcom/tencent/component/plugin/PluginClassLoader;->sClassLoaderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/PluginClassLoader;

    .line 140
    .local v1, "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    if-eqz v1, :cond_1

    move-object v3, v1

    .end local v1    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    .local v3, "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    move-object v4, v1

    .line 156
    .end local v3    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    .local v4, "classLoader":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 143
    .end local v4    # "classLoader":Ljava/lang/Object;
    .restart local v1    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    :cond_1
    sget-object v8, Lcom/tencent/component/plugin/PluginClassLoader;->sUniqueLock:Lcom/tencent/component/utils/UniqueLock;

    invoke-virtual {v8, v7}, Lcom/tencent/component/utils/UniqueLock;->obtain(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    .line 144
    .local v5, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 146
    :try_start_0
    sget-object v8, Lcom/tencent/component/plugin/PluginClassLoader;->sClassLoaderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/tencent/component/plugin/PluginClassLoader;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    if-eqz v1, :cond_2

    .line 156
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v1

    .end local v1    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    .restart local v3    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    move-object v4, v1

    .restart local v4    # "classLoader":Ljava/lang/Object;
    goto :goto_0

    .line 151
    .end local v3    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    .end local v4    # "classLoader":Ljava/lang/Object;
    .restart local v1    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    :cond_2
    :try_start_1
    new-instance v2, Lcom/tencent/component/plugin/PluginClassLoader;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8, v7, p1}, Lcom/tencent/component/plugin/PluginClassLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .end local v1    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    .local v2, "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    :try_start_2
    sget-object v8, Lcom/tencent/component/plugin/PluginClassLoader;->sClassLoaderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 156
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v2

    .end local v2    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    .restart local v3    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    move-object v4, v2

    .restart local v4    # "classLoader":Ljava/lang/Object;
    goto :goto_0

    .end local v3    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    .end local v4    # "classLoader":Ljava/lang/Object;
    .restart local v1    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    :catchall_0
    move-exception v8

    :goto_1
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v8

    .end local v1    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    .restart local v2    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    .restart local v1    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    goto :goto_1
.end method

.method public static removeClassLoader(Lcom/tencent/component/plugin/PluginInfo;)V
    .locals 6
    .param p0, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    .line 117
    .local v1, "pluginId":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginInfo;->installPath:Ljava/lang/String;

    .line 118
    .local v2, "pluginPath":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    sget-object v3, Lcom/tencent/component/plugin/PluginClassLoader;->sClassLoaderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    sget-object v3, Lcom/tencent/component/plugin/PluginClassLoader;->sUniqueLock:Lcom/tencent/component/utils/UniqueLock;

    invoke-virtual {v3, v2}, Lcom/tencent/component/utils/UniqueLock;->obtain(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 123
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 125
    :try_start_0
    const-string v3, "PluginClassLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove class loader :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v3, Lcom/tencent/component/plugin/PluginClassLoader;->sClassLoaderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method


# virtual methods
.method public isUpToDate()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 73
    iget-object v6, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mFile:Ljava/io/File;

    if-nez v6, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    iget-object v6, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    .line 77
    .local v0, "exist":Z
    iget-object v6, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 78
    .local v2, "fileSize":J
    iget-object v6, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 79
    .local v4, "lastModified":J
    if-eqz v0, :cond_2

    iget-wide v6, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mInitFileSize:J

    cmp-long v6, v2, v6

    if-nez v6, :cond_2

    iget-wide v6, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mInitFileTime:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 80
    .local v1, "isUpdateToDate":Z
    :goto_1
    if-nez v1, :cond_0

    .line 81
    const-string v6, "PluginClassLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "plugin class loader not update to date (mFile.exists():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "| mFile.length():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " |mInitFileSize:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mInitFileSize:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " |mFile.lastModified():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " |mInitFileTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mInitFileTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v1    # "isUpdateToDate":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const/4 v0, 0x0

    .line 63
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mClassMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 55
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 56
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 58
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mClassMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 60
    .local v1, "prevClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 61
    move-object v0, v1

    goto :goto_0
.end method

.method public setPlugin(Lcom/tencent/component/plugin/Plugin;)V
    .locals 2
    .param p1, "plugin"    # Lcom/tencent/component/plugin/Plugin;

    .prologue
    .line 67
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mClassLoader:Ljava/lang/ClassLoader;

    instance-of v0, v0, Lcom/tencent/component/plugin/PluginClassLoader$PluginDexClassLoader;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginClassLoader;->mClassLoader:Ljava/lang/ClassLoader;

    check-cast v0, Lcom/tencent/component/plugin/PluginClassLoader$PluginDexClassLoader;

    invoke-virtual {p1}, Lcom/tencent/component/plugin/Plugin;->getClassLoaderInterceptor()Lcom/tencent/component/plugin/PluginClassLoaderInterceptor;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginClassLoader$PluginDexClassLoader;->classLoaderInterceptor:Lcom/tencent/component/plugin/PluginClassLoaderInterceptor;

    .line 70
    :cond_0
    return-void
.end method
