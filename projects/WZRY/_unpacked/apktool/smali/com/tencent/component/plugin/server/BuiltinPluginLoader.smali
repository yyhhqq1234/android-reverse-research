.class public Lcom/tencent/component/plugin/server/BuiltinPluginLoader;
.super Ljava/lang/Object;
.source "BuiltinPluginLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginContentHandler;,
        Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BuiltinPluginLoader"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

.field private final mPluginInstaller:Lcom/tencent/component/plugin/server/PluginInstaller;

.field private final mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

.field private final mPluginRecords:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;",
            ">;"
        }
    .end annotation
.end field

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
.method constructor <init>(Lcom/tencent/component/plugin/server/PlatformServerContext;)V
    .locals 1
    .param p1, "platformServerContext"    # Lcom/tencent/component/plugin/server/PlatformServerContext;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/tencent/component/utils/UniqueLock;

    invoke-direct {v0}, Lcom/tencent/component/utils/UniqueLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mUniqueLock:Lcom/tencent/component/utils/UniqueLock;

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mPluginRecords:Ljava/util/LinkedHashMap;

    .line 38
    iput-object p1, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    .line 39
    iget-object v0, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v0}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPluginInstaller()Lcom/tencent/component/plugin/server/PluginInstaller;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mPluginInstaller:Lcom/tencent/component/plugin/server/PluginInstaller;

    .line 41
    invoke-virtual {p1}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPluginManagerServer()Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

    .line 42
    invoke-direct {p0}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->init()V

    .line 43
    return-void
.end method

.method private static copyAssetsTmpSafely(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetsPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 143
    if-nez p1, :cond_1

    move-object v0, v1

    .line 168
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :cond_1
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->generateTmpFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    .line 148
    .local v0, "tmp":Ljava/io/File;
    if-eqz v0, :cond_3

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    invoke-static {v0}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V

    .line 152
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/tencent/component/utils/FileUtil;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {v0}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->isFileValid(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    :cond_3
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->generateTmpFile(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_5

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 161
    invoke-static {v0}, Lcom/tencent/component/utils/FileUtil;->delete(Ljava/io/File;)V

    .line 163
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/tencent/component/utils/FileUtil;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {v0}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->isFileValid(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move-object v0, v1

    .line 168
    goto :goto_0
.end method

.method private static generateTmpFile(Landroid/content/Context;Z)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "external"    # Z

    .prologue
    .line 172
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "name":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p0, v0, p1, v2}, Lcom/tencent/component/plugin/server/PluginConstant;->getPluginTmpDir(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 46
    iget-object v2, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-static {v3}, Lcom/tencent/component/plugin/server/PluginConstant;->getBuiltinConfigFilePath(Lcom/tencent/component/plugin/server/PlatformServerContext;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->parseXml(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 47
    .local v0, "pluginRecords":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;>;"
    if-eqz v0, :cond_1

    .line 48
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;

    .line 49
    .local v1, "record":Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;
    if-eqz v1, :cond_0

    .line 51
    iget-object v3, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mPluginRecords:Ljava/util/LinkedHashMap;

    iget-object v4, v1, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 54
    .end local v1    # "record":Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;
    :cond_1
    return-void
.end method

.method private static isFileValid(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 178
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

.method private static parseXml(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Collection;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    :try_start_0
    new-instance v0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginContentHandler;

    invoke-direct {v0}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginContentHandler;-><init>()V

    .line 129
    .local v0, "contentHandler":Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginContentHandler;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 130
    .local v2, "parserFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    .line 131
    .local v3, "xmlReader":Lorg/xml/sax/XMLReader;
    invoke-interface {v3, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 132
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 133
    invoke-virtual {v0}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginContentHandler;->getPluginRecords()Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 139
    .end local v0    # "contentHandler":Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginContentHandler;
    .end local v2    # "parserFactory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v3    # "xmlReader":Lorg/xml/sax/XMLReader;
    :goto_0
    return-object v4

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Throwable;
    const-string v4, "BuiltinPluginLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to parse xml "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private performLoad(Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;)V
    .locals 7
    .param p1, "record"    # Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;

    .prologue
    const/4 v2, 0x1

    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v4, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mUniqueLock:Lcom/tencent/component/utils/UniqueLock;

    iget-object v5, p1, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/component/utils/UniqueLock;->obtain(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 89
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 91
    :try_start_0
    iget-boolean v4, p1, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->loaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 121
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 95
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

    iget-object v5, p1, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/component/plugin/server/PluginManagerServer;->getPluginInfo(Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v0

    .line 97
    .local v0, "installed":Lcom/tencent/component/plugin/PluginInfo;
    const-string v4, "BuiltinPluginLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugin is debug ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/component/utils/DebugUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-nez v0, :cond_3

    .line 99
    const-string v4, "BuiltinPluginLoader"

    const-string v5, "installed is null "

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_1
    iget-object v4, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/component/utils/DebugUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    iget v4, v0, Lcom/tencent/component/plugin/PluginInfo;->version:I

    iget v5, p1, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->version:I

    if-lt v4, v5, :cond_4

    .line 106
    const-string v4, "BuiltinPluginLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is already up to date"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 101
    :cond_3
    :try_start_2
    const-string v4, "BuiltinPluginLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugin version ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/tencent/component/plugin/PluginInfo;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 121
    .end local v0    # "installed":Lcom/tencent/component/plugin/PluginInfo;
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 109
    .restart local v0    # "installed":Lcom/tencent/component/plugin/PluginInfo;
    :cond_4
    :try_start_3
    const-string v4, "BuiltinPluginLoader"

    const-string v5, "plugin is remove========== "

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v4, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->path:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->copyAssetsTmpSafely(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 111
    .local v3, "tmpFile":Ljava/io/File;
    invoke-static {v3}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->isFileValid(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mPluginInstaller:Lcom/tencent/component/plugin/server/PluginInstaller;

    .line 112
    invoke-virtual {v4, v3}, Lcom/tencent/component/plugin/server/PluginInstaller;->install(Ljava/io/File;)I

    move-result v4

    sget v5, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_SUCCEED:I

    if-ne v4, v5, :cond_6

    .line 113
    .local v2, "succeed":Z
    :goto_2
    if-nez v2, :cond_5

    .line 114
    const-string v4, "BuiltinPluginLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to copy assets to tmp or perform install, record:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " installed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->loaded:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 112
    .end local v2    # "succeed":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method final isNewer(Lcom/tencent/component/plugin/PluginInfo;)Z
    .locals 4
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    const/4 v1, 0x0

    .line 75
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mPluginRecords:Ljava/util/LinkedHashMap;

    iget-object v3, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;

    .line 79
    .local v0, "record":Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->version:I

    iget v3, p1, Lcom/tencent/component/plugin/PluginInfo;->version:I

    if-le v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method final load()V
    .locals 4

    .prologue
    .line 57
    iget-object v2, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mPluginRecords:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 58
    .local v0, "pluginRecords":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;>;"
    if-nez v0, :cond_1

    .line 64
    :cond_0
    return-void

    .line 61
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;

    .line 62
    .local v1, "record":Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;
    invoke-direct {p0, v1}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->performLoad(Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;)V

    goto :goto_0
.end method

.method final load(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->mPluginRecords:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;

    .line 68
    .local v0, "record":Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;
    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->performLoad(Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;)V

    goto :goto_0
.end method
