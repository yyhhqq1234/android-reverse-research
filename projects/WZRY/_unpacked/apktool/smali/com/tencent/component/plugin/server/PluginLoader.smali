.class Lcom/tencent/component/plugin/server/PluginLoader;
.super Ljava/lang/Object;
.source "PluginLoader.java"


# static fields
.field private static final LOAD_STRATEGY_ALL:I = 0x3

.field private static final LOAD_STRATEGY_NON_CORE_PLUGIN:I = 0x2

.field private static final LOAD_STRATEGY_ONLY_CORE_PLUGIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PluginLoader"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

.field private final mPluginDir:Ljava/io/File;

.field private final mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

.field private final mUniqueLock:Lcom/tencent/component/utils/UniqueLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/component/utils/UniqueLock",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/component/plugin/server/PlatformServerContext;)V
    .locals 1
    .param p1, "platformServerContext"    # Lcom/tencent/component/plugin/server/PlatformServerContext;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/tencent/component/utils/UniqueLock;

    invoke-direct {v0}, Lcom/tencent/component/utils/UniqueLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginLoader;->mUniqueLock:Lcom/tencent/component/utils/UniqueLock;

    .line 40
    iput-object p1, p0, Lcom/tencent/component/plugin/server/PluginLoader;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    .line 41
    invoke-virtual {p1}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginLoader;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginConstant;->getInstallDir(Lcom/tencent/component/plugin/server/PlatformServerContext;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginLoader;->mPluginDir:Ljava/io/File;

    .line 43
    invoke-virtual {p1}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPluginManagerServer()Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginLoader;->mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

    .line 44
    return-void
.end method

.method private static isDirValid(Ljava/io/File;)Z
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 249
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

.method private static isFileValid(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 253
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performLoad(Ljava/io/File;ILjava/util/HashMap;)V
    .locals 20
    .param p1, "file"    # Ljava/io/File;
    .param p2, "loadStrategy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p3, "pluginInfoCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;>;"
    invoke-static/range {p1 .. p1}, Lcom/tencent/component/plugin/server/PluginLoader;->isFileValid(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 117
    const-string v13, "load"

    const/4 v14, 0x0

    const-string v15, "invalid file"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file:"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz p1, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ", exist:"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 120
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v17, ", isFile:"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v17, ", length:"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 121
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x0

    .line 117
    move-object/from16 v0, v16

    invoke-static {v13, v14, v15, v12, v0}, Lcom/tencent/component/plugin/PluginReporter;->report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    :cond_0
    :goto_1
    return-void

    .line 121
    :cond_1
    const-string v12, ""

    goto :goto_0

    .line 124
    :cond_2
    const/4 v9, 0x0

    .line 125
    .local v9, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 126
    .local v11, "pluginPath":Ljava/lang/String;
    invoke-static {v11}, Lcom/tencent/component/plugin/PluginFileLock;->readLock(Ljava/lang/String;)Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    .line 127
    .local v6, "fileLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 129
    if-eqz p3, :cond_3

    .line 130
    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/tencent/component/plugin/PluginInfo;

    move-object v9, v0

    .line 132
    :cond_3
    if-nez v9, :cond_4

    .line 133
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/component/plugin/server/PluginLoader;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/component/plugin/server/PluginLoader;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v12, v13, v14, v15}, Lcom/tencent/component/plugin/server/PluginParser;->parse(Lcom/tencent/component/plugin/server/PlatformServerContext;Landroid/content/Context;Ljava/lang/String;I)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v9

    .line 134
    if-eqz p3, :cond_4

    .line 135
    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_4
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 142
    if-eqz v9, :cond_6

    iget-boolean v12, v9, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    if-eqz v12, :cond_6

    .line 143
    const/4 v12, 0x2

    move/from16 v0, p2

    if-eq v0, v12, :cond_0

    .line 154
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/component/plugin/server/PluginLoader;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/tencent/component/plugin/server/PluginValidator;->getInstance(Landroid/content/Context;)Lcom/tencent/component/plugin/server/PluginValidator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/component/plugin/server/PluginLoader;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v12, v9, v13}, Lcom/tencent/component/plugin/server/PluginValidator;->validate(Lcom/tencent/component/plugin/PluginInfo;Lcom/tencent/component/plugin/server/PlatformServerContext;)V
    :try_end_1
    .catch Lcom/tencent/component/plugin/server/PluginValidator$ValidateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/component/plugin/server/PluginLoader;->mUniqueLock:Lcom/tencent/component/utils/UniqueLock;

    iget-object v13, v9, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/tencent/component/utils/UniqueLock;->obtain(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    .line 166
    .local v7, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 168
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/component/plugin/server/PluginLoader;->mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

    iget-object v13, v9, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/tencent/component/plugin/server/PluginManagerServer;->isPluginRegistered(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v12

    if-eqz v12, :cond_8

    .line 214
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 139
    .end local v7    # "lock":Ljava/util/concurrent/locks/Lock;
    :catchall_0
    move-exception v12

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v12

    .line 147
    :cond_6
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_5

    goto :goto_1

    .line 155
    :catch_0
    move-exception v4

    .line 156
    .local v4, "e":Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;
    instance-of v12, v4, Lcom/tencent/component/plugin/server/PluginValidator$ValidateSignatureException;

    if-eqz v12, :cond_7

    .line 157
    invoke-static/range {p1 .. p1}, Lcom/tencent/component/plugin/server/PluginLoader;->removePlugin(Ljava/io/File;)V

    .line 159
    :cond_7
    const-string v12, "load"

    const/4 v13, 0x0

    const-string/jumbo v14, "verify error"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "plugin:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", file:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v13, v14, v15, v4}, Lcom/tencent/component/plugin/PluginReporter;->report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    const-string v12, "PluginLoader"

    invoke-virtual {v4}, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 172
    .end local v4    # "e":Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;
    .restart local v7    # "lock":Ljava/util/concurrent/locks/Lock;
    :cond_8
    :try_start_3
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/tencent/component/plugin/server/PluginLoader;->verifyPluginFile(Ljava/io/File;Lcom/tencent/component/plugin/PluginInfo;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 173
    invoke-static/range {p1 .. p1}, Lcom/tencent/component/plugin/server/PluginLoader;->removePlugin(Ljava/io/File;)V

    .line 174
    const-string v12, "load"

    const/4 v13, 0x0

    const-string v14, "invalid plugin file"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Lcom/tencent/component/plugin/PluginReporter;->report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    const-string v12, "PluginLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "plugin "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " cannot pass the file verification"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 214
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_1

    .line 179
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/component/plugin/server/PluginLoader;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v12}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getBuiltinPluginLoader()Lcom/tencent/component/plugin/server/BuiltinPluginLoader;

    move-result-object v2

    .line 180
    .local v2, "builtinPluginLoader":Lcom/tencent/component/plugin/server/BuiltinPluginLoader;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/component/plugin/server/PluginLoader;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v12}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPluginInstaller()Lcom/tencent/component/plugin/server/PluginInstaller;

    move-result-object v10

    .line 183
    .local v10, "pluginInstaller":Lcom/tencent/component/plugin/server/PluginInstaller;
    invoke-virtual {v2, v9}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->isNewer(Lcom/tencent/component/plugin/PluginInfo;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 185
    invoke-virtual {v10, v9}, Lcom/tencent/component/plugin/server/PluginInstaller;->uninstall(Lcom/tencent/component/plugin/PluginInfo;)Z

    .line 187
    iget-object v12, v9, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->load(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 214
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_1

    .line 191
    :cond_a
    :try_start_5
    iget-object v8, v9, Lcom/tencent/component/plugin/PluginInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 193
    .local v8, "nativeLibDir":Ljava/lang/String;
    if-eqz v8, :cond_c

    .line 194
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v8}, Lcom/tencent/component/plugin/PluginNativeHelper;->copyNativeBinariesIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 195
    .local v3, "copied":Z
    if-nez v3, :cond_c

    .line 196
    new-instance v5, Lcom/tencent/component/plugin/PluginInfo;

    invoke-direct {v5}, Lcom/tencent/component/plugin/PluginInfo;-><init>()V

    .line 197
    .local v5, "fakePluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    iget-object v12, v9, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    iput-object v12, v5, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    .line 198
    iget-object v12, v9, Lcom/tencent/component/plugin/PluginInfo;->uri:Landroid/net/Uri;

    if-eqz v12, :cond_b

    iget-object v12, v9, Lcom/tencent/component/plugin/PluginInfo;->uri:Landroid/net/Uri;

    :goto_2
    iput-object v12, v5, Lcom/tencent/component/plugin/PluginInfo;->uri:Landroid/net/Uri;

    .line 199
    iget v12, v9, Lcom/tencent/component/plugin/PluginInfo;->version:I

    iput v12, v5, Lcom/tencent/component/plugin/PluginInfo;->version:I

    .line 200
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/component/plugin/server/PluginLoader;->mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

    iget-object v13, v5, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v12, v13, v5}, Lcom/tencent/component/plugin/server/PluginManagerServer;->registerPlugin(Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;)Z

    .line 202
    const-string v12, "load"

    const/4 v13, 0x0

    const-string v14, "fail to copy native libraries"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "plugin:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Lcom/tencent/component/plugin/PluginReporter;->report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    const-string v12, "PluginLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cannot un-pack native libraries for plugin "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 214
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_1

    .line 198
    :cond_b
    :try_start_6
    sget-object v12, Lcom/tencent/component/plugin/server/PluginConstant;->BUILTIN_DEFAULT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 208
    .end local v3    # "copied":Z
    .end local v5    # "fakePluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/component/plugin/server/PluginLoader;->mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

    iget-object v13, v9, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v12, v13, v9}, Lcom/tencent/component/plugin/server/PluginManagerServer;->registerPlugin(Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;)Z

    .line 210
    const-string v12, "load"

    const/4 v13, 0x1

    const-string/jumbo v14, "succeed"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "plugin:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Lcom/tencent/component/plugin/PluginReporter;->report(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    const-string v12, "PluginLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "succeed to load plugin "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 214
    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_1

    .end local v2    # "builtinPluginLoader":Lcom/tencent/component/plugin/server/BuiltinPluginLoader;
    .end local v8    # "nativeLibDir":Ljava/lang/String;
    .end local v10    # "pluginInstaller":Lcom/tencent/component/plugin/server/PluginInstaller;
    :catchall_1
    move-exception v12

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v12
.end method

.method private static removePlugin(Ljava/io/File;)V
    .locals 0
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 242
    if-nez p0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-static {p0}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V

    goto :goto_0
.end method

.method private static selectLatestFile([Ljava/io/File;)Ljava/io/File;
    .locals 8
    .param p0, "files"    # [Ljava/io/File;

    .prologue
    .line 227
    if-nez p0, :cond_1

    .line 228
    const/4 v1, 0x0

    .line 238
    :cond_0
    return-object v1

    .line 230
    :cond_1
    const/4 v1, 0x0

    .line 231
    .local v1, "latestFile":Ljava/io/File;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 232
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_3

    .line 231
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 235
    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method private static verifyPluginFile(Ljava/io/File;Lcom/tencent/component/plugin/PluginInfo;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    const/4 v1, 0x0

    .line 219
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v1

    .line 222
    :cond_1
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginConstant;->getPluginInstallName(Lcom/tencent/component/plugin/PluginInfo;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "pluginName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method final load()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 50
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginLoader;->mPluginDir:Ljava/io/File;

    .line 51
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Lcom/tencent/component/plugin/server/PluginLoader;->isDirValid(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 75
    :cond_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 55
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 58
    iget-object v5, p0, Lcom/tencent/component/plugin/server/PluginLoader;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v5}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPlatformConfig()Lcom/tencent/component/plugin/PluginPlatformConfig;

    move-result-object v5

    iget-boolean v5, v5, Lcom/tencent/component/plugin/PluginPlatformConfig;->enbaleCorePlugin:Z

    if-eqz v5, :cond_3

    .line 59
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v3, "pluginInfoTmpCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;>;"
    const-string v5, "PluginLoader"

    const-string v6, "load core plugin first."

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    array-length v6, v2

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v1, v2, v5

    .line 63
    .local v1, "file":Ljava/io/File;
    const/4 v7, 0x1

    invoke-direct {p0, v1, v7, v3}, Lcom/tencent/component/plugin/server/PluginLoader;->performLoad(Ljava/io/File;ILjava/util/HashMap;)V

    .line 62
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    const-string v5, "PluginLoader"

    const-string v6, "load non core plugin."

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    array-length v5, v2

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 68
    .restart local v1    # "file":Ljava/io/File;
    const/4 v6, 0x2

    invoke-direct {p0, v1, v6, v3}, Lcom/tencent/component/plugin/server/PluginLoader;->performLoad(Ljava/io/File;ILjava/util/HashMap;)V

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 71
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "pluginInfoTmpCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;>;"
    :cond_3
    array-length v5, v2

    :goto_2
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 72
    .restart local v1    # "file":Ljava/io/File;
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-direct {p0, v1, v6, v7}, Lcom/tencent/component/plugin/server/PluginLoader;->performLoad(Ljava/io/File;ILjava/util/HashMap;)V

    .line 71
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method final load(Ljava/lang/String;)V
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    .line 81
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginLoader;->mPluginDir:Ljava/io/File;

    .line 82
    .local v1, "dir":Ljava/io/File;
    invoke-static {v1}, Lcom/tencent/component/plugin/server/PluginLoader;->isDirValid(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginConstant;->getPluginInstallNameFilter(Ljava/lang/String;)Ljava/io/FilenameFilter;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 86
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 90
    invoke-static {v3}, Lcom/tencent/component/plugin/server/PluginLoader;->selectLatestFile([Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 91
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Lcom/tencent/component/plugin/server/PluginLoader;->isFileValid(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    iget-object v6, p0, Lcom/tencent/component/plugin/server/PluginLoader;->mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

    invoke-virtual {v6, p1}, Lcom/tencent/component/plugin/server/PluginManagerServer;->isPluginRegistered(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 95
    iget-object v6, p0, Lcom/tencent/component/plugin/server/PluginLoader;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v6}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPlatformConfig()Lcom/tencent/component/plugin/PluginPlatformConfig;

    move-result-object v6

    iget-boolean v6, v6, Lcom/tencent/component/plugin/PluginPlatformConfig;->enbaleCorePlugin:Z

    if-eqz v6, :cond_3

    .line 96
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 97
    .local v0, "allPluginFiles":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 103
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v5, "pluginInfoTmpCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;>;"
    array-length v7, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v4, v0, v6

    .line 105
    .local v4, "pluginFile":Ljava/io/File;
    const/4 v8, 0x1

    invoke-direct {p0, v4, v8, v5}, Lcom/tencent/component/plugin/server/PluginLoader;->performLoad(Ljava/io/File;ILjava/util/HashMap;)V

    .line 104
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 108
    .end local v4    # "pluginFile":Ljava/io/File;
    :cond_2
    invoke-direct {p0, v2, v9, v5}, Lcom/tencent/component/plugin/server/PluginLoader;->performLoad(Ljava/io/File;ILjava/util/HashMap;)V

    goto :goto_0

    .line 110
    .end local v0    # "allPluginFiles":[Ljava/io/File;
    .end local v5    # "pluginInfoTmpCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;>;"
    :cond_3
    const/4 v6, 0x0

    invoke-direct {p0, v2, v9, v6}, Lcom/tencent/component/plugin/server/PluginLoader;->performLoad(Ljava/io/File;ILjava/util/HashMap;)V

    goto :goto_0
.end method
